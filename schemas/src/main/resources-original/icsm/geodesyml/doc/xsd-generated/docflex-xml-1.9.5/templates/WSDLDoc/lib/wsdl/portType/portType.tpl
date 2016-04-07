<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2012-06-20 10:22:57'
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
ROOT_ET='wsdl:portType'
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
		param.description='Displayed XML name (qualified or local) of the portType';
		param.type='string';
		param.defaultValue.expr='toXMLName (getStringParam("$nsURI"), getAttrStringValue("name"))';
		param.fixed='true';
		param.hidden='true';
	}
	PARAM={
		param.name='$title';
		param.title='Component\'s doc title';
		param.type='string';
		param.defaultValue.expr='\'Port Type "\' + getParam("$xmlName") + \'"\'';
	}
	PARAM={
		param.name='$usageCount';
		param.title='number of usage locations';
		param.description='number of locations where this portType is used (referenced)';
		param.type='integer';
		param.defaultValue.expr='countElementsByKey (
  "wsdl-definition-usage", contextElement.id
)';
		param.hidden='true';
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
		param.name='doc.wsdl.def.operationSummary';
		param.title='Operation Summary';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.operationSummary.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operationSummary.for.portType';
		param.title='Port Types';
		param.title.style.italic='true';
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
		param.name='doc.wsdl.def.xml.for.portType';
		param.title='Port Types';
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
		param.name='doc.wsdl.def.operations';
		param.title='Operation Detail';
		param.title.style.bold='true';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.for.portType';
		param.title='Port Types';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.description';
		param.title='Description';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.profile';
		param.title='Profile';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.input';
		param.title='Input';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.input.description';
		param.title='Description';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.input.message';
		param.title='Message';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.input.message.parts';
		param.title='Parts';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.input.message.parts.description';
		param.title='Description';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.input.message.parts.description.copyFrom';
		param.title='Copy From';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.input.message.parts.description.copyFrom.dataType';
		param.title='Data Type';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.output';
		param.title='Output';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.output.description';
		param.title='Description';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.output.message';
		param.title='Message';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.output.message.parts';
		param.title='Parts';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.output.message.parts.description';
		param.title='Description';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.output.message.parts.description.copyFrom';
		param.title='Copy From';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.output.message.parts.description.copyFrom.dataType';
		param.title='Data Type';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.fault';
		param.title='Fault';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.fault.description';
		param.title='Description';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.fault.message';
		param.title='Message';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.fault.message.parts';
		param.title='Parts';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.fault.message.parts.description';
		param.title='Description';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.fault.message.parts.description.copyFrom';
		param.title='Copy From';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.fault.message.parts.description.copyFrom.dataType';
		param.title='Data Type';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.xml';
		param.title='XML Source';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.xml.box';
		param.title='Enclose in Box';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.xml.remove.wsdl.docs';
		param.title='Remove <wsdl:documentation>';
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
	PARAM={
		param.name='fmt';
		param.title='Formatting';
		param.title.style.bold='true';
		param.group='true';
	}
	PARAM={
		param.name='fmt.allowNestedTables';
		param.title='Allow nested tables';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='fmt.page.refs';
		param.title='Generate page references';
		param.type='boolean';
	}
	PARAM={
		param.name='fmt.page.columns';
		param.title='Generate page columns';
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
		style.name='Code';
		style.id='cs2';
		text.font.name='Courier New';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Code Smaller';
		style.id='cs3';
		text.font.name='Courier New';
		text.font.size='8';
	}
	CHAR_STYLE={
		style.name='Code Smallest';
		style.id='cs4';
		text.font.name='Courier New';
		text.font.size='7';
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
		style.name='Normal Smaller';
		style.id='cs7';
		text.font.name='Arial';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Note Font';
		style.id='cs8';
		text.font.name='Arial';
		text.font.size='8';
		text.font.style.bold='false';
	}
	CHAR_STYLE={
		style.name='Page Header Font';
		style.id='cs9';
		text.font.name='Arial';
		text.font.style.italic='true';
	}
	CHAR_STYLE={
		style.name='Page Number Small';
		style.id='cs10';
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
		style.id='cs11';
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
		style.id='cs12';
		text.font.size='12';
		text.font.style.bold='true';
	}
	CHAR_STYLE={
		style.name='Summary Item Smaller';
		style.id='cs13';
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
			text.style='cs9';
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
		DESCR='Port Type Profile'
		COND='getBooleanParam("doc.wsdl.def.profile")'
		ON_OUTPUT_EXPR='thisContext.setVar ("has-profile", true)'
		TEMPLATE_FILE='portTypeProfile.tpl'
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
	<ELEMENT_ITER>
		DESCR='Operation Summary'
		COND='getBooleanParam("doc.wsdl.def.operationSummary")
&&
getBooleanParam("doc.wsdl.def.operationSummary.for.portType")'
		INIT_EXPR='output.format.supportsPageRefs ?
{
  showPageColumn = false;

  getBooleanParam("fmt.page.columns") && output.generating ?
  {
    index = 0;
    repeat (BooleanQuery ({

      (el = iterator.itemAt (index).toElement()) != null ?
      {
        showPageColumn = findHyperTarget (Array (
          el.id, Array ("detail", "xml-source-location")
        )) != null;

        index = index + 1;
        ! showPageColumn

      } : false;
    }));
  };

  thisContext.setVar ("showPageColumn", showPageColumn)
}'
		STEP_EXPR='setVar (
  "operationType",
  callStockSection ("Operation Type")
)'
		TARGET_ET='wsdl:operation%wsdl:tOperation'
		SCOPE='simple-location-rules'
		RULES={
			'* -> wsdl:operation%wsdl:tOperation';
		}
		SORTING='by-attr'
		SORTING_KEY={lpath='@name',ascending,case_sensitive}
		FMT={
			sec.outputStyle='table';
			table.sizing='Relative';
			table.cell.padding.both='2.5';
		}
		<HTARGET>
			HKEYS={
				'contextElement.id';
				'"operation-summary"';
			}
		</HTARGET>
		<BODY>
			<AREA_SEC>
				DESCR='non-abstract type'
				FMT={
					trow.page.keepTogether='true';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<PANEL>
								FMT={
									ctrl.size.width='144.8';
									ctrl.size.height='42';
									tcell.align.vert='Center';
								}
								<AREA>
									<CTRL_GROUP>
										FMT={
											txtfl.delimiter.type='none';
											par.option.nowrap='true';
										}
										<CTRLS>
											<IMAGE_CTRL>
												COND='getVar("operationType") == "request-response"'
												IMAGE_TYPE='file-image'
												FILE='../../images/operation_request-response.png'
												OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
												FMT={
													image.alignment='bottom';
													image.padding.right='2.5';
												}
											</IMAGE_CTRL>
											<IMAGE_CTRL>
												COND='getVar("operationType") == "one-way"'
												IMAGE_TYPE='file-image'
												FILE='../../images/operation_one-way.png'
												OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
												FMT={
													image.alignment='bottom';
													image.padding.right='2.5';
												}
											</IMAGE_CTRL>
											<IMAGE_CTRL>
												COND='getVar("operationType") == "solicit-response"'
												IMAGE_TYPE='file-image'
												FILE='../../images/operation_solicit-response.png'
												OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
												FMT={
													image.alignment='bottom';
													image.padding.right='2.5';
												}
											</IMAGE_CTRL>
											<IMAGE_CTRL>
												COND='getVar("operationType") == "notification"'
												IMAGE_TYPE='file-image'
												FILE='../../images/operation_notification.png'
												OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
												FMT={
													image.alignment='bottom';
													image.padding.right='2.5';
												}
											</IMAGE_CTRL>
											<DATA_CTRL>
												ATTR='name'
												FMT={
													text.style='cs13';
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
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
							<TEMPLATE_CALL_CTRL>
								TEMPLATE_FILE='operationDescription.tpl'
								PASSED_PARAMS={
									'$firstSentence','true';
								}
								STYLE_OVERRIDES={
									'Code','cs3';
								}
								FMT={
									ctrl.size.width='322.5';
									ctrl.size.height='42';
									tcell.sizing='Relative';
									tcell.align.vert='Top';
								}
							</TEMPLATE_CALL_CTRL>
							<DATA_CTRL>
								COND='output.format.supportsPageRefs &&
thisContext.getBooleanVar ("showPageColumn")'
								DOCFIELD='page-htarget'
								FMT={
									ctrl.size.width='32.3';
									ctrl.size.height='42';
									ctrl.option.noHLinkFmt='true';
									tcell.sizing='Minimal';
									tcell.align.horz='Center';
									tcell.align.vert='Top';
									text.hlink.fmt='none';
								}
								<DOC_HLINK>
									HKEYS={
										'contextElement.id';
										'Array ("detail", "xml-source-location")';
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
					trow.page.keepTogether='true';
					trow.page.keepWithNext='true';
				}
				<AREA>
					<SPACER>
						FMT={
							spacer.height='11.7';
						}
					</SPACER>
					<CTRL_GROUP>
						FMT={
							trow.bkgr.color='#CCCCFF';
						}
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Operation Summary'
								FMT={
									ctrl.size.width='466.5';
									ctrl.size.height='17.3';
									text.style='cs12';
								}
							</TEXT_CTRL>
							<TEXT_CTRL>
								COND='output.format.supportsPageRefs &&
thisContext.getBooleanVar ("showPageColumn")'
								TEXT='Page'
								FMT={
									ctrl.size.width='33';
									ctrl.size.height='17.3';
									tcell.sizing='Minimal';
									tcell.align.horz='Center';
									text.font.style.bold='true';
								}
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</ELEMENT_ITER>
	<FOLDER>
		DESCR='XML SOURCE'
		COND='getBooleanParam("doc.wsdl.def.xml")
&&
getBooleanParam("doc.wsdl.def.xml.for.portType")'
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
													text.style='cs2';
												}
											</DELIMITER>
											<TEMPLATE_CALL_CTRL>
												TEMPLATE_FILE='../../xml/sourceNote.tpl'
												PASSED_PARAMS={
													'$remove.wsdl.docs','getBooleanParam("doc.wsdl.def.xml.remove.wsdl.docs")';
												}
												FMT={
													text.style='cs8';
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
		DESCR='OPERATION DETAIL'
		COND='getBooleanParam("doc.wsdl.def.operations")
&&
getBooleanParam("doc.wsdl.def.operations.for.portType")'
		STEP_EXPR='setVar (
  "operationType",
  callStockSection ("Operation Type")
)'
		TARGET_ET='wsdl:operation%wsdl:tOperation'
		SCOPE='simple-location-rules'
		RULES={
			'* -> wsdl:operation%wsdl:tOperation';
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
							<PANEL>
								FMT={
									ctrl.size.width='115.5';
									ctrl.size.height='41.3';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<IMAGE_CTRL>
												COND='getVar("operationType") == "request-response"'
												IMAGE_TYPE='file-image'
												FILE='../../images/operation_request-response.png'
												OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
												FMT={
													image.alignment='bottom';
													image.padding.right='3.3';
													image.padding.bottom='1.7';
												}
											</IMAGE_CTRL>
											<IMAGE_CTRL>
												COND='getVar("operationType") == "one-way"'
												IMAGE_TYPE='file-image'
												FILE='../../images/operation_one-way.png'
												OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
												FMT={
													image.alignment='bottom';
													image.padding.right='3.3';
													image.padding.bottom='1.7';
												}
											</IMAGE_CTRL>
											<IMAGE_CTRL>
												COND='getVar("operationType") == "solicit-response"'
												IMAGE_TYPE='file-image'
												FILE='../../images/operation_solicit-response.png'
												OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
												FMT={
													image.alignment='bottom';
													image.padding.right='3.3';
													image.padding.bottom='1.7';
												}
											</IMAGE_CTRL>
											<IMAGE_CTRL>
												COND='getVar("operationType") == "notification"'
												IMAGE_TYPE='file-image'
												FILE='../../images/operation_notification.png'
												OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
												FMT={
													image.alignment='bottom';
													image.padding.right='3.3';
													image.padding.bottom='1.7';
												}
											</IMAGE_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
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
				SS_NAME='Operation'
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
				<AREA>
					<SPACER>
						FMT={
							spacer.height='11.7';
						}
					</SPACER>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Operation Detail'
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
	<FOLDER>
		SS_NAME='Operation'
		MATCHING_ET='wsdl:operation%wsdl:tOperation'
		<BODY>
			<TEMPLATE_CALL>
				DESCR='DESCRIPTION'
				COND='getBooleanParam("doc.wsdl.def.operations.description")'
				TEMPLATE_FILE='operationDescription.tpl'
				STYLE_OVERRIDES={
					'Code','cs3';
				}
				FMT={
					sec.spacing.after='9';
					text.style='cs1';
				}
			</TEMPLATE_CALL>
			<FOLDER>
				DESCR='PROFILE'
				COND='getBooleanParam("doc.wsdl.def.operations.profile")'
				FMT={
					sec.outputStyle='table';
					table.cell.padding.both='0';
					table.border.style='none';
				}
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Operation Type:'
										FMT={
											ctrl.size.width='60';
											ctrl.size.height='80.3';
											tcell.sizing='Minimal';
											tcell.align.vert='Top';
											par.style='s9';
										}
									</TEXT_CTRL>
									<PANEL>
										FMT={
											ctrl.size.width='439.5';
											ctrl.size.height='80.3';
											par.style='s10';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<SS_CALL_CTRL>
														SS_NAME='Operation Type'
													</SS_CALL_CTRL>
													<PANEL>
														COND='findHyperTarget (
  Array (
    contextElement.id,
    Array ("xml-source", "xml-source-location")
  )
) != null'
														FMT={
															ctrl.size.width='285.8';
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
																							text.style='cs10';
																						}
																					</TEXT_CTRL>
																					<DATA_CTRL>
																						DOCFIELD='page-htarget'
																						FMT={
																							ctrl.option.noHLinkFmt='true';
																							text.style='cs10';
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
																							text.style='cs10';
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
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Used By:'
										FMT={
											ctrl.size.width='60';
											ctrl.size.height='17.3';
											tcell.sizing='Minimal';
											tcell.align.vert='Top';
											par.style='s9';
										}
									</TEXT_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='Operation Used By'
										FMT={
											ctrl.size.width='439.5';
											ctrl.size.height='17.3';
											par.style='s10';
										}
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</FOLDER>
			<ELEMENT_ITER>
				DESCR='input / output / faults'
				STEP_EXPR='stockSection.setVar (
  "message",
  findElementByKey (
    "wsdl-messages",
    getAttrQNameValue("message"),
    BooleanQuery (checkElementByKey (
      "main-xmls",
      getXMLDocument().id,
      getElementParam("$mainXML")
    ))
  )
)'
				TARGET_ETS={'wsdl:fault%wsdl:tFault';'wsdl:input%wsdl:tParam';'wsdl:output%wsdl:tParam'}
				SCOPE='simple-location-rules'
				RULES={
					'* -> (wsdl:fault%wsdl:tFault|wsdl:input%wsdl:tParam|wsdl:output%wsdl:tParam)';
				}
				<BODY>
					<FOLDER>
						DESCR='INPUT'
						COND='getBooleanParam("doc.wsdl.def.operations.input")'
						MATCHING_ET='wsdl:input%wsdl:tParam'
						BREAK_PARENT_BLOCK='when-executed'
						COLLAPSED
						<BODY>
							<AREA_SEC>
								FMT={
									sec.outputStyle='pars';
									par.style='s3';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='Input'
											</TEXT_CTRL>
											<PANEL>
												COND='getAttrValue("name") != ""'
												FMT={
													ctrl.size.width='73.5';
													ctrl.size.height='38.3';
												}
												<AREA>
													<CTRL_GROUP>
														FMT={
															txtfl.delimiter.type='none';
														}
														<CTRLS>
															<TEXT_CTRL>
																TEXT='"'
															</TEXT_CTRL>
															<DATA_CTRL>
																ATTR='name'
															</DATA_CTRL>
															<TEXT_CTRL>
																TEXT='"'
															</TEXT_CTRL>
														</CTRLS>
													</CTRL_GROUP>
												</AREA>
											</PANEL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
							<SS_CALL>
								DESCR='input description'
								COND='getBooleanParam("doc.wsdl.def.operations.input.description")'
								SS_NAME='WSDL Documentation'
								FMT={
									sec.spacing.after='7';
									sec.indent.block='true';
								}
							</SS_CALL>
							<FOLDER>
								DESCR='message'
								COND='getBooleanParam("doc.wsdl.def.operations.input.message")'
								FMT={
									sec.outputStyle='table';
									sec.indent.block='true';
									table.cell.padding.both='0';
									table.border.style='none';
								}
								<BODY>
									<AREA_SEC>
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='Message:'
														FMT={
															ctrl.size.width='42.8';
															ctrl.size.height='18';
															tcell.sizing='Minimal';
															par.style='s9';
														}
													</TEXT_CTRL>
													<IMAGE_CTRL>
														IMAGE_TYPE='file-image'
														FILE='../../images/message.png'
														OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
														FMT={
															ctrl.size.width='20.3';
															ctrl.size.height='18';
															tcell.sizing='Minimal';
															image.alignment='bottom';
															image.padding.right='1.7';
														}
													</IMAGE_CTRL>
													<DATA_CTRL>
														ATTR='message'
														FMT={
															ctrl.size.width='418.5';
															ctrl.size.height='18';
															text.style='cs3';
														}
														<DOC_HLINK>
															CONTEXT_ELEMENT_EXPR='stockSection.getElementVar("message")'
															MATCHING_ET='wsdl:message'
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
									<ELEMENT_ITER>
										COND='getBooleanParam("doc.wsdl.def.operations.input.message.parts")'
										CONTEXT_ELEMENT_EXPR='stockSection.getElementVar("message")'
										MATCHING_ET='wsdl:message'
										TARGET_ET='wsdl:part'
										SCOPE='simple-location-rules'
										RULES={
											'* -> wsdl:part';
										}
										<BODY>
											<AREA_SEC>
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
												FMT={
													text.style='cs11';
													trow.cell.align.vert='Top';
												}
												<AREA>
													<CTRL_GROUP>
														<CTRLS>
															<TEXT_CTRL>
																COND='iterator.isFirstItem'
																TEXT='Parts:'
																FMT={
																	ctrl.size.width='42.8';
																	ctrl.size.height='18';
																	tcell.sizing='Minimal';
																	par.style='s9';
																}
															</TEXT_CTRL>
															<TEXT_CTRL>
																TEXT=''
																FMT={
																	ctrl.size.width='20.3';
																	ctrl.size.height='18';
																	ctrl.option.text.noEmptyOutput='true';
																	tcell.sizing='Minimal';
																}
															</TEXT_CTRL>
															<IMAGE_CTRL>
																IMAGE_TYPE='file-image'
																FILE='../../images/messagePart.png'
																OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
																FMT={
																	ctrl.size.width='20.3';
																	ctrl.size.height='18';
																	tcell.sizing='Minimal';
																	image.alignment='bottom';
																	image.padding.right='1.7';
																}
															</IMAGE_CTRL>
															<TEMPLATE_CALL_CTRL>
																TEMPLATE_FILE='../message/partRep.tpl'
																PASSED_PARAMS={
																	'$lastPart','iterator.isLastItem';
																	'part.description','getBooleanParam("doc.wsdl.def.operations.input.message.parts.description")';
																	'part.description.copyFrom.dataType','getBooleanParam("doc.wsdl.def.operations.input.message.parts.description.copyFrom.dataType")';
																}
																FMT={
																	ctrl.size.width='398.3';
																	ctrl.size.height='18';
																}
															</TEMPLATE_CALL_CTRL>
														</CTRLS>
													</CTRL_GROUP>
												</AREA>
											</AREA_SEC>
										</BODY>
									</ELEMENT_ITER>
								</BODY>
							</FOLDER>
						</BODY>
					</FOLDER>
					<FOLDER>
						DESCR='OUTPUT'
						COND='getBooleanParam("doc.wsdl.def.operations.output")'
						MATCHING_ET='wsdl:output%wsdl:tParam'
						BREAK_PARENT_BLOCK='when-executed'
						COLLAPSED
						<BODY>
							<AREA_SEC>
								FMT={
									sec.outputStyle='pars';
									par.style='s3';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='Output'
											</TEXT_CTRL>
											<PANEL>
												COND='getAttrValue("name") != ""'
												FMT={
													ctrl.size.width='73.5';
													ctrl.size.height='38.3';
												}
												<AREA>
													<CTRL_GROUP>
														FMT={
															txtfl.delimiter.type='none';
														}
														<CTRLS>
															<TEXT_CTRL>
																TEXT='"'
															</TEXT_CTRL>
															<DATA_CTRL>
																ATTR='name'
															</DATA_CTRL>
															<TEXT_CTRL>
																TEXT='"'
															</TEXT_CTRL>
														</CTRLS>
													</CTRL_GROUP>
												</AREA>
											</PANEL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
							<SS_CALL>
								DESCR='output description'
								COND='getBooleanParam("doc.wsdl.def.operations.output.description")'
								SS_NAME='WSDL Documentation'
								FMT={
									sec.spacing.after='7';
									sec.indent.block='true';
								}
							</SS_CALL>
							<FOLDER>
								DESCR='message'
								COND='getBooleanParam("doc.wsdl.def.operations.output.message")'
								FMT={
									sec.outputStyle='table';
									sec.indent.block='true';
									table.cell.padding.both='0';
									table.border.style='none';
								}
								<BODY>
									<AREA_SEC>
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='Message:'
														FMT={
															ctrl.size.width='42.8';
															ctrl.size.height='18';
															tcell.sizing='Minimal';
															par.style='s9';
														}
													</TEXT_CTRL>
													<IMAGE_CTRL>
														IMAGE_TYPE='file-image'
														FILE='../../images/message.png'
														OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
														FMT={
															ctrl.size.width='20.3';
															ctrl.size.height='18';
															tcell.sizing='Minimal';
															image.alignment='bottom';
															image.padding.right='1.7';
														}
													</IMAGE_CTRL>
													<DATA_CTRL>
														ATTR='message'
														FMT={
															ctrl.size.width='418.5';
															ctrl.size.height='18';
															text.style='cs3';
														}
														<DOC_HLINK>
															CONTEXT_ELEMENT_EXPR='stockSection.getElementVar("message")'
															MATCHING_ET='wsdl:message'
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
									<ELEMENT_ITER>
										COND='getBooleanParam("doc.wsdl.def.operations.output.message.parts")'
										CONTEXT_ELEMENT_EXPR='stockSection.getElementVar("message")'
										MATCHING_ET='wsdl:message'
										TARGET_ET='wsdl:part'
										SCOPE='simple-location-rules'
										RULES={
											'* -> wsdl:part';
										}
										<BODY>
											<AREA_SEC>
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
												FMT={
													text.style='cs11';
													trow.cell.align.vert='Top';
												}
												<AREA>
													<CTRL_GROUP>
														<CTRLS>
															<TEXT_CTRL>
																COND='iterator.isFirstItem'
																TEXT='Parts:'
																FMT={
																	ctrl.size.width='42.8';
																	ctrl.size.height='18';
																	tcell.sizing='Minimal';
																	par.style='s9';
																}
															</TEXT_CTRL>
															<TEXT_CTRL>
																TEXT=''
																FMT={
																	ctrl.size.width='20.3';
																	ctrl.size.height='18';
																	ctrl.option.text.noEmptyOutput='true';
																	tcell.sizing='Minimal';
																}
															</TEXT_CTRL>
															<IMAGE_CTRL>
																IMAGE_TYPE='file-image'
																FILE='../../images/messagePart.png'
																OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
																FMT={
																	ctrl.size.width='20.3';
																	ctrl.size.height='18';
																	tcell.sizing='Minimal';
																	image.alignment='bottom';
																	image.padding.right='1.7';
																}
															</IMAGE_CTRL>
															<TEMPLATE_CALL_CTRL>
																TEMPLATE_FILE='../message/partRep.tpl'
																PASSED_PARAMS={
																	'$lastPart','iterator.isLastItem';
																	'part.description','getBooleanParam("doc.wsdl.def.operations.output.message.parts.description")';
																	'part.description.copyFrom.dataType','getBooleanParam("doc.wsdl.def.operations.output.message.parts.description.copyFrom.dataType")';
																}
																FMT={
																	ctrl.size.width='398.3';
																	ctrl.size.height='18';
																}
															</TEMPLATE_CALL_CTRL>
														</CTRLS>
													</CTRL_GROUP>
												</AREA>
											</AREA_SEC>
										</BODY>
									</ELEMENT_ITER>
								</BODY>
							</FOLDER>
						</BODY>
					</FOLDER>
					<FOLDER>
						DESCR='FAULT'
						COND='getBooleanParam("doc.wsdl.def.operations.fault")'
						MATCHING_ET='wsdl:fault%wsdl:tFault'
						COLLAPSED
						<BODY>
							<AREA_SEC>
								FMT={
									sec.outputStyle='pars';
									par.style='s3';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='Fault'
											</TEXT_CTRL>
											<PANEL>
												COND='getAttrValue("name") != ""'
												FMT={
													ctrl.size.width='73.5';
													ctrl.size.height='38.3';
												}
												<AREA>
													<CTRL_GROUP>
														FMT={
															txtfl.delimiter.type='none';
														}
														<CTRLS>
															<TEXT_CTRL>
																TEXT='"'
															</TEXT_CTRL>
															<DATA_CTRL>
																ATTR='name'
															</DATA_CTRL>
															<TEXT_CTRL>
																TEXT='"'
															</TEXT_CTRL>
														</CTRLS>
													</CTRL_GROUP>
												</AREA>
											</PANEL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
							<SS_CALL>
								DESCR='fault description'
								COND='getBooleanParam("doc.wsdl.def.operations.fault.description")'
								SS_NAME='WSDL Documentation'
								FMT={
									sec.spacing.after='7';
									sec.indent.block='true';
								}
							</SS_CALL>
							<FOLDER>
								DESCR='message'
								COND='getBooleanParam("doc.wsdl.def.operations.fault.message")'
								FMT={
									sec.outputStyle='table';
									sec.indent.block='true';
									table.cell.padding.both='0';
									table.border.style='none';
								}
								<BODY>
									<AREA_SEC>
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='Message:'
														FMT={
															ctrl.size.width='42.8';
															ctrl.size.height='18';
															tcell.sizing='Minimal';
															par.style='s9';
														}
													</TEXT_CTRL>
													<IMAGE_CTRL>
														IMAGE_TYPE='file-image'
														FILE='../../images/message.png'
														OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
														FMT={
															ctrl.size.width='20.3';
															ctrl.size.height='18';
															tcell.sizing='Minimal';
															image.alignment='bottom';
															image.padding.right='1.7';
														}
													</IMAGE_CTRL>
													<DATA_CTRL>
														ATTR='message'
														FMT={
															ctrl.size.width='418.5';
															ctrl.size.height='18';
															text.style='cs3';
														}
														<DOC_HLINK>
															CONTEXT_ELEMENT_EXPR='stockSection.getElementVar("message")'
															MATCHING_ET='wsdl:message'
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
									<ELEMENT_ITER>
										COND='getBooleanParam("doc.wsdl.def.operations.fault.message.parts")'
										CONTEXT_ELEMENT_EXPR='stockSection.getElementVar("message")'
										MATCHING_ET='wsdl:message'
										TARGET_ET='wsdl:part'
										SCOPE='simple-location-rules'
										RULES={
											'* -> wsdl:part';
										}
										<BODY>
											<AREA_SEC>
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
												FMT={
													text.style='cs11';
													trow.cell.align.vert='Top';
												}
												<AREA>
													<CTRL_GROUP>
														<CTRLS>
															<TEXT_CTRL>
																COND='iterator.isFirstItem'
																TEXT='Parts:'
																FMT={
																	ctrl.size.width='42.8';
																	ctrl.size.height='18';
																	tcell.sizing='Minimal';
																	par.style='s9';
																}
															</TEXT_CTRL>
															<TEXT_CTRL>
																TEXT=''
																FMT={
																	ctrl.size.width='20.3';
																	ctrl.size.height='18';
																	ctrl.option.text.noEmptyOutput='true';
																	tcell.sizing='Minimal';
																}
															</TEXT_CTRL>
															<IMAGE_CTRL>
																IMAGE_TYPE='file-image'
																FILE='../../images/messagePart.png'
																OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
																FMT={
																	ctrl.size.width='20.3';
																	ctrl.size.height='18';
																	tcell.sizing='Minimal';
																	image.alignment='bottom';
																	image.padding.right='1.7';
																}
															</IMAGE_CTRL>
															<TEMPLATE_CALL_CTRL>
																TEMPLATE_FILE='../message/partRep.tpl'
																PASSED_PARAMS={
																	'$lastPart','iterator.isLastItem';
																	'part.description','getBooleanParam("doc.wsdl.def.operations.fault.message.parts.description")';
																	'part.description.copyFrom.dataType','getBooleanParam("doc.wsdl.def.operations.fault.message.parts.description.copyFrom.dataType")';
																}
																FMT={
																	ctrl.size.width='398.3';
																	ctrl.size.height='18';
																}
															</TEMPLATE_CALL_CTRL>
														</CTRLS>
													</CTRL_GROUP>
												</AREA>
											</AREA_SEC>
										</BODY>
									</ELEMENT_ITER>
								</BODY>
							</FOLDER>
						</BODY>
					</FOLDER>
				</BODY>
			</ELEMENT_ITER>
			<FOLDER>
				DESCR='XML SOURCE'
				COND='getBooleanParam("doc.wsdl.def.operations.xml")'
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
						COND='getBooleanParam("doc.wsdl.def.operations.xml.box")'
						BREAK_PARENT_BLOCK='when-executed'
						FMT={
							sec.outputStyle='table';
							sec.spacing.before='6.7';
							sec.spacing.after='8.3';
							sec.indent.block='true';
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
											'$remove.wsdl.docs','getBooleanParam("doc.wsdl.def.operations.xml.remove.wsdl.docs")';
										}
										FMT={
											ctrl.size.width='481.5';
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
							'$remove.wsdl.docs','getBooleanParam("doc.wsdl.def.operations.xml.remove.wsdl.docs")';
						}
						FMT={
							sec.spacing.before='5';
							sec.spacing.after='8.3';
							sec.indent.block='true';
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
											text.style='cs3';
											text.color.opaque='false';
										}
									</DELIMITER>
									<TEMPLATE_CALL_CTRL>
										TEMPLATE_FILE='../../xml/sourceNote.tpl'
										PASSED_PARAMS={
											'$remove.wsdl.docs','getBooleanParam("doc.wsdl.def.operations.xml.remove.wsdl.docs")';
										}
										FMT={
											text.style='cs8';
											text.color.opaque='false';
										}
									</TEMPLATE_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
			</FOLDER>
		</BODY>
	</FOLDER>
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
	<ELEMENT_ITER>
		SS_NAME='Operation Used By'
		TARGET_ET='wsdl:operation%wsdl:tBindingOperation'
		SCOPE='custom'
		ELEMENT_ENUM_EXPR='findElementsByKey ("wsdl-definition-usage", contextElement.id)'
		<BODY>
			<AREA_SEC>
				DESCR='operation type'
				<AREA>
					<CTRL_GROUP>
						FMT={
							text.style='cs11';
						}
						<CTRLS>
							<DATA_CTRL>
								ATTR='name'
								FMT={
									text.style='cs3';
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
							<TEXT_CTRL>
								TEXT='in binding'
							</TEXT_CTRL>
							<SS_CALL_CTRL>
								SS_NAME='WSDL Definition Name'
								PASSED_ELEMENT_EXPR='contextElement.parent'
								PASSED_ELEMENT_MATCHING_ET='wsdl:binding'
								FMT={
									text.style='cs3';
								}
							</SS_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</ELEMENT_ITER>
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
CHECKSUM='5yqeYpxqPZZ581G0R1Vslb7QsM8n+1YDNoUdl+Rk0o4'
</DOCFLEX_TEMPLATE>