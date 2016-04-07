<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2004-06-21 01:50:00'
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
ROOT_ET='xs:schema'
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$mainXML';
		param.type='GOMElement';
		param.defaultValue.expr='findElementByKey ("main-xmls", getXMLDocument().id)';
	}
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
		param.name='nav.indexFrame.schema';
		param.title='Schema';
		param.title.style.bold='true';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='nav.indexFrame.schema.xsd.comps';
		param.title='XSD Components';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='nav.indexFrame.schema.xsd.comps.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='nav.indexFrame.schema.xsd.comps.elements';
		param.title='Elements';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='nav.indexFrame.schema.xsd.comps.elements.local';
		param.title='Local Elements';
		param.type='enum';
		param.enum.values='all;complexType;none';
		param.enum.displayValues='all;with complex type;none';
	}
	PARAM={
		param.name='nav.indexFrame.schema.xsd.comps.complexTypes';
		param.title='Complex Types';
		param.type='boolean';
	}
	PARAM={
		param.name='nav.indexFrame.schema.xsd.comps.simpleTypes';
		param.title='Simple Types';
		param.type='boolean';
	}
	PARAM={
		param.name='nav.indexFrame.schema.xsd.comps.groups';
		param.title='Element Groups';
		param.type='boolean';
	}
	PARAM={
		param.name='nav.indexFrame.schema.xsd.comps.attributes';
		param.title='Global Attributes';
		param.type='boolean';
	}
	PARAM={
		param.name='nav.indexFrame.schema.xsd.comps.attributeGroups';
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
<HTARGET>
	HKEYS={
		'contextElement.id';
		'"indexFrame"';
	}
</HTARGET>
<ROOT>
	<AREA_SEC>
		DESCR='XML schema name'
		FMT={
			par.style='s4';
			par.option.nowrap='true';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<DATA_CTRL>
						FORMULA='(hasServiceAttr("embedded") ? 
  "Schema" + getServiceAttr("embeddedSchemaNo") + " in " : "")
+
getXMLDocument().getAttrValue("xmlName")'
						<DOC_HLINK>
							TITLE_EXPR='getBooleanParam("show.linkTitle") ? 
  callStockSection("Schema Link Title")
: ""'
							TARGET_FRAME_EXPR='"detailFrame"'
							HKEYS={
								'contextElement.id';
								'"detail"';
							}
						</DOC_HLINK>
					</DATA_CTRL>
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
		DESCR='XSD COMPONENTS'
		COND='getBooleanParam("nav.indexFrame.schema.xsd.comps")'
		ALWAYS_PROC_HDRFTR
		<BODY>
			<ELEMENT_ITER>
				DESCR='list of elements'
				COND='getBooleanParam("nav.indexFrame.schema.xsd.comps.elements")'
				TARGET_ET='xs:%element'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> descendant::xs:%element/{// if this is a global element, return it
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
Enum (el != null ? el : contextElement)}::xs:%element';
				}
				FILTER='instanceOf("xs:element")
