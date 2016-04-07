<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2005-10-13 03:37:00'
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
ROOT_ET='xs:attribute'
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$mainXML';
		param.type='GOMElement';
		param.defaultValue.expr='findElementByKey ("main-xmls", getXMLDocument().id)';
	}
	PARAM={
		param.name='$nsURI';
		param.title='attribute\'s namespace URI';
		param.description='The namespace to which this global attribute belongs';
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
		param.name='$usageCount';
		param.description='number of locations where this global attribute is used';
		param.type='integer';
		param.defaultValue.expr='countElementsByKey ("xsd-attribute-usage", contextElement.id)';
		param.hidden='true';
	}
	PARAM={
		param.name='doc.xsd.comp.profile';
		param.title='Component Profile';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.namespace';
		param.title='Namespace';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.type';
		param.title='Type';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.defined';
		param.title='Defined';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.used';
		param.title='Used';
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
		style.name='Normal';
		style.id='s1';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Page Number Small';
		style.id='cs5';
		text.font.name='Courier New';
		text.font.size='8';
	}
	CHAR_STYLE={
		style.name='Property Title Font';
		style.id='cs6';
		text.font.size='8';
		text.font.style.bold='true';
	}
	CHAR_STYLE={
		style.name='Property Value Font';
		style.id='cs7';
		text.font.name='Verdana';
		text.font.size='8';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs4';
}
<ROOT>
	<AREA_SEC>
		COND='getBooleanParam("doc.xsd.comp.profile.namespace")'
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						TEXT='Namespace:'
						FMT={
							text.style='cs6';
						}
					</TEXT_CTRL>
					<DELIMITER>
						FMT={
							text.style='cs1';
						}
					</DELIMITER>
					<DATA_CTRL>
						FORMULA='(ns = getParam("$nsURI")) != "" ? ns : "{no namespace}"'
						FMT={
							text.style='cs2';
						}
						<DOC_HLINK>
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
		COND='getBooleanParam("doc.xsd.comp.profile.type")'
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						TEXT='Type:'
						FMT={
							text.style='cs6';
						}
					</TEXT_CTRL>
					<DELIMITER>
						FMT={
							text.style='cs1';
						}
					</DELIMITER>
					<SS_CALL_CTRL>
						SS_NAME='Type Info'
						FMT={
							text.style='cs7';
						}
					</SS_CALL_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		COND='getBooleanParam("doc.xsd.comp.profile.defined")'
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						TEXT='Defined:'
						FMT={
							text.style='cs6';
						}
					</TEXT_CTRL>
					<DELIMITER>
						FMT={
							text.style='cs1';
						}
					</DELIMITER>
					<PANEL>
						FMT={
							ctrl.size.width='319.5';
							ctrl.size.height='119.3';
							text.style='cs7';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='globally'
									</TEXT_CTRL>
									<PANEL>
										COND='! hasParamValue("$scope", "schema")'
										FMT={
											ctrl.size.width='158.3';
											ctrl.size.height='38.3';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='in'
													</TEXT_CTRL>
													<SS_CALL_CTRL>
														CONTEXT_ELEMENT_EXPR='findAncestor("xs:schema")'
														MATCHING_ET='xs:schema'
														SS_NAME='Schema Name'
													</SS_CALL_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
									<PANEL>
										COND='findHyperTarget (Array (
  contextElement.id,
  Array ("xml-source", "xml-source-location")
)) != null'
										FMT={
											ctrl.size.width='288.8';
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
																'Array ("xml-source", "xml-source-location")';
															}
														</DOC_HLINK>
													</TEXT_CTRL>
													<PANEL>
														COND='output.format.supportsPageRefs && 
