<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2008-11-25 03:52:22'
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
ROOT_ET='#DOCUMENTS'
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$resourceOutputDir';
		param.title='documentation resources directory';
		param.type='string';
	}
	PARAM={
		param.name='gen.doc';
		param.title='Generate Details';
		param.title.style.bold='true';
		param.group='true';
	}
	PARAM={
		param.name='gen.doc.xsd.comp';
		param.title='XSD Components';
		param.title.style.bold='true';
		param.group='true';
		param.type='boolean';
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
		param.name='nav';
		param.title='Navigation';
		param.title.style.bold='true';
		param.group='true';
	}
	PARAM={
		param.name='nav.indexFrame.allcomps';
		param.title='All Components';
		param.title.style.bold='true';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='nav.indexFrame.allcomps.wsdl.defs';
		param.title='WSDL Definitions';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='nav.indexFrame.allcomps.wsdl.defs.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='nav.indexFrame.allcomps.wsdl.defs.services';
		param.title='Services';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='nav.indexFrame.allcomps.wsdl.defs.bindings';
		param.title='Bindings';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='nav.indexFrame.allcomps.wsdl.defs.portTypes';
		param.title='Port Types';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='nav.indexFrame.allcomps.wsdl.defs.messages';
		param.title='Messages';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='nav.indexFrame.allcomps.xsd.comps';
		param.title='XSD Components';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='nav.indexFrame.allcomps.xsd.comps.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='nav.indexFrame.allcomps.xsd.comps.elements';
		param.title='Elements';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='nav.indexFrame.allcomps.xsd.comps.elements.local';
		param.title='Local Elements';
		param.type='enum';
		param.enum.values='all;complexType;none';
		param.enum.displayValues='all;with complex type;none';
	}
	PARAM={
		param.name='nav.indexFrame.allcomps.xsd.comps.complexTypes';
		param.title='Complex Types';
		param.type='boolean';
	}
	PARAM={
		param.name='nav.indexFrame.allcomps.xsd.comps.simpleTypes';
		param.title='Simple Types';
		param.type='boolean';
	}
	PARAM={
		param.name='nav.indexFrame.allcomps.xsd.comps.groups';
		param.title='Element Groups';
		param.type='boolean';
	}
	PARAM={
		param.name='nav.indexFrame.allcomps.xsd.comps.attributes';
		param.title='Global Attributes';
		param.type='boolean';
	}
	PARAM={
		param.name='nav.indexFrame.allcomps.xsd.comps.attributeGroups';
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
	PARAM={
		param.name='show.localElementExt';
		param.title='Local Element Extensions';
		param.type='enum';
		param.enum.values='always;repeating;never';
	}
</TEMPLATE_PARAMS>
<STYLES>
	CHAR_STYLE={
		style.name='Default Paragraph Font';
		style.id='cs1';
		style.default='true';
	}
	PAR_STYLE={
		style.name='Frame Heading';
		style.id='s1';
		text.font.size='9';
		text.font.style.bold='true';
		par.margin.top='5.8';
		par.margin.bottom='2.5';
		par.option.nowrap='true';
	}
	PAR_STYLE={
		style.name='Frame Heading Note';
		style.id='s2';
		text.font.name='Tahoma';
		text.font.size='6';
		text.font.style.bold='true';
		par.margin.top='0';
		par.margin.bottom='3.3';
		par.option.nowrap='true';
	}
	PAR_STYLE={
		style.name='Frame Item';
		style.id='s3';
		text.font.size='9';
		par.option.nowrap='true';
	}
	PAR_STYLE={
		style.name='Frame Title';
		style.id='s4';
		text.font.name='Arial';
		text.font.size='9.5';
		text.font.style.bold='true';
		par.margin.bottom='5.8';
		par.option.nowrap='true';
	}
	PAR_STYLE={
		style.name='Frame TOC Heading';
		style.id='s5';
		text.font.name='Arial';
		text.font.size='7';
		text.font.style.bold='true';
		par.margin.bottom='1.7';
		par.option.nowrap='true';
	}
	PAR_STYLE={
		style.name='Frame TOC Item';
		style.id='s6';
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
		style.name='Name Modifier';
		style.id='cs3';
		text.font.name='Verdana';
		text.font.size='7';
		text.color.foreground='#B2B2B2';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s7';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Underline';
		style.id='cs4';
		text.decor.underline='true';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
}
<ROOT>
	<AREA_SEC>
		FMT={
			par.style='s4';
			par.option.nowrap='true';
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
	<FOLDER>
		DESCR='WSDL definitions'
		COND='getBooleanParam("nav.indexFrame.allcomps.wsdl.defs")'
		COLLAPSED
		<BODY>
			<ELEMENT_ITER>
				DESCR='list of services'
				COND='getBooleanParam("nav.indexFrame.allcomps.wsdl.defs.services")'
				TARGET_ET='wsdl:service'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> #DOCUMENT/wsdl:definitions[checkElementsByKey("documented-wsdl-files", contextElement.id)]/wsdl:service';
				}
				SORTING='by-expr'
				SORTING_KEY={expr='toXMLName (
  findAncestor("wsdl:definitions").getAttrStringValue("targetNamespace"),
  getAttrStringValue("name")
)',ascending}
				SORTING_COND='getBooleanParam("nav.indexFrame.allcomps.wsdl.defs.sorting")'
				<BODY>
					<AREA_SEC>
						FMT={
							par.style='s3';
						}
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='none';
								}
								<CTRLS>
									<IMAGE_CTRL>
										IMAGE_TYPE='file-image'
										FILE='images/service.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											image.alignment='bottom';
											image.padding.right='2.5';
										}
									</IMAGE_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='WSDL Definition Name'
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							par.style='s1';
						}
						<HTARGET>
							HKEYS={
								'"all-components"';
								'"indexFrame"',required;
								'"services"';
							}
						</HTARGET>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<PANEL>
										FMT={
											ctrl.size.width='164.3';
											ctrl.size.height='38.3';
											text.hlink.fmt='style';
											text.hlink.style='cs4';
											text.hlink.style.use='hover';
										}
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
											TARGET_FRAME_EXPR='"detailFrame"'
											HKEYS={
												'"all-service-summary"';
											}
										</DOC_HLINK>
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='Services'
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
				DESCR='list of bindings'
				COND='getBooleanParam("nav.indexFrame.allcomps.wsdl.defs.bindings")'
				TARGET_ET='wsdl:binding'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> #DOCUMENT/wsdl:definitions[checkElementsByKey("documented-wsdl-files", contextElement.id)]/wsdl:binding';
				}
				SORTING='by-expr'
				SORTING_KEY={expr='toXMLName (
  findAncestor("wsdl:definitions").getAttrStringValue("targetNamespace"),
  getAttrStringValue("name")
)',ascending}
				SORTING_COND='getBooleanParam("nav.indexFrame.allcomps.wsdl.defs.sorting")'
				<BODY>
					<AREA_SEC>
						FMT={
							par.style='s3';
						}
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='none';
								}
								<CTRLS>
									<IMAGE_CTRL>
										IMAGE_TYPE='file-image'
										FILE='images/binding.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											image.alignment='bottom';
											image.padding.right='2.5';
										}
									</IMAGE_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='WSDL Definition Name'
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							par.style='s1';
						}
						<HTARGET>
							HKEYS={
								'"all-components"';
								'"indexFrame"',required;
								'"bindings"';
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
											text.hlink.style='cs4';
											text.hlink.style.use='hover';
										}
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
											TARGET_FRAME_EXPR='"detailFrame"'
											HKEYS={
												'"all-binding-summary"';
											}
										</DOC_HLINK>
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='Bindings'
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
				DESCR='list of port types'
				COND='getBooleanParam("nav.indexFrame.allcomps.wsdl.defs.portTypes")'
				TARGET_ET='wsdl:portType'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> #DOCUMENT/wsdl:definitions[checkElementsByKey("documented-wsdl-files", contextElement.id)]/wsdl:portType';
				}
				SORTING='by-expr'
				SORTING_KEY={expr='toXMLName (
  findAncestor("wsdl:definitions").getAttrStringValue("targetNamespace"),
  getAttrStringValue("name")
)',ascending}
				SORTING_COND='getBooleanParam("nav.indexFrame.allcomps.wsdl.defs.sorting")'
				<BODY>
					<AREA_SEC>
						FMT={
							par.style='s3';
						}
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='none';
								}
								<CTRLS>
									<IMAGE_CTRL>
										IMAGE_TYPE='file-image'
										FILE='images/portType.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											image.alignment='bottom';
											image.padding.right='2.5';
										}
									</IMAGE_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='WSDL Definition Name'
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							par.style='s1';
						}
						<HTARGET>
							HKEYS={
								'"all-components"';
								'"indexFrame"',required;
								'"portTypes"';
							}
						</HTARGET>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<PANEL>
										FMT={
											ctrl.size.width='174';
											ctrl.size.height='38.3';
											text.hlink.fmt='style';
											text.hlink.style='cs4';
											text.hlink.style.use='hover';
										}
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
											TARGET_FRAME_EXPR='"detailFrame"'
											HKEYS={
												'"all-portType-summary"';
											}
										</DOC_HLINK>
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='Port Types'
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
				DESCR='list of messages'
				COND='getBooleanParam("nav.indexFrame.allcomps.wsdl.defs.messages")'
				TARGET_ET='wsdl:message'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> #DOCUMENT/wsdl:definitions[checkElementsByKey("documented-wsdl-files", contextElement.id)]/wsdl:message';
				}
				SORTING='by-expr'
				SORTING_KEY={expr='toXMLName (
  findAncestor("wsdl:definitions").getAttrStringValue("targetNamespace"),
  getAttrStringValue("name")
)',ascending}
				SORTING_COND='getBooleanParam("nav.indexFrame.allcomps.wsdl.defs.sorting")'
				<BODY>
					<AREA_SEC>
						FMT={
							par.style='s3';
						}
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='none';
								}
								<CTRLS>
									<IMAGE_CTRL>
										IMAGE_TYPE='file-image'
										FILE='images/message.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											image.alignment='bottom';
											image.padding.right='2.5';
										}
									</IMAGE_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='WSDL Definition Name'
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							par.style='s1';
						}
						<HTARGET>
							HKEYS={
								'"all-components"';
								'"indexFrame"',required;
								'"messages"';
							}
						</HTARGET>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<PANEL>
										FMT={
											ctrl.size.width='171';
											ctrl.size.height='38.3';
											text.hlink.fmt='style';
											text.hlink.style='cs4';
											text.hlink.style.use='hover';
										}
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
											TARGET_FRAME_EXPR='"detailFrame"'
											HKEYS={
												'"all-message-summary"';
											}
										</DOC_HLINK>
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='Messages'
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
	</FOLDER>
	<FOLDER>
		DESCR='XSD components'
		COND='getBooleanParam("nav.indexFrame.allcomps.xsd.comps")'
		COLLAPSED
		<BODY>
			<ELEMENT_ITER>
				COND='getBooleanParam("nav.indexFrame.allcomps.xsd.comps.elements")'
				TARGET_ET='xs:%element'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> #DOCUMENT/wsdl:definitions/wsdl:types/xs:schema[checkElementsByKey ("documented-schemas", contextElement.id)]';
					'* -> #DOCUMENT/xs:schema[checkElementsByKey ("documented-schemas", contextElement.id)]';
					'xs:schema -> descendant::xs:%element',recursive;
				}
				FILTER='instanceOf("xs:element")