||
// case of local element
{
  // which local elements to list?
  local = getStringParam("nav.indexFrame.schema.xsd.comps.elements.local");
  
  local == "complexType" ?
    ((typeQName = getAttrQNameValue("type")) != null) ?
      checkElementsByKey (
        "xsd-types", typeQName,
        BooleanQuery (
          instanceOf("xs:complexType")
          &&
          checkElementByKey (
            "main-xmls", getXMLDocument().id, getElementParam("$mainXML")
          )
        )
      )
    : hasChild("xs:complexType")
  :
  local == "all"
}'
				SORTING='by-expr'
				SORTING_KEY={expr='callStockSection("Component Name")',ascending}
				SORTING_COND='getBooleanParam("nav.indexFrame.schema.xsd.comps.sorting")'
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
										FILE='../../images/element.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											image.alignment='bottom';
											image.padding.right='2.5';
										}
									</IMAGE_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='Component Name'
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

      schema_id = rootElement.id;

      count = el.instanceOf ("xs:element") ? 1 :
                countElementsByKey (
                  "xsd-globally-documented-local-elements",
                  el.id,
                  BooleanQuery (findAncestor("xs:schema").id == schema_id)
                );

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
								'rootElement.id';
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
											ctrl.size.width='378.8';
											ctrl.size.height='38.3';
											text.hlink.fmt='style';
											text.hlink.style='cs4';
											text.hlink.style.use='hover';
										}
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
											TARGET_FRAME_EXPR='"detailFrame"'
											HKEYS={
												'contextElement.id';
												'"element-summary"';
											}
										</DOC_HLINK>
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														COND='hasParamValue("nav.indexFrame.schema.xsd.comps.elements.local", "all")'
														TEXT='All'
													</TEXT_CTRL>
													<TEXT_CTRL>
														COND='hasParamValue("nav.indexFrame.schema.xsd.comps.elements.local", "none")'
														TEXT='Global'
													</TEXT_CTRL>
													<TEXT_CTRL>
														TEXT='Elements'
													</TEXT_CTRL>
													<TEXT_CTRL>
														TEXT=' ('
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
										TEMPLATE_FILE='../element/elementListNote.tpl'
										PASSED_PARAMS={
											'$elements.local','getStringParam("nav.indexFrame.schema.xsd.comps.elements.local")';
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
				COND='getBooleanParam("nav.indexFrame.schema.xsd.comps.complexTypes")'
				TARGET_ET='xs:complexType'
				SCOPE='simple-location-rules'
				RULES={
					'* -> descendant::xs:complexType';
				}
				SORTING='by-compound-key'
				SORTING_KEY={
					{expr='getAttrStringValue("name")',ascending};
					{expr='hasServiceAttr ("redefinition") ?
  getServiceAttr ("redefinition").toInt() : -1',ascending};
				}
				SORTING_COND='getBooleanParam("nav.indexFrame.schema.xsd.comps.sorting")'
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
										FILE='../../images/complexType.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											image.alignment='bottom';
											image.padding.right='2.5';
										}
									</IMAGE_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='Component Name'
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
								'rootElement.id';
								'"indexFrame"';
								'"complexTypes"';
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
												'contextElement.id';
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
				COND='getBooleanParam("nav.indexFrame.schema.xsd.comps.simpleTypes")'
				TARGET_ET='xs:simpleType'
				SCOPE='simple-location-rules'
				RULES={
					'* -> descendant::xs:simpleType';
				}
				SORTING='by-compound-key'
				SORTING_KEY={
					{expr='getAttrStringValue("name")',ascending};
					{expr='hasServiceAttr ("redefinition") ?
  getServiceAttr ("redefinition").toInt() : -1',ascending};
				}
				SORTING_COND='getBooleanParam("nav.indexFrame.schema.xsd.comps.sorting")'
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
										FILE='../../images/simpleType.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											image.alignment='bottom';
											image.padding.right='2.5';
										}
									</IMAGE_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='Component Name'
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
								'rootElement.id';
								'"indexFrame"';
								'"simpleTypes"';
							}
						</HTARGET>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<PANEL>
										FMT={
											ctrl.size.width='184.5';
											ctrl.size.height='38.3';
											text.hlink.fmt='style';
											text.hlink.style='cs4';
											text.hlink.style.use='hover';
										}
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
											TARGET_FRAME_EXPR='"detailFrame"'
											HKEYS={
												'contextElement.id';
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
				COND='getBooleanParam("nav.indexFrame.schema.xsd.comps.groups")'
				TARGET_ET='xs:group'
				SCOPE='simple-location-rules'
				RULES={
					'* -> descendant::xs:group';
				}
				SORTING='by-compound-key'
				SORTING_KEY={
					{expr='getAttrStringValue("name")',ascending};
					{expr='hasServiceAttr ("redefinition") ?
  getServiceAttr ("redefinition").toInt() : -1',ascending};
				}
				SORTING_COND='getBooleanParam("nav.indexFrame.schema.xsd.comps.sorting")'
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
										FILE='../../images/group.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											image.alignment='bottom';
											image.padding.right='2.5';
										}
									</IMAGE_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='Component Name'
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
								'rootElement.id';
								'"indexFrame"';
								'"groups"';
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
											text.hlink.style='cs4';
											text.hlink.style.use='hover';
										}
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
											TARGET_FRAME_EXPR='"detailFrame"'
											HKEYS={
												'contextElement.id';
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
				COND='getBooleanParam("nav.indexFrame.schema.xsd.comps.attributes")'
				TARGET_ET='xs:attribute'
				SCOPE='simple-location-rules'
				RULES={
					'* -> xs:attribute';
				}
				SORTING='by-attr'
				SORTING_KEY={lpath='@name',ascending}
				SORTING_COND='getBooleanParam("nav.indexFrame.schema.xsd.comps.sorting")'
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
										FILE='../../images/attribute.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											image.alignment='bottom';
											image.padding.right='2.5';
										}
									</IMAGE_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='Component Name'
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
								'rootElement.id';
								'"indexFrame"';
								'"attributes"';
							}
						</HTARGET>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<PANEL>
										FMT={
											ctrl.size.width='167.3';
											ctrl.size.height='38.3';
											text.hlink.fmt='style';
											text.hlink.style='cs4';
											text.hlink.style.use='hover';
										}
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
											TARGET_FRAME_EXPR='"detailFrame"'
											HKEYS={
												'contextElement.id';
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
				COND='getBooleanParam("nav.indexFrame.schema.xsd.comps.attributeGroups")'
				TARGET_ET='xs:attributeGroup'
				SCOPE='simple-location-rules'
				RULES={
					'* -> descendant::xs:attributeGroup';
				}
				SORTING='by-compound-key'
				SORTING_KEY={
					{expr='getAttrStringValue("name")',ascending};
					{expr='hasServiceAttr ("redefinition") ?
  getServiceAttr ("redefinition").toInt() : -1',ascending};
				}
				SORTING_COND='getBooleanParam("nav.indexFrame.schema.xsd.comps.sorting")'
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
										FILE='../../images/attributeGroup.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											image.alignment='bottom';
											image.padding.right='2.5';
										}
									</IMAGE_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='Component Name'
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
								'rootElement.id';
								'"indexFrame"';
								'"attributeGroups"';
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
												'contextElement.id';
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
		SS_NAME='Schema Link Title'
		MATCHING_ET='xs:schema'
		TEMPLATE_FILE='schemaLinkTitle.tpl'
	</TEMPLATE_CALL>
	<FOLDER>
		SS_NAME='TOC'
		MATCHING_ET='xs:schema'
		FMT={
			table.cell.padding.both='0';
			table.border.style='none';
		}
		<BODY>
			<AREA_SEC>
				DESCR='containing WSDL file'
				COND='hasServiceAttr("embedded")'
				CONTEXT_ELEMENT_EXPR='findAncestor ("wsdl:definitions")'
				MATCHING_ET='wsdl:definitions'
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
								TEXT='Containing WSDL'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
					<CTRL_GROUP>
						FMT={
							txtfl.delimiter.type='none';
							par.style='s6';
						}
						<CTRLS>
							<IMAGE_CTRL>
								IMAGE_TYPE='file-image'
								FILE='../../images/wsdl.png'
								OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
								FMT={
									ctrl.size.width='21';
									ctrl.size.height='18';
									image.alignment='bottom';
									image.padding.right='1.7';
								}
							</IMAGE_CTRL>
							<DATA_CTRL>
								FORMULA='getXMLDocument().getAttrStringValue("xmlName")'
								<DOC_HLINK>
									TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("WSDL Link Title")
: ""'
									HKEYS={
										'contextElement.id';
										'"indexFrame"';
									}
								</DOC_HLINK>
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<FOLDER>
				DESCR='XSD'
				FMT={
					sec.outputStyle='table';
					table.cell.padding.both='0';
					table.border.style='none';
				}
				<BODY>
					<AREA_SEC>
						COND='findHyperTarget (
  Array (
    contextElement.id,
    "indexFrame",
    "elements"
  )
) != null'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<IMAGE_CTRL>
										IMAGE_TYPE='file-image'
										FILE='../../images/elements.png'
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
												'contextElement.id';
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
    contextElement.id,
    "indexFrame",
    "complexTypes"
  )
) != null'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<IMAGE_CTRL>
										IMAGE_TYPE='file-image'
										FILE='../../images/complexTypes.png'
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
												'contextElement.id';
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
    contextElement.id,
    "indexFrame",
    "simpleTypes"
  )
) != null'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<IMAGE_CTRL>
										IMAGE_TYPE='file-image'
										FILE='../../images/simpleTypes.png'
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
												'contextElement.id';
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
    contextElement.id,
    "indexFrame",
    "groups"
  )
) != null'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<IMAGE_CTRL>
										IMAGE_TYPE='file-image'
										FILE='../../images/groups.png'
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
												'contextElement.id';
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
    contextElement.id,
    "indexFrame",
    "attributes"
  )
) != null'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<IMAGE_CTRL>
										IMAGE_TYPE='file-image'
										FILE='../../images/attributes.png'
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
												'contextElement.id';
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
    contextElement.id,
    "indexFrame",
    "attributeGroups"
  )
) != null'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<IMAGE_CTRL>
										IMAGE_TYPE='file-image'
										FILE='../../images/attributeGroups.png'
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
												'contextElement.id';
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
		SS_NAME='WSDL Link Title'
		MATCHING_ET='wsdl:definitions'
		TEMPLATE_FILE='../../wsdl/file/wsdlLinkTitle.tpl'
	</TEMPLATE_CALL>
</STOCK_SECTIONS>
CHECKSUM='kNJqBBSTqOeBCfp5ihpSSYK1daig5PFDPw2+ORT3mbI'
</DOCFLEX_TEMPLATE>