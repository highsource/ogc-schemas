<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2004-06-21 01:50:00'
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
ROOT_ETS={'#DOCUMENTS';'xs:schema'}
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$nsURI';
		param.title='Namespace URI';
		param.type='string';
	}
	PARAM={
		param.name='$scope';
		param.description='Indicates the scope of the main document for which this template is called:
<ul>
<li>"any" - unspecified</li>
<li>"namespace" - namespace overview</li>
<li>"schema" - schema overview</li>
</ul>';
		param.type='enum';
		param.enum.values='any;namespace;schema';
	}
	PARAM={
		param.name='$page.heading.left';
		param.title='Page Heading (on the left)';
		param.type='string';
		param.defaultValue.expr='"Namespace " + ((ns = getStringParam("$nsURI")) != "" ? \'"\' + ns + \'"\' : "{no namespace}")';
	}
	PARAM={
		param.name='$resourceOutputDir';
		param.title='documentation resources directory';
		param.type='string';
	}
	PARAM={
		param.name='gen.doc.xsd.comp.element.local';
		param.title='Local Elements';
		param.group='true';
		param.type='enum';
		param.enum.values='all;complexType;none';
	}
	PARAM={
		param.name='gen.doc.xsd.comp.element.local.unifyByType';
		param.title='Unify By Type';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps';
		param.title='XSD Component Summary';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.for.elements';
		param.title='Elements';
		param.title.style.italic='true';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.for.elements.local';
		param.title='Local Elements';
		param.title.style.italic='true';
		param.type='enum';
		param.enum.values='all;complexType;none';
		param.enum.displayValues='all;with complex type;none';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.annotation';
		param.title='Annotation';
		param.type='enum';
		param.enum.values='first_sentence;full;none';
		param.enum.displayValues='first sentence;full;none';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile';
		param.title='Component Profile';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.namespace';
		param.title='Namespace';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.type';
		param.title='Type';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.content';
		param.title='Content';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.abstract';
		param.title='Abstract';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.block';
		param.title='Block';
		param.group='true';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.block.value';
		param.title='Value';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.block.meaning';
		param.title='Meaning';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.final';
		param.title='Final';
		param.group='true';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.final.value';
		param.title='Value';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.final.meaning';
		param.title='Meaning';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.subst';
		param.title='Subst.Gr';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.subst.heads';
		param.title='List of group heads';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.subst.members';
		param.title='List of group members';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.nillable';
		param.title='Nillable';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.defined';
		param.title='Defined';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.includes';
		param.title='Includes';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.redefines';
		param.title='Redefines';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.redefined';
		param.title='Redefined';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.used';
		param.title='Used';
		param.type='boolean';
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
	PARAM={
		param.name='fmt.allowNestedTables';
		param.title='Allow nested tables';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='fmt.page.columns';
		param.title='Generate page columns';
		param.type='boolean';
	}
</TEMPLATE_PARAMS>
<STYLES>
	CHAR_STYLE={
		style.name='Code';
		style.id='cs1';
		text.font.name='Courier New';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Code Smaller';
		style.id='cs2';
		text.font.name='Courier New';
		text.font.size='8';
	}
	CHAR_STYLE={
		style.name='Default Paragraph Font';
		style.id='cs3';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs4';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	PAR_STYLE={
		style.name='Main Heading';
		style.id='s1';
		text.font.name='Verdana';
		text.font.size='13';
		text.font.style.bold='true';
		text.color.foreground='#4477AA';
		par.bkgr.opaque='true';
		par.bkgr.color='#EEEEEE';
		par.border.style='solid';
		par.border.color='#4477AA';
		par.margin.top='0';
		par.margin.bottom='7.5';
		par.padding.left='4.2';
		par.padding.right='4.2';
		par.padding.top='2.5';
		par.padding.bottom='2.5';
		par.page.keepTogether='true';
		par.page.keepWithNext='true';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s2';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Normal Smaller';
		style.id='cs5';
		text.font.name='Arial';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Note Font';
		style.id='cs6';
		text.font.name='Arial';
		text.font.size='8';
		text.font.style.bold='false';
	}
	CHAR_STYLE={
		style.name='Page Header Font';
		style.id='cs7';
		text.font.name='Arial';
		text.font.style.italic='true';
	}
	CHAR_STYLE={
		style.name='Page Number';
		style.id='cs8';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Property Title Font';
		style.id='cs9';
		text.font.size='8';
		text.font.style.bold='true';
	}
	CHAR_STYLE={
		style.name='Property Value Font';
		style.id='cs10';
		text.font.name='Verdana';
		text.font.size='8';
	}
	CHAR_STYLE={
		style.name='Summary Heading';
		style.id='cs11';
		text.font.size='12';
		text.font.style.bold='true';
	}
	CHAR_STYLE={
		style.name='Summary Item Smaller';
		style.id='cs12';
		text.font.name='Verdana';
		text.font.size='8';
		text.font.style.bold='true';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs4';
}
<PAGE_HEADER>
	<AREA_SEC>
		FMT={
			sec.outputStyle='table';
			text.style='cs7';
			table.sizing='Relative';
			table.cell.padding.horz='0.8';
			table.cell.padding.vert='0';
			table.border.style='none';
			table.border.bottom.style='solid';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<DATA_CTRL>
						FORMULA='getStringParam("$page.heading.left")'
						FMT={
							ctrl.size.width='403.5';
							ctrl.size.height='17.3';
						}
					</DATA_CTRL>
					<TEXT_CTRL>
						TEXT='Element Summary'
						FMT={
							ctrl.size.width='96';
							ctrl.size.height='17.3';
							tcell.align.horz='Right';
							tcell.option.nowrap='true';
						}
					</TEXT_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
</PAGE_HEADER>
<ROOT>
	<ELEMENT_ITER>
		INIT_EXPR='output.format.supportsPageRefs ?
{
  showPageColumn = false;

  getBooleanParam("fmt.page.columns") && output.generating ?
  {
    index = 0;
    repeat (BooleanQuery ({

      (el = iterator.itemAt (index).toElement()) != null ?
      {
        showPageColumn = findHyperTarget (Array (
          el.id, Array ("detail", "def", "xml-source-location")
        )) != null;

        index = index + 1;
        ! showPageColumn

      } : false;
    }));
  };

  thisContext.setVar ("showPageColumn", showPageColumn)
}'
		TARGET_ET='xs:%element'
		SCOPE='advanced-location-rules'
		RULES={
			'#DOCUMENTS[hasParamValue("$scope", "any")] -> #DOCUMENT/wsdl:definitions/wsdl:types/xs:schema[checkElementsByKey ("documented-schemas", contextElement.id)]';
			'#DOCUMENTS[hasParamValue("$scope", "any")] -> #DOCUMENT/xs:schema[checkElementsByKey ("documented-schemas", contextElement.id)]';
			'#DOCUMENTS[hasParamValue("$scope", "namespace")] -> {findElementsByKey ("namespaces", getParam("$nsURI"))}::xs:schema/descendant::xs:%element[instanceOf("xs:element") || ! hasAttr("ref") &&
{
  form = hasAttr("form") ? getAttrValue("form")
          : findPredecessorByType("xs:schema").getAttrStringValue ("elementFormDefault");

  (form == "qualified" || getParam("$nsURI") == "")
}]';
			'#DOCUMENTS[hasParamValue("$scope", "namespace") &&
getParam("$nsURI") == ""] -> {findElementsByKey ("namespaces", "")}::xs:%localElement';
			'xs:schema -> descendant::xs:%element/{// if this is a global element, return it
instanceOf("xs:element") ? return Enum (contextElement);

// if this is a reference to global element, return empty enumeration
getAttrValue("ref") != null ? return null;

// otherwise, it is a local element

// if this local element is documented globally replace it with its unifier
// (when several local elements are unified by type, during the generation 
// all of them are represented by a single local element component -- the unifier -- 
// which may be actually even from a different schema); 
// otherwise, return the same element

el = findElementByKey ("xsd-globally-documented-local-elements", contextElement.id);
Enum (el != null ? el : contextElement)}::xs:%element',recursive;
		}
		FILTER='instanceOf("xs:element")
