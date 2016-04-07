<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2005-04-26 03:31:00'
LAST_UPDATE='2014-07-05 20:02:57'
DESIGNER_TOOL='DocFlex SDK 1.x'
DESIGNER_LICENSE_TYPE='Filigris Works Team'
APP_ID='docflex-xml-wsdldoc'
APP_NAME='DocFlex/XML WSDLDoc'
APP_VER='1.0.b'
APP_AUTHOR='Copyright © 2014 Filigris Works, Leonid Rudy Softwareprodukte. All rights reserved.'
FEATURE_TYPE='pro'
TEMPLATE_TYPE='DocumentTemplate'
DSM_TYPE_ID='wsdldoc'
ROOT_ETS={'xs:%element';'xs:complexType';'xs:group'}
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$mainXML';
		param.type='GOMElement';
	}
	PARAM={
		param.name='$contentModelKey';
		param.title='map key for "xsd-content-model-elements"';
		param.description='The key by which the content elements are obtained from the "xsd-content-model-elements" element map';
		param.type='Object';
		param.defaultValue.expr='contextElement.id';
	}
	PARAM={
		param.name='$caption';
		param.type='string';
		param.defaultValue='Content Model Elements';
	}
	PARAM={
		param.name='doc.xsd.comp';
		param.title='Schema Component';
		param.title.style.bold='true';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='doc.xsd.comp.lists.layout';
		param.title='List Layout';
		param.title.style.italic='true';
		param.type='enum';
		param.enum.values='flow;one_column;two_columns;optimal';
	}
	PARAM={
		param.name='show';
		param.title='Show';
		param.title.style.bold='true';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='show.linkTitle';
		param.title='Link Titles (Tooltips)';
		param.type='boolean';
	}
	PARAM={
		param.name='show.localElementExt';
		param.title='Local Element Extensions';
		param.type='enum';
		param.enum.values='always;repeating;never';
	}
	PARAM={
		param.name='fmt';
		param.title='Formatting';
		param.title.style.bold='true';
		param.group='true';
	}
	PARAM={
		param.name='fmt.page.refs';
		param.title='Generate page references';
		param.type='boolean';
		param.defaultValue='true';
	}
</TEMPLATE_PARAMS>
<STYLES>
	CHAR_STYLE={
		style.name='Default Paragraph Font';
		style.id='cs1';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs2';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	PAR_STYLE={
		style.name='List Heading 1';
		style.id='s1';
		text.font.name='Arial';
		text.font.size='10';
		text.font.style.bold='true';
		par.margin.top='10';
		par.margin.bottom='6.7';
		par.page.keepWithNext='true';
	}
	CHAR_STYLE={
		style.name='Name Modifier';
		style.id='cs3';
		text.font.name='Verdana';
		text.font.size='7';
		text.color.foreground='#B2B2B2';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s2';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Page Number Small';
		style.id='cs4';
		text.font.name='Courier New';
		text.font.size='8';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs2';
}
<ROOT>
	<FOLDER>
		COND='e = findElementsByKey (
      "xsd-content-model-elements",
      getParam("$contentModelKey"),
      BooleanQuery (! instanceOf ("xs:any"))
    );

