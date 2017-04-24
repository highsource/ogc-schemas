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
ROOT_ET='xs:schema'
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$schemaSummary';
		param.type='boolean';
		param.hidden='true';
	}
	PARAM={
		param.name='doc.schema.profile';
		param.title='Schema Profile';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.profile.targetNamespace';
		param.title='Target Namespace';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.profile.version';
		param.title='Version';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.profile.components';
		param.title='Components';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.profile.formDefault';
		param.title='Default NS-Qualified Form';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.profile.blockDefault';
		param.title='Default Block Attribute';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.profile.blockDefault.value';
		param.title='Value';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.profile.blockDefault.meaning';
		param.title='Meaning';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.profile.finalDefault';
		param.title='Default Final Attribute';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.profile.finalDefault.value';
		param.title='Value';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.profile.finalDefault.meaning';
		param.title='Meaning';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.profile.location';
		param.title='Schema Location';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.profile.location.relative';
		param.title='Relative Path';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.profile.location.hyperlink';
		param.title='Hyperlink';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.profile.relatedSchemas';
		param.title='Related Schemas';
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
	CHAR_STYLE={
		style.name='Mono (Small)';
		style.id='cs3';
		text.font.name='Courier New';
		text.font.size='8';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s1';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Page Reference';
		style.id='cs4';
		text.font.name='Courier New';
		text.font.size='8';
	}
	CHAR_STYLE={
		style.name='Profile Item';
		style.id='cs5';
		text.font.name='Arial';
		text.font.size='9';
	}
	PAR_STYLE={
		style.name='Profile Item Title';
		style.id='s2';
		text.font.name='Arial';
		text.font.size='9';
		text.font.style.bold='true';
	}
	CHAR_STYLE={
		style.name='Property Note';
		style.id='cs6';
		text.font.name='Tahoma';
		text.font.size='8';
		text.font.style.italic='true';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs2';
}
<ROOT>
	<AREA_SEC>
		DESCR='Target Namespace'
		COND='getBooleanParam("doc.schema.profile.targetNamespace")'
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
						COND='getServiceAttr("targetNamespace") != getAttrValue("targetNamespace")'
						TEXT=' (adopted)'
					</TEXT_CTRL>
					<TEXT_CTRL>
						TEXT=':'
					</TEXT_CTRL>
				</CTRLS>
			</CTRL_GROUP>
			<CTRL_GROUP>
				FMT={
					row.indent.block='true';
					text.style='cs3';
				}
				<CTRLS>
					<DATA_CTRL>
						FORMULA='(ns = getServiceAttr("targetNamespace")) != "" ? ns : "{no namespace}"'
						<DOC_HLINK>
							HKEYS={
								'getServiceAttr("targetNamespace")';
								'"detail"';
							}
						</DOC_HLINK>
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		DESCR='Version'
		COND='getBooleanParam("doc.schema.profile.version")
&&
hasAttr("version")'
		FMT={
			sec.spacing.before='5';
		}
		<AREA>
			<CTRL_GROUP>
				FMT={
					par.style='s2';
				}
				<CTRLS>
					<TEXT_CTRL>
						TEXT='Version:'
					</TEXT_CTRL>
				</CTRLS>
			</CTRL_GROUP>
			<CTRL_GROUP>
				FMT={
					row.indent.block='true';
					text.style='cs5';
				}
				<CTRLS>
					<DATA_CTRL>
						ATTR='version'
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<FOLDER>
		DESCR='components defined in this schema'
		COND='getBooleanParam("doc.schema.profile.components")'
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
						DESCR='elements'
						COND='global_count = countChildren ("xs:element");

local_count = countElementsByLPath (
  "descendant::xs:%localElement",
  BooleanQuery (
   ! hasAttr ("ref")
  )
);

global_count + local_count > 0 ? { 
  setVar ("global_count", global_count);
  setVar ("local_count", local_count);
  true 
} : false'
						<AREA>
							<CTRL_GROUP>
								FMT={
									text.option.nbsps='true';
									txtfl.delimiter.type='nbsp';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='elements'
										FMT={
											text.option.nbsps='true';
										}
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
											HKEYS={
												'contextElement.id';
												'"element-summary"';
											}
										</DOC_HLINK>
									</TEXT_CTRL>
									<TEXT_CTRL>
										TEXT='('
									</TEXT_CTRL>
									<DELIMITER>
										FMT={
											txtfl.delimiter.type='none';
										}
									</DELIMITER>
									<PANEL>
										COND='getVar("global_count").toInt() > 0'
										FMT={
											ctrl.size.width='142.5';
											ctrl.size.height='38.3';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<DATA_CTRL>
														FORMULA='getVar("global_count")'
													</DATA_CTRL>
													<TEXT_CTRL>
														TEXT='global'
													</TEXT_CTRL>
													<DELIMITER>
														FMT={
															txtfl.delimiter.type='nbtxt';
															txtfl.delimiter.text=' + ';
														}
													</DELIMITER>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
									<PANEL>
										COND='getVar("local_count").toInt() > 0'
										FMT={
											ctrl.size.width='124.5';
											ctrl.size.height='38.3';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<DATA_CTRL>
														FORMULA='getVar("local_count")'
													</DATA_CTRL>
													<TEXT_CTRL>
														TEXT='local'
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
										TEXT=')'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						DESCR='complexTypes'
						COND='count = countElementsByLPath ("descendant::xs:complexType");

count > 0 ? { setVar ("count", count); true } : false'
						<AREA>
							<CTRL_GROUP>
								FMT={
									text.option.nbsps='true';
									txtfl.delimiter.type='nbsp';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='complexTypes'
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
											HKEYS={
												'contextElement.id';
												'"complexType-summary"';
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
						DESCR='simpleTypes'
						COND='count = countElementsByLPath ("descendant::xs:simpleType");

count > 0 ? { setVar ("count", count); true } : false'
						<AREA>
							<CTRL_GROUP>
								FMT={
									text.option.nbsps='true';
									txtfl.delimiter.type='nbsp';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='simpleTypes'
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
											HKEYS={
												'contextElement.id';
												'"simpleType-summary"';
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
						DESCR='element groups'
						COND='count = countElementsByLPath ("descendant::xs:group");

count > 0 ? { setVar ("count", count); true } : false'
						<AREA>
							<CTRL_GROUP>
								FMT={
									text.option.nbsps='true';
									txtfl.delimiter.type='nbsp';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='element groups'
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
											HKEYS={
												'contextElement.id';
												'"group-summary"';
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
						COND='count = countChildren ("xs:attribute");

count > 0 ? { setVar ("count", count); true } : false'
						<AREA>
							<CTRL_GROUP>
								FMT={
									text.option.nbsps='true';
									txtfl.delimiter.type='nbsp';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='global attributes'
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
											HKEYS={
												'contextElement.id';
												'"attribute-summary"';
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
						DESCR='attribute groups'
						COND='count = countElementsByLPath ("descendant::xs:attributeGroup");

count > 0 ? { setVar ("count", count); true } : false'
						<AREA>
							<CTRL_GROUP>
								FMT={
									text.option.nbsps='true';
									txtfl.delimiter.type='nbsp';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='attribute groups'
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
											HKEYS={
												'contextElement.id';
												'"attributeGroup-summary"';
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
								TEXT='Defined Components:'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
	<AREA_SEC>
		DESCR='Default Namespace-Qualified Form'
		COND='getBooleanParam("doc.schema.profile.formDefault")
&&
(hasAttr("elementFormDefault") ||
 hasAttr("attributeFormDefault"))'
		FMT={
			sec.spacing.before='5';
		}
		<AREA>
			<CTRL_GROUP>
				FMT={
					par.style='s2';
				}
				<CTRLS>
					<TEXT_CTRL>
						TEXT='Default Namespace-Qualified Form:'
					</TEXT_CTRL>
				</CTRLS>
			</CTRL_GROUP>
			<CTRL_GROUP>
				FMT={
					row.indent.block='true';
					text.style='cs5';
				}
				<CTRLS>
					<PANEL>
						COND='hasAttr("elementFormDefault")'
						FMT={
							ctrl.size.width='158.3';
							ctrl.size.height='38.3';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Local Elements:'
									</TEXT_CTRL>
									<DATA_CTRL>
										ATTR='elementFormDefault'
									</DATA_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</PANEL>
					<DELIMITER>
						FMT={
							txtfl.delimiter.type='text';
							txtfl.delimiter.text='; ';
						}
					</DELIMITER>
					<PANEL>
						COND='hasAttr("attributeFormDefault")'
						FMT={
							ctrl.size.width='158.3';
							ctrl.size.height='38.3';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Local Attributes:'
									</TEXT_CTRL>
									<DATA_CTRL>
										COND='hasAttr("attributeFormDefault")'
										ATTR='attributeFormDefault'
									</DATA_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</PANEL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		DESCR='Default Block Attribute'
		COND='getBooleanParam("doc.schema.profile.blockDefault")
&&
getAttrValue ("blockDefault") != null'
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
						TEXT='Default Block Attribute:'
					</TEXT_CTRL>
				</CTRLS>
			</CTRL_GROUP>
			<CTRL_GROUP>
				FMT={
					row.indent.block='true';
					text.style='cs5';
				}
				<CTRLS>
					<SS_CALL_CTRL>
						SS_NAME='Default Block Attribute'
					</SS_CALL_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		DESCR='Default Final Attribute'
		COND='getBooleanParam("doc.schema.profile.finalDefault")
&&
getAttrValue ("finalDefault") != null'
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
						TEXT='Default Final Attribute:'
					</TEXT_CTRL>
				</CTRLS>
			</CTRL_GROUP>
			<CTRL_GROUP>
				FMT={
					row.indent.block='true';
					text.style='cs5';
				}
				<CTRLS>
					<SS_CALL_CTRL>
						SS_NAME='Default Final Attribute'
					</SS_CALL_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		DESCR='Schema Location'
		COND='getBooleanParam("doc.schema.profile.location")'
		CONTEXT_ELEMENT_EXPR='getXMLDocument()'
		MATCHING_ET='#DOCUMENT'
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
						TEXT='Schema Location:'
					</TEXT_CTRL>
				</CTRLS>
			</CTRL_GROUP>
			<CTRL_GROUP>
				FMT={
					row.indent.block='true';
					text.style='cs5';
				}
				<CTRLS>
					<DATA_CTRL>
						FORMULA='uri = getAttrStringValue("xmlURI");

getBooleanParam("doc.schema.profile.location.relative")
 ? makeRelativePath (uri, mainContext.output.dir) : uri
'
						<URL_HLINK>
							COND='getBooleanParam("doc.schema.profile.location.hyperlink")'
							TARGET_FRAME_EXPR='"_blank"'
							URL_EXPR='uri = getAttrStringValue("xmlURI");

getBooleanParam("doc.schema.profile.location.relative")
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
	<FOLDER>
		DESCR='Related Schemas'
		COND='getBooleanParam("doc.schema.profile.relatedSchemas")'
		COLLAPSED
		<BODY>
			<ELEMENT_ITER>
				DESCR='imports schemas'
				COLLAPSED
				TARGET_ET='xs:import'
				SCOPE='simple-location-rules'
				RULES={
					'* -> xs:import';
				}
				FILTER='checkElementsByKey ("loaded-schema", contextElement.id)'
				SORTING='by-expr'
				SORTING_KEY={expr='schema = findElementByKey ("loaded-schema", contextElement.id);
schema.getXMLDocument().getAttrStringValue("xmlName")',ascending}
				FMT={
					sec.outputStyle='list';
					sec.spacing.before='5';
					text.style='cs5';
					list.type='delimited';
					list.margin.block='true';
				}
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<SS_CALL_CTRL>
										CONTEXT_ELEMENT_EXPR='findElementByKey ("loaded-schema", contextElement.id)'
										MATCHING_ET='<ANY>'
										SS_NAME='Schema Name'
									</SS_CALL_CTRL>
									<PANEL>
										COND='getBooleanParam("$schemaSummary")
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
															TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see within schema source" : ""'
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
										TEXT='Imports Schemas'
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
				DESCR='includes schemas'
				COLLAPSED
				TARGET_ET='xs:include'
				SCOPE='simple-location-rules'
				RULES={
					'* -> xs:include';
				}
				FILTER='checkElementsByKey ("loaded-schema", contextElement.id)'
				SORTING='by-expr'
				SORTING_KEY={expr='schema = findElementByKey ("loaded-schema", contextElement.id);
schema.getXMLDocument().getAttrStringValue("xmlName")',ascending}
				FMT={
					sec.outputStyle='list';
					sec.spacing.before='5';
					text.style='cs5';
					list.type='delimited';
					list.margin.block='true';
				}
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<SS_CALL_CTRL>
										CONTEXT_ELEMENT_EXPR='findElementByKey ("loaded-schema", contextElement.id)'
										MATCHING_ET='<ANY>'
										SS_NAME='Schema Name'
									</SS_CALL_CTRL>
									<PANEL>
										COND='getBooleanParam("$schemaSummary")
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
															TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see within schema source" : ""'
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
										TEXT='Includes Schemas'
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
				DESCR='redefines schemas'
				COLLAPSED
				TARGET_ET='xs:redefine'
				SCOPE='simple-location-rules'
				RULES={
					'* -> xs:redefine';
				}
				FILTER='checkElementsByKey ("loaded-schema", contextElement.id)'
				SORTING='by-expr'
				SORTING_KEY={expr='schema = findElementByKey ("loaded-schema", contextElement.id);
schema.getXMLDocument().getAttrStringValue("xmlName")',ascending}
				FMT={
					sec.outputStyle='list';
					sec.spacing.before='5';
					text.style='cs5';
					list.type='delimited';
					list.margin.block='true';
				}
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<SS_CALL_CTRL>
										CONTEXT_ELEMENT_EXPR='findElementByKey ("loaded-schema", contextElement.id)'
										MATCHING_ET='<ANY>'
										SS_NAME='Schema Name'
									</SS_CALL_CTRL>
									<PANEL>
										COND='getBooleanParam("$schemaSummary")
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
															TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see within schema source" : ""'
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
										TEXT='Redefines Schemas'
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
				DESCR='imported by schemas'
				COLLAPSED
				TARGET_ET='xs:import'
				SCOPE='custom'
				ELEMENT_ENUM_EXPR='findElementsByKey ("schema-loading-elements", contextElement.id)'
				SORTING='by-expr'
				SORTING_KEY={expr='getXMLDocument().getAttrStringValue("xmlName")',ascending}
				FMT={
					sec.outputStyle='list';
					sec.spacing.before='5';
					text.style='cs5';
					list.type='delimited';
					list.margin.block='true';
				}
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<SS_CALL_CTRL>
										SS_NAME='Schema Name'
									</SS_CALL_CTRL>
									<PANEL>
										COND='getBooleanParam("$schemaSummary")
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
															TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see within schema source" : ""'
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
										TEXT='Imported by Schemas'
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
				DESCR='included in schemas'
				COLLAPSED
				TARGET_ET='xs:include'
				SCOPE='custom'
				ELEMENT_ENUM_EXPR='findElementsByKey ("schema-loading-elements", contextElement.id)'
				SORTING='by-expr'
				SORTING_KEY={expr='getXMLDocument().getAttrStringValue("xmlName")',ascending}
				FMT={
					sec.outputStyle='list';
					sec.spacing.before='5';
					text.style='cs5';
					list.type='delimited';
					list.margin.block='true';
				}
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<SS_CALL_CTRL>
										SS_NAME='Schema Name'
									</SS_CALL_CTRL>
									<PANEL>
										COND='getBooleanParam("$schemaSummary")
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
															TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see within schema source" : ""'
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
										TEXT='Included in Schemas'
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
				DESCR='redefined in schemas'
				COLLAPSED
				TARGET_ET='xs:redefine'
				SCOPE='custom'
				ELEMENT_ENUM_EXPR='findElementsByKey ("schema-loading-elements", contextElement.id)'
				SORTING='by-expr'
				SORTING_KEY={expr='getXMLDocument().getAttrStringValue("xmlName")',ascending}
				FMT={
					sec.outputStyle='list';
					sec.spacing.before='5';
					text.style='cs5';
					list.type='delimited';
					list.margin.block='true';
				}
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<SS_CALL_CTRL>
										SS_NAME='Schema Name'
									</SS_CALL_CTRL>
									<PANEL>
										COND='getBooleanParam("$schemaSummary")
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
															TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see within schema source" : ""'
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
										TEXT='Redefined in Schemas'
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
	<FOLDER>
		SS_NAME='Default Block Attribute'
		MATCHING_ET='xs:schema'
		<BODY>
			<AREA_SEC>
				COND='getBooleanParam("doc.schema.profile.blockDefault.value")'
				FMT={
					text.style='cs3';
					txtfl.delimiter.type='none';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='"'
							</TEXT_CTRL>
							<DATA_CTRL>
								ATTR='blockDefault'
								FMT={
									txtfl.delimiter.text=' ';
								}
							</DATA_CTRL>
							<TEXT_CTRL>
								TEXT='"'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<FOLDER>
				DESCR='meaning'
				COND='getBooleanParam("doc.schema.profile.blockDefault.meaning")'
				FMT={
					text.style='cs6';
				}
				<BODY>
					<AREA_SEC>
						DESCR='#all'
						COND='hasAttrValue("blockDefault", "#all")'
						BREAK_PARENT_BLOCK='when-executed'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='(blocks all substitutions of elements and their types both through substitution groups and xsi:type attribute in instance XML documents)'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<FOLDER>
						DESCR='substitution, ...'
						COND='hasAttrValue ("blockDefault", "substitution")'
						BREAK_PARENT_BLOCK='when-executed'
						<BODY>
							<AREA_SEC>
								DESCR='extension, restriction'
								COND='values = getAttrValues("blockDefault");

derivations = Vector();

values.contains ("extension") ?
  derivations.addElement ("extension");

values.contains ("restriction") ?
  derivations.addElement ("restriction");

derivations.size() > 0 ? 
{
  setVar ("blocked_derivations", derivations);
  true
} : false'
								BREAK_PARENT_BLOCK='when-executed'
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='(blocks any substitutions of elements through substitution groups and substitutions of their types through xsi:type attribute by types derived by'
											</TEXT_CTRL>
											<DATA_CTRL>
												FORMULA='mergeStrings (
  getVar ("blocked_derivations").toVector(),
  ", ", " or "
)'
											</DATA_CTRL>
											<TEXT_CTRL>
												TEXT='from the types of the elements or any other complex types)'
											</TEXT_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
							<AREA_SEC>
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='(blocks any substitutions of elements through substitution groups)'
											</TEXT_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</BODY>
					</FOLDER>
					<AREA_SEC>
						DESCR='extension, restriction'
						COND='values = values = getAttrValues("blockDefault");

derivations = Vector();

values.contains ("extension") ?
  derivations.addElement ("extension");

values.contains ("restriction") ?
  derivations.addElement ("restriction");

derivations.size() > 0 ? 
{
  setVar ("blocked_derivations", derivations);
  true
} : false'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='(blocks any substitutions of elements or their types both through xsi:type attribute and substitution groups by elements or types, derived by'
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='mergeStrings (
  getVar ("blocked_derivations").toVector(),
  ", ", " or "
)'
									</DATA_CTRL>
									<TEXT_CTRL>
										TEXT='from the types of the elements or any other complex types)'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</FOLDER>
		</BODY>
	</FOLDER>
	<FOLDER>
		SS_NAME='Default Final Attribute'
		MATCHING_ET='xs:schema'
		<BODY>
			<AREA_SEC>
				COND='getBooleanParam("doc.schema.profile.finalDefault.value")'
				FMT={
					text.style='cs3';
					txtfl.delimiter.type='none';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='"'
							</TEXT_CTRL>
							<DATA_CTRL>
								ATTR='finalDefault'
								FMT={
									txtfl.delimiter.text=' ';
								}
							</DATA_CTRL>
							<TEXT_CTRL>
								TEXT='"'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<FOLDER>
				DESCR='meaning'
				COND='getBooleanParam("doc.schema.profile.finalDefault.meaning")'
				FMT={
					text.style='cs6';
				}
				<BODY>
					<AREA_SEC>
						DESCR='#all'
						COND='hasAttrValue("finalDefault", "#all")'
						BREAK_PARENT_BLOCK='when-executed'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='(prohinits using elements defined in this schema as the heads of any substitution groups)'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						DESCR='extension, restriction'
						COND='values = getAttrValues("finalDefault");

derivations = Vector();

values.contains ("extension") ?
  derivations.addElement ("extension");

values.contains ("restriction") ?
  derivations.addElement ("restriction");

derivations.size() > 0 ? 
{
  setVar ("blocked_derivations", derivations);
  true
} : false'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='(prohibits using element defined in this schema as the heads of substitution groups for elements whose types are derived by'
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='mergeStrings (
  getVar ("blocked_derivations").toVector(),
  ", ", " or "
)'
									</DATA_CTRL>
									<TEXT_CTRL>
										TEXT='from the types of the elements)'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</FOLDER>
		</BODY>
	</FOLDER>
	<TEMPLATE_CALL>
		SS_NAME='Schema Name'
		TEMPLATE_FILE='schemaName.tpl'
	</TEMPLATE_CALL>
</STOCK_SECTIONS>
CHECKSUM='LQ?cagilPUPtyR2eqt0ijfBOtoidFOStfBd4lP3FFTc'
</DOCFLEX_TEMPLATE>