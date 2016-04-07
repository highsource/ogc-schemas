<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2004-06-21 01:50:00'
LAST_UPDATE='2014-07-05 20:02:50'
DESIGNER_TOOL='DocFlex SDK 1.x'
DESIGNER_LICENSE_TYPE='Filigris Works Team'
APP_ID='docflex-xml-xsddoc2'
APP_NAME='DocFlex/XML XSDDoc'
APP_VER='2.8.1'
APP_AUTHOR='Copyright © 2005-2014 Filigris Works, Leonid Rudy Softwareprodukte. All rights reserved.'
TEMPLATE_TYPE='DocumentTemplate'
DSM_TYPE_ID='xsddoc'
ROOT_ET='#DOCUMENTS'
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$nsURI';
		param.title='Namespace URI';
		param.type='string';
	}
	PARAM={
		param.name='$linkDestKeys';
		param.type='string';
		param.list='true';
		param.defaultValue.expr='moveElement (
  Vector ("detail", "xml-source-location"),
  indexOf (
    Array ("details", "xml_source"),
    getBooleanParam("nav.listFrame.namespace.sorting")
  ),
  0
).toArray()';
		param.fixed='true';
	}
	PARAM={
		param.name='gen.doc.element.local';
		param.title='Local Elements';
		param.group='true';
		param.type='enum';
		param.enum.values='all;complexType;none';
	}
	PARAM={
		param.name='gen.doc.element.local.unifyByType';
		param.title='Unify By Type';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='nav';
		param.title='Navigation';
		param.title.style.bold='true';
		param.group='true';
	}
	PARAM={
		param.name='nav.listFrame.toc';
		param.title='Table of Contents';
		param.type='boolean';
	}
	PARAM={
		param.name='nav.listFrame.namespace';
		param.title='Namespace';
		param.title.style.bold='true';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='nav.listFrame.namespace.linkTo';
		param.title='Link To';
		param.title.style.italic='true';
		param.type='enum';
		param.enum.values='details;xml_source';
	}
	PARAM={
		param.name='nav.listFrame.namespace.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='nav.listFrame.namespace.schemas';
		param.title='Schemas';
		param.type='boolean';
	}
	PARAM={
		param.name='nav.listFrame.namespace.elements';
		param.title='Elements';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='nav.listFrame.namespace.elements.local';
		param.title='Local Elements';
		param.type='enum';
		param.enum.values='all;complexType;none';
	}
	PARAM={
		param.name='nav.listFrame.namespace.complexTypes';
		param.title='Complex Types';
		param.type='boolean';
	}
	PARAM={
		param.name='nav.listFrame.namespace.simpleTypes';
		param.title='Simple Types';
		param.type='boolean';
	}
	PARAM={
		param.name='nav.listFrame.namespace.groups';
		param.title='Element Groups';
		param.type='boolean';
	}
	PARAM={
		param.name='nav.listFrame.namespace.attributes';
		param.title='Global Attributes';
		param.type='boolean';
	}
	PARAM={
		param.name='nav.listFrame.namespace.attributeGroups';
		param.title='Attribute Groups';
		param.type='boolean';
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
</TEMPLATE_PARAMS>
<STYLES>
	CHAR_STYLE={
		style.name='Default Paragraph Font';
		style.id='cs1';
		style.default='true';
	}
	PAR_STYLE={
		style.name='Frame Heading 1';
		style.id='s1';
		text.font.name='Arial';
		text.font.size='9.5';
		text.font.style.bold='true';
		par.margin.bottom='5.8';
		par.option.nowrap='true';
	}
	PAR_STYLE={
		style.name='Frame Heading 2';
		style.id='s2';
		text.font.size='9';
		text.font.style.bold='true';
		par.margin.top='5.8';
		par.margin.bottom='2.5';
		par.option.nowrap='true';
	}
	PAR_STYLE={
		style.name='Frame Heading 2 (Note)';
		style.id='s3';
		text.font.name='Tahoma';
		text.font.size='6';
		text.font.style.bold='true';
		par.margin.top='0';
		par.margin.bottom='3.3';
		par.option.nowrap='true';
	}
	PAR_STYLE={
		style.name='Frame Item';
		style.id='s4';
		text.font.size='9';
		par.option.nowrap='true';
	}
	PAR_STYLE={
		style.name='Frame TOC';
		style.id='s5';
		text.font.size='8';
		par.option.nowrap='true';
	}
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs2';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='Hyperlink (blended in, hover)';
		style.id='cs3';
		text.decor.underline='true';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s6';
		style.default='true';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
}
<HTARGET>
	HKEYS={
		'getStringParam("$nsURI")';
		'"listFrame"';
	}
