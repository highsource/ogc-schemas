<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2012-06-20 10:23:39'
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
		param.description='Displayed XML name (qualified or local) of the message';
		param.type='string';
		param.defaultValue.expr='toXMLName (getStringParam("$nsURI"), getAttrStringValue("name"))';
		param.fixed='true';
		param.hidden='true';
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
		param.name='$title';
		param.title='Component\'s doc title';
		param.type='string';
		param.defaultValue.expr='\'Message "\' + getParam("$xmlName") + \'"\'';
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
		param.name='doc.wsdl.def.altDesc';
		param.title='Alternative Descriptions';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='doc.wsdl.def.altDesc.part';
		param.title='Message Part';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='doc.wsdl.def.altDesc.part.copyFrom';
		param.title='Copy From';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='doc.wsdl.def.altDesc.part.copyFrom.dataType';
		param.title='Data Type';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.profile';
		param.title='Definition Profile';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.usage';
		param.title='Usage Locations';
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
		param.name='doc.wsdl.def.xml.for.message';
		param.title='Messages';
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
		param.name='doc.wsdl.def.parts';
		param.title='Message Part Detail';
		param.title.style.bold='true';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.parts.dataType';
		param.title='Data Type';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.parts.description';
		param.title='Description';
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
	CHAR_STYLE={
		style.name='Derivation Method';
		style.id='cs6';
		text.font.name='Verdana';
		text.font.size='8';
		text.color.foreground='#FF9900';
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
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs7';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	PAR_STYLE={
		style.name='List Heading 2';
		style.id='s3';
		text.font.name='Arial';
		text.font.size='9';
		text.font.style.bold='true';
		par.margin.bottom='6.7';
		par.page.keepWithNext='true';
	}
	PAR_STYLE={
		style.name='Main Heading';
		style.id='s4';
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
	CHAR_STYLE={
		style.name='Name Modifier';
		style.id='cs8';
		text.font.name='Verdana';
		text.font.size='7';
		text.color.foreground='#B2B2B2';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s5';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Note Font';
		style.id='cs9';
		text.font.name='Arial';
		text.font.size='8';
		text.font.style.bold='false';
	}
	CHAR_STYLE={
		style.name='Page Header Font';
		style.id='cs10';
		text.font.name='Arial';
		text.font.style.italic='true';
	}
	CHAR_STYLE={
		style.name='Page Number Small';
		style.id='cs11';
		text.font.name='Courier New';
		text.font.size='8';
	}
	PAR_STYLE={
		style.name='Profile Heading 1';
		style.id='s6';
		text.font.size='9';
		text.font.style.bold='true';
	}
	PAR_STYLE={
		style.name='Profile Heading 2';
		style.id='s7';
		text.font.size='8.4';
		text.font.style.bold='true';
	}
	CHAR_STYLE={
		style.name='Profile Property Clear';
		style.id='cs12';
		text.font.name='Verdana';
		text.font.size='8';
	}
	PAR_STYLE={
		style.name='Property Title';
		style.id='s8';
		text.font.size='8';
		text.font.style.bold='true';
		par.lineHeight='11';
		par.margin.right='5.8';
	}
	PAR_STYLE={
		style.name='Property Value';
		style.id='s9';
		text.font.name='Verdana';
		text.font.size='8';
		par.lineHeight='11';
	}
	CHAR_STYLE={
		style.name='Underline';
		style.id='cs13';
		text.decor.underline='true';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs7';
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
			text.style='cs10';
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
			par.style='s4';
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
		DESCR='Message Profile'
		COND='getBooleanParam("doc.wsdl.def.profile")'
		ON_OUTPUT_EXPR='thisContext.setVar ("has-profile", true)'
		TEMPLATE_FILE='messageProfile.tpl'
	</TEMPLATE_CALL>
	<FOLDER>
		DESCR='Usage Locations'
		COND='getBooleanParam("doc.wsdl.def.usage")
&&
getIntParam("$usageCount") > 0'
		COLLAPSED
		FMT={
			sec.outputStyle='list';
			list.item.margin.top='8.3';
			list.item.margin.bottom='8.3';
		}
		<HTARGET>
			HKEYS={
				'contextElement.id';
				'"usage-locations"';
			}
		</HTARGET>
		<BODY>
			<ELEMENT_ITER>
				DESCR='in input of operations'
				COLLAPSED
				TARGET_ET='wsdl:input%wsdl:tParam'
				SCOPE='custom'
				ELEMENT_ENUM_EXPR='findElementsByKey (
  "wsdl-definition-usage", contextElement.id
)'
				SORTING='by-expr'
				SORTING_KEY={expr='callStockSection("Operation in portType")',ascending,case_sensitive}
				FMT={
					txtfl.delimiter.type='text';
					txtfl.delimiter.text=', ';
					list.type='delimited';
				}
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='space';
								}
								<CTRLS>
									<SS_CALL_CTRL>
										SS_NAME='Operation in portType'
										PASSED_ELEMENT_EXPR='contextElement.parent'
										PASSED_ELEMENT_MATCHING_ET='wsdl:operation%wsdl:tOperation'
									</SS_CALL_CTRL>
									<DELIMITER>
										FMT={
											txtfl.delimiter.type='none';
										}
									</DELIMITER>
									<TEXT_CTRL>
										COND='! iterator.isLastItem'
										TEXT=','
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							par.style='s3';
						}
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='space';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='In input of operations'
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='"(" + iterator.numItems + ")"'
									</DATA_CTRL>
									<DELIMITER>
										FMT={
											txtfl.delimiter.type='none';
										}
									</DELIMITER>
									<TEXT_CTRL>
										TEXT=':'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='in output of operations'
				COLLAPSED
				TARGET_ET='wsdl:output%wsdl:tParam'
				SCOPE='custom'
				ELEMENT_ENUM_EXPR='findElementsByKey (
  "wsdl-definition-usage", contextElement.id
)'
				SORTING='by-expr'
				SORTING_KEY={expr='callStockSection("Operation in portType")',ascending,case_sensitive}
				FMT={
					txtfl.delimiter.type='text';
					txtfl.delimiter.text=', ';
					list.type='delimited';
				}
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='space';
								}
								<CTRLS>
									<SS_CALL_CTRL>
										SS_NAME='Operation in portType'
										PASSED_ELEMENT_EXPR='contextElement.parent'
										PASSED_ELEMENT_MATCHING_ET='wsdl:operation%wsdl:tOperation'
									</SS_CALL_CTRL>
									<DELIMITER>
										FMT={
											txtfl.delimiter.type='none';
										}
									</DELIMITER>
									<TEXT_CTRL>
										COND='! iterator.isLastItem'
										TEXT=','
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							par.style='s3';
						}
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='space';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='In output of operations'
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='"(" + iterator.numItems + ")"'
									</DATA_CTRL>
									<DELIMITER>
										FMT={
											txtfl.delimiter.type='none';
										}
									</DELIMITER>
									<TEXT_CTRL>
										TEXT=':'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='in faults operations'
				COLLAPSED
				TARGET_ET='wsdl:fault%wsdl:tFault'
				SCOPE='custom'
				ELEMENT_ENUM_EXPR='findElementsByKey (
  "wsdl-definition-usage", contextElement.id
)'
				SORTING='by-expr'
				SORTING_KEY={expr='callStockSection("Operation in portType")',ascending,case_sensitive}
				FMT={
					txtfl.delimiter.type='text';
					txtfl.delimiter.text=', ';
					list.type='delimited';
				}
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='space';
								}
								<CTRLS>
									<SS_CALL_CTRL>
										SS_NAME='Operation in portType'
										PASSED_ELEMENT_EXPR='contextElement.parent'
										PASSED_ELEMENT_MATCHING_ET='wsdl:operation%wsdl:tOperation'
									</SS_CALL_CTRL>
									<DELIMITER>
										FMT={
											txtfl.delimiter.type='none';
										}
									</DELIMITER>
									<TEXT_CTRL>
										COND='! iterator.isLastItem'
										TEXT=','
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							par.style='s3';
						}
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='space';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='In faults of operations'
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='"(" + iterator.numItems + ")"'
									</DATA_CTRL>
									<DELIMITER>
										FMT={
											txtfl.delimiter.type='none';
										}
									</DELIMITER>
									<TEXT_CTRL>
										TEXT=':'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='in extensibility elements'
				COLLAPSED
				TARGET_ET='wsdl:operation%wsdl:tBindingOperation'
				SCOPE='custom'
				ELEMENT_ENUM_EXPR='findElementsByKey (
  "wsdl-definition-usage", contextElement.id
)'
				SORTING='by-expr'
				SORTING_KEY={expr='callStockSection("Operation in Binding")',ascending,case_sensitive}
				FMT={
					txtfl.delimiter.type='text';
					txtfl.delimiter.text=', ';
					list.type='delimited';
				}
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='space';
								}
								<CTRLS>
									<SS_CALL_CTRL>
										SS_NAME='Operation in Binding'
									</SS_CALL_CTRL>
									<DELIMITER>
										FMT={
											txtfl.delimiter.type='none';
										}
									</DELIMITER>
									<TEXT_CTRL>
										COND='! iterator.isLastItem'
										TEXT=','
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							par.style='s3';
						}
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='space';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='In extensibility elements within bindings of operations'
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='"(" + iterator.numItems + ")"'
									</DATA_CTRL>
									<DELIMITER>
										FMT={
											txtfl.delimiter.type='none';
										}
									</DELIMITER>
									<TEXT_CTRL>
										TEXT=':'
									</TEXT_CTRL>
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
					par.style='s2';
				}
				<AREA>
					<CTRL_GROUP>
						FMT={
							trow.bkgr.color='#CCCCFF';
						}
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Known Usage Locations'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
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
getBooleanParam("doc.wsdl.def.xml.for.message")'
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
													text.style='cs9';
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
		DESCR='PART DETAIL'
		COND='getBooleanParam("doc.wsdl.def.parts")'
		TARGET_ET='wsdl:part'
		SCOPE='simple-location-rules'
		RULES={
			'* -> wsdl:part';
		}
		<BODY>
			<AREA_SEC>
				<HTARGET>
					HKEYS={
						'contextElement.id';
						'"detail"';
					}
				</HTARGET>
				<HTARGET>
					HKEYS={
						'rootElement.id';
						'"message-part"';
						'getAttrValue("name")';
					}
				</HTARGET>
				<AREA>
					<CTRL_GROUP>
						FMT={
							trow.cell.align.vert='Top';
							txtfl.delimiter.type='none';
							par.margin.top='10';
							par.margin.bottom='6.7';
							par.page.keepWithNext='true';
						}
						<CTRLS>
							<IMAGE_CTRL>
								IMAGE_TYPE='file-image'
								FILE='../../images/messagePart.png'
								OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
								FMT={
									image.alignment='bottom';
									image.padding.right='0.8';
									image.padding.bottom='0.8';
								}
							</IMAGE_CTRL>
							<DATA_CTRL>
								ATTR='name'
								FMT={
									text.style='cs3';
									par.margin.left='0.8';
									par.margin.right='0.8';
								}
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<SS_CALL>
				SS_NAME='Part'
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
						'"message-parts"';
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
								TEXT='Message Part Detail'
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
		SS_NAME='Operation in Binding'
		DESCR='case of global attribute'
		MATCHING_ET='wsdl:operation%wsdl:tBindingOperation'
		FMT={
			sec.outputStyle='text-par';
			par.option.nowrap='true';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<SS_CALL_CTRL>
						SS_NAME='WSDL Definition Name'
					</SS_CALL_CTRL>
					<TEXT_CTRL>
						TEXT='in binding'
						FMT={
							text.style='cs6';
						}
					</TEXT_CTRL>
					<SS_CALL_CTRL>
						SS_NAME='WSDL Definition Name'
						PASSED_ELEMENT_EXPR='contextElement.parent'
						PASSED_ELEMENT_MATCHING_ET='wsdl:binding'
					</SS_CALL_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		SS_NAME='Operation in portType'
		DESCR='case of global attribute'
		MATCHING_ET='wsdl:operation%wsdl:tOperation'
		FMT={
			sec.outputStyle='text-par';
			par.option.nowrap='true';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<SS_CALL_CTRL>
						SS_NAME='WSDL Definition Name'
					</SS_CALL_CTRL>
					<TEXT_CTRL>
						TEXT='in portType'
						FMT={
							text.style='cs6';
						}
					</TEXT_CTRL>
					<SS_CALL_CTRL>
						SS_NAME='WSDL Definition Name'
						PASSED_ELEMENT_EXPR='contextElement.parent'
						PASSED_ELEMENT_MATCHING_ET='wsdl:portType'
					</SS_CALL_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<FOLDER>
		SS_NAME='Part'
		MATCHING_ET='wsdl:part'
		INIT_EXPR='mainXMLFilter = BooleanQuery (
  checkElementByKey (
    "main-xmls",
    getXMLDocument().id,
    getElementParam("$mainXML")
  )
);

getAttrStringValue("element") != "" ?
{
  element = findElementByKey (
    "xsd-global-elements",
    getAttrQNameValue("element"),
    mainXMLFilter
  );

  thisContext.setVar ("element", element);

  thisContext.setVar (
    "elementType",
    findElementByKey ("xsd-element-types", element.id)
  )
};

getAttrStringValue("type") != "" ?
{
  thisContext.setVar (
    "type",
    findElementByKey (
      "xsd-types",
      getAttrQNameValue("type"),
      mainXMLFilter
    )
  )
}'
		<BODY>
			<FOLDER>
				DESCR='PROFILE'
				FMT={
					sec.outputStyle='table';
					table.cell.padding.both='0';
					table.border.style='none';
				}
				<BODY>
					<AREA_SEC>
						COND='getBooleanParam("doc.wsdl.def.parts.dataType")'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Data Type:'
										FMT={
											ctrl.size.width='45';
											ctrl.size.height='17.3';
											tcell.align.vert='Top';
											par.style='s8';
										}
									</TEXT_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='Part Data Type'
										FMT={
											ctrl.size.width='454.5';
											ctrl.size.height='17.3';
											par.style='s9';
										}
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</FOLDER>
			<FOLDER>
				DESCR='DESCRIPTION'
				COND='getBooleanParam("doc.wsdl.def.parts.description")'
				FMT={
					sec.spacing.before='9';
					text.style='cs1';
				}
				<BODY>
					<SS_CALL>
						DESCR='part\'s own description'
						BREAK_PARENT_BLOCK='when-output'
						SS_NAME='WSDL Documentation'
					</SS_CALL>
					<FOLDER>
						DESCR='alternatively, copy description of the part\'s data type'
						COND='getBooleanParam("doc.wsdl.def.altDesc.part.copyFrom.dataType")'
						<BODY>
							<FOLDER>
								DESCR='in case of \'element\' attribute, copy annotation of the referenced XSD element or its type'
								COND='getAttrStringValue("element") != ""'
								BREAK_PARENT_BLOCK='when-output'
								FMT={
									sec.spacing.before='6.7';
								}
								<BODY>
									<FOLDER>
										DESCR='copy annotation of the referenced XSD element'
										BREAK_PARENT_BLOCK='when-output'
										<BODY>
											<SS_CALL>
												SS_NAME='XSD Annotation'
												PASSED_ELEMENT_EXPR='thisContext.getElementVar ("element")'
												PASSED_ELEMENT_MATCHING_ET='xs:element'
											</SS_CALL>
										</BODY>
										<HEADER>
											<AREA_SEC>
												FMT={
													text.font.style.bold='true';
												}
												<AREA>
													<CTRL_GROUP>
														<CTRLS>
															<TEXT_CTRL>
																TEXT='Annotation copied from element:'
															</TEXT_CTRL>
															<DATA_CTRL>
																ATTR='element'
																FMT={
																	text.style='cs4';
																}
																<DOC_HLINK>
																	CONTEXT_ELEMENT_EXPR='thisContext.getElementVar ("element")'
																	MATCHING_ET='xs:element'
																	TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("XSD Component Link Title")
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
										</HEADER>
									</FOLDER>
									<FOLDER>
										DESCR='if no output produced still, try to copy annotation of the element\'s type'
										CONTEXT_ELEMENT_EXPR='thisContext.getElementVar ("elementType")'
										MATCHING_ETS={'xs:%complexType';'xs:%simpleType'}
										<BODY>
											<SS_CALL>
												SS_NAME='XSD Annotation'
											</SS_CALL>
										</BODY>
										<HEADER>
											<AREA_SEC>
												FMT={
													text.font.style.bold='true';
												}
												<AREA>
													<CTRL_GROUP>
														<CTRLS>
															<TEXT_CTRL>
																TEXT='Annotation copied from type:'
															</TEXT_CTRL>
															<SS_CALL_CTRL>
																SS_NAME='XSD Component Name'
																FMT={
																	text.style='cs4';
																	txtfl.delimiter.type='text';
																	txtfl.delimiter.text=', ';
																}
															</SS_CALL_CTRL>
														</CTRLS>
													</CTRL_GROUP>
												</AREA>
											</AREA_SEC>
										</HEADER>
									</FOLDER>
								</BODY>
							</FOLDER>
							<FOLDER>
								DESCR='in case of \'type\' attribute, copy annotation of the referenced XSD type'
								COND='getAttrStringValue("type") != ""'
								FMT={
									sec.spacing.before='6.7';
								}
								<BODY>
									<SS_CALL>
										SS_NAME='XSD Annotation'
										PASSED_ELEMENT_EXPR='thisContext.getElementVar ("type")'
										PASSED_ELEMENT_MATCHING_ETS={'xs:complexType';'xs:simpleType'}
									</SS_CALL>
								</BODY>
								<HEADER>
									<AREA_SEC>
										FMT={
											text.font.style.bold='true';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='Annotation copied from type:'
													</TEXT_CTRL>
													<DATA_CTRL>
														ATTR='type'
														FMT={
															text.style='cs4';
														}
														<DOC_HLINK>
															CONTEXT_ELEMENT_EXPR='thisContext.getElementVar ("type")'
															MATCHING_ETS={'xs:complexType';'xs:simpleType'}
															TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("XSD Component Link Title")
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
								</HEADER>
							</FOLDER>
						</BODY>
					</FOLDER>
				</BODY>
			</FOLDER>
		</BODY>
	</FOLDER>
	<FOLDER>
		SS_NAME='Part Data Type'
		DESCR='prints message part\'s datatype;
expects the following variables (associated with \'thisContext\'):

\'element\' - GOMElement of the corresponding XSD element component, which is specified with \'element\' attribute in the message part

\'elementType\' - GOMElement representing XSD type component of the element type

\'type\' - GOMElement of the corresponding the XSD type component, which is specified with \'element\' attribute in the message part'
		MATCHING_ET='wsdl:part'
		FMT={
			sec.outputStyle='text-par';
		}
		<BODY>
			<FOLDER>
				DESCR='case of element'
				COND='getAttrStringValue("element") != ""'
				BREAK_PARENT_BLOCK='when-executed'
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<DATA_CTRL>
										ATTR='element'
										FMT={
											text.style='cs4';
										}
										<DOC_HLINK>
											CONTEXT_ELEMENT_EXPR='thisContext.getElementVar ("element")'
											MATCHING_ET='xs:element'
											TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("XSD Component Link Title")
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
					<FOLDER>
						DESCR='element\'s type'
						CONTEXT_ELEMENT_EXPR='thisContext.getElementVar ("elementType")'
						MATCHING_ETS={'#CUSTOM';'xs:%complexType';'xs:%simpleType'}
						BREAK_PARENT_BLOCK='when-executed'
						<BODY>
							<AREA_SEC>
								DESCR='when the type reference is not resolved'
								MATCHING_ET='#CUSTOM'
								BREAK_PARENT_BLOCK='when-executed'
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='type'
											</TEXT_CTRL>
											<DATA_CTRL>
												FORMULA='contextElement.value.toQName().toXMLName (rootElement)'
												FMT={
													text.style='cs4';
												}
											</DATA_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
							<AREA_SEC>
								DESCR='when the reference is resolved to a documented type'
								MATCHING_ETS={'xs:complexType';'xs:simpleType'}
								BREAK_PARENT_BLOCK='when-executed'
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='type'
											</TEXT_CTRL>
											<SS_CALL_CTRL>
												SS_NAME='XSD Component Name'
												FMT={
													text.style='cs4';
												}
											</SS_CALL_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
							<AREA_SEC>
								DESCR='when type is anonymous'
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
												TEMPLATE_FILE='../../xsd/type/typeDerivationSummary.tpl'
											</TEMPLATE_CALL_CTRL>
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
												TEXT='(global element of '
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
					</FOLDER>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='(unknown element)'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</FOLDER>
			<FOLDER>
				DESCR='case of type'
				COND='getAttrStringValue("type") != ""'
				BREAK_PARENT_BLOCK='when-executed'
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<DATA_CTRL>
										ATTR='type'
										FMT={
											text.style='cs4';
										}
										<DOC_HLINK>
											CONTEXT_ELEMENT_EXPR='thisContext.getElementVar ("type")'
											MATCHING_ETS={'xs:complexType';'xs:simpleType'}
											TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("XSD Component Link Title")
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
					<FOLDER>
						<BODY>
							<AREA_SEC>
								CONTEXT_ELEMENT_EXPR='thisContext.getElementVar ("type")'
								MATCHING_ETS={'xs:complexType';'xs:simpleType'}
								BREAK_PARENT_BLOCK='when-executed'
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												MATCHING_ET='xs:simpleType'
												TEXT='simpleType'
											</TEXT_CTRL>
											<TEXT_CTRL>
												MATCHING_ET='xs:complexType'
												TEXT='complexType'
											</TEXT_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
							<AREA_SEC>
								COND='isXSPredefinedType (getAttrQNameValue("type"))'
								BREAK_PARENT_BLOCK='when-executed'
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='predefined simpleType'
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
												TEXT='unknown type'
											</TEXT_CTRL>
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
					</FOLDER>
				</BODY>
			</FOLDER>
			<AREA_SEC>
				DESCR='neither \'element\' nor \'type\' attribute provided'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='???'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</FOLDER>
	<TEMPLATE_CALL>
		SS_NAME='Schema Name'
		MATCHING_ET='xs:schema'
		TEMPLATE_FILE='../../xsd/schema/schemaName.tpl'
	</TEMPLATE_CALL>
	<TEMPLATE_CALL>
		SS_NAME='WSDL Definition Name'
		DESCR='prints the qualified name of the WSDL definition'
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
	<TEMPLATE_CALL>
		SS_NAME='XSD Annotation'
		MATCHING_ET='xs:%annotated'
		TEMPLATE_FILE='../../xsd/ann/annotation.tpl'
	</TEMPLATE_CALL>
	<TEMPLATE_CALL>
		SS_NAME='XSD Component Link Title'
		TEMPLATE_FILE='../../xsd/component/componentLinkTitle.tpl'
	</TEMPLATE_CALL>
	<TEMPLATE_CALL>
		SS_NAME='XSD Component Name'
		DESCR='prints the qualified name of any global schema component or local element (passed as the stock-section context element)'
		TEMPLATE_FILE='../../xsd/component/componentName.tpl'
		PASSED_PARAMS={
			'$targetFrame','"detailFrame"';
		}
		FMT={
			sec.outputStyle='text-par';
		}
	</TEMPLATE_CALL>
</STOCK_SECTIONS>
CHECKSUM='XIJTtvGLE?kDo+Twrso1fpovnYm8PG2PvWK3qFTiNvc'
</DOCFLEX_TEMPLATE>