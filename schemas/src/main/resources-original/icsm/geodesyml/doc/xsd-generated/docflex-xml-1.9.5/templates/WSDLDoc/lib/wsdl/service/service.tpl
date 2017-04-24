<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2012-06-20 09:43:42'
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
ROOT_ET='wsdl:service'
TITLE_EXPR='title = getStringParam("$title");

(parentTitle = getStringParam("docTitle")) != null
  ? title + " | " + parentTitle : title'
HTML_HEAD_EXPR='title = getStringParam("$title");

(parentTitle = getStringParam("docTitle")) != null
  ? title = title + " | " + parentTitle;

\'<script type="text/javascript">
    window.onload = function() {
        parent.document.title="\' + encodeJScriptString (title) + \'";
    }
</script>\''
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$mainXML';
		param.type='GOMElement';
		param.defaultValue.expr='findElementByKey ("main-xmls", getXMLDocument().id)';
	}
	PARAM={
		param.name='$nsURI';
		param.title='Target Namespace URI';
		param.type='string';
		param.defaultValue.expr='findAncestor("wsdl:definitions").getAttrValue("targetNamespace")';
		param.hidden='true';
	}
	PARAM={
		param.name='$xmlName';
		param.description='Displayed XML name (qualified or local) of the service';
		param.type='string';
		param.defaultValue.expr='toXMLName (getStringParam("$nsURI"), getAttrStringValue("name"))';
		param.fixed='true';
		param.hidden='true';
	}
	PARAM={
		param.name='$title';
		param.title='Component\'s doc title';
		param.type='string';
		param.defaultValue.expr='\'Service "\' + getParam("$xmlName") + \'"\'';
	}
	PARAM={
		param.name='$resourceOutputDir';
		param.title='documentation resources directory';
		param.type='string';
	}
	PARAM={
		param.name='docTitle';
		param.title='Documentation Title';
		param.type='string';
	}
	PARAM={
		param.name='doc.wsdl.def';
		param.title='WSDL Definition';
		param.title.style.bold='true';
		param.group='true';
	}
	PARAM={
		param.name='doc.wsdl.def.profile';
		param.title='Definition Profile';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.description';
		param.title='Description';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.xml';
		param.title='XML Source';
		param.title.style.bold='true';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.xml.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='doc.wsdl.def.xml.for.service';
		param.title='Services';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.xml.box';
		param.title='Enclose in Box';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.xml.remove.wsdl.docs';
		param.title='Remove <wsdl:documentation>';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.ports';
		param.title='Port Detail';
		param.title.style.bold='true';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.ports.description';
		param.title='Description';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.ports.profile';
		param.title='Profile';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.ports.extensibility';
		param.title='Extensibility Elements';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.ports.xml';
		param.title='XML Source';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.ports.xml.box';
		param.title='Enclose in Box';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.ports.xml.remove.wsdl.docs';
		param.title='Remove <wsdl:documentation>';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.ports.operationSummary';
		param.title='Operation Summary';
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
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='show.linkTitle.name';
		param.title='Name';
		param.type='boolean';
	}
	PARAM={
		param.name='show.about';
		param.title='About (footer)';
		param.type='boolean';
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
		style.name='Annotation Smallest';
		style.id='cs2';
		text.font.name='Arial';
		text.font.size='8.4';
	}
	CHAR_STYLE={
		style.name='Code';
		style.id='cs3';
		text.font.name='Courier New';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Code Smaller';
		style.id='cs4';
		text.font.name='Courier New';
		text.font.size='8';
	}
	CHAR_STYLE={
		style.name='Default Paragraph Font';
		style.id='cs5';
		style.default='true';
	}
	PAR_STYLE={
		style.name='Detail Heading 1';
		style.id='s1';
		text.font.size='12';
		text.font.style.bold='true';
	}
	PAR_STYLE={
		style.name='Detail Heading 2';
		style.id='s2';
		text.font.size='10';
		text.font.style.bold='true';
		par.bkgr.opaque='true';
		par.bkgr.color='#EEEEFF';
		par.border.style='solid';
		par.border.color='#666666';
		par.margin.top='10';
		par.margin.bottom='8.3';
		par.padding.left='1.7';
		par.padding.right='1.7';
		par.padding.top='1.7';
		par.padding.bottom='1.7';
		par.page.keepWithNext='true';
	}
	PAR_STYLE={
		style.name='Detail Heading 4';
		style.id='s3';
		text.font.name='Arial';
		text.font.size='9';
		text.font.style.bold='true';
		text.font.style.italic='true';
		text.color.background='#CCCCFF';
		text.color.opaque='true';
		par.margin.top='6.7';
		par.margin.bottom='6.7';
		par.page.keepWithNext='true';
	}
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs6';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	PAR_STYLE={
		style.name='List Heading 2';
		style.id='s4';
		text.font.name='Arial';
		text.font.size='9';
		text.font.style.bold='true';
		par.margin.bottom='6.7';
		par.page.keepWithNext='true';
	}
	PAR_STYLE={
		style.name='Main Heading';
		style.id='s5';
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
		par.page.keepWithNext='true';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s6';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Note Font';
		style.id='cs7';
		text.font.name='Arial';
		text.font.size='8';
		text.font.style.bold='false';
	}
	CHAR_STYLE={
		style.name='Page Header Font';
		style.id='cs8';
		text.font.name='Arial';
		text.font.style.italic='true';
	}
	CHAR_STYLE={
		style.name='Page Number Small';
		style.id='cs9';
		text.font.name='Courier New';
		text.font.size='8';
	}
	PAR_STYLE={
		style.name='Profile Heading 1';
		style.id='s7';
		text.font.size='9';
		text.font.style.bold='true';
	}
	PAR_STYLE={
		style.name='Profile Heading 2';
		style.id='s8';
		text.font.size='8.4';
		text.font.style.bold='true';
	}
	CHAR_STYLE={
		style.name='Profile Property Clear';
		style.id='cs10';
		text.font.name='Verdana';
		text.font.size='8';
	}
	PAR_STYLE={
		style.name='Property Title';
		style.id='s9';
		text.font.size='8';
		text.font.style.bold='true';
		par.lineHeight='11';
		par.margin.right='5.8';
	}
	PAR_STYLE={
		style.name='Property Value';
		style.id='s10';
		text.font.name='Verdana';
		text.font.size='8';
		par.lineHeight='11';
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
	doc.hlink.style.link='cs6';
}
<HTARGET>
	HKEYS={
		'contextElement.id';
		'"detail"';
	}