e.hasNext() ?
{
  nameExt = null;

  /* This variable accumulates the maximal normalized length of element display names.
   For an element, the normalized display name length is calculated
   as the number of characters of the element\'s main name plus
   (in the case of a local element with the name extension)
   the number of character of the local element name extension multiplied by 0.8
  */
  nameLenMax = 0;

  mainXMLFilter = BooleanQuery (checkElementByKey (
                    "main-xmls",
                    getXMLDocument().id,
                    getElementParam("$mainXML")
                  ));

  v = e.toVector();

  v.sortVector (
     @(GOMElement) el,
     FlexQuery ({
       el.getAttrValue("ref") != null ?
       {
         // case of reference to a global element

         displayName = toXMLName (el.getAttrQNameValue("ref"), Array (rootElement, el));
         nameLen = displayName.length();

       } : {
         // case of local element

         name = el.getAttrStringValue("name");
         schema = el.findAncestor ("xs:schema");
         targetNS = schema.getServiceAttr("targetNamespace").toString();

         form = el.hasAttr("form") ? el.getAttrValue("form")
                   : schema.getAttrValue ("elementFormDefault");

         displayName = (form == "qualified") ? 
             toXMLName (targetNS, name, Array (rootElement, el)) : name;

         nameLen = displayName.length();
         
         // if there is local element name extension

         (hasParamValue("show.localElementExt", "always")
          ||
          hasParamValue("show.localElementExt", "repeating") &&
          {
            qName = QName (form == "qualified" ? targetNS : "", name);

            countElementsByKey ("xsd-global-elements", qName, mainXMLFilter) +
            countElementsByKey ("xsd-local-elements", qName, mainXMLFilter) > 1
          }
         ) ? {
           nameExt = el.callStockSection ("localElementExt");
           displayName = displayName + nameExt;

           nameLen = nameLen + round (nameExt.length() * 0.8);
         }
       };

       nameLenMax < nameLen ? nameLenMax = nameLen;

       displayName
     })
  );

  thisContext.setVar ("elements", v);

  /* The actual list layout:

   - If the list consist of the only element, the layout is \'flow\'
   - If the specified layout was \'optimal\', calculate the actual layout as follows:

     1). If there are no local element name extensions, use \'flow\' layout
     2). If maximal normalized length of element display names in the list exceeds 50,
         use \'one_column\' layout
     3). Otherwise, use \'two_columns\' layout

   - Otherwise, use the specified layout
  */

  thisContext.setVar (
    "listLayout", 
    (v.size() == 1 ? "flow" :
       hasParamValue("doc.xsd.comp.lists.layout", "optimal") ?
         nameExt == null ? "flow" : nameLenMax > 50 ? "one_column" : "two_columns"
       : getStringParam("doc.xsd.comp.lists.layout"))
  );

  true;

} : false'
		<BODY>
			<ELEMENT_ITER>
				DESCR='print the list as comma-delimited text flow'
				COND='thisContext.getVar ("listLayout") == "flow"'
				BREAK_PARENT_BLOCK='when-executed'
				TARGET_ET='xs:%element'
				SCOPE='custom'
				ELEMENT_ENUM_EXPR='thisContext.getVar ("elements").toEnum()'
				FMT={
					sec.outputStyle='list';
					sec.indent.block='true';
					list.type='delimited';
				}
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<SS_CALL_CTRL>
										SS_NAME='List Item'
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='print one-column list'
				COND='thisContext.getVar ("listLayout") == "one_column"'
				BREAK_PARENT_BLOCK='when-executed'
				TARGET_ET='xs:%element'
				SCOPE='custom'
				ELEMENT_ENUM_EXPR='thisContext.getVar ("elements").toEnum()'
				FMT={
					sec.indent.block='true';
					list.type='delimited';
				}
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='none';
								}
								<CTRLS>
									<SS_CALL_CTRL>
										SS_NAME='List Item'
									</SS_CALL_CTRL>
									<TEXT_CTRL>
										COND='! iterator.isLastItem'
										TEXT=','
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</ELEMENT_ITER>
			<FOLDER>
				DESCR='otherwise, print two column list'
				FMT={
					sec.indent.block='true';
				}
				<BODY>
					<AREA_SEC>
						FMT={
							sec.outputStyle='table';
							table.cell.padding.both='0';
							table.border.style='none';
						}
						<AREA>
							<CTRL_GROUP>
								FMT={
									trow.cell.align.vert='Top';
								}
								<CTRLS>
									<SS_CALL_CTRL>
										SS_NAME='List Column'
										PARAMS_EXPR='v = thisContext.getVar ("elements").toVector();
N = v.size();

Array (
  v.subVector (0, (N + 1) / 2),
  N == 1
)'
										FMT={
											ctrl.size.width='209.3';
											ctrl.size.height='17.3';
										}
									</SS_CALL_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='List Column'
										PARAMS_EXPR='v = thisContext.getVar ("elements").toVector();

