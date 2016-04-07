<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2012-07-04 03:11:35'
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
ROOT_ET='wsdl:definitions'
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$wsdlOverview';
		param.description='Indicates that this profile is included in the WSDL File Overview';
		param.type='boolean';
		param.hidden='true';
	}
	PARAM={
		param.name='$resourceOutputDir';
		param.title='documentation resources directory';
		param.type='string';
	}
	PARAM={
		param.name='doc.wsdl.file.profile';
		param.title='WSDL File Profile';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.file.profile.location';
		param.title='File Location';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.file.profile.location.relative';
		param.title='Relative Path';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.file.profile.location.hyperlink';
		param.title='Hyperlink';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.file.profile.targetNamespace';
		param.title='Target Namespace';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.file.profile.types.schemas';
		param.title='Types / Schemas';
		param.type='enum';
		param.enum.values='list;summary;none';
	}
	PARAM={
		param.name='doc.wsdl.file.profile.defs';
		param.title='WSDL Definitions';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.file.profile.relatedWSDLs';
		param.title='Related WSDL Files';
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
		style.name='Annotation Smaller';
		style.id='cs1';
		text.font.name='Arial';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Default Paragraph Font';
		style.id='cs2';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs3';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s1';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Page Number Small';
		style.id='cs4';
		text.font.name='Courier New';
		text.font.size='8';
	}
	PAR_STYLE={
		style.name='Profile Heading 1';
		style.id='s2';
		text.font.size='9';
		text.font.style.bold='true';
	}
	CHAR_STYLE={
		style.name='Profile Property';
		style.id='cs5';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Profile Property Clear';
		style.id='cs6';
		text.font.name='Verdana';
		text.font.size='8';
	}
	CHAR_STYLE={
		style.name='Profile Property Mono';
		style.id='cs7';
		text.font.name='Courier New';
		text.font.size='8';
	}
	CHAR_STYLE={
		style.name='Underline';
		style.id='cs8';
		text.decor.underline='true';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs3';
}
<ROOT>
	<FOLDER>
		DESCR='WSDL file source'
		CONTEXT_ELEMENT_EXPR='getXMLDocument()'
		MATCHING_ET='#DOCUMENT'
		FMT={
			sec.spacing.before='5';
		}
		<BODY>
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
						FMT={
							row.indent.block='true';
							text.style='cs6';
						}
						<CTRLS>
							<DATA_CTRL>
								COND='getBooleanParam("doc.wsdl.file.profile.location")'
								FORMULA='uri = getAttrStringValue("xmlURI");

getBooleanParam("doc.wsdl.file.profile.location.relative")
 ? makeRelativePath (uri, mainContext.output.dir) : uri
'
								<URL_HLINK>
									COND='getBooleanParam("doc.wsdl.file.profile.location.hyperlink")'
									TARGET_FRAME_EXPR='"_blank"'
									URL_EXPR='uri = getAttrStringValue("xmlURI");