||
// case of local element
{
  // which local elements to list?
  local = getStringParam("doc.frgm.xsd.comps.for.elements.local");
  
  local == "complexType" ?
    ((typeQName = getAttrQNameValue("type")) != null) ?
    {
      mainXML = findElementByKey ("main-xmls", getXMLDocument().id);

      checkElementsByKey (
        "xsd-types", typeQName,
        BooleanQuery (
          instanceOf("xs:complexType")
          &&
          checkElementByKey ("main-xmls", getXMLDocument().id, mainXML)
        )
      )
    }
    : hasChild("xs:complexType")
  :
  local == "all"
}'
		SORTING='by-expr'
		SORTING_KEY={expr='callStockSection("Element Name")',ascending}
		SORTING_COND='getBooleanParam("doc.frgm.xsd.comps.sorting")'
		FMT={
			sec.outputStyle='table';
			table.sizing='Relative';
			table.cell.padding.both='2.5';
		}
		<BODY>
			<AREA_SEC>
				FMT={
					trow.cell.align.vert='Top';
					trow.page.keepTogether='true';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<PANEL>
								FMT={
									ctrl.size.width='150';
									ctrl.size.height='60';
								}
								<AREA>
									<CTRL_GROUP>
										FMT={
											txtfl.delimiter.type='none';
											par.option.nowrap='false';
										}
										<CTRLS>
											<IMAGE_CTRL>
												IMAGE_TYPE='file-image'
												FILE='../../images/element.png'
												OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
												FMT={
													image.alignment='bottom';
													image.padding.right='2.5';
												}
											</IMAGE_CTRL>
											<SS_CALL_CTRL>
												SS_NAME='Element Name'
												FMT={
													ctrl.size.width='125.3';
													ctrl.size.height='17.3';
													text.style='cs12';
												}
											</SS_CALL_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
							<SS_CALL_CTRL>
								SS_NAME='Element Info'
								FMT={
									ctrl.size.width='318';
									ctrl.size.height='60';
									tcell.sizing='Relative';
								}
							</SS_CALL_CTRL>
							<DATA_CTRL>
								COND='output.format.supportsPageRefs &&
thisContext.getBooleanVar ("showPageColumn")'
								DOCFIELD='page-htarget'
								FMT={
									ctrl.size.width='31.5';
									ctrl.size.height='60';
									ctrl.option.noHLinkFmt='true';
									tcell.sizing='Minimal';
									tcell.align.horz='Center';
									text.style='cs8';
									text.hlink.fmt='none';
								}
								<DOC_HLINK>
									HKEYS={
										'contextElement.id';
										'Array ("detail", "def", "xml-source-location")';
									}
								</DOC_HLINK>
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
		<HEADER>
			<AREA_SEC>
				FMT={
					trow.page.keepTogether='true';
					trow.page.keepWithNext='true';
				}
				<AREA>
					<CTRL_GROUP>
						FMT={
							trow.bkgr.color='#CCCCFF';
						}
						<CTRLS>
							<PANEL>
								FMT={
									ctrl.size.width='467.3';
									ctrl.size.height='41.3';
									text.style='cs11';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												COND='hasParamValue("doc.frgm.xsd.comps.for.elements.local", "all")'
												TEXT='All'
											</TEXT_CTRL>
											<TEXT_CTRL>
												COND='hasParamValue("doc.frgm.xsd.comps.for.elements.local", "none")'
												TEXT='Global'
											</TEXT_CTRL>
											<TEXT_CTRL>
												TEXT='Element Summary'
												FMT={
													tcell.sizing='Relative';
													text.style='cs11';
												}
											</TEXT_CTRL>
											<DELIMITER>
												FMT={
													text.style='cs1';
												}
											</DELIMITER>
											<TEMPLATE_CALL_CTRL>
												TEMPLATE_FILE='elementListNote.tpl'
												PASSED_PARAMS={
													'$elements.local.unifiedByType','! hasParamValue("gen.doc.xsd.comp.element.local", "none")
&&
getBooleanParam("gen.doc.xsd.comp.element.local.unifyByType")
&&
{
  localElementFilter = hasParamValue("$scope", "schema") ?
    BooleanQuery (findAncestor("xs:schema").id == rootElement.id) : null;

  findElementByFilter (
    iterator.items,
    BooleanQuery
    (
      instanceOf ("xs:%localElement")
      &&
      countElementsByKey (
        "xsd-globally-documented-local-elements",
        contextElement.id,
        localElementFilter
      ) > 1
    )
  ) != null
}';
												}
												FMT={
													text.style='cs6';
												}
											</TEMPLATE_CALL_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
							<TEXT_CTRL>
								COND='output.format.supportsPageRefs &&
thisContext.getBooleanVar ("showPageColumn")'
								TEXT='Page'
								FMT={
									ctrl.size.width='32.3';
									ctrl.size.height='41.3';
									tcell.sizing='Minimal';
									tcell.align.horz='Center';
									text.style='cs8';
									text.font.style.bold='true';
								}
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</ELEMENT_ITER>
</ROOT>
<STOCK_SECTIONS>
	<TEMPLATE_CALL>
		SS_NAME='annotation'
		TEMPLATE_FILE='../ann/annotation.tpl'
	</TEMPLATE_CALL>
	<FOLDER>
		SS_NAME='Element Info'
		MATCHING_ET='xs:%element'
		INIT_EXPR='schema = findAncestor ("xs:schema");

nsURI = instanceOf ("xs:element") ? schema.getServiceAttr("targetNamespace") :
          (hasAttr("form") ? getAttrValue("form") :
            schema.getAttrStringValue ("elementFormDefault")) == "qualified" 
              ? schema.getServiceAttr("targetNamespace") : "";

stockSection.setVar ("nsURI", nsURI);
stockSection.setVar ("usageCount", countElementsByKey ("xsd-element-usage", contextElement.id));'
		<BODY>
			<TEMPLATE_CALL>
				DESCR='first sentence of annotation'
				COND='hasParamValue("doc.frgm.xsd.comps.annotation", "first_sentence")
&&
(instanceOf("xs:element") || stockSection.getIntVar("usageCount") == 1)'
				OUTPUT_CHECKER_EXPR='getValuesByLPath(
  "xs:annotation/xs:documentation//(#TEXT | #CDATA)"
).isBlank() ? -1 : 1'
				TEMPLATE_FILE='../ann/firstSentence.tpl'
				FMT={
					text.style='cs5';
				}
			</TEMPLATE_CALL>
			<FOLDER>
				DESCR='profile'
				COND='getBooleanParam("doc.frgm.xsd.comps.profile")'
				FMT={
					sec.spacing.before='5';
				}
				<BODY>
					<TEMPLATE_CALL>
						COND='getBooleanParam("fmt.allowNestedTables")'
						BREAK_PARENT_BLOCK='when-executed'
						TEMPLATE_FILE='elementProfile.tpl'
						PASSED_PARAMS={
							'$nsURI','stockSection.getStringVar("nsURI")';
							'$usageCount','stockSection.getIntVar("usageCount")';
							'doc.xsd.comp.profile.namespace','getBooleanParam("doc.frgm.xsd.comps.profile.namespace")';
							'doc.xsd.comp.profile.type','getBooleanParam("doc.frgm.xsd.comps.profile.type")';
							'doc.xsd.comp.profile.content','getBooleanParam("doc.frgm.xsd.comps.profile.content")';
							'doc.xsd.comp.profile.abstract','getBooleanParam("doc.frgm.xsd.comps.profile.abstract")';
							'doc.xsd.comp.profile.block','getStringParam("doc.frgm.xsd.comps.profile.block")';
							'doc.xsd.comp.profile.block.value','getBooleanParam("doc.frgm.xsd.comps.profile.block.value")';
							'doc.xsd.comp.profile.block.meaning','getBooleanParam("doc.frgm.xsd.comps.profile.block.meaning")';
							'doc.xsd.comp.profile.final','getStringParam("doc.frgm.xsd.comps.profile.final")';
							'doc.xsd.comp.profile.final.value','getBooleanParam("doc.frgm.xsd.comps.profile.final.value")';
							'doc.xsd.comp.profile.final.meaning','getBooleanParam("doc.frgm.xsd.comps.profile.final.meaning")';
							'doc.xsd.comp.profile.subst','getBooleanParam("doc.frgm.xsd.comps.profile.subst")';
							'doc.xsd.comp.profile.subst.heads','getBooleanParam("doc.frgm.xsd.comps.profile.subst.heads")';
							'doc.xsd.comp.profile.subst.members','getBooleanParam("doc.frgm.xsd.comps.profile.subst.members")';
							'doc.xsd.comp.profile.nillable','getBooleanParam("doc.frgm.xsd.comps.profile.nillable")';
							'doc.xsd.comp.profile.defined','getBooleanParam("doc.frgm.xsd.comps.profile.defined")';
							'doc.xsd.comp.profile.includes','getBooleanParam("doc.frgm.xsd.comps.profile.includes")';
							'doc.xsd.comp.profile.used','getBooleanParam("doc.frgm.xsd.comps.profile.used")';
						}
					</TEMPLATE_CALL>
					<TEMPLATE_CALL>
						TEMPLATE_FILE='elementProfile2.tpl'
						PASSED_PARAMS={
							'$nsURI','stockSection.getStringVar("nsURI")';
							'$usageCount','stockSection.getIntVar("usageCount")';
							'doc.xsd.comp.profile.namespace','getBooleanParam("doc.frgm.xsd.comps.profile.namespace")';
							'doc.xsd.comp.profile.type','getBooleanParam("doc.frgm.xsd.comps.profile.type")';
							'doc.xsd.comp.profile.content','getBooleanParam("doc.frgm.xsd.comps.profile.content")';
							'doc.xsd.comp.profile.abstract','getBooleanParam("doc.frgm.xsd.comps.profile.abstract")';
							'doc.xsd.comp.profile.block','getStringParam("doc.frgm.xsd.comps.profile.block")';
							'doc.xsd.comp.profile.block.value','getBooleanParam("doc.frgm.xsd.comps.profile.block.value")';
							'doc.xsd.comp.profile.block.meaning','getBooleanParam("doc.frgm.xsd.comps.profile.block.meaning")';
							'doc.xsd.comp.profile.final','getStringParam("doc.frgm.xsd.comps.profile.final")';
							'doc.xsd.comp.profile.final.value','getBooleanParam("doc.frgm.xsd.comps.profile.final.value")';
							'doc.xsd.comp.profile.final.meaning','getBooleanParam("doc.frgm.xsd.comps.profile.final.meaning")';
							'doc.xsd.comp.profile.subst','getBooleanParam("doc.frgm.xsd.comps.profile.subst")';
							'doc.xsd.comp.profile.subst.heads','getBooleanParam("doc.frgm.xsd.comps.profile.subst.heads")';
							'doc.xsd.comp.profile.subst.members','getBooleanParam("doc.frgm.xsd.comps.profile.subst.members")';
							'doc.xsd.comp.profile.nillable','getBooleanParam("doc.frgm.xsd.comps.profile.nillable")';
							'doc.xsd.comp.profile.defined','getBooleanParam("doc.frgm.xsd.comps.profile.defined")';
							'doc.xsd.comp.profile.includes','getBooleanParam("doc.frgm.xsd.comps.profile.includes")';
							'doc.xsd.comp.profile.used','getBooleanParam("doc.frgm.xsd.comps.profile.used")';
						}
					</TEMPLATE_CALL>
				</BODY>
			</FOLDER>
			<FOLDER>
				DESCR='full annotation'
				COND='hasParamValue("doc.frgm.xsd.comps.annotation", "full")'
				FMT={
					sec.spacing.before='7';
				}
				<BODY>
					<SS_CALL>
						DESCR='in case of global element or local element defined in one location, print the only annotation'
						COND='instanceOf("xs:element") || 
stockSection.getIntVar("usageCount") == 1'
						BREAK_PARENT_BLOCK='when-executed'
						SS_NAME='annotation'
						FMT={
							text.style='cs5';
						}
					</SS_CALL>
					<ELEMENT_ITER>
						DESCR='in case of unified local element, print all annotations by definition locations'
						OUTPUT_CHECKER_EXPR='checkElementsByKey (
  "xsd-element-usage",
  contextElement.id,
  BooleanQuery (checkStockSectionOutput ("annotation"))
) ? 1 : -1'
						FINISH_EXPR='removeElementMap ("local-annotations")'
						COLLAPSED
						TARGET_ET='#CUSTOM'
						SCOPE='custom'
						ELEMENT_ENUM_EXPR='prepareElementMap (
  "local-annotations",
  findElementsByKey ("xsd-element-usage", stockSection.contextElement.id),
  FlexQuery ({
    ann = callStockSection ("annotation");
    (ann != "") ? ann : null
  })
);