Array (
  v.subVector ((v.size() + 1) / 2),
  true
)'
										FMT={
											ctrl.size.width='272.3';
											ctrl.size.height='17.3';
											tcell.padding.extra.left='10';
										}
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</FOLDER>
		</BODY>
		<HEADER>
			<AREA_SEC>
				FMT={
					par.style='s1';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								FORMULA='getStringParam("$caption")'
							</DATA_CTRL>
							<DATA_CTRL>
								FORMULA='"(" + thisContext.getVar ("elements").toVector().size() + ")"'
							</DATA_CTRL>
							<DELIMITER>
								FMT={
									txtfl.delimiter.type='none';
								}
							</DELIMITER>
							<TEXT_CTRL>
								TEXT=':'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
</ROOT>
<STOCK_SECTIONS>
	<TEMPLATE_CALL>
		SS_NAME='Link Title'
		TEMPLATE_FILE='../component/componentLinkTitle.tpl'
	</TEMPLATE_CALL>
	<ELEMENT_ITER>
		SS_NAME='List Column'
		DESCR='params[0]: vector of column elements; 
params[1]: true if this is the last part of the whole list (to avoid printing comma after last item)'
		TARGET_ET='xs:%element'
		SCOPE='custom'
		ELEMENT_ENUM_EXPR='toEnum (stockSection.param)'
		FMT={
			sec.outputStyle='pars';
			txtfl.delimiter.type='text';
			txtfl.delimiter.text=', ';
			list.style.type='none';
		}
		<BODY>
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
						FMT={
							txtfl.delimiter.type='none';
						}
						<CTRLS>
							<SS_CALL_CTRL>
								SS_NAME='List Item'
							</SS_CALL_CTRL>
							<TEXT_CTRL>
								COND='! iterator.isLastItem ||
! stockSection.params[1].toBoolean()'
								TEXT=','
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</ELEMENT_ITER>
	<FOLDER>
		SS_NAME='List Item'
		MATCHING_ET='xs:%element'
		FMT={
			sec.outputStyle='text-par';
		}
		<BODY>
			<AREA_SEC>
				DESCR='case of a reference to global element'
				COND='getAttrValue("ref") != null'
				INIT_EXPR='stockSection.setVar (
  "globalElement", 
  findElementByKey (
    "xsd-global-elements", getAttrQNameValue("ref"),
    BooleanQuery (
      checkElementByKey (
        "main-xmls",
        getXMLDocument().id,
        getElementParam("$mainXML")
      )
    )
  )
)'
				BREAK_PARENT_BLOCK='when-executed'
				FMT={
					txtfl.delimiter.type='none';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								DESCR='case of global element'
								COND='! stockSection.getElementVar (
  "globalElement"
).getAttrBooleanValue("abstract")'
								FORMULA='toXMLName (getAttrQNameValue("ref"), Array (rootElement, contextElement))'
								<DOC_HLINK>
									DESCR='first, try to link to the global documentation of the referenced element;
if not found, link to details about this element reference within the documentation of the current component (for which this content element list is generated);
otherwise, link to the element ref details in the documentation of its parent component (where this element reference is defined);
finally, try to link to the location in the XML schema source, where the referenced global element is defined'
									TITLE_EXPR='getBooleanParam("show.linkTitle") ?
{
  (globalElement = stockSection.getElementVar("globalElement")) != null ?
    globalElement.callStockSection("Link Title") : "global element"

} : ""'
									HKEYS={
										'globalElement = stockSection.getElementVar("globalElement");
Array (
  globalElement.id,
  contextElement.id,
  contextElement.id,
  globalElement.id
)';
										'Array ("detail", "local", "def", "xml-source-location")';
										'Array (NoKey(), rootElement.id, NoKey())';
									}
								</DOC_HLINK>
							</DATA_CTRL>
							<DATA_CTRL>
								DESCR='case of global element'
								COND='stockSection.getElementVar (
  "globalElement"
).getAttrBooleanValue("abstract")'
								FORMULA='toXMLName (getAttrQNameValue("ref"), Array (rootElement, contextElement))'
								FMT={
									text.font.style.italic='true';
								}
								<DOC_HLINK>
									DESCR='first, try to link to the global documentation of the referenced element;