getBooleanParam("fmt.page.refs")'
														FMT={
															ctrl.size.width='186';
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
																			text.style='cs5';
																		}
																	</TEXT_CTRL>
																	<DATA_CTRL>
																		DOCFIELD='page-htarget'
																		FMT={
																			ctrl.option.noHLinkFmt='true';
																			text.style='cs5';
																			text.hlink.fmt='none';
																		}
																		<DOC_HLINK>
																			HKEYS={
																				'contextElement.id';
																				'Array ("xml-source", "xml-source-location")';
																			}
																		</DOC_HLINK>
																	</DATA_CTRL>
																	<TEXT_CTRL>
																		TEXT=']'
																		FMT={
																			text.style='cs5';
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
					</PANEL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		COND='getBooleanParam("doc.xsd.comp.profile.used") &&
getIntParam("$usageCount") == 0'
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						TEXT='Used:'
						FMT={
							text.style='cs6';
						}
					</TEXT_CTRL>
					<DELIMITER>
						FMT={
							text.style='cs1';
						}
					</DELIMITER>
					<TEXT_CTRL>
						TEXT='never'
						FMT={
							text.style='cs7';
						}
					</TEXT_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		COND='getBooleanParam("doc.xsd.comp.profile.used") &&
getIntParam("$usageCount") > 0'
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						TEXT='Used:'
						FMT={
							text.style='cs6';
						}
					</TEXT_CTRL>
					<DELIMITER>
						FMT={
							text.style='cs1';
						}
					</DELIMITER>
					<PANEL>
						FMT={
							ctrl.size.width='210';
							text.style='cs7';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='at'
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='getIntParam("$usageCount")'
									</DATA_CTRL>
									<TEXT_CTRL>
										COND='getIntParam("$usageCount") == 1'
										TEXT='location'
										<DOC_HLINK>
											HKEYS={
												'contextElement.id';
												'"usage-locations"';
											}
										</DOC_HLINK>
									</TEXT_CTRL>
									<TEXT_CTRL>
										COND='getIntParam("$usageCount") > 1'
										TEXT='locations'
										<DOC_HLINK>
											HKEYS={
												'contextElement.id';
												'"usage-locations"';
											}
										</DOC_HLINK>
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</PANEL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
</ROOT>
<STOCK_SECTIONS>
	<TEMPLATE_CALL>
		SS_NAME='Link Title'
		TEMPLATE_FILE='../component/componentLinkTitle.tpl'
	</TEMPLATE_CALL>
	<TEMPLATE_CALL>
		SS_NAME='Schema Name'
		MATCHING_ET='xs:schema'
		TEMPLATE_FILE='../schema/schemaName.tpl'
	</TEMPLATE_CALL>
	<FOLDER>
		SS_NAME='Type Info'
		MATCHING_ET='xs:attribute'
		FMT={
			sec.outputStyle='text-par';
		}
		<BODY>
			<AREA_SEC>
				COND='getAttrStringValue("type") == ""'
				CONTEXT_ELEMENT_EXPR='findChild("xs:complexType | xs:simpleType")'
				MATCHING_ETS={'xs:%complexType';'xs:%simpleType'}
				BREAK_PARENT_BLOCK='when-executed'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='anonymous'
								<DOC_HLINK>
									HKEYS={
										'contextElement.id';
										'Array ("detail", "xml-source-location")';
									}
								</DOC_HLINK>
							</TEXT_CTRL>
							<DATA_CTRL>
								FORMULA='instanceOf ("xs:%simpleType") ? "simpleType" : "complexType"'
							</DATA_CTRL>
							<TEMPLATE_CALL_CTRL>
								TEMPLATE_FILE='../type/typeDerivationSummary.tpl'
							</TEMPLATE_CALL_CTRL>
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
									ctrl.size.width='154.5';
									text.style='cs5';
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
			<FOLDER>
				DESCR='when there\'s a reference to a global type'
				COND='getAttrStringValue("type") != ""'
				BREAK_PARENT_BLOCK='when-executed'
				<BODY>
					<AREA_SEC>
						DESCR='when the reference is resolved into a documented element'
						CONTEXT_ELEMENT_EXPR='findElementByKey (
  "xsd-types",
  getAttrQNameValue("type"),
  BooleanQuery (checkElementByKey (
    "main-xmls",
    getXMLDocument().id,
    getElementParam("$mainXML")
  ))
)'
						MATCHING_ETS={'xs:complexType';'xs:simpleType'}
						BREAK_PARENT_BLOCK='when-executed'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<DATA_CTRL>
										FORMULA='toXMLName (
  findAncestor("xs:schema").getServiceAttr("targetNamespace").toString(),
  getAttrStringValue("name"),
  Array (rootElement, contextElement)
)'
										FMT={
											text.style='cs2';
										}
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("Link Title") : ""'
											HKEYS={
												'contextElement.id';
												'Array ("local", "detail", "xml-source-location")';
												'Array (rootElement.id, NoKey(), NoKey())';
											}
										</DOC_HLINK>
									</DATA_CTRL>
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
											ctrl.size.width='154.5';
											text.style='cs5';
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
					<AREA_SEC>
						DESCR='otherwise, the referenced global type is out of documentation scope'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<DATA_CTRL>
										ATTR='type'
										FMT={
											text.style='cs2';
										}
									</DATA_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</FOLDER>
			<AREA_SEC>
				DESCR='otherwise, if no type information specified, assume xs:anySimpleType'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								FORMULA='toXMLName (getNamespaceURI("xs"), "anySimpleType")'
								FMT={
									text.style='cs2';
								}
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</FOLDER>
</STOCK_SECTIONS>
CHECKSUM='MU0nDQe2TXIsekjpDJVrjXoa?08PRl2SJ5cA+6a7Yc0'
</DOCFLEX_TEMPLATE>