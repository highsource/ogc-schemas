<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2012-08-12 03:24:39'
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
ROOT_ET='wsdl:message'
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$mainXML';
		param.type='GOMElement';
		param.defaultValue.expr='findElementByKey ("main-xmls", getXMLDocument().id)';
	}
	PARAM={
		param.name='$nsURI';
		param.title='definition\'s namespace URI';
		param.description='The namespace to which this WSDL definition belongs';
		param.type='string';
	}
	PARAM={
		param.name='$scope';
		param.description='Indicates the scope of the main document for which this template is called:
<ul>
<li>"any" - unspecified</li>
<li>"namespace" - namespace overview</li>
<li>"wsdl_file" - WSDL file overview</li>
</ul>';
		param.type='enum';
		param.enum.values='any;namespace;wsdl_file';
	}
	PARAM={
		param.name='$usageCount';
		param.title='number of usage locations';
		param.description='number of locations where this message is used (referenced)';
		param.type='integer';
		param.defaultValue.expr='countElementsByKey (
  "wsdl-definition-usage", contextElement.id
)';
		param.hidden='true';
	}
	PARAM={
		param.name='doc.wsdl.def.profile';
		param.title='Definition Profile';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.profile.namespace';
		param.title='Namespace';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.profile.includes';
		param.title='Includes';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.profile.defined';
		param.title='Defined / XML Source';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.profile.used';
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
		style.name='Code Smaller';
		style.id='cs1';
		text.font.name='Courier New';
		text.font.size='8';
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
		style.name='Property Title';
		style.id='s2';
		text.font.size='8';
		text.font.style.bold='true';
		par.lineHeight='11';
		par.margin.right='5.8';
	}
	PAR_STYLE={
		style.name='Property Value';
		style.id='s3';
		text.font.name='Verdana';
		text.font.size='8';
		par.lineHeight='11';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs3';
}
<ROOT>
	<FOLDER>
		FMT={
			sec.outputStyle='table';
			table.cell.padding.both='0';
			table.border.style='none';
			table.page.keepTogether='true';
			table.option.borderStylesInHTML='true';
		}
		<BODY>
			<AREA_SEC>
				COND='getBooleanParam("doc.wsdl.def.profile.namespace")'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Namespace:'
								FMT={
									ctrl.size.width='54.8';
									ctrl.size.height='17.3';
									tcell.align.vert='Top';
									par.style='s2';
								}
							</TEXT_CTRL>
							<DATA_CTRL>
								FORMULA='(ns = getParam("$nsURI")) != "" ? ns : "{no namespace}"'
								FMT={
									ctrl.size.width='444.8';
									ctrl.size.height='17.3';
									text.style='cs1';
									par.style='s3';
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
				COND='getBooleanParam("doc.wsdl.def.profile.includes")
&&
{
  count = countChildren("wsdl:part");
  count > 0 ? { setVar ("count", count); true } : false;
}'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Includes:'
								FMT={
									ctrl.size.width='54.8';
									ctrl.size.height='38.3';
									tcell.align.vert='Top';
									par.style='s2';
								}
							</TEXT_CTRL>
							<PANEL>
								FMT={
									ctrl.size.width='444.8';
									ctrl.size.height='38.3';
									par.style='s3';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<DATA_CTRL>
												FORMULA='getIntVar("count")'
											</DATA_CTRL>
											<TEXT_CTRL>
												COND='getIntVar("count") == 1'
												TEXT='part'
												<DOC_HLINK>
													HKEYS={
														'contextElement.id';
														'"message-parts"';
													}
												</DOC_HLINK>
											</TEXT_CTRL>
											<TEXT_CTRL>
												COND='getIntVar("count") > 1'
												TEXT='parts'
												<DOC_HLINK>
													HKEYS={
														'contextElement.id';
														'"message-parts"';
													}
												</DOC_HLINK>
											</TEXT_CTRL>
											<SS_CALL_CTRL>
												SS_NAME='parts'
											</SS_CALL_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<FOLDER>
				DESCR='defined / XML source'
				COND='getBooleanParam("doc.wsdl.def.profile.defined")'
				<BODY>
					<AREA_SEC>
						COND='! hasParamValue("$scope", "wsdl_file")'
						BREAK_PARENT_BLOCK='when-executed'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Defined:'
										FMT={
											ctrl.size.width='54.8';
											ctrl.size.height='59.3';
											tcell.align.vert='Top';
											par.style='s2';
										}
									</TEXT_CTRL>
									<PANEL>
										FMT={
											ctrl.size.width='444.8';
											ctrl.size.height='59.3';
											par.style='s3';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='in'
													</TEXT_CTRL>
													<SS_CALL_CTRL>
														CONTEXT_ELEMENT_EXPR='findAncestor("wsdl:definitions")'
														MATCHING_ET='wsdl:definitions'
														SS_NAME='WSDL Name'
													</SS_CALL_CTRL>
													<PANEL>
														COND='findHyperTarget (Array (
  contextElement.id,
  Array ("xml-source", "xml-source-location")
)) != null'
														FMT={
															ctrl.size.width='179.3';
															ctrl.size.height='38.3';
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
																	<SS_CALL_CTRL>
																		SS_NAME='See XML Source'
																	</SS_CALL_CTRL>
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
						COND='findHyperTarget (Array (
  contextElement.id,
  Array ("xml-source", "xml-source-location")
)) != null'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='See:'
										FMT={
											ctrl.size.width='54.8';
											ctrl.size.height='17.3';
											tcell.align.vert='Top';
											par.style='s2';
										}
									</TEXT_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='See XML Source'
										FMT={
											ctrl.size.width='444.8';
											ctrl.size.height='17.3';
											par.style='s3';
										}
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</FOLDER>
			<FOLDER>
				DESCR='usage'
				COND='getBooleanParam("doc.wsdl.def.profile.used")'
				<BODY>
					<AREA_SEC>
						COND='getIntParam("$usageCount") > 0'
						BREAK_PARENT_BLOCK='when-executed'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Used:'
										FMT={
											ctrl.size.width='54.8';
											ctrl.size.height='38.3';
											tcell.align.vert='Top';
											par.style='s2';
										}
									</TEXT_CTRL>
									<PANEL>
										FMT={
											ctrl.size.width='444.8';
											ctrl.size.height='38.3';
											par.style='s3';
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
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Used:'
										FMT={
											ctrl.size.width='54.8';
											ctrl.size.height='17.3';
											tcell.align.vert='Top';
											par.style='s2';
										}
									</TEXT_CTRL>
									<TEXT_CTRL>
										TEXT='never'
										FMT={
											ctrl.size.width='444.8';
											ctrl.size.height='17.3';
											par.style='s3';
										}
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</FOLDER>
		</BODY>
	</FOLDER>
</ROOT>
<STOCK_SECTIONS>
	<ELEMENT_ITER>
		SS_NAME='parts'
		MATCHING_ET='wsdl:message'
		TARGET_ET='wsdl:part'
		SCOPE='simple-location-rules'
		RULES={
			'* -> wsdl:part';
		}
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='text';
			txtfl.delimiter.text=', ';
		}
		<BODY>
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								ATTR='name'
								FMT={
									text.style='cs1';
								}
								<DOC_HLINK>
									TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("WSDL Definition Link Title")
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
		<HEADER>
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='('
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
		<FOOTER>
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT=')'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</FOOTER>
	</ELEMENT_ITER>
	<AREA_SEC>
		SS_NAME='See XML Source'
		FMT={
			sec.outputStyle='text-par';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
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
							ctrl.size.width='183.8';
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
												'Array ("xml-source", "xml-source-location")';
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
	<TEMPLATE_CALL>
		SS_NAME='WSDL Definition Link Title'
		TEMPLATE_FILE='../misc/defLinkTitle.tpl'
	</TEMPLATE_CALL>
	<TEMPLATE_CALL>
		SS_NAME='WSDL Name'
		MATCHING_ET='wsdl:definitions'
		TEMPLATE_FILE='../file/wsdlName.tpl'
	</TEMPLATE_CALL>
</STOCK_SECTIONS>
CHECKSUM='7bsSu?oytSfWHjVLjFxMPkVqys5l3bfm5+FqApQWZ5c'
</DOCFLEX_TEMPLATE>