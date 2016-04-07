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
		param.description='${include help/params/gen/gen.doc.htm}';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='gen.doc.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='gen.doc.sorting.namespaces';
		param.title='Namespaces';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='gen.doc.sorting.wsdl.files';
		param.title='WSDL Files';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='gen.doc.sorting.xsd.schemas';
		param.title='Schemas';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='gen.doc.overview';
		param.title='Overview Summary';
		param.type='boolean';
	}
	PARAM={
		param.name='gen.doc.allcomps';
		param.title='All Component Summary';
		param.type='boolean';
	}
	PARAM={
		param.name='gen.doc.namespace';
		param.title='Namespace Overviews';
		param.type='boolean';
	}
	PARAM={
		param.name='gen.doc.wsdl.file';
		param.title='WSDL File Overviews';
		param.type='boolean';
	}
	PARAM={
		param.name='gen.doc.xsd.schema';
		param.title='Schema Overviews';
		param.type='boolean';
	}
	PARAM={
		param.name='gen.doc.xmlnsBindings';
		param.title='XML Namespace Bindings';
		param.type='boolean';
	}
	PARAM={
		param.name='nav';
		param.title='Navigation';
		param.title.style.bold='true';
		param.group='true';
	}
	PARAM={
		param.name='nav.overviewFrame';
		param.title='Overview Frame';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='nav.overviewFrame.title';
		param.title='Title';
		param.type='string';
	}
	PARAM={
		param.name='nav.indexFrame.allcomps';
		param.title='All Components';
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
		style.name='Frame Heading';
		style.id='s1';
		text.font.size='9';
		text.font.style.bold='true';
		par.margin.top='5.8';
		par.margin.bottom='2.5';
		par.option.nowrap='true';
	}
	PAR_STYLE={
		style.name='Frame Item';
		style.id='s2';
		text.font.size='9';
		par.option.nowrap='true';
	}
	PAR_STYLE={
		style.name='Frame Title';
		style.id='s3';
		text.font.name='Arial';
		text.font.size='9.5';
		text.font.style.bold='true';
		par.margin.bottom='5.8';
		par.option.nowrap='true';
	}
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs2';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s4';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Underline';
		style.id='cs3';
		text.decor.underline='true';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
}
<ROOT>
	<FOLDER>
		<BODY>
			<AREA_SEC>
				COND='getBooleanParam("gen.doc.overview")'
				FMT={
					text.option.nbsps='true';
					par.style='s2';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Overview'
								<DOC_HLINK>
									TARGET_FRAME_EXPR='"detailFrame"'
									HKEYS={
										'"overview-summary"';
									}
								</DOC_HLINK>
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				COND='getBooleanParam("gen.doc.allcomps") ||
getBooleanParam("nav.indexFrame.allcomps")'
				FMT={
					text.option.nbsps='true';
					par.style='s2';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='All Components'
								<URL_HLINK>
									ALT_HLINK
									TARGET_FRAME_EXPR='"indexFrame"'
									URL_EXPR='documentByTemplate ("all-components-frame")'
								</URL_HLINK>
								<URL_HLINK>
									ALT_HLINK
									TARGET_FRAME_EXPR='"detailFrame"'
									URL_EXPR='documentByTemplate ("all-components-summary")'
								</URL_HLINK>
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				COND='getBooleanParam("gen.doc.xmlnsBindings")'
				FMT={
					par.style='s2';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Namespace Bindings'
								<DOC_HLINK>
									TARGET_FRAME_EXPR='"detailFrame"'
									HKEYS={
										'"xmlns-bindings"';
									}
								</DOC_HLINK>
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<ELEMENT_ITER>
				DESCR='iterates by namespaces'
				COND='getBooleanParam("gen.doc.namespace")'
				TARGET_ET='#CUSTOM'
				SCOPE='custom'
				ELEMENT_ENUM_EXPR='toCustomElements (getElementMapKeys("namespaces"))'
				SORTING='by-value'
				SORTING_KEY={lpath='.',ascending}
				SORTING_COND='getBooleanParam("gen.doc.sorting.namespaces")'
				<BODY>
					<AREA_SEC>
						FMT={
							par.style='s2';
							par.option.nowrap='true';
						}
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='none';
								}
								<CTRLS>
									<IMAGE_CTRL>
										IMAGE_TYPE='file-image'
										FILE='images/namespace.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											image.alignment='bottom';
											image.padding.right='2.5';
										}
									</IMAGE_CTRL>
									<DATA_CTRL>
										FORMULA='contextElement.value != "" ? contextElement.value : "{no namespace}"'
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? 
  contextElement.value != ""
    ? "Namespace {" + contextElement.value.toString() + "}"
    : "No Namespace"
: ""'
											TARGET_FRAME_EXPR='"indexFrame"'
											HKEYS={
												'contextElement.value';
												'"summary"';
											}
										</DOC_HLINK>
										<DOC_HLINK>
											ALT_HLINK
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? 
  contextElement.value != ""
    ? "Namespace {" + contextElement.value.toString() + "}"
    : "No Namespace"
: ""'
											TARGET_FRAME_EXPR='"detailFrame"'
											HKEYS={
												'contextElement.value';
												'"detail"';
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
							par.style='s1';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<PANEL>
										FMT={
											ctrl.size.width='179.3';
											ctrl.size.height='38.3';
											text.hlink.fmt='style';
											text.hlink.style='cs3';
											text.hlink.style.use='hover';
										}
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
											TARGET_FRAME_EXPR='"detailFrame"'
											HKEYS={
												'"namespace-summary"';
											}
											HKEYS_MATCHING='equiv'
										</DOC_HLINK>
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='Namespaces'
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
				DESCR='iterate by WSDL files'
				COND='getBooleanParam("gen.doc.wsdl.file")'
				TARGET_ET='wsdl:definitions'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> #DOCUMENT/wsdl:definitions[checkElementsByKey("documented-wsdl-files", contextElement.id)]';
				}
				SORTING='by-expr'
				SORTING_KEY={expr='getXMLDocument().getAttrStringValue("xmlName")',ascending}
				SORTING_COND='getBooleanParam("gen.doc.sorting.wsdl.files")'
				FMT={
					sec.outputStyle='table';
					table.cell.padding.both='0';
					table.border.style='none';
				}
				<BODY>
					<AREA_SEC>
						FMT={
							par.style='s2';
							par.option.nowrap='true';
							trow.cell.align.vert='Top';
						}
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='none';
								}
								<CTRLS>
									<IMAGE_CTRL>
										IMAGE_TYPE='file-image'
										FILE='images/wsdl.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											ctrl.size.width='21';
											ctrl.size.height='59.3';
											image.alignment='bottom';
											image.padding.right='2.5';
										}
									</IMAGE_CTRL>
									<PANEL>
										FMT={
											ctrl.size.width='478.5';
											ctrl.size.height='59.3';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<DATA_CTRL>
														FORMULA='getXMLDocument().getAttrStringValue("xmlName")'
														<DOC_HLINK>
															TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("WSDL Link Title")
: ""'
															TARGET_FRAME_EXPR='"indexFrame"'
															HKEYS={
																'contextElement.id';
																'"indexFrame"';
															}
														</DOC_HLINK>
														<DOC_HLINK>
															ALT_HLINK
															TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("WSDL Link Title")
: ""'
															TARGET_FRAME_EXPR='"detailFrame"'
															HKEYS={
																'contextElement.id';
																'"detail"';
															}
														</DOC_HLINK>
													</DATA_CTRL>
													<PANEL>
														COND='findHyperTarget (
  Array (contextElement.id, "xml-source")
) != null'
														FMT={
															ctrl.size.width='75.8';
														}
														<AREA>
															<CTRL_GROUP>
																<CTRLS>
																	<DELIMITER>
																	</DELIMITER>
																	<TEXT_CTRL>
																		TEXT='['
																	</TEXT_CTRL>
																	<TEXT_CTRL>
																		TEXT='src'
																		<DOC_HLINK>
																			TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see XML source" : ""'
																			TARGET_FRAME_EXPR='"detailFrame"'
																			HKEYS={
																				'contextElement.id';
																				'"xml-source"';
																			}
																		</DOC_HLINK>
																	</TEXT_CTRL>
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
									</PANEL>
								</CTRLS>
							</CTRL_GROUP>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT=''
										FMT={
											ctrl.size.width='21';
											ctrl.size.height='17.3';
											ctrl.option.text.noEmptyOutput='true';
										}
									</TEXT_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='Embedded Schemas'
										FMT={
											ctrl.size.width='478.5';
											ctrl.size.height='17.3';
										}
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							sec.outputStyle='pars';
							par.style='s1';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<PANEL>
										FMT={
											ctrl.size.width='175.5';
											ctrl.size.height='38.3';
											text.hlink.fmt='style';
											text.hlink.style='cs3';
											text.hlink.style.use='hover';
										}
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
											TARGET_FRAME_EXPR='"detailFrame"'
											HKEYS={
												'"wsdl-file-summary"';
											}
											HKEYS_MATCHING='equiv'
										</DOC_HLINK>
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='WSDL Files'
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
				DESCR='iterate by XSD files'
				COND='getBooleanParam("gen.doc.xsd.schema")'
				TARGET_ET='xs:schema'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> #DOCUMENT/xs:schema[checkElementsByKey("documented-schemas", contextElement.id)]';
				}
				SORTING='by-expr'
				SORTING_KEY={expr='getXMLDocument().getAttrStringValue("xmlName")',ascending}
				SORTING_COND='getBooleanParam("gen.doc.sorting.xsd.schemas")'
				<BODY>
					<AREA_SEC>
						FMT={
							par.style='s2';
							par.option.nowrap='true';
						}
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='none';
								}
								<CTRLS>
									<IMAGE_CTRL>
										IMAGE_TYPE='file-image'
										FILE='images/schema.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											image.alignment='bottom';
											image.padding.right='2.5';
										}
									</IMAGE_CTRL>
									<DATA_CTRL>
										FORMULA='getXMLDocument().getAttrStringValue("xmlName")'
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("Schema Link Title")
: ""'
											TARGET_FRAME_EXPR='"indexFrame"'
											HKEYS={
												'contextElement.id';
												'"indexFrame"';
											}
										</DOC_HLINK>
										<DOC_HLINK>
											ALT_HLINK
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
									<PANEL>
										COND='findHyperTarget (
  Array (getXMLDocument().id, "xml-source")
) != null'
										FMT={
											ctrl.size.width='73.5';
											ctrl.size.height='38.3';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<DELIMITER>
													</DELIMITER>
													<TEXT_CTRL>
														TEXT='['
													</TEXT_CTRL>
													<TEXT_CTRL>
														TEXT='src'
														<DOC_HLINK>
															TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see XML source" : ""'
															TARGET_FRAME_EXPR='"detailFrame"'
															HKEYS={
																'getXMLDocument().id';
																'"xml-source"';
															}
														</DOC_HLINK>
													</TEXT_CTRL>
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
				<HEADER>
					<AREA_SEC>
						FMT={
							par.style='s1';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<PANEL>
										FMT={
											ctrl.size.width='202.5';
											text.hlink.fmt='style';
											text.hlink.style='cs3';
											text.hlink.style.use='hover';
										}
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
											TARGET_FRAME_EXPR='"detailFrame"'
											HKEYS={
												'"schema-file-summary"';
											}
											HKEYS_MATCHING='equiv'
										</DOC_HLINK>
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='Schema Files'
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
					par.style='s3';
				}
				<AREA>
					<CTRL_GROUP>
						FMT={
							txtfl.delimiter.type='none';
							par.margin.bottom='5';
						}
						<CTRLS>
							<DATA_CTRL>
								FORMULA='getStringParam("nav.overviewFrame.title")'
								FMT={
									txtfl.ehtml.render='true';
								}
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
</ROOT>
<STOCK_SECTIONS>
	<ELEMENT_ITER>
		SS_NAME='Embedded Schemas'
		MATCHING_ET='wsdl:definitions'
		TARGET_ET='xs:schema'
		SCOPE='advanced-location-rules'
		RULES={
			'* -> wsdl:types/xs:schema[checkElementsByKey("documented-schemas", contextElement.id)]';
		}
		<BODY>
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
						FMT={
							txtfl.delimiter.type='none';
						}
						<CTRLS>
							<IMAGE_CTRL>
								IMAGE_TYPE='file-image'
								FILE='images/schema.png'
								OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
								FMT={
									image.alignment='bottom';
									image.padding.right='1.7';
								}
							</IMAGE_CTRL>
							<DATA_CTRL>
								FORMULA='"Schema" + getServiceAttr("embeddedSchemaNo") + " [" +
((nsURI = getAttrStringValue("targetNamespace")) != "" ? nsURI : "no namespace") +
"]"'
								FMT={
									ctrl.size.width='471';
									ctrl.size.height='17.3';
									tcell.option.nowrap='true';
								}
								<DOC_HLINK>
									TITLE_EXPR='getBooleanParam("show.linkTitle") ? 
  callStockSection("Schema Link Title")
: ""'
									TARGET_FRAME_EXPR='"indexFrame"'
									HKEYS={
										'contextElement.id';
										'"indexFrame"';
									}
								</DOC_HLINK>
							</DATA_CTRL>
							<PANEL>
								COND='findHyperTarget (
  Array (
    contextElement.id,
    Array ("xml-source", "xml-source-location")
  )
) != null'
								FMT={
									ctrl.size.width='73.5';
									ctrl.size.height='38.3';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<DELIMITER>
											</DELIMITER>
											<TEXT_CTRL>
												TEXT='['
											</TEXT_CTRL>
											<TEXT_CTRL>
												TEXT='src'
												<DOC_HLINK>
													TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see XML source" : ""'
													TARGET_FRAME_EXPR='"detailFrame"'
													HKEYS={
														'contextElement.id';
														'Array ("xml-source", "xml-source-location")';
													}
												</DOC_HLINK>
											</TEXT_CTRL>
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
		<FOOTER>
			<AREA_SEC>
				COND='! parentIterator.isLastItem'
				<AREA>
					<SPACER>
						FMT={
							spacer.height='2.5';
							spacer.option.noSuppress='true';
						}
					</SPACER>
				</AREA>
			</AREA_SEC>
		</FOOTER>
	</ELEMENT_ITER>
	<TEMPLATE_CALL>
		SS_NAME='Schema Link Title'
		MATCHING_ET='xs:schema'
		TEMPLATE_FILE='xsd/schema/schemaLinkTitle.tpl'
	</TEMPLATE_CALL>
	<TEMPLATE_CALL>
		SS_NAME='WSDL Link Title'
		MATCHING_ET='wsdl:definitions'
		TEMPLATE_FILE='wsdl/file/wsdlLinkTitle.tpl'
	</TEMPLATE_CALL>
</STOCK_SECTIONS>
CHECKSUM='oTBWuf2F1uAF2wzMPqPaI490MPgqw34r+CiHCmB7BiU'
</DOCFLEX_TEMPLATE>