</HTARGET>
<ROOT>
	<FOLDER>
		ALWAYS_PROC_HDRFTR
		<BODY>
			<ELEMENT_ITER>
				DESCR='list of XML schemas targeting this namespace'
				COND='getBooleanParam("nav.listFrame.namespace.schemas")'
				TARGET_ET='xs:schema'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> {findElementsByKey ("namespaces", getParam("$nsURI"))}::xs:schema';
				}
				SORTING='by-expr'
				SORTING_KEY={expr='getXMLDocument().getAttrStringValue("xmlName")',ascending}
				<BODY>
					<SS_CALL>
						SS_NAME='Schema Name'
						FMT={
							par.style='s4';
						}
					</SS_CALL>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							par.style='s2';
						}
						<HTARGET>
							HKEYS={
								'getParam("$nsURI")';
								'"listFrame"';
								'"schemas"';
							}
						</HTARGET>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<PANEL>
										FMT={
											ctrl.size.width='183';
											ctrl.size.height='38.3';
											text.hlink.fmt='style';
											text.hlink.style='cs3';
											text.hlink.style.use='hover';
										}
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
											TARGET_FRAME_EXPR='"detailFrame"'
											HKEYS={
												'getStringParam("$nsURI")';
												'"schema-summary"';
											}
										</DOC_HLINK>
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='XML Schemas'
													</TEXT_CTRL>
													<DATA_CTRL>
														FORMULA='"(" + iterator.numItems + ")"'
													</DATA_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='list of elements'
				COND='getBooleanParam("nav.listFrame.namespace.elements")'
				TARGET_ET='xs:%element'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> {findElementsByKey ("namespaces", getParam("$nsURI"))}::xs:schema/descendant::xs:%element[instanceOf("xs:element") || ! hasAttr("ref") &&
{
  form = hasAttr("form") ? getAttrValue("form") :
           findAncestor ("xs:schema").getAttrStringValue ("elementFormDefault");

  (form == "qualified" || getStringParam("$nsURI") == "")
}]';
					'*[getParam("$nsURI") == ""] -> {findElementsByKey ("namespaces", "")}::xs:%localElement';
				}
				FILTER='instanceOf("xs:element")
||
// case of local element
{
  // remain only those local elements that are either not documented globally at all
  // or documented globaly themselves (not via a unifier)

  el = findElementByKey ("globally-documented-local-elements", contextElement.id);
  el == null || el.id == contextElement.id
}
&&
{
  // which local elements to list?
  local = getStringParam("nav.listFrame.namespace.elements.local");
  
  local == "complexType" ?
    ((typeQName = getAttrQNameValue("type")) != null) ?
    {
      mainXSD = findElementByKey ("main-xsds", getXMLDocument().id);

      checkElementsByKey ("types", typeQName,
        BooleanQuery (
          instanceOf("xs:complexType")
          &&
          checkElementByKey ("main-xsds", getXMLDocument().id, mainXSD)
        )
      )
    }
    : hasChild("xs:complexType")
  :
  local == "all"
}'
				SORTING='by-expr'
				SORTING_KEY={expr='callStockSection("Component Name")',ascending}
				SORTING_COND='getBooleanParam("nav.listFrame.namespace.sorting")'
				<BODY>
					<SS_CALL>
						SS_NAME='Component Name'
						FMT={
							par.style='s4';
						}
					</SS_CALL>
				</BODY>
				<HEADER>
					<AREA_SEC>
						INIT_EXPR='! hasParamValue("gen.doc.element.local", "none") &&
