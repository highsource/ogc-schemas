<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2008-11-25 03:52:22'
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
		param.name='$linkDestKeys';
		param.type='string';
		param.list='true';
		param.defaultValue.expr='moveElement (
  Vector ("detail", "xml-source-location"),
  indexOf (
    Array ("details", "xml_source"),
    getStringParam("nav.listFrame.allcomps.linkTo")
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
		param.name='nav.listFrame.allcomps';
		param.title='All Components';
		param.title.style.bold='true';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='nav.listFrame.allcomps.linkTo';
		param.title='Link To';
		param.title.style.italic='true';
		param.type='enum';
		param.enum.values='details;xml_source';
	}
	PARAM={
		param.name='nav.listFrame.allcomps.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='nav.listFrame.allcomps.elements';
		param.title='Elements';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='nav.listFrame.allcomps.elements.local';
		param.title='Local Elements';
		param.type='enum';
		param.enum.values='all;complexType;none';
	}
	PARAM={
		param.name='nav.listFrame.allcomps.complexTypes';
		param.title='Complex Types';
		param.type='boolean';
	}
	PARAM={
		param.name='nav.listFrame.allcomps.simpleTypes';
		param.title='Simple Types';
		param.type='boolean';
	}
	PARAM={
		param.name='nav.listFrame.allcomps.groups';
		param.title='Element Groups';
		param.type='boolean';
	}
	PARAM={
		param.name='nav.listFrame.allcomps.attributes';
		param.title='Global Attributes';
		param.type='boolean';
	}
	PARAM={
		param.name='nav.listFrame.allcomps.attributeGroups';
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
<ROOT>
	<FOLDER>
		<BODY>
			<ELEMENT_ITER>
				COND='getBooleanParam("nav.listFrame.allcomps.elements")'
				TARGET_ET='xs:%element'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> #DOCUMENT/xs:schema[checkElementsByKey ("documented-schemas", contextElement.id)]/descendant::xs:%element';
				}
				FILTER='instanceOf("xs:element")