getBooleanParam("doc.wsdl.file.profile.location.relative")
 ? makeRelativePath (uri, output.dir, true) : toURL (uri)'
								</URL_HLINK>
							</DATA_CTRL>
							<PANEL>
								COND='findHyperTarget (
  Array (contextElement.id, "xml-source")
) != null'
								FMT={
									ctrl.size.width='289.5';
									ctrl.size.height='59.3';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<DELIMITER>
												FMT={
													txtfl.delimiter.type='text';
													txtfl.delimiter.text='; ';
												}
											</DELIMITER>
											<TEXT_CTRL>
												TEXT='see'
											</TEXT_CTRL>
											<TEXT_CTRL>
												TEXT='XML source'
												<DOC_HLINK>
													HKEYS={
														'contextElement.id';
														'"xml-source"';
													}
												</DOC_HLINK>
											</TEXT_CTRL>
											<PANEL>
												COND='output.format.supportsPageRefs && 
getBooleanParam("fmt.page.refs")'
												FMT={
													ctrl.size.width='184.5';
													ctrl.size.height='38.3';
													txtfl.delimiter.type='none';
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
																		'"xml-source"';
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
							</PANEL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
		<HEADER>
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
						FMT={
							txtfl.delimiter.type='none';
							par.style='s2';
						}
						<CTRLS>
							<TEXT_CTRL>
								TEXT='File Source:'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
	<AREA_SEC>
		DESCR='Target Namespace'
		COND='getBooleanParam("doc.wsdl.file.profile.targetNamespace")'
		FMT={
			sec.spacing.before='5';
		}
		<AREA>
			<CTRL_GROUP>
				FMT={
					txtfl.delimiter.type='none';
					par.style='s2';
				}
				<CTRLS>
					<TEXT_CTRL>
						TEXT='Target Namespace'
					</TEXT_CTRL>
					<TEXT_CTRL>
						TEXT=':'
					</TEXT_CTRL>
				</CTRLS>
			</CTRL_GROUP>
			<CTRL_GROUP>
				FMT={
					row.indent.block='true';
					text.style='cs7';
				}
				<CTRLS>
					<DATA_CTRL>
						FORMULA='(ns = getAttrValue("targetNamespace")) != "" ? ns : "{no namespace}"'
						<DOC_HLINK>
							HKEYS={
								'getAttrValue("targetNamespace")';
								'"detail"';
							}
						</DOC_HLINK>
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<FOLDER>
		DESCR='types / embedded schemas'
		COND='! hasParamValue("doc.wsdl.file.profile.types.schemas", "none")'
		FMT={
			sec.spacing.before='5';
		}
		<BODY>
			<ELEMENT_ITER>
				DESCR='schema list'
				COND='hasParamValue("doc.wsdl.file.profile.types.schemas", "list")'
				BREAK_PARENT_BLOCK='when-executed'
				TARGET_ET='xs:schema'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> wsdl:types/xs:schema';
				}
				FMT={
					sec.outputStyle='list';
					text.style='cs5';
					list.type='delimited';
					list.margin.block='true';
				}
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<DATA_CTRL>
										FORMULA='"Schema" + getServiceAttr("embeddedSchemaNo")'
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? 
  callStockSection("Schema Link Title")
: ""'
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
				</BODY>
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='schema profiles'
				TARGET_ET='xs:schema'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> wsdl:types/xs:schema';
				}
				FMT={
					sec.outputStyle='list';
					text.font.name='Arial';
					text.font.size='10';
				}
				<BODY>
					<FOLDER>
						FMT={
							li.margin.top='5';
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
												FILE='../../images/schema.png'
												OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
												FMT={
													image.alignment='bottom';
													image.padding.right='2.5';
												}
											</IMAGE_CTRL>
											<DATA_CTRL>
												FORMULA='"Schema" + getServiceAttr("embeddedSchemaNo")'
												FMT={
													text.style='cs6';
													text.font.style.bold='true';
												}
												<DOC_HLINK>
													TITLE_EXPR='getBooleanParam("show.linkTitle") ? 
  callStockSection("Schema Link Title")
: ""'
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
							<TEMPLATE_CALL>
								OUTPUT_CHECKER_EXPR='getValuesByLPath(
  "xs:annotation/xs:documentation//(#TEXT | #CDATA)"
).isBlank() ? -1 : 1'
								TEMPLATE_FILE='../../xsd/ann/firstSentence.tpl'
								PASSED_ROOT_ELEMENT_EXPR='findChild("wsdl:documentation")'
								FMT={
									sec.spacing.before='5';
									sec.indent.block='true';
									text.style='cs1';
								}
							</TEMPLATE_CALL>
							<TEMPLATE_CALL>
								TEMPLATE_FILE='../../xsd/schema/schemaProfile.tpl'
								PASSED_PARAMS={
									'$profileType','"embedded"';
								}
								FMT={
									sec.indent.block='true';
								}
							</TEMPLATE_CALL>
						</BODY>
					</FOLDER>
				</BODY>
			</ELEMENT_ITER>
		</BODY>
		<HEADER>
			<AREA_SEC>
				FMT={
					par.style='s2';
				}
				<AREA>
					<CTRL_GROUP>
						FMT={
							txtfl.delimiter.type='none';
						}
						<CTRLS>
							<DATA_CTRL>
								COND='count = countElementsByLPath ("wsdl:types / xs:schema");

count > 0 ? { setVar ("count", count); true } : false'
								FORMULA='"Embedded Schemas (" + getVar("count") + ")"'
								FMT={
									text.hlink.fmt='style';
									text.hlink.style='cs8';
									text.hlink.style.use='hover';
								}
								<DOC_HLINK>
									TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
									HKEYS={
										'contextElement.id';
										'"schema-summary"';
									}
								</DOC_HLINK>
							</DATA_CTRL>
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
		DESCR='WSDL definitions (except types) found in this file'
		COND='getBooleanParam("doc.wsdl.file.profile.defs")'
		FMT={
			sec.spacing.before='5';
		}
		<BODY>
			<FOLDER>
				FMT={
					sec.outputStyle='text-par';
					sec.indent.block='true';
					text.style='cs5';
					txtfl.delimiter.type='text';
					txtfl.delimiter.text=', ';
				}
				<BODY>
					<AREA_SEC>
						DESCR='global attributes'
						COND='count = countChildren ("wsdl:service");