getBooleanParam("gen.doc.element.local.unifyByType") ?
{
  elementCount = 0;

  iterate (
    iterator.items,
    @(GOMElement) el,
    FlexQuery ({
      count = el.instanceOf ("xs:element") ? 1 :
                countElementsByKey ("globally-documented-local-elements", el.id);

      elementCount = elementCount + (count > 0 ? count : 1);
    })
  )
} : {
  elementCount = iterator.numItems
};

setVar ("elementCount", elementCount);'
						FMT={
							sec.spacing.after='2.5';
							par.style='s2';
						}
						<HTARGET>
							HKEYS={
								'getParam("$nsURI")';
								'"listFrame"';
								'"elements"';
							}
						</HTARGET>
						<AREA>
							<CTRL_GROUP>
								FMT={
									par.margin.bottom='0';
								}
								<CTRLS>
									<PANEL>
										FMT={
											ctrl.size.width='372';
											ctrl.size.height='38.3';
											text.hlink.fmt='style';
											text.hlink.style='cs3';
											text.hlink.style.use='hover';
										}
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
											TARGET_FRAME_EXPR='"detailFrame"'
											HKEYS={
												'getStringParam("$nsURI")';
												'"element-summary"';
											}
										</DOC_HLINK>
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														COND='hasParamValue("nav.listFrame.namespace.elements.local", "all")'
														TEXT='All'
													</TEXT_CTRL>
													<TEXT_CTRL>
														COND='hasParamValue("nav.listFrame.namespace.elements.local", "none")'
														TEXT='Global'
													</TEXT_CTRL>
													<TEXT_CTRL>
														TEXT='Elements'
													</TEXT_CTRL>
													<TEXT_CTRL>
														TEXT='('
													</TEXT_CTRL>
													<DELIMITER>
														FMT={
															txtfl.delimiter.type='none';
														}
													</DELIMITER>
													<DATA_CTRL>
														FORMULA='iterator.numItems'
													</DATA_CTRL>
													<DELIMITER>
														FMT={
															txtfl.delimiter.type='text';
															txtfl.delimiter.text=' / ';
														}
													</DELIMITER>
													<DATA_CTRL>
														COND='getIntVar("elementCount") != iterator.numItems'
														FORMULA='getVar("elementCount")'
													</DATA_CTRL>
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
									</PANEL>
								</CTRLS>
							</CTRL_GROUP>
							<CTRL_GROUP>
								FMT={
									par.style='s3';
								}
								<CTRLS>
									<TEMPLATE_CALL_CTRL>
										TEMPLATE_FILE='../element/elementListNote.tpl'
										PASSED_PARAMS={
											'$elements.local','getStringParam("nav.listFrame.namespace.elements.local")';
											'$elements.local.unifiedByType','getIntVar("elementCount") != iterator.numItems';
										}
									</TEMPLATE_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='list of complex types'
				COND='getBooleanParam("nav.listFrame.namespace.complexTypes")'
				TARGET_ET='xs:complexType'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> {findElementsByKey ("namespaces", getParam("$nsURI"))}::xs:schema';
					'xs:schema -> xs:complexType',recursive;
					'xs:schema -> xs:redefine/xs:complexType',recursive;
				}
				SORTING='by-compound-key'
				SORTING_KEY={
					{expr='getAttrStringValue("name")',ascending};
					{expr='hasServiceAttr ("redefinition") ?
  getServiceAttr ("redefinition").toInt() : -1',ascending};
				}
				SORTING_COND='getBooleanParam("nav.listFrame.namespace.sorting")'
				<BODY>
					<SS_CALL>
						SS_NAME='Component Name'
						FMT={
							par.style='s4';
						}
					</SS_CALL>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							par.style='s2';
						}
						<HTARGET>
							HKEYS={
								'getParam("$nsURI")';
								'"listFrame"';
								'"complexTypes"';
							}
						</HTARGET>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<PANEL>
										FMT={
											ctrl.size.width='188.3';
											ctrl.size.height='38.3';
											text.hlink.fmt='style';
											text.hlink.style='cs3';
											text.hlink.style.use='hover';
										}
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
											TARGET_FRAME_EXPR='"detailFrame"'
											HKEYS={
												'getStringParam("$nsURI")';
												'"complexType-summary"';
											}
										</DOC_HLINK>
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='Complex Types'
													</TEXT_CTRL>
													<DATA_CTRL>
														FORMULA='"(" + iterator.numItems + ")"'
													</DATA_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='list of simple types'
				COND='getBooleanParam("nav.listFrame.namespace.simpleTypes")'
				TARGET_ET='xs:simpleType'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> {findElementsByKey ("namespaces", getParam("$nsURI"))}::xs:schema';
					'xs:schema -> xs:simpleType',recursive;
					'xs:schema -> xs:redefine/xs:simpleType',recursive;
				}
				SORTING='by-compound-key'
				SORTING_KEY={
					{expr='getAttrStringValue("name")',ascending};
					{expr='hasServiceAttr ("redefinition") ?
  getServiceAttr ("redefinition").toInt() : -1',ascending};
				}
				SORTING_COND='getBooleanParam("nav.listFrame.namespace.sorting")'
				<BODY>
					<SS_CALL>
						SS_NAME='Component Name'
						FMT={
							par.style='s4';
						}
					</SS_CALL>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							par.style='s2';
						}
						<HTARGET>
							HKEYS={
								'getParam("$nsURI")';
								'"listFrame"';
								'"simpleTypes"';
							}
						</HTARGET>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<PANEL>
										FMT={
											ctrl.size.width='183';
											ctrl.size.height='38.3';
											text.hlink.fmt='style';
											text.hlink.style='cs3';
											text.hlink.style.use='hover';
										}
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
											TARGET_FRAME_EXPR='"detailFrame"'
											HKEYS={
												'getStringParam("$nsURI")';
												'"simpleType-summary"';
											}
										</DOC_HLINK>
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='Simple Types'
													</TEXT_CTRL>
													<DATA_CTRL>
														FORMULA='"(" + iterator.numItems + ")"'
													</DATA_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='list of element groups'
				COND='getBooleanParam("nav.listFrame.namespace.groups")'
				TARGET_ET='xs:group'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> {findElementsByKey ("namespaces", getParam("$nsURI"))}::xs:schema';
					'xs:schema -> xs:group',recursive;
					'xs:schema -> xs:redefine/xs:group',recursive;
				}
				SORTING='by-compound-key'
				SORTING_KEY={
					{expr='getAttrStringValue("name")',ascending};
					{expr='hasServiceAttr ("redefinition") ?
  getServiceAttr ("redefinition").toInt() : -1',ascending};
				}
				SORTING_COND='getBooleanParam("nav.listFrame.namespace.sorting")'
				<BODY>
					<SS_CALL>
						SS_NAME='Component Name'
						FMT={
							par.style='s4';
						}
					</SS_CALL>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							par.style='s2';
						}
						<HTARGET>
							HKEYS={
								'getParam("$nsURI")';
								'"listFrame"';
								'"groups"';
							}
						</HTARGET>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<PANEL>
										FMT={
											ctrl.size.width='191.3';
											ctrl.size.height='38.3';
											text.hlink.fmt='style';
											text.hlink.style='cs3';
											text.hlink.style.use='hover';
										}
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
											TARGET_FRAME_EXPR='"detailFrame"'
											HKEYS={
												'getStringParam("$nsURI")';
												'"group-summary"';
											}
										</DOC_HLINK>
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='Element Groups'
													</TEXT_CTRL>
													<DATA_CTRL>
														FORMULA='"(" + iterator.numItems + ")"'
													</DATA_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='list of global attributes'
				COND='getBooleanParam("nav.listFrame.namespace.attributes")'
				TARGET_ET='xs:attribute'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> {findElementsByKey ("namespaces", getParam("$nsURI"))}::xs:schema/xs:attribute';
				}
				SORTING='by-attr'
				SORTING_KEY={lpath='@name',ascending}
				SORTING_COND='getBooleanParam("nav.listFrame.namespace.sorting")'
				<BODY>
					<SS_CALL>
						SS_NAME='Component Name'
						FMT={
							par.style='s4';
						}
					</SS_CALL>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							par.style='s2';
						}
						<HTARGET>
							HKEYS={
								'getParam("$nsURI")';
								'"listFrame"';
								'"attributes"';
							}
						</HTARGET>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<PANEL>
										FMT={
											ctrl.size.width='168';
											ctrl.size.height='38.3';
											text.hlink.fmt='style';
											text.hlink.style='cs3';
											text.hlink.style.use='hover';
										}
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
											TARGET_FRAME_EXPR='"detailFrame"'
											HKEYS={
												'getStringParam("$nsURI")';
												'"attribute-summary"';
											}
										</DOC_HLINK>
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='Attributes'
													</TEXT_CTRL>
													<DATA_CTRL>
														FORMULA='"(" + iterator.numItems + ")"'
													</DATA_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='list of attribute groups'
				COND='getBooleanParam("nav.listFrame.namespace.attributeGroups")'
				TARGET_ET='xs:attributeGroup'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> {findElementsByKey ("namespaces", getParam("$nsURI"))}::xs:schema';
					'xs:schema -> xs:attributeGroup',recursive;
					'xs:schema -> xs:redefine/xs:attributeGroup',recursive;
				}
				SORTING='by-compound-key'
				SORTING_KEY={
					{expr='getAttrStringValue("name")',ascending};
					{expr='hasServiceAttr ("redefinition") ?
  getServiceAttr ("redefinition").toInt() : -1',ascending};
				}
				SORTING_COND='getBooleanParam("nav.listFrame.namespace.sorting")'
				<BODY>
					<SS_CALL>
						SS_NAME='Component Name'
						FMT={
							par.style='s4';
						}
					</SS_CALL>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							par.style='s2';
						}
						<HTARGET>
							HKEYS={
								'getParam("$nsURI")';
								'"listFrame"';
								'"attributeGroups"';
							}
						</HTARGET>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<PANEL>
										FMT={
											ctrl.size.width='194.3';
											ctrl.size.height='38.3';
											text.hlink.fmt='style';
											text.hlink.style='cs3';
											text.hlink.style.use='hover';
										}
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
											TARGET_FRAME_EXPR='"detailFrame"'
											HKEYS={
												'getStringParam("$nsURI")';
												'"attributeGroup-summary"';
											}
										</DOC_HLINK>
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='Attribute Groups'
													</TEXT_CTRL>
													<DATA_CTRL>
														FORMULA='"(" + iterator.numItems + ")"'
													</DATA_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
			</ELEMENT_ITER>
		</BODY>
		<HEADER>
			DESCR='namespace URI'
			<AREA_SEC>
				FMT={
					par.style='s1';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								FORMULA='(nsURI = getStringParam("$nsURI")) != "" ? nsURI : "{no namespace}"'
								<DOC_HLINK>
									TITLE_EXPR='getBooleanParam("show.linkTitle")
?
  (nsURI = getStringParam("$nsURI")) != "" ?
    "Namespace {" + nsURI + "}" : "No Namespace"
: ""'
									TARGET_FRAME_EXPR='"detailFrame"'
									HKEYS={
										'getStringParam("$nsURI")';
										'"detail"';
									}
								</DOC_HLINK>
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				COND='getBooleanParam("nav.listFrame.toc")'
				FMT={
					sec.outputStyle='table';
					table.cell.padding.both='3.3';
					table.bkgr.color='#F5F5F5';
					table.border.style='solid';
					table.border.color='#999999';
					table.option.borderStylesInHTML='true';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<SS_CALL_CTRL>
								SS_NAME='TOC'
								FMT={
									ctrl.size.width='499.5';
									ctrl.size.height='17.3';
								}
							</SS_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
</ROOT>
<STOCK_SECTIONS>
	<TEMPLATE_CALL>
		SS_NAME='Component Name'
		DESCR='prints the qualified name of any global schema component or local element (passed as the stock-section context element)'
		TEMPLATE_FILE='../component/componentName.tpl'
		PASSED_PARAMS={
			'$targetFrame','"detailFrame"';
		}
		FMT={
			sec.outputStyle='text-par';
		}
	</TEMPLATE_CALL>
	<TEMPLATE_CALL>
		SS_NAME='Schema Name'
		TEMPLATE_FILE='../schema/schemaName.tpl'
		PASSED_PARAMS={
			'$targetFrame','"detailFrame"';
		}
	</TEMPLATE_CALL>
	<FOLDER>
		SS_NAME='TOC'
		FMT={
			par.style='s5';
			table.cell.padding.both='0';
			table.border.style='none';
		}
		<BODY>
			<AREA_SEC>
				COND='findHyperTarget (
  Array (
    getParam("$nsURI"),
    "listFrame",
    "schemas"
  )
) != null'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='XML Schemas'
								<DOC_HLINK>
									HKEYS={
										'getParam("$nsURI")';
										'"listFrame"';
										'"schemas"';
									}
								</DOC_HLINK>
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				COND='findHyperTarget (
  Array (
    getParam("$nsURI"),
    "listFrame",
    "elements"
  )
) != null'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Elements'
								<DOC_HLINK>
									HKEYS={
										'getParam("$nsURI")';
										'"listFrame"';
										'"elements"';
									}
								</DOC_HLINK>
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				COND='findHyperTarget (
  Array (
    getParam("$nsURI"),
    "listFrame",
    "complexTypes"
  )
) != null'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Complex Types'
								<DOC_HLINK>
									HKEYS={
										'getParam("$nsURI")';
										'"listFrame"';
										'"complexTypes"';
									}
								</DOC_HLINK>
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				COND='findHyperTarget (
  Array (
    getParam("$nsURI"),
    "listFrame",
    "simpleTypes"
  )
) != null'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Simple Types'
								<DOC_HLINK>
									HKEYS={
										'getParam("$nsURI")';
										'"listFrame"';
										'"simpleTypes"';
									}
								</DOC_HLINK>
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				COND='findHyperTarget (
  Array (
    getParam("$nsURI"),
    "listFrame",
    "groups"
  )
) != null'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Element Groups'
								<DOC_HLINK>
									HKEYS={
										'getParam("$nsURI")';
										'"listFrame"';
										'"groups"';
									}
								</DOC_HLINK>
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				COND='findHyperTarget (
  Array (
    getParam("$nsURI"),
    "listFrame",
    "attributes"
  )
) != null'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Attributes'
								<DOC_HLINK>
									HKEYS={
										'getParam("$nsURI")';
										'"listFrame"';
										'"attributes"';
									}
								</DOC_HLINK>
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				COND='findHyperTarget (
  Array (
    getParam("$nsURI"),
    "listFrame",
    "attributeGroups"
  )
) != null'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Attribute Groups'
								<DOC_HLINK>
									HKEYS={
										'getParam("$nsURI")';
										'"listFrame"';
										'"attributeGroups"';
									}
								</DOC_HLINK>
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</FOLDER>
</STOCK_SECTIONS>
CHECKSUM='jzP3zgmT4ff2cZtoU?Ku7V1kZJFVn+0Q?jDT24IfYs8'
</DOCFLEX_TEMPLATE>