||
! hasAttr("ref")
&&
{
  // remain only those local elements that are either not documented globally at all
  // or documented globaly themselves (not via a unifier)

  el = findElementByKey ("globally-documented-local-elements", contextElement.id);
  el == null || el.id == contextElement.id
}
&&
{
  // which local elements to list?
  local = getStringParam("nav.listFrame.allcomps.elements.local");
  
  local == "complexType" ?
    ((typeQName = getAttrQNameValue("type")) != null) ?
    {
      mainXSD = findElementByKey ("main-xsds", getXMLDocument().id);

      checkElementsByKey (
        "types", typeQName,
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
				SORTING_COND='getBooleanParam("nav.listFrame.allcomps.sorting")'
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
								'"all-components"';
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
												'"all-element-summary"';
											}
										</DOC_HLINK>
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														COND='hasParamValue("nav.listFrame.allcomps.elements.local", "all")'
														TEXT='All'
													</TEXT_CTRL>
													<TEXT_CTRL>
														COND='hasParamValue("nav.listFrame.allcomps.elements.local", "none")'
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
											'$elements.local','getStringParam("nav.listFrame.allcomps.elements.local")';
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
				COND='getBooleanParam("nav.listFrame.allcomps.complexTypes")'
				TARGET_ET='xs:complexType'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> #DOCUMENT/xs:schema[checkElementsByKey ("documented-schemas", contextElement.id)]';
					'xs:schema -> xs:complexType',recursive;
					'xs:schema -> xs:redefine/xs:complexType',recursive;
				}
				SORTING='by-compound-key'
				SORTING_KEY={
					{expr='toXMLName (
  findAncestor ("xs:schema").getServiceAttr("targetNamespace").toString(),
  getAttrStringValue("name")
)',ascending};
					{expr='hasServiceAttr ("redefinition") ?
  getServiceAttr ("redefinition").toInt() : -1',ascending};
				}
				SORTING_COND='getBooleanParam("nav.listFrame.allcomps.sorting")'
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
								'"all-components"';
								'"listFrame"';
								'"complexTypes"';
							}
						</HTARGET>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<PANEL>
										FMT={
											ctrl.size.width='192';
											ctrl.size.height='38.3';
											text.hlink.fmt='style';
											text.hlink.style='cs3';
											text.hlink.style.use='hover';
										}
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
											TARGET_FRAME_EXPR='"detailFrame"'
											HKEYS={
												'"all-complexType-summary"';
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
				COND='getBooleanParam("nav.listFrame.allcomps.simpleTypes")'
				TARGET_ET='xs:simpleType'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> #DOCUMENT/xs:schema[checkElementsByKey ("documented-schemas", contextElement.id)]';
					'xs:schema -> xs:simpleType',recursive;
					'xs:schema -> xs:redefine/xs:simpleType',recursive;
				}
				SORTING='by-compound-key'
				SORTING_KEY={
					{expr='toXMLName (
  findAncestor ("xs:schema").getServiceAttr("targetNamespace").toString(),
  getAttrStringValue("name")
)',ascending};
					{expr='hasServiceAttr ("redefinition") ?
  getServiceAttr ("redefinition").toInt() : -1',ascending};
				}
				SORTING_COND='getBooleanParam("nav.listFrame.allcomps.sorting")'
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
								'"all-components"';
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
												'"all-simpleType-summary"';
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
				COND='getBooleanParam("nav.listFrame.allcomps.groups")'
				TARGET_ET='xs:group'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> #DOCUMENT/xs:schema[checkElementsByKey ("documented-schemas", contextElement.id)]';
					'xs:schema -> xs:group',recursive;
					'xs:schema -> xs:redefine/xs:group',recursive;
				}
				SORTING='by-compound-key'
				SORTING_KEY={
					{expr='toXMLName (
  findAncestor ("xs:schema").getServiceAttr("targetNamespace").toString(),
  getAttrStringValue("name")
)',ascending};
					{expr='hasServiceAttr ("redefinition") ?
  getServiceAttr ("redefinition").toInt() : -1',ascending};
				}
				SORTING_COND='getBooleanParam("nav.listFrame.allcomps.sorting")'
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
								'"all-components"';
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
												'"all-group-summary"';
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
				COND='getBooleanParam("nav.listFrame.allcomps.attributes")'
				TARGET_ET='xs:attribute'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> #DOCUMENT/xs:schema[checkElementsByKey ("documented-schemas", contextElement.id)]/xs:attribute';
				}
				SORTING='by-expr'
				SORTING_KEY={expr='toXMLName (
  findAncestor ("xs:schema").getServiceAttr("targetNamespace").toString(),
  getAttrStringValue("name")
)',ascending}
				SORTING_COND='getBooleanParam("nav.listFrame.allcomps.sorting")'
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
								'"all-components"';
								'"listFrame"';
								'"attributes"';
							}
						</HTARGET>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<PANEL>
										FMT={
											ctrl.size.width='169.5';
											ctrl.size.height='38.3';
											text.hlink.fmt='style';
											text.hlink.style='cs3';
											text.hlink.style.use='hover';
										}
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
											TARGET_FRAME_EXPR='"detailFrame"'
											HKEYS={
												'"all-attribute-summary"';
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
				COND='getBooleanParam("nav.listFrame.allcomps.attributeGroups")'
				TARGET_ET='xs:attributeGroup'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> #DOCUMENT/xs:schema[checkElementsByKey ("documented-schemas", contextElement.id)]';
					'xs:schema -> xs:attributeGroup',recursive;
					'xs:schema -> xs:redefine/xs:attributeGroup',recursive;
				}
				SORTING='by-compound-key'
				SORTING_KEY={
					{expr='toXMLName (
  findAncestor ("xs:schema").getServiceAttr("targetNamespace").toString(),
  getAttrStringValue("name")
)',ascending};
					{expr='hasServiceAttr ("redefinition") ?
  getServiceAttr ("redefinition").toInt() : -1',ascending};
				}
				SORTING_COND='getBooleanParam("nav.listFrame.allcomps.sorting")'
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
								'"all-components"';
								'"listFrame"';
								'"attributeGroups"';
							}
						</HTARGET>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<PANEL>
										FMT={
											ctrl.size.width='189.8';
											ctrl.size.height='38.3';
											text.hlink.fmt='style';
											text.hlink.style='cs3';
											text.hlink.style.use='hover';
										}
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
											TARGET_FRAME_EXPR='"detailFrame"'
											HKEYS={
												'"all-attributeGroup-summary"';
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
			<AREA_SEC>
				FMT={
					par.style='s1';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='All Components'
								<URL_HLINK>
									TARGET_FRAME_EXPR='"detailFrame"'
									URL_EXPR='documentByTemplate("all-components-summary")'
								</URL_HLINK>
							</TEXT_CTRL>
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
		DESCR='prints the qualified name of any global schema component and local element (passed as the stock-section context element)'
		TEMPLATE_FILE='componentName.tpl'
		PASSED_PARAMS={
			'$targetFrame','"detailFrame"';
		}
		FMT={
			sec.outputStyle='text-par';
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
    "all-components",
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
										'"all-components"';
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
    "all-components",
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
										'"all-components"';
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
    "all-components",
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
										'"all-components"';
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
    "all-components",
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
										'"all-components"';
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
    "all-components",
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
										'"all-components"';
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
    "all-components",
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
										'"all-components"';
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
CHECKSUM='7OhBXuUTc8JnjTOTYFyOFi+7eZtaXMJEqydKtFRM9g4'
</DOCFLEX_TEMPLATE>