||
! hasAttr("ref")
&&
{
  // remain only those local elements that are either not documented globally at all
  // or documented globaly themselves (not via a unifier)

  el = findElementByKey ("xsd-globally-documented-local-elements", contextElement.id);
  el == null || el.id == contextElement.id
}
&&
{
  // which local elements to list?
  local = getStringParam("nav.indexFrame.allcomps.xsd.comps.elements.local");
  
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
				SORTING_KEY={expr='callStockSection("XSD Component Name")',ascending}
				SORTING_COND='getBooleanParam("nav.indexFrame.allcomps.xsd.comps.sorting")'
				<BODY>
					<AREA_SEC>
						FMT={
							par.style='s3';
						}
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='none';
								}
								<CTRLS>
									<IMAGE_CTRL>
										IMAGE_TYPE='file-image'
										FILE='images/element.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											image.alignment='bottom';
											image.padding.right='2.5';
										}
									</IMAGE_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='XSD Component Name'
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
				<HEADER>
					<AREA_SEC>
						INIT_EXPR='! hasParamValue("gen.doc.xsd.comp.element.local", "none") &&
getBooleanParam("gen.doc.xsd.comp.element.local.unifyByType") ?
{
  elementCount = 0;

  iterate (
    iterator.items,
    @(GOMElement) el,
    FlexQuery ({
      count = el.instanceOf ("xs:element") ? 1 :
                countElementsByKey ("xsd-globally-documented-local-elements", el.id);

      elementCount = elementCount + (count > 0 ? count : 1);
    })
  )
} : {
  elementCount = iterator.numItems
};