if not found, link to details about this element reference within the documentation of the current component (for which this content element list is generated);
otherwise, link to the element ref details in the documentation of its parent component (where this element reference is defined);
finally, try to link to the location in the XML schema source, where the referenced global element is defined'
									TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection (
    stockSection.getElementVar("globalElement"),
    "Link Title"
  )
: ""'
									HKEYS={
										'globalElement = stockSection.getElementVar("globalElement");
Array (
  globalElement.id,
  contextElement.id,
  contextElement.id,
  globalElement.id
)';
										'Array ("detail", "local", "def", "xml-source-location")';
										'Array (NoKey(), rootElement.id, NoKey())';
									}
								</DOC_HLINK>
							</DATA_CTRL>
							<PANEL>
								COND='output.format.supportsPageRefs
&&
getBooleanParam("fmt.page.refs") &&
{
  globalElement = stockSection.getElementVar("globalElement");

  findHyperTarget (
    Array (
      Array (
        globalElement.id,
        contextElement.id,
        contextElement.id,
        globalElement.id
      ),
      Array ("detail", "local", "def", "xml-source-location"),
      Array (NoKey(), rootElement.id, NoKey())
    )
  ) != null
}'
								FMT={
									ctrl.size.width='192';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<DELIMITER>
												FMT={
													txtfl.delimiter.type='nbsp';
												}
											</DELIMITER>
											<TEXT_CTRL>
												TEXT='['
												FMT={
													text.style='cs4';
												}
											</TEXT_CTRL>
											<DATA_CTRL>
												DOCFIELD='page-htarget'
												FMT={
													ctrl.option.noHLinkFmt='true';
													text.style='cs4';
													text.hlink.fmt='none';
												}
												<DOC_HLINK>
													DESCR='first, try to link to the global documentation of the referenced element;
if not found, link to details about this element reference within the documentation of the current component (for which this content element list is generated);
otherwise, link to the element ref details in the documentation of its parent component (where this element reference is defined);
finally, try to link to the location in the XML schema source, where the referenced global element is defined'
													HKEYS={
														'globalElement = stockSection.getElementVar("globalElement");
Array (
  globalElement.id,
  contextElement.id,
  contextElement.id,
  globalElement.id
)';
														'Array ("detail", "local", "def", "xml-source-location")';
														'Array (NoKey(), rootElement.id, NoKey())';
													}
												</DOC_HLINK>
											</DATA_CTRL>
											<TEXT_CTRL>
												TEXT=']'
												FMT={
													text.style='cs4';
												}
											</TEXT_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				DESCR='case of a local element'
				FMT={
					txtfl.delimiter.type='none';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								FORMULA='name = getAttrStringValue("name");
schema = findAncestor ("xs:schema");

form = hasAttr("form") ? getAttrValue("form") :
         schema.getAttrValue ("elementFormDefault");

form == "qualified" ?
  toXMLName (schema.getServiceAttr("targetNamespace").toString(), name,
             Array (rootElement, contextElement))
  : name'
								<DOC_HLINK>
									DESCR='first, try to reach the element\'s global documentation (if exists)'
									CONTEXT_ELEMENT_EXPR='// if this local element is documented globally,
// switch to the unifier via which it is documented
// (the unifier may be this element itself)

findElementByKey (
  "xsd-globally-documented-local-elements", contextElement.id
)'
									MATCHING_ET='xs:%element'
									TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("Link Title") : ""'
									HKEYS={
										'contextElement.id';
										'"detail"';
									}
								</DOC_HLINK>
								<DOC_HLINK>
									DESCR='otherwise, try to link to the element\'s local documentation within the documentation of the current component (for which the content element list is generated);
if not found, link to such a section in the documentation of the element\'s parent component (where it is defined);
finally, if not found still, try to link to the definition location of this local element within the XML schema source'
									TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("Link Title") : ""'
									HKEYS={
										'contextElement.id';
										'Array ("local", "def", "xml-source-location")';
										'Array (rootElement.id, NoKey())';
									}
								</DOC_HLINK>
							</DATA_CTRL>
							<SS_CALL_CTRL>
								COND='hasParamValue("show.localElementExt", "always")
||
hasParamValue("show.localElementExt", "repeating") &&
{
  schema = findAncestor ("xs:schema");

  qName = QName (
    ((hasAttr("form") ? getAttrValue("form") :
        schema.getAttrValue ("elementFormDefault")) == "qualified" 
          ? schema.getServiceAttr("targetNamespace").toString() : ""),
    getAttrStringValue("name")
  );

  mainXMLFilter = BooleanQuery (checkElementByKey (
                    "main-xmls",
                    getXMLDocument().id,
                    getElementParam("$mainXML")
                  ));

  countElementsByKey ("xsd-global-elements", qName, mainXMLFilter) +
  countElementsByKey ("xsd-local-elements", qName, mainXMLFilter) > 1
}'
								SS_NAME='localElementExt'
								FMT={
									text.style='cs3';
								}
							</SS_CALL_CTRL>
							<PANEL>
								COND='output.format.supportsPageRefs
&&
getBooleanParam("fmt.page.refs")'
								CONTEXT_ELEMENT_EXPR='// if this local element is documented globally via a unifier,
// switch to that unifier

el = findElementByKey (
  "xsd-globally-documented-local-elements",
  contextElement.id
);

// if non-null returned, the element is documented globally and
// the necessary hypertarget exists; otherwise check other hypertargets
// (this, in effect, works as another enabling condition)

el != null ? el :
  findHyperTarget (
    Array (
      contextElement.id,
      Array ("local", "def", "xml-source-location"),
      Array (rootElement.id, NoKey())
    )
  ) != null ? contextElement : null'
								MATCHING_ET='xs:%element'
								FMT={
									ctrl.size.width='187.5';
									ctrl.size.height='38.3';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<DELIMITER>
												FMT={
													txtfl.delimiter.type='nbsp';
												}
											</DELIMITER>
											<TEXT_CTRL>
												TEXT='['
												FMT={
													text.style='cs4';
												}
											</TEXT_CTRL>
											<DATA_CTRL>
												DOCFIELD='page-htarget'
												FMT={
													ctrl.option.noHLinkFmt='true';
													text.style='cs4';
													text.hlink.fmt='none';
												}
												<DOC_HLINK>
													DESCR='first, try to reach the element\'s global documentation (if exists);
otherwise, try to link to the element\'s local documentation within the documentation of the current component (for which the content element list is generated);
if not found, link to such a section in the documentation of the element\'s parent component (where it is defined);
finally, if not found still, try to link to the definition location of this local element within the XML schema source'
													HKEYS={
														'contextElement.id';
														'Array ("detail", "local", "def", "xml-source-location")';
														'Array (NoKey(), rootElement.id, NoKey())';
													}
												</DOC_HLINK>
											</DATA_CTRL>
											<TEXT_CTRL>
												TEXT=']'
												FMT={
													text.style='cs4';
												}
											</TEXT_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</FOLDER>
	<TEMPLATE_CALL>
		SS_NAME='localElementExt'
		MATCHING_ET='xs:%localElement'
		TEMPLATE_FILE='localElementExt.tpl'
		PASSED_PARAMS={
			'$xmlContexts','Array (rootElement, contextElement)';
		}
		PASSED_ROOT_ELEMENT_EXPR='// the element passed to localElementExt.tpl template 
// must be either globaly documented directly (not via a unifier)
// or not globally documented at all

el = findElementByKey (
  "xsd-globally-documented-local-elements",
  contextElement.id
);

el != null ? el : contextElement'
	</TEMPLATE_CALL>
</STOCK_SECTIONS>
CHECKSUM='mMopsEUl4oeBsKnJ4dMptYGDzyUkj1JBn2sZbPsxS40'
</DOCFLEX_TEMPLATE>