toCustomElements (getElementMapKeys ("local-annotations"))'
						<BODY>
							<ELEMENT_ITER>
								DESCR='iterate by all locations with the same (current) annotation'
								OUTPUT_CHECKER_EXPR='1 // the output always exists'
								TARGET_ET='xs:%element'
								SCOPE='custom'
								ELEMENT_ENUM_EXPR='findElementsByKey ("local-annotations", contextElement.value)'
								FMT={
									sec.outputStyle='text-par';
									sec.spacing.before='6.7';
									list.type='delimited';
									list.margin.block='true';
								}
								<BODY>
									<AREA_SEC>
										FMT={
											text.style='cs10';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='within'
														<DOC_HLINK>
															HKEYS={
																'contextElement.id';
																'"def"';
															}
														</DOC_HLINK>
													</TEXT_CTRL>
													<PANEL>
														CONTEXT_ELEMENT_EXPR='findPredecessorByType("xs:%element|xs:complexType|xs:group")'
														MATCHING_ETS={'xs:%element';'xs:complexType';'xs:group'}
														FMT={
															ctrl.size.width='284.3';
															ctrl.size.height='38.3';
														}
														<AREA>
															<CTRL_GROUP>
																<CTRLS>
																	<TEXT_CTRL>
																		MATCHING_ET='xs:%element'
																		TEXT='element'
																	</TEXT_CTRL>
																	<TEXT_CTRL>
																		MATCHING_ET='xs:complexType'
																		TEXT='complexType'
																	</TEXT_CTRL>
																	<TEXT_CTRL>
																		MATCHING_ET='xs:group'
																		TEXT='group'
																	</TEXT_CTRL>
																	<SS_CALL_CTRL>
																		SS_NAME='Element Name'
																		FMT={
																			text.style='cs2';
																		}
																	</SS_CALL_CTRL>
																</CTRLS>
															</CTRL_GROUP>
														</AREA>
													</PANEL>
													<DELIMITER>
														FMT={
															txtfl.delimiter.type='text';
															txtfl.delimiter.text=', ';
														}
													</DELIMITER>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</AREA_SEC>
								</BODY>
								<HEADER>
									<AREA_SEC>
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='Annotation'
														FMT={
															text.style='cs9';
															text.decor.underline='true';
														}
													</TEXT_CTRL>
													<TEXT_CTRL>
														TEXT='('
														FMT={
															text.style='cs10';
														}
													</TEXT_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</AREA_SEC>
								</HEADER>
								<FOOTER>
									<AREA_SEC>
										FMT={
											text.style='cs10';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<DELIMITER>
														FMT={
															txtfl.delimiter.type='none';
														}
													</DELIMITER>
													<TEXT_CTRL>
														TEXT=')'
													</TEXT_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</AREA_SEC>
								</FOOTER>
							</ELEMENT_ITER>
							<SS_CALL>
								SS_NAME='annotation'
								PASSED_ELEMENT_EXPR='findElementByKey ("local-annotations", contextElement.value)'
								PASSED_ELEMENT_MATCHING_ET='xs:%element'
								FMT={
									sec.spacing.before='6.7';
									text.style='cs5';
								}
							</SS_CALL>
						</BODY>
					</ELEMENT_ITER>
				</BODY>
			</FOLDER>
		</BODY>
	</FOLDER>
	<TEMPLATE_CALL>
		SS_NAME='Element Name'
		DESCR='prints the qualified name of any global schema component or local element (passed as the stock-section context element)'
		TEMPLATE_FILE='../component/componentName.tpl'
		FMT={
			sec.outputStyle='text-par';
		}
	</TEMPLATE_CALL>
</STOCK_SECTIONS>
CHECKSUM='fN3+CpejnUkzRMp7r76z4AQE+qV59++XkSZmCMuYebM'
</DOCFLEX_TEMPLATE>