setVar ("elementCount", elementCount);'
						FMT={
							sec.spacing.after='2.5';
							par.style='s1';
						}
						<HTARGET>
							HKEYS={
								'"all-components"';
								'"indexFrame"';
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
											ctrl.size.width='372.8';
											ctrl.size.height='38.3';
											text.hlink.fmt='style';
											text.hlink.style='cs4';
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
														COND='hasParamValue("nav.indexFrame.allcomps.xsd.comps.elements.local", "all")'
														TEXT='All'
													</TEXT_CTRL>
													<TEXT_CTRL>
														COND='hasParamValue("nav.indexFrame.allcomps.xsd.comps.elements.local", "none")'
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
									par.style='s2';
								}
								<CTRLS>
									<TEMPLATE_CALL_CTRL>
										TEMPLATE_FILE='xsd/element/elementListNote.tpl'
										PASSED_PARAMS={
											'$elements.local','getStringParam("nav.indexFrame.allcomps.xsd.comps.elements.local")';
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
				COND='getBooleanParam("nav.indexFrame.allcomps.xsd.comps.complexTypes")'
				TARGET_ET='xs:complexType'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> #DOCUMENT/wsdl:definitions/wsdl:types/xs:schema[checkElementsByKey ("documented-schemas", contextElement.id)]';
					'* -> #DOCUMENT/xs:schema[checkElementsByKey ("documented-schemas", contextElement.id)]';
					'xs:schema -> xs:complexType',recursive;
					'xs:schema -> xs:redefine/xs:complexType',recursive;
				}
				SORTING='by-compound-key'
				SORTING_KEY={
					{expr='toXMLName (
  findAncestor("xs:schema").getServiceAttr("targetNamespace").toString(),
  getAttrStringValue("name")
)',ascending};
					{expr='hasServiceAttr ("redefinition") ?
  getServiceAttr ("redefinition").toInt() : -1',ascending};
				}
				SORTING_COND='getBooleanParam("nav.indexFrame.allcomps.xsd.comps.sorting")'
				<BODY>
					<AREA_SEC>
						FMT={
							par.style='s3';
						}
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='none';
								}
								<CTRLS>
									<IMAGE_CTRL>
										IMAGE_TYPE='file-image'
										FILE='images/complexType.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											image.alignment='bottom';
											image.padding.right='2.5';
										}
									</IMAGE_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='XSD Component Name'
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							par.style='s1';
						}
						<HTARGET>
							HKEYS={
								'"all-components"';
								'"indexFrame"';
								'"complexTypes"';
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
											text.hlink.style='cs4';
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
				COND='getBooleanParam("nav.indexFrame.allcomps.xsd.comps.simpleTypes")'
				TARGET_ET='xs:simpleType'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> #DOCUMENT/wsdl:definitions/wsdl:types/xs:schema[checkElementsByKey ("documented-schemas", contextElement.id)]';
					'* -> #DOCUMENT/xs:schema[checkElementsByKey ("documented-schemas", contextElement.id)]';
					'xs:schema -> xs:simpleType',recursive;
					'xs:schema -> xs:redefine/xs:simpleType',recursive;
				}
				SORTING='by-compound-key'
				SORTING_KEY={
					{expr='toXMLName (
  findAncestor("xs:schema").getServiceAttr("targetNamespace").toString(),
  getAttrStringValue("name")
)',ascending};
					{expr='hasServiceAttr ("redefinition") ?
  getServiceAttr ("redefinition").toInt() : -1',ascending};
				}
				SORTING_COND='getBooleanParam("nav.indexFrame.allcomps.xsd.comps.sorting")'
				<BODY>
					<AREA_SEC>
						FMT={
							par.style='s3';
						}
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='none';
								}
								<CTRLS>
									<IMAGE_CTRL>
										IMAGE_TYPE='file-image'
										FILE='images/simpleType.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											image.alignment='bottom';
											image.padding.right='2.5';
										}
									</IMAGE_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='XSD Component Name'
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							par.style='s1';
						}
						<HTARGET>
							HKEYS={
								'"all-components"';
								'"indexFrame"';
								'"simpleTypes"';
							}
						</HTARGET>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<PANEL>
										FMT={
											ctrl.size.width='186.8';
											ctrl.size.height='38.3';
											text.hlink.fmt='style';
											text.hlink.style='cs4';
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
				COND='getBooleanParam("nav.indexFrame.allcomps.xsd.comps.groups")'
				TARGET_ET='xs:group'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> #DOCUMENT/wsdl:definitions/wsdl:types/xs:schema[checkElementsByKey ("documented-schemas", contextElement.id)]';
					'* -> #DOCUMENT/xs:schema[checkElementsByKey ("documented-schemas", contextElement.id)]';
					'xs:schema -> xs:group',recursive;
					'xs:schema -> xs:redefine/xs:group',recursive;
				}
				SORTING='by-compound-key'
				SORTING_KEY={
					{expr='toXMLName (
  findAncestor("xs:schema").getServiceAttr("targetNamespace").toString(),
  getAttrStringValue("name")
)',ascending};
					{expr='hasServiceAttr ("redefinition") ?
  getServiceAttr ("redefinition").toInt() : -1',ascending};
				}
				SORTING_COND='getBooleanParam("nav.indexFrame.allcomps.xsd.comps.sorting")'
				<BODY>
					<AREA_SEC>
						FMT={
							par.style='s3';
						}
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='none';
								}
								<CTRLS>
									<IMAGE_CTRL>
										IMAGE_TYPE='file-image'
										FILE='images/group.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											image.alignment='bottom';
											image.padding.right='2.5';
										}
									</IMAGE_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='XSD Component Name'
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							par.style='s1';
						}
						<HTARGET>
							HKEYS={
								'"all-components"';
								'"indexFrame"';
								'"groups"';
							}
						</HTARGET>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<PANEL>
										FMT={
											ctrl.size.width='190.5';
											ctrl.size.height='38.3';
											text.hlink.fmt='style';
											text.hlink.style='cs4';
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
				COND='getBooleanParam("nav.indexFrame.allcomps.xsd.comps.attributes")'
				TARGET_ET='xs:attribute'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> #DOCUMENT/wsdl:definitions/wsdl:types/xs:schema[checkElementsByKey ("documented-schemas", contextElement.id)]';
					'* -> #DOCUMENT/xs:schema[checkElementsByKey ("documented-schemas", contextElement.id)]';
					'xs:schema -> xs:attribute',recursive;
				}
				SORTING='by-expr'
				SORTING_KEY={expr='toXMLName (
  findAncestor("xs:schema").getServiceAttr("targetNamespace").toString(),
  getAttrStringValue("name")
)',ascending}
				SORTING_COND='getBooleanParam("nav.indexFrame.allcomps.xsd.comps.sorting")'
				<BODY>
					<AREA_SEC>
						FMT={
							par.style='s3';
						}
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='none';
								}
								<CTRLS>
									<IMAGE_CTRL>
										IMAGE_TYPE='file-image'
										FILE='images/attribute.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											image.alignment='bottom';
											image.padding.right='2.5';
										}
									</IMAGE_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='XSD Component Name'
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							par.style='s1';
						}
						<HTARGET>
							HKEYS={
								'"all-components"';
								'"indexFrame"';
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
											text.hlink.style='cs4';
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
				COND='getBooleanParam("nav.indexFrame.allcomps.xsd.comps.attributeGroups")'
				TARGET_ET='xs:attributeGroup'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> #DOCUMENT/wsdl:definitions/wsdl:types/xs:schema[checkElementsByKey ("documented-schemas", contextElement.id)]';
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
				SORTING_COND='getBooleanParam("nav.indexFrame.allcomps.xsd.comps.sorting")'
				<BODY>
					<AREA_SEC>
						FMT={
							par.style='s3';
						}
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='none';
								}
								<CTRLS>
									<IMAGE_CTRL>
										IMAGE_TYPE='file-image'
										FILE='images/attributeGroup.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											image.alignment='bottom';
											image.padding.right='2.5';
										}
									</IMAGE_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='XSD Component Name'
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							par.style='s1';
						}
						<HTARGET>
							HKEYS={
								'"all-components"';
								'"indexFrame"';
								'"attributeGroups"';
							}
						</HTARGET>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<PANEL>
										FMT={
											ctrl.size.width='192.8';
											ctrl.size.height='38.3';
											text.hlink.fmt='style';
											text.hlink.style='cs4';
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
	</FOLDER>
</ROOT>
<STOCK_SECTIONS>
	<FOLDER>
		SS_NAME='TOC'
		FMT={
			table.cell.padding.both='0';
			table.border.style='none';
		}
		<BODY>
			<FOLDER>
				DESCR='WSDL OBJECTS'
				FMT={
					sec.outputStyle='table';
					sec.spacing.after='1.7';
					table.cell.padding.both='0';
					table.border.style='none';
				}
				<BODY>
					<AREA_SEC>
						COND='findHyperTarget (
  Array (
    "all-components",
    "indexFrame",
    "services"
  )
) != null'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<IMAGE_CTRL>
										IMAGE_TYPE='file-image'
										FILE='images/services.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											ctrl.size.width='21';
											ctrl.size.height='18';
											image.alignment='bottom';
											image.padding.right='1.7';
										}
									</IMAGE_CTRL>
									<TEXT_CTRL>
										TEXT='Services'
										FMT={
											ctrl.size.width='478.5';
											ctrl.size.height='18';
											par.style='s6';
										}
										<DOC_HLINK>
											HKEYS={
												'"all-components"';
												'"indexFrame"';
												'"services"';
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
    "indexFrame",
    "bindings"
  )
) != null'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<IMAGE_CTRL>
										IMAGE_TYPE='file-image'
										FILE='images/bindings.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											ctrl.size.width='21';
											ctrl.size.height='18';
											image.alignment='bottom';
											image.padding.right='1.7';
										}
									</IMAGE_CTRL>
									<TEXT_CTRL>
										TEXT='Bindings'
										FMT={
											ctrl.size.width='478.5';
											ctrl.size.height='18';
											par.style='s6';
										}
										<DOC_HLINK>
											HKEYS={
												'"all-components"';
												'"indexFrame"';
												'"bindings"';
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
    "indexFrame",
    "portTypes"
  )
) != null'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<IMAGE_CTRL>
										IMAGE_TYPE='file-image'
										FILE='images/portTypes.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											ctrl.size.width='21';
											ctrl.size.height='18';
											image.alignment='bottom';
											image.padding.right='1.7';
										}
									</IMAGE_CTRL>
									<TEXT_CTRL>
										TEXT='Port Types'
										FMT={
											ctrl.size.width='478.5';
											ctrl.size.height='18';
											par.style='s6';
										}
										<DOC_HLINK>
											HKEYS={
												'"all-components"';
												'"indexFrame"';
												'"portTypes"';
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
    "indexFrame",
    "messages"
  )
) != null'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<IMAGE_CTRL>
										IMAGE_TYPE='file-image'
										FILE='images/messages.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											ctrl.size.width='21';
											ctrl.size.height='18';
											image.alignment='bottom';
											image.padding.right='1.7';
										}
									</IMAGE_CTRL>
									<TEXT_CTRL>
										TEXT='Messages'
										FMT={
											ctrl.size.width='478.5';
											ctrl.size.height='18';
											par.style='s6';
										}
										<DOC_HLINK>
											HKEYS={
												'"all-components"';
												'"indexFrame"';
												'"messages"';
											}
										</DOC_HLINK>
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							sec.outputStyle='pars';
						}
						<AREA>
							<CTRL_GROUP>
								FMT={
									par.style='s5';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='WSDL Definitions'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
			</FOLDER>
			<FOLDER>
				DESCR='XSD COMPONENTS'
				FMT={
					sec.outputStyle='table';
					table.cell.padding.both='0';
					table.border.style='none';
				}
				<BODY>
					<AREA_SEC>
						COND='findHyperTarget (
  Array (
    "all-components",
    "indexFrame",
    "elements"
  )
) != null'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<IMAGE_CTRL>
										IMAGE_TYPE='file-image'
										FILE='images/elements.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											ctrl.size.width='21';
											ctrl.size.height='18';
											image.alignment='bottom';
											image.padding.right='1.7';
										}
									</IMAGE_CTRL>
									<TEXT_CTRL>
										TEXT='Elements'
										FMT={
											ctrl.size.width='478.5';
											ctrl.size.height='18';
											par.style='s6';
										}
										<DOC_HLINK>
											HKEYS={
												'"all-components"';
												'"indexFrame"';
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
    "indexFrame",
    "complexTypes"
  )
) != null'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<IMAGE_CTRL>
										IMAGE_TYPE='file-image'
										FILE='images/complexTypes.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											ctrl.size.width='21';
											ctrl.size.height='18';
											image.alignment='bottom';
											image.padding.right='1.7';
										}
									</IMAGE_CTRL>
									<TEXT_CTRL>
										TEXT='Complex Types'
										FMT={
											ctrl.size.width='478.5';
											ctrl.size.height='18';
											par.style='s6';
										}
										<DOC_HLINK>
											HKEYS={
												'"all-components"';
												'"indexFrame"';
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
    "indexFrame",
    "simpleTypes"
  )
) != null'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<IMAGE_CTRL>
										IMAGE_TYPE='file-image'
										FILE='images/simpleTypes.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											ctrl.size.width='21';
											ctrl.size.height='18';
											image.alignment='bottom';
											image.padding.right='1.7';
										}
									</IMAGE_CTRL>
									<TEXT_CTRL>
										TEXT='Simple Types'
										FMT={
											ctrl.size.width='478.5';
											ctrl.size.height='18';
											par.style='s6';
										}
										<DOC_HLINK>
											HKEYS={
												'"all-components"';
												'"indexFrame"';
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
    "indexFrame",
    "groups"
  )
) != null'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<IMAGE_CTRL>
										IMAGE_TYPE='file-image'
										FILE='images/groups.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											ctrl.size.width='21';
											ctrl.size.height='18';
											image.alignment='bottom';
											image.padding.right='1.7';
										}
									</IMAGE_CTRL>
									<TEXT_CTRL>
										TEXT='Element Groups'
										FMT={
											ctrl.size.width='478.5';
											ctrl.size.height='18';
											par.style='s6';
										}
										<DOC_HLINK>
											HKEYS={
												'"all-components"';
												'"indexFrame"';
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
    "indexFrame",
    "attributes"
  )
) != null'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<IMAGE_CTRL>
										IMAGE_TYPE='file-image'
										FILE='images/attributes.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											ctrl.size.width='21';
											ctrl.size.height='18';
											image.alignment='bottom';
											image.padding.right='1.7';
										}
									</IMAGE_CTRL>
									<TEXT_CTRL>
										TEXT='Attributes'
										FMT={
											ctrl.size.width='478.5';
											ctrl.size.height='18';
											par.style='s6';
										}
										<DOC_HLINK>
											HKEYS={
												'"all-components"';
												'"indexFrame"';
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
    "indexFrame",
    "attributeGroups"
  )
) != null'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<IMAGE_CTRL>
										IMAGE_TYPE='file-image'
										FILE='images/attributeGroups.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											ctrl.size.width='21';
											ctrl.size.height='18';
											image.alignment='bottom';
											image.padding.right='1.7';
										}
									</IMAGE_CTRL>
									<TEXT_CTRL>
										TEXT='Attribute Groups'
										FMT={
											ctrl.size.width='478.5';
											ctrl.size.height='18';
											par.style='s6';
										}
										<DOC_HLINK>
											HKEYS={
												'"all-components"';
												'"indexFrame"';
												'"attributeGroups"';
											}
										</DOC_HLINK>
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							sec.outputStyle='pars';
						}
						<AREA>
							<SPACER>
								FMT={
									spacer.height='2.5';
								}
							</SPACER>
							<CTRL_GROUP>
								FMT={
									par.style='s5';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='XSD Components'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
			</FOLDER>
		</BODY>
	</FOLDER>
	<TEMPLATE_CALL>
		SS_NAME='WSDL Definition Name'
		DESCR='prints the qualified name of the WSDL object'
		TEMPLATE_FILE='wsdl/misc/defName.tpl'
		PASSED_PARAMS={
			'$targetFrame','"detailFrame"';
		}
		FMT={
			sec.outputStyle='text-par';
		}
	</TEMPLATE_CALL>
	<TEMPLATE_CALL>
		SS_NAME='XSD Component Name'
		DESCR='prints the qualified name of any global schema component and local element (passed as the stock-section context element)'
		TEMPLATE_FILE='xsd/component/componentName.tpl'
		PASSED_PARAMS={
			'$targetFrame','"detailFrame"';
		}
		FMT={
			sec.outputStyle='text-par';
		}
	</TEMPLATE_CALL>
</STOCK_SECTIONS>
CHECKSUM='sxmYt9tBFjO3WXxO8fOUk0zeYnak4XRyMFC2zPt4JhM'
</DOCFLEX_TEMPLATE>