count > 0 ? { setVar ("count", count); true } : false'
						<AREA>
							<CTRL_GROUP>
								FMT={
									text.option.nbsps='true';
									txtfl.delimiter.type='nbsp';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='services'
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
											HKEYS={
												'contextElement.id';
												'"service-summary"';
											}
										</DOC_HLINK>
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='\'(\' + getVar("count") + \')\''
									</DATA_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						DESCR='global attributes'
						COND='count = countChildren ("wsdl:binding");

count > 0 ? { setVar ("count", count); true } : false'
						<AREA>
							<CTRL_GROUP>
								FMT={
									text.option.nbsps='true';
									txtfl.delimiter.type='nbsp';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='bindings'
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
											HKEYS={
												'contextElement.id';
												'"binding-summary"';
											}
										</DOC_HLINK>
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='\'(\' + getVar("count") + \')\''
									</DATA_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						DESCR='global attributes'
						COND='count = countChildren ("wsdl:portType");

count > 0 ? { setVar ("count", count); true } : false'
						<AREA>
							<CTRL_GROUP>
								FMT={
									text.option.nbsps='true';
									txtfl.delimiter.type='nbsp';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='portTypes'
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
											HKEYS={
												'contextElement.id';
												'"portType-summary"';
											}
										</DOC_HLINK>
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='\'(\' + getVar("count") + \')\''
									</DATA_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						DESCR='global attributes'
						COND='count = countChildren ("wsdl:message");

count > 0 ? { setVar ("count", count); true } : false'
						<AREA>
							<CTRL_GROUP>
								FMT={
									text.option.nbsps='true';
									txtfl.delimiter.type='nbsp';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='messages'
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
											HKEYS={
												'contextElement.id';
												'"message-summary"';
											}
										</DOC_HLINK>
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='\'(\' + getVar("count") + \')\''
									</DATA_CTRL>
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
					par.style='s2';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='WSDL Definitions:'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
	<FOLDER>
		DESCR='Related WSDL Files'
		COND='getBooleanParam("doc.wsdl.file.profile.relatedWSDLs")'
		FMT={
			text.style='cs5';
		}
		<BODY>
			<ELEMENT_ITER>
				DESCR='imports WSDL files'
				TARGET_ET='wsdl:import'
				SCOPE='simple-location-rules'
				RULES={
					'* -> wsdl:import';
				}
				FILTER='checkElementsByKey ("referenced-schema", contextElement.id)'
				SORTING='by-expr'
				SORTING_KEY={expr='schema = findElementByKey ("referenced-schema", contextElement.id);
schema.getXMLDocument().getAttrStringValue("xmlName")',ascending}
				FMT={
					sec.outputStyle='list';
					sec.spacing.before='5';
					list.type='delimited';
					list.margin.block='true';
				}
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<SS_CALL_CTRL>
										CONTEXT_ELEMENT_EXPR='findElementByKey ("referenced-schema", contextElement.id)'
										MATCHING_ET='wsdl:definitions'
										SS_NAME='WSDL Name'
									</SS_CALL_CTRL>
									<PANEL>
										COND='getBooleanParam("$wsdlOverview")
&&
! output.format.supportsPagination
&&
findHyperTarget (
  Array (contextElement.id, "xml-source-location")
) != null'
										FMT={
											ctrl.size.width='96.8';
											ctrl.size.height='38.3';
											txtfl.delimiter.type='none';
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
													</TEXT_CTRL>
													<TEXT_CTRL>
														TEXT='src'
														<DOC_HLINK>
															TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see within WSDL source" : ""'
															HKEYS={
																'contextElement.id';
																'"xml-source-location"';
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
							par.style='s2';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Imports WSDL Files'
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='"(" + iterator.numItems + "):"'
									</DATA_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='imported by WSDL files'
				TARGET_ET='wsdl:import'
				SCOPE='custom'
				ELEMENT_ENUM_EXPR='findElementsByKey ("schema-references", contextElement.id)'
				SORTING='by-expr'
				SORTING_KEY={expr='getXMLDocument().getAttrStringValue("xmlName")',ascending}
				FMT={
					sec.outputStyle='list';
					sec.spacing.before='5';
					list.type='delimited';
					list.margin.block='true';
				}
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<SS_CALL_CTRL>
										CONTEXT_ELEMENT_EXPR='findAncestor("wsdl:definitions")'
										MATCHING_ET='wsdl:definitions'
										SS_NAME='WSDL Name'
									</SS_CALL_CTRL>
									<PANEL>
										COND='getBooleanParam("$wsdlOverview")
&&
! output.format.supportsPagination
&&
findHyperTarget (
  Array (contextElement.id, "xml-source-location")
) != null'
										FMT={
											ctrl.size.width='101.3';
											ctrl.size.height='38.3';
											txtfl.delimiter.type='none';
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
													</TEXT_CTRL>
													<TEXT_CTRL>
														TEXT='src'
														<DOC_HLINK>
															TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see within WSDL source" : ""'
															HKEYS={
																'contextElement.id';
																'"xml-source-location"';
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
							par.style='s2';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Imported by WSDL Files'
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='"(" + iterator.numItems + "):"'
									</DATA_CTRL>
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
		SS_NAME='Schema Link Title'
		MATCHING_ET='xs:schema'
		TEMPLATE_FILE='../../xsd/schema/schemaLinkTitle.tpl'
	</TEMPLATE_CALL>
	<TEMPLATE_CALL>
		SS_NAME='WSDL Link Title'
		MATCHING_ET='wsdl:definitions'
		TEMPLATE_FILE='wsdlLinkTitle.tpl'
	</TEMPLATE_CALL>
	<TEMPLATE_CALL>
		SS_NAME='WSDL Name'
		MATCHING_ET='wsdl:definitions'
		TEMPLATE_FILE='wsdlName.tpl'
	</TEMPLATE_CALL>
</STOCK_SECTIONS>
CHECKSUM='ODWLzYXGfH1h8YLdfa?c7D5rKK51qwvTE?2w8G?WdXo'
</DOCFLEX_TEMPLATE>