</HTARGET>
<PAGE_HEADER>
	<AREA_SEC>
		FMT={
			text.style='cs8';
			table.cell.padding.both='0';
			table.border.style='none';
			table.border.bottom.style='solid';
		}
		<AREA>
			<CTRL_GROUP>
				FMT={
					par.border.bottom.style='solid';
				}
				<CTRLS>
					<DATA_CTRL>
						FORMULA='getParam("$title")'
						FMT={
							text.font.style.italic='true';
						}
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
</PAGE_HEADER>
<ROOT>
	<AREA_SEC>
		FMT={
			par.style='s5';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<DATA_CTRL>
						FORMULA='getParam("$title")'
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<TEMPLATE_CALL>
		DESCR='Service Profile'
		COND='getBooleanParam("doc.wsdl.def.profile")'
		ON_OUTPUT_EXPR='thisContext.setVar ("has-profile", true)'
		TEMPLATE_FILE='serviceProfile.tpl'
	</TEMPLATE_CALL>
	<FOLDER>
		DESCR='Description'
		COND='getBooleanParam("doc.wsdl.def.description")'
		COLLAPSED
		<BODY>
			<SS_CALL>
				SS_NAME='WSDL Documentation'
			</SS_CALL>
		</BODY>
		<HEADER>
			<AREA_SEC>
				FMT={
					par.style='s2';
				}
				<AREA>
					<CTRL_GROUP>
						FMT={
							trow.bkgr.color='#CCCCFF';
						}
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Description'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
	<FOLDER>
		DESCR='XML SOURCE'
		COND='getBooleanParam("doc.wsdl.def.xml")
&&
getBooleanParam("doc.wsdl.def.xml.for.service")'
		COLLAPSED
		<HTARGET>
			HKEYS={
				'contextElement.id';
				'"xml-source"';
			}
			NAME_EXPR='output.type == "document" ? "xml_source" : ""'
		</HTARGET>
		<BODY>
			<AREA_SEC>
				COND='getBooleanParam("doc.wsdl.def.xml.box")'
				BREAK_PARENT_BLOCK='when-executed'
				FMT={
					sec.outputStyle='table';
					table.sizing='Relative';
					table.autofit='false';
					table.cell.padding.both='3.3';
					table.bkgr.color='#F5F5F5';
					table.border.style='solid';
					table.border.color='#999999';
					table.option.borderStylesInHTML='true';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEMPLATE_CALL_CTRL>
								TEMPLATE_FILE='../../xml/nodeSource.tpl'
								PASSED_PARAMS={
									'$remove.wsdl.docs','getBooleanParam("doc.wsdl.def.xml.remove.wsdl.docs")';
								}
								FMT={
									ctrl.size.width='499.5';
									ctrl.size.height='17.3';
								}
							</TEMPLATE_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<TEMPLATE_CALL>
				TEMPLATE_FILE='../../xml/nodeSource.tpl'
				PASSED_PARAMS={
					'$remove.wsdl.docs','getBooleanParam("doc.wsdl.def.xml.remove.wsdl.docs")';
				}
			</TEMPLATE_CALL>
		</BODY>
		<HEADER>
			<AREA_SEC>
				FMT={
					sec.outputStyle='table';
					table.sizing='Relative';
				}
				<AREA>
					<SPACER>
						FMT={
							spacer.height='10';
						}
					</SPACER>
					<CTRL_GROUP>
						<CTRLS>
							<PANEL>
								FMT={
									ctrl.size.width='499.5';
									ctrl.size.height='41.3';
									tcell.bkgr.color='#CCCCFF';
									par.style='s1';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='XML Source'
											</TEXT_CTRL>
											<DELIMITER>
												FMT={
													text.style='cs3';
												}
											</DELIMITER>
											<TEMPLATE_CALL_CTRL>
												TEMPLATE_FILE='../../xml/sourceNote.tpl'
												PASSED_PARAMS={
													'$remove.wsdl.docs','getBooleanParam("doc.wsdl.def.xml.remove.wsdl.docs")';
												}
												FMT={
													text.style='cs7';
												}
											</TEMPLATE_CALL_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
						</CTRLS>
					</CTRL_GROUP>
					<SPACER>
						FMT={
							spacer.height='8.3';
						}
					</SPACER>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
	<ELEMENT_ITER>
		DESCR='PORT DETAIL'
		COND='getBooleanParam("doc.wsdl.def.ports")'
		TARGET_ET='wsdl:port'
		SCOPE='simple-location-rules'
		RULES={
			'* -> wsdl:port';
		}
		<BODY>
			<AREA_SEC>
				<HTARGET>
					HKEYS={
						'contextElement.id';
						'"detail"';
					}
				</HTARGET>
				<AREA>
					<CTRL_GROUP>
						FMT={
							trow.cell.align.vert='Top';
							txtfl.delimiter.type='none';
							par.margin.top='10';
							par.margin.bottom='8.3';
							par.page.keepWithNext='true';
						}
						<CTRLS>
							<IMAGE_CTRL>
								IMAGE_TYPE='file-image'
								FILE='../../images/servicePort.png'
								OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
								FMT={
									image.alignment='bottom';
									image.padding.right='3.3';
									image.padding.bottom='1.7';
								}
							</IMAGE_CTRL>
							<DATA_CTRL>
								ATTR='name'
								FMT={
									text.font.size='10';
									text.font.style.bold='true';
									par.margin.left='0.8';
									par.margin.right='0.8';
								}
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<SS_CALL>
				SS_NAME='Port'
				FMT={
					sec.indent.block='true';
				}
			</SS_CALL>
			<AREA_SEC>
				COND='! iterator.isLastItem'
				<AREA>
					<HR>
						FMT={
							rule.style='dashed';
							rule.color='#B2B2B2';
							par.margin.top='10';
							par.margin.bottom='6.7';
						}
					</HR>
				</AREA>
			</AREA_SEC>
		</BODY>
		<HEADER>
			<AREA_SEC>
				FMT={
					sec.outputStyle='table';
					table.sizing='Relative';
				}
				<HTARGET>
					HKEYS={
						'contextElement.id';
						'"service-ports"';
					}
				</HTARGET>
				<AREA>
					<SPACER>
						FMT={
							spacer.height='11.7';
						}
					</SPACER>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Port Detail'
								FMT={
									ctrl.size.width='499.5';
									ctrl.size.height='17.3';
									tcell.bkgr.color='#CCCCFF';
									par.style='s1';
								}
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</ELEMENT_ITER>
	<TEMPLATE_CALL>
		DESCR='Bottom Message'
		COND='output.type == "document" && getBooleanParam("show.about")'
		TEMPLATE_FILE='../../about.tpl'
	</TEMPLATE_CALL>
</ROOT>
<STOCK_SECTIONS>
	<AREA_SEC>
		SS_NAME='Operation Type'
		MATCHING_ET='wsdl:operation%wsdl:tOperation'
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<DATA_CTRL>
						FORMULA='io = findChild("wsdl:input | wsdl:output");

io.instanceOf ("wsdl:input%wsdl:tParam") ?
  hasChild ("wsdl:output") ? "request-response" : "one-way"
:
io.instanceOf ("wsdl:output%wsdl:tParam") ?
  hasChild ("wsdl:input") ? "solicit-response" : "notification"
:
"???"
'
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<FOLDER>
		SS_NAME='Port'
		MATCHING_ET='wsdl:port'
		INIT_EXPR='stockSection.setVar (
  "binding",
  findElementByKey (
    "wsdl-bindings",
    getAttrQNameValue("binding"),
    BooleanQuery (checkElementByKey (
      "main-xmls",
      getXMLDocument().id,
      getElementParam("$mainXML")
    ))
  )
)'
		<BODY>
			<SS_CALL>
				COND='getBooleanParam("doc.wsdl.def.ports.description")'
				SS_NAME='WSDL Documentation'
				FMT={
					sec.spacing.after='9';
					text.style='cs1';
				}
			</SS_CALL>
			<FOLDER>
				DESCR='PROFILE'
				COND='getBooleanParam("doc.wsdl.def.ports.profile")'
				FMT={
					sec.outputStyle='table';
					table.cell.padding.both='0';
					table.border.style='none';
				}
				<BODY>
					<FOLDER>
						DESCR='if binding is found'
						CONTEXT_ELEMENT_EXPR='stockSection.getElementVar ("binding")'
						MATCHING_ET='wsdl:binding'
						BREAK_PARENT_BLOCK='when-executed'
						<BODY>
							<AREA_SEC>
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='Port Type:'
												FMT={
													ctrl.size.width='45.8';
													ctrl.size.height='38.3';
													tcell.sizing='Minimal';
													tcell.align.vert='Top';
													par.style='s9';
												}
											</TEXT_CTRL>
											<PANEL>
												FMT={
													ctrl.size.width='453.8';
													ctrl.size.height='38.3';
													par.style='s10';
												}
												<AREA>
													<CTRL_GROUP>
														<CTRLS>
															<DATA_CTRL>
																ATTR='type'
																FMT={
																	text.style='cs4';
																	par.style='s10';
																}
																<DOC_HLINK>
																	CONTEXT_ELEMENT_EXPR='findElementByKey (
  "wsdl-portTypes",
  getAttrQNameValue("type"),
  BooleanQuery (checkElementByKey (
    "main-xmls",
    getXMLDocument().id,
    getElementParam("$mainXML")
  ))
)'
																	MATCHING_ET='wsdl:portType'
																	TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("WSDL Definition Link Title")
: ""'
																	HKEYS={
																		'contextElement.id';
																		'"detail"';
																	}
																</DOC_HLINK>
															</DATA_CTRL>
															<TEXT_CTRL>
																TEXT='via binding'
															</TEXT_CTRL>
															<SS_CALL_CTRL>
																SS_NAME='WSDL Definition Name'
																FMT={
																	text.style='cs4';
																	txtfl.delimiter.type='text';
																	txtfl.delimiter.text=', ';
																}
															</SS_CALL_CTRL>
														</CTRLS>
													</CTRL_GROUP>
												</AREA>
											</PANEL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
							<AREA_SEC>
								COND='count = countChildren("wsdl:operation");
count > 0 ? { setVar ("count", count); true } : false;'
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='Includes:'
												FMT={
													ctrl.size.width='45.8';
													ctrl.size.height='38.3';
													tcell.sizing='Minimal';
													tcell.align.vert='Top';
													par.style='s9';
												}
											</TEXT_CTRL>
											<PANEL>
												FMT={
													ctrl.size.width='453.8';
													ctrl.size.height='38.3';
													par.style='s10';
												}
												<AREA>
													<CTRL_GROUP>
														<CTRLS>
															<DATA_CTRL>
																FORMULA='getIntVar("count")'
															</DATA_CTRL>
															<TEXT_CTRL>
																COND='getIntVar("count") == 1'
																TEXT='operation'
																<DOC_HLINK>
																	HKEYS={
																		'Array (
  stockSection.contextElement.id,
  contextElement.id
)';
																		'"operation-summary"';
																	}
																</DOC_HLINK>
															</TEXT_CTRL>
															<TEXT_CTRL>
																COND='getIntVar("count") > 1'
																TEXT='operations'
																<DOC_HLINK>
																	HKEYS={
																		'Array (
  stockSection.contextElement.id,
  contextElement.id
)';
																		'"operation-summary"';
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
						</BODY>
					</FOLDER>
					<AREA_SEC>
						DESCR='no binding found'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Binding:'
										FMT={
											ctrl.size.width='45.8';
											ctrl.size.height='17.3';
											tcell.sizing='Minimal';
											tcell.align.vert='Top';
											par.style='s9';
										}
									</TEXT_CTRL>
									<DATA_CTRL>
										ATTR='binding'
										FMT={
											ctrl.size.width='453.8';
											ctrl.size.height='17.3';
											par.style='s10';
										}
									</DATA_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</FOLDER>
			<FOLDER>
				DESCR='EXTENSIBILITY ELEMENTS'
				COND='getBooleanParam("doc.wsdl.def.ports.extensibility")'
				FMT={
					sec.spacing.before='6';
				}
				<BODY>
					<TEMPLATE_CALL>
						TEMPLATE_FILE='../misc/extensibilityElements.tpl'
					</TEMPLATE_CALL>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							par.style='s8';
							par.margin.bottom='3.3';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Extensibility Elements:'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
			</FOLDER>
			<FOLDER>
				DESCR='XML SOURCE'
				COND='getBooleanParam("doc.wsdl.def.ports.xml")'
				COLLAPSED
				<HTARGET>
					HKEYS={
						'contextElement.id';
						'"xml-source"';
					}
					NAME_EXPR='output.type == "document" ? "xml_source" : ""'
				</HTARGET>
				<BODY>
					<AREA_SEC>
						COND='getBooleanParam("doc.wsdl.def.ports.xml.box")'
						BREAK_PARENT_BLOCK='when-executed'
						FMT={
							sec.outputStyle='table';
							sec.spacing.before='6.7';
							sec.spacing.after='8.3';
							table.cell.padding.both='3.3';
							table.bkgr.color='#F5F5F5';
							table.border.style='solid';
							table.border.color='#999999';
							table.option.borderStylesInHTML='true';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEMPLATE_CALL_CTRL>
										TEMPLATE_FILE='../../xml/nodeSource.tpl'
										PASSED_PARAMS={
											'$remove.wsdl.docs','getBooleanParam("doc.wsdl.def.ports.xml.remove.wsdl.docs")';
										}
										FMT={
											ctrl.size.width='499.5';
											ctrl.size.height='17.3';
										}
									</TEMPLATE_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<TEMPLATE_CALL>
						TEMPLATE_FILE='../../xml/nodeSource.tpl'
						PASSED_PARAMS={
							'$remove.wsdl.docs','getBooleanParam("doc.wsdl.def.ports.xml.remove.wsdl.docs")';
						}
						FMT={
							sec.spacing.before='5';
							sec.spacing.after='8.3';
						}
					</TEMPLATE_CALL>
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
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='XML Source'
									</TEXT_CTRL>
									<DELIMITER>
										FMT={
											text.style='cs4';
											text.color.opaque='false';
										}
									</DELIMITER>
									<TEMPLATE_CALL_CTRL>
										TEMPLATE_FILE='../../xml/sourceNote.tpl'
										PASSED_PARAMS={
											'$remove.wsdl.docs','getBooleanParam("doc.wsdl.def.ports.xml.remove.wsdl.docs")';
										}
										FMT={
											text.style='cs7';
											text.color.opaque='false';
										}
									</TEMPLATE_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
			</FOLDER>
			<FOLDER>
				DESCR='OPERATION SUMMARY'
				COND='getBooleanParam("doc.wsdl.def.ports.operationSummary")'
				CONTEXT_ELEMENT_EXPR='stockSection.getElementVar ("binding")'
				MATCHING_ET='wsdl:binding'
				<HTARGET>
					HKEYS={
						'contextElement.id';
						'"operation-summary"';
					}
				</HTARGET>
				<BODY>
					<ELEMENT_ITER>
						STEP_EXPR='// find the corresponding portType operation
portTypeOperation = findElementByKey ("wsdl-bound-operations", contextElement.id);

stockSection.setVar ("portTypeOperation", portTypeOperation);

// determine the operation type
stockSection.setVar (
  "operationType",
  portTypeOperation.callStockSection ("Operation Type")
)'
						TARGET_ET='wsdl:operation%wsdl:tBindingOperation'
						SCOPE='simple-location-rules'
						RULES={
							'* -> wsdl:operation%wsdl:tBindingOperation';
						}
						SORTING='by-attr'
						SORTING_KEY={lpath='@name',ascending,case_sensitive}
						FMT={
							sec.outputStyle='table';
							table.cell.padding.both='0';
							table.border.style='none';
						}
						<BODY>
							<AREA_SEC>
								FMT={
									sec.indent.block='true';
									trow.cell.align.vert='Top';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<PANEL>
												FMT={
													ctrl.size.width='118.5';
													ctrl.size.height='39.8';
													tcell.sizing='Minimal';
												}
												<AREA>
													<CTRL_GROUP>
														FMT={
															txtfl.delimiter.type='none';
															par.option.nowrap='true';
														}
														<CTRLS>
															<IMAGE_CTRL>
																COND='stockSection.getVar("operationType") == "request-response"'
																IMAGE_TYPE='file-image'
																FILE='../../images/operation_request-response.png'
																OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
																FMT={
																	image.padding.right='2.5';
																}
															</IMAGE_CTRL>
															<IMAGE_CTRL>
																COND='stockSection.getVar("operationType") == "one-way"'
																IMAGE_TYPE='file-image'
																FILE='../../images/operation_one-way.png'
																OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
																FMT={
																	image.padding.right='2.5';
																}
															</IMAGE_CTRL>
															<IMAGE_CTRL>
																COND='stockSection.getVar("operationType") == "solicit-response"'
																IMAGE_TYPE='file-image'
																FILE='../../images/operation_solicit-response.png'
																OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
																FMT={
																	image.padding.right='2.5';
																}
															</IMAGE_CTRL>
															<IMAGE_CTRL>
																COND='stockSection.getVar("operationType") == "notification"'
																IMAGE_TYPE='file-image'
																FILE='../../images/operation_notification.png'
																OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
																FMT={
																	image.padding.right='2.5';
																}
															</IMAGE_CTRL>
														</CTRLS>
													</CTRL_GROUP>
												</AREA>
											</PANEL>
											<PANEL>
												FMT={
													ctrl.size.width='381';
													ctrl.size.height='39.8';
												}
												<AREA>
													<CTRL_GROUP>
														FMT={
															text.style='cs1';
														}
														<CTRLS>
															<DATA_CTRL>
																ATTR='name'
																FMT={
																	text.style='cs4';
																}
																<DOC_HLINK>
																	TITLE_EXPR='stockSection.getStringVar("operationType") + \' \' + "operation"
+
(getBooleanParam("show.linkTitle.name") ?
  \' “\' + getAttrValue("name") + \'”\' : "")'
																	HKEYS={
																		'contextElement.id';
																		'Array ("detail", "xml-source-location")';
																	}
																</DOC_HLINK>
															</DATA_CTRL>
															<DELIMITER>
																FMT={
																	txtfl.delimiter.type='text';
																	txtfl.delimiter.text=' - ';
																}
															</DELIMITER>
															<TEMPLATE_CALL_CTRL>
																TEMPLATE_FILE='../binding/operationDescription.tpl'
																PASSED_PARAMS={
																	'$portTypeOperation','stockSection.getElementVar ("portTypeOperation")';
																	'$firstSentence','true';
																}
																FMT={
																	txtfl.ehtml.render='true';
																	txtfl.ehtml.flatten='true';
																}
															</TEMPLATE_CALL_CTRL>
														</CTRLS>
													</CTRL_GROUP>
												</AREA>
											</PANEL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</BODY>
					</ELEMENT_ITER>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							par.style='s3';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Operations'
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
		SS_NAME='WSDL Definition Link Title'
		TEMPLATE_FILE='../misc/defLinkTitle.tpl'
	</TEMPLATE_CALL>
	<TEMPLATE_CALL>
		SS_NAME='WSDL Definition Name'
		DESCR='prints the qualified name of the WSDL definiton'
		TEMPLATE_FILE='../misc/defName.tpl'
		FMT={
			sec.outputStyle='text-par';
		}
	</TEMPLATE_CALL>
	<TEMPLATE_CALL>
		SS_NAME='WSDL Documentation'
		MATCHING_ET='wsdl:%tDocumented'
		TEMPLATE_FILE='../../doc/docOutput.tpl'
		PASSED_ROOT_ELEMENT_EXPR='findChild("wsdl:documentation")'
	</TEMPLATE_CALL>
</STOCK_SECTIONS>
CHECKSUM='i8Uw5BO8ee?sykIHjgcQHTXn+ckqttUGkDCc0eo4Jmc'
</DOCFLEX_TEMPLATE>