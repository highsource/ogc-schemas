<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2005-04-26 03:31:00'
LAST_UPDATE='2014-07-05 20:02:58'
DESIGNER_TOOL='DocFlex SDK 1.x'
DESIGNER_LICENSE_TYPE='Filigris Works Team'
APP_ID='docflex-xml-wsdldoc'
APP_NAME='DocFlex/XML WSDLDoc'
APP_VER='1.0.b'
APP_AUTHOR='Copyright © 2014 Filigris Works, Leonid Rudy Softwareprodukte. All rights reserved.'
FEATURE_TYPE='pro'
TEMPLATE_TYPE='DocumentTemplate'
DSM_TYPE_ID='wsdldoc'
ROOT_ETS={'xs:complexType';'xs:simpleType'}
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$mainXML';
		param.type='GOMElement';
		param.defaultValue.expr='findElementByKey ("main-xmls", getXMLDocument().id)';
	}
	PARAM={
		param.name='doc.xsd.comp.lists';
		param.title='Lists of Related Components';
		param.title.style.bold='true';
		param.group='true';
	}
	PARAM={
		param.name='doc.xsd.comp.lists.layout';
		param.title='List Layout';
		param.title.style.italic='true';
		param.type='enum';
		param.enum.values='flow;one_column;two_columns;optimal';
	}
	PARAM={
		param.name='doc.xsd.comp.lists.directSubtypes';
		param.title='List of Direct Subtypes';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.lists.indirectSubtypes';
		param.title='List of Indirect Subtypes';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.lists.basedElements';
		param.title='List of All Based Elements';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.lists.basedAttributes';
		param.title='List of All Based Attributes';
		param.type='boolean';
		param.defaultValue='true';
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
		DESCR='Known Direct Subtypes'
		COND='getBooleanParam("doc.xsd.comp.lists.directSubtypes") &&
{
  e = findElementsByKey ("xsd-direct-subtypes", contextElement.id);
  e.hasNext() ?
  {
    v = e.toVector();

    v.sortVector (
       @(GOMElement) el,
       FlexQuery (el.callStockSection ("Component Name"))
    );

    thisContext.setVar ("components", v);
    true;

  } : false
}'
		COLLAPSED
		<BODY>
			<ELEMENT_ITER>
				DESCR='print the list as comma-delimited text flow'
				COND='hasParamValue("doc.xsd.comp.lists.layout", "flow")
||
hasParamValue("doc.xsd.comp.lists.layout", "optimal")
||
thisContext.getVar ("components").toVector().size() == 1'
				BREAK_PARENT_BLOCK='when-executed'
				TARGET_ETS={'xs:complexType';'xs:simpleType'}
				SCOPE='custom'
				ELEMENT_ENUM_EXPR='thisContext.getVar ("components").toEnum()'
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
										SS_NAME='Component Name'
									</SS_CALL_CTRL>
									<PANEL>
										COND='output.format.supportsPageRefs
&&
getBooleanParam("fmt.page.refs")
&&
findHyperTarget (Array (
  contextElement.id,
  Array ("detail", "xml-source-location")
)) != null'
										FMT={
											ctrl.size.width='156';
											text.style='cs4';
											txtfl.delimiter.type='none';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='['
													</TEXT_CTRL>
													<DATA_CTRL>
														DOCFIELD='page-htarget'
														FMT={
															ctrl.option.noHLinkFmt='true';
															text.hlink.fmt='none';
														}
														<DOC_HLINK>
															HKEYS={
																'contextElement.id';
																'Array ("detail", "xml-source-location")';
															}
														</DOC_HLINK>
													</DATA_CTRL>
													<TEXT_CTRL>
														TEXT=']'
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
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='print one-column list'
				COND='hasParamValue("doc.xsd.comp.lists.layout", "one_column")'
				BREAK_PARENT_BLOCK='when-executed'
				TARGET_ETS={'xs:complexType';'xs:simpleType'}
				SCOPE='custom'
				ELEMENT_ENUM_EXPR='thisContext.getVar ("components").toEnum()'
				FMT={
					sec.indent.block='true';
					list.type='delimited';
				}
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<SS_CALL_CTRL>
										SS_NAME='Component Name'
									</SS_CALL_CTRL>
									<PANEL>
										COND='output.format.supportsPageRefs
&&
getBooleanParam("fmt.page.refs")
&&
findHyperTarget (Array (
  contextElement.id,
  Array ("detail", "xml-source-location")
)) != null'
										FMT={
											ctrl.size.width='156';
											text.style='cs4';
											txtfl.delimiter.type='none';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='['
													</TEXT_CTRL>
													<DATA_CTRL>
														DOCFIELD='page-htarget'
														FMT={
															ctrl.option.noHLinkFmt='true';
															text.hlink.fmt='none';
														}
														<DOC_HLINK>
															HKEYS={
																'contextElement.id';
																'Array ("detail", "xml-source-location")';
															}
														</DOC_HLINK>
													</DATA_CTRL>
													<TEXT_CTRL>
														TEXT=']'
													</TEXT_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
									<DELIMITER>
										FMT={
											txtfl.delimiter.type='none';
										}
									</DELIMITER>
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
										SS_NAME='Component List Column'
										PARAMS_EXPR='v = thisContext.getVar ("components").toVector();
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
										SS_NAME='Component List Column'
										PARAMS_EXPR='v = thisContext.getVar ("components").toVector();

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
							<TEXT_CTRL>
								TEXT='Known Direct Subtypes'
							</TEXT_CTRL>
							<DATA_CTRL>
								FORMULA='"(" + thisContext.getVar ("components").toVector().size() + ")"'
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
	<FOLDER>
		DESCR='Known Indirect Subtypes'
		COND='getBooleanParam("doc.xsd.comp.lists.indirectSubtypes") &&
{
  e = findElementsByKey ("xsd-indirect-subtypes", contextElement.id);
  e.hasNext() ?
  {
    v = e.toVector();

    v.sortVector (
      @(GOMElement) el,
      FlexQuery (el.callStockSection ("Component Name"))
    );

    thisContext.setVar ("components", v);
    true;

  } : false
}'
		COLLAPSED
		<BODY>
			<ELEMENT_ITER>
				DESCR='print the list as comma-delimited text flow'
				COND='hasParamValue("doc.xsd.comp.lists.layout", "flow")
||
hasParamValue("doc.xsd.comp.lists.layout", "optimal")
||
thisContext.getVar ("components").toVector().size() == 1'
				BREAK_PARENT_BLOCK='when-executed'
				TARGET_ETS={'xs:complexType';'xs:simpleType'}
				SCOPE='custom'
				ELEMENT_ENUM_EXPR='thisContext.getVar ("components").toEnum()'
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
										SS_NAME='Component Name'
									</SS_CALL_CTRL>
									<PANEL>
										COND='output.format.supportsPageRefs
&&
getBooleanParam("fmt.page.refs")
&&
findHyperTarget (Array (
  contextElement.id,
  Array ("detail", "xml-source-location")
)) != null'
										FMT={
											ctrl.size.width='156';
											text.style='cs4';
											txtfl.delimiter.type='none';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='['
													</TEXT_CTRL>
													<DATA_CTRL>
														DOCFIELD='page-htarget'
														FMT={
															ctrl.option.noHLinkFmt='true';
															text.hlink.fmt='none';
														}
														<DOC_HLINK>
															HKEYS={
																'contextElement.id';
																'Array ("detail", "xml-source-location")';
															}
														</DOC_HLINK>
													</DATA_CTRL>
													<TEXT_CTRL>
														TEXT=']'
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
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='print one-column list'
				COND='hasParamValue("doc.xsd.comp.lists.layout", "one_column")'
				BREAK_PARENT_BLOCK='when-executed'
				TARGET_ETS={'xs:complexType';'xs:simpleType'}
				SCOPE='custom'
				ELEMENT_ENUM_EXPR='thisContext.getVar ("components").toEnum()'
				FMT={
					sec.indent.block='true';
					list.type='delimited';
				}
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<SS_CALL_CTRL>
										SS_NAME='Component Name'
									</SS_CALL_CTRL>
									<PANEL>
										COND='output.format.supportsPageRefs
&&
getBooleanParam("fmt.page.refs")
&&
findHyperTarget (Array (
  contextElement.id,
  Array ("detail", "xml-source-location")
)) != null'
										FMT={
											ctrl.size.width='156';
											text.style='cs4';
											txtfl.delimiter.type='none';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='['
													</TEXT_CTRL>
													<DATA_CTRL>
														DOCFIELD='page-htarget'
														FMT={
															ctrl.option.noHLinkFmt='true';
															text.hlink.fmt='none';
														}
														<DOC_HLINK>
															HKEYS={
																'contextElement.id';
																'Array ("detail", "xml-source-location")';
															}
														</DOC_HLINK>
													</DATA_CTRL>
													<TEXT_CTRL>
														TEXT=']'
													</TEXT_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
									<DELIMITER>
										FMT={
											txtfl.delimiter.type='none';
										}
									</DELIMITER>
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
										SS_NAME='Component List Column'
										PARAMS_EXPR='v = thisContext.getVar ("components").toVector();
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
										SS_NAME='Component List Column'
										PARAMS_EXPR='v = thisContext.getVar ("components").toVector();

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
							<TEXT_CTRL>
								TEXT='Known Indirect Subtypes'
							</TEXT_CTRL>
							<DATA_CTRL>
								FORMULA='"(" + thisContext.getVar ("components").toVector().size() + ")"'
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
	<FOLDER>
		DESCR='All direct/indirect based elements'
		COND='getBooleanParam("doc.xsd.comp.lists.basedElements") &&
{
  e = findElementsByKey ("xsd-derived-elements", contextElement.id);
  e.hasNext() ?
  {
    mainXMLFilter = BooleanQuery (checkElementByKey (
                      "main-xmls",
                      getXMLDocument().id,
                      getElementParam("$mainXML")
                    ));
    nameExt = null;

    /* This variable accumulates the maximal normalized length of element display names.
     For an element, the normalized display name length is calculated
     as the number of characters of the element\'s main name plus
     (in the case of a local element with the name extension)
     the number of character of the local element name extension multiplied by 0.8
    */
    nameLenMax = 0;

    v = e.toVector();

    v.sortVector (
       @(GOMElement) el,
       FlexQuery ({

         name = el.getAttrStringValue("name");
         schema = el.findAncestor ("xs:schema");
         targetNS = schema.getServiceAttr("targetNamespace").toString();

         el.instanceOf ("xs:element") ?
         {
           // case of global element

           displayName = toXMLName (targetNS, name, Array (rootElement, el));
           nameLen = displayName.length()

         } : {
           // case of local element

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

    thisContext.setVar ("components", v);

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

  } : false
}'
		COLLAPSED
		<BODY>
			<ELEMENT_ITER>
				DESCR='print the list as comma-delimited text flow'
				COND='thisContext.getVar ("listLayout") == "flow"'
				BREAK_PARENT_BLOCK='when-executed'
				TARGET_ET='xs:%element'
				SCOPE='custom'
				ELEMENT_ENUM_EXPR='thisContext.getVar ("components").toEnum()'
				FMT={
					sec.outputStyle='list';
					sec.indent.block='true';
					list.type='delimited';
				}
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='nbsp';
								}
								<CTRLS>
									<SS_CALL_CTRL>
										SS_NAME='Component Name'
									</SS_CALL_CTRL>
									<PANEL>
										COND='output.format.supportsPageRefs
&&
getBooleanParam("fmt.page.refs")
&&
findHyperTarget (Array (
  contextElement.id,
  Array ("detail", "def", "xml-source-location")
)) != null'
										FMT={
											ctrl.size.width='152.3';
											ctrl.size.height='38.3';
											text.style='cs4';
											txtfl.delimiter.type='none';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='['
													</TEXT_CTRL>
													<DATA_CTRL>
														DOCFIELD='page-htarget'
														FMT={
															ctrl.option.noHLinkFmt='true';
															text.hlink.fmt='none';
														}
														<DOC_HLINK>
															HKEYS={
																'contextElement.id';
																'Array ("detail", "def", "xml-source-location")';
															}
														</DOC_HLINK>
													</DATA_CTRL>
													<TEXT_CTRL>
														TEXT=']'
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
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='print one-column list'
				COND='thisContext.getVar ("listLayout") == "one_column"'
				BREAK_PARENT_BLOCK='when-executed'
				TARGET_ET='xs:%element'
				SCOPE='custom'
				ELEMENT_ENUM_EXPR='thisContext.getVar ("components").toEnum()'
				FMT={
					sec.indent.block='true';
					list.type='delimited';
				}
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='space';
								}
								<CTRLS>
									<SS_CALL_CTRL>
										SS_NAME='Component Name'
									</SS_CALL_CTRL>
									<PANEL>
										COND='output.format.supportsPageRefs
&&
getBooleanParam("fmt.page.refs")
&&
findHyperTarget (Array (
  contextElement.id,
  Array ("detail", "def", "xml-source-location")
)) != null'
										FMT={
											ctrl.size.width='153';
											ctrl.size.height='38.3';
											text.style='cs4';
											txtfl.delimiter.type='none';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='['
													</TEXT_CTRL>
													<DATA_CTRL>
														DOCFIELD='page-htarget'
														FMT={
															ctrl.option.noHLinkFmt='true';
															text.hlink.fmt='none';
														}
														<DOC_HLINK>
															HKEYS={
																'contextElement.id';
																'Array ("detail", "def", "xml-source-location")';
															}
														</DOC_HLINK>
													</DATA_CTRL>
													<TEXT_CTRL>
														TEXT=']'
													</TEXT_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
									<DELIMITER>
										FMT={
											txtfl.delimiter.type='none';
										}
									</DELIMITER>
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
										SS_NAME='Component List Column'
										PARAMS_EXPR='v = thisContext.getVar ("components").toVector();
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
										SS_NAME='Component List Column'
										PARAMS_EXPR='v = thisContext.getVar ("components").toVector();

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
							<TEXT_CTRL>
								TEXT='All Direct / Indirect Based Elements'
							</TEXT_CTRL>
							<DATA_CTRL>
								FORMULA='"(" + thisContext.getVar ("components").toVector().size() + ")"'
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
	<FOLDER>
		DESCR='All direct/indirect based attributes'
		COND='instanceOf("xs:simpleType") &&
getBooleanParam("doc.xsd.comp.lists.basedAttributes") &&
{
  e = findElementsByKey ("xsd-derived-attributes", contextElement.id);

  e.hasNext() ?
  {
    lenMax = 0;  // accumulates the maximal length of attribute location names

    v = e.toVector();

    v.sortVector (
      @(GOMElement) el,
      FlexQuery ({
        locationName = el.callStockSection ("Attribute Location");

        len = locationName.length();
        lenMax < len ? lenMax = len;

        locationName
      })
    );

    thisContext.setVar ("components", v);

    /* The actual list layout:

     - If the list consist of the only location, the layout is \'flow\'
     - If the specified layout was \'optimal\', calculate the actual layout as follows:

       1). If maximal length of location names in the list exceeds 50,
           use \'one_column\' layout
       2). Otherwise, use \'two_columns\' layout

     - Otherwise, use the specified layout
    */

    thisContext.setVar (
      "listLayout", 
      (v.size() == 1 ? "flow" :
         hasParamValue("doc.xsd.comp.lists.layout", "optimal") ?
           lenMax > 50 ? "one_column" : "two_columns"
         : getStringParam("doc.xsd.comp.lists.layout"))
    );

    true;

  } : false
}'
		COLLAPSED
		<BODY>
			<ELEMENT_ITER>
				DESCR='print the list as comma-delimited text flow'
				COND='thisContext.getVar ("listLayout") == "flow"'
				BREAK_PARENT_BLOCK='when-executed'
				TARGET_ET='xs:%attribute'
				SCOPE='custom'
				ELEMENT_ENUM_EXPR='thisContext.getVar ("components").toEnum()'
				FMT={
					sec.outputStyle='list';
					sec.indent.block='true';
					list.type='delimited';
				}
				<BODY>
					<SS_CALL>
						SS_NAME='Attribute Location'
					</SS_CALL>
				</BODY>
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='print one-column list'
				COND='thisContext.getVar ("listLayout") == "one_column"'
				BREAK_PARENT_BLOCK='when-executed'
				TARGET_ET='xs:%attribute'
				SCOPE='custom'
				ELEMENT_ENUM_EXPR='thisContext.getVar ("components").toEnum()'
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
										SS_NAME='Attribute Location'
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
										SS_NAME='Attribute List Column'
										PARAMS_EXPR='v = thisContext.getVar ("components").toVector();
N = v.size();

Array (
  v.subVector (0, (N + 1) / 2),
  N == 1
)'
										FMT={
											ctrl.size.width='207.8';
											ctrl.size.height='17.3';
										}
									</SS_CALL_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='Attribute List Column'
										PARAMS_EXPR='v = thisContext.getVar ("components").toVector();

Array (
  v.subVector ((v.size() + 1) / 2),
  true
)'
										FMT={
											ctrl.size.width='273.8';
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
							<TEXT_CTRL>
								TEXT='All Direct / Indirect Based Attributes'
							</TEXT_CTRL>
							<DATA_CTRL>
								FORMULA='"(" + thisContext.getVar ("components").toVector().size() + ")"'
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
	<ELEMENT_ITER>
		SS_NAME='Attribute List Column'
		DESCR='params[0]: vector of column elements; 
params[1]: true if this is the last part of the whole list (to avoid printing comma after last item)'
		TARGET_ET='xs:%attribute'
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
								SS_NAME='Attribute Location'
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
	<AREA_SEC>
		SS_NAME='Attribute Location'
		DESCR='case of global attribute'
		MATCHING_ET='xs:%attribute'
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='none';
			par.option.nowrap='true';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<PANEL>
						DESCR='in case of local attribute'
						CONTEXT_ELEMENT_EXPR='findPredecessorByType("xs:%element|xs:complexType|xs:attributeGroup")'
						MATCHING_ETS={'xs:%element';'xs:attributeGroup';'xs:complexType'}
						FMT={
							ctrl.size.width='188.3';
							ctrl.size.height='38.3';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<SS_CALL_CTRL>
										SS_NAME='Component Name'
									</SS_CALL_CTRL>
									<TEXT_CTRL>
										TEXT='/@'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</PANEL>
					<SS_CALL_CTRL>
						SS_NAME='Attribute Name'
					</SS_CALL_CTRL>
					<PANEL>
						COND='output.format.supportsPageRefs
&&
getBooleanParam("fmt.page.refs")
&&
findHyperTarget (Array (
  contextElement.id,
  Array ("def", "local", "detail", "xml-source-location")
)) != null'
						FMT={
							ctrl.size.width='181.5';
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
											HKEYS={
												'contextElement.id';
												'Array ("def", "local", "detail", "xml-source-location")';
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
		SS_NAME='Attribute Name'
		MATCHING_ET='xs:%attribute'
		FMT={
			par.option.nowrap='true';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<DATA_CTRL>
						FORMULA='name = getAttrStringValue("name");

schema = findAncestor ("xs:schema");
nsURI = schema.getServiceAttr("targetNamespace").toString();

// if this is a top-level attribute, it should be always qualified

form = instanceOf ("xs:attribute") ? "qualified" :
{
  // in case of a local attribute

  form = hasAttr("form") ? getAttrValue("form") :
           schema.getAttrValue ("attributeFormDefault");
};

(form == "qualified") ?
  toXMLName (nsURI, name, Array (rootElement, contextElement)) : name'
						<DOC_HLINK>
							TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("Link Title") : ""'
							HKEYS={
								'contextElement.id';
								'Array ("def", "local", "detail", "xml-source-location")';
							}
						</DOC_HLINK>
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<ELEMENT_ITER>
		SS_NAME='Component List Column'
		DESCR='params[0]: vector of column components; 
params[1]: true if this is the last part of the whole list (to avoid printing comma after last item)'
		TARGET_ET='<ANY>'
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
								SS_NAME='Component Name'
							</SS_CALL_CTRL>
							<PANEL>
								COND='output.format.supportsPageRefs
&&
getBooleanParam("fmt.page.refs")
&&
findHyperTarget (Array (
  contextElement.id,
  Array ("detail", "def", "xml-source-location")
)) != null'
								FMT={
									ctrl.size.width='191.3';
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
													HKEYS={
														'contextElement.id';
														'Array ("detail", "def", "xml-source-location")';
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
	<TEMPLATE_CALL>
		SS_NAME='Component Name'
		DESCR='prints the qualified name of any global schema component or local element (passed as the stock-section context element)'
		TEMPLATE_FILE='../component/componentName.tpl'
		PASSED_PARAMS={
			'$xmlContexts','Array (rootElement, contextElement)';
		}
		FMT={
			sec.outputStyle='text-par';
		}
	</TEMPLATE_CALL>
	<TEMPLATE_CALL>
		SS_NAME='Link Title'
		TEMPLATE_FILE='../component/componentLinkTitle.tpl'
	</TEMPLATE_CALL>
	<TEMPLATE_CALL>
		SS_NAME='localElementExt'
		MATCHING_ET='xs:%localElement'
		TEMPLATE_FILE='../element/localElementExt.tpl'
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
CHECKSUM='Pw5k6rYD5UOhwsEa9Cuhxf8d7Qep6Y+gDWErXHyC0uE'
</DOCFLEX_TEMPLATE>