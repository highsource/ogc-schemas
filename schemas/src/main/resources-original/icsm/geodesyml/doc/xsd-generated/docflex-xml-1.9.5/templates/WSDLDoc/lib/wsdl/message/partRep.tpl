<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2012-09-23 06:38:48'
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
ROOT_ET='wsdl:part'
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
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$mainXML';
		param.type='GOMElement';
		param.defaultValue.expr='findElementByKey ("main-xmls", getXMLDocument().id)';
	}
	PARAM={
		param.name='$lastPart';
		param.title='Indicates this is the last part';
		param.type='boolean';
	}
	PARAM={
		param.name='$resourceOutputDir';
		param.title='documentation resources directory';
		param.type='string';
	}
	PARAM={
		param.name='part';
		param.title='Part';
		param.title.style.bold='true';
		param.group='true';
	}
	PARAM={
		param.name='part.description';
		param.title='Description';
		param.group='true';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='part.description.copyFrom';
		param.title='Copy From';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='part.description.copyFrom.dataType';
		param.title='Data Type';
		param.title.style.italic='true';
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
	CHAR_STYLE={
		style.name='Derivation Method';
		style.id='cs6';
		text.font.name='Verdana';
		text.font.size='8';
		text.color.foreground='#FF9900';
	}
	CHAR_STYLE={
		style.name='Derivation Tree Method';
		style.id='cs7';
		text.font.name='Verdana';
		text.font.size.relative='70';
		text.color.foreground='#F59200';
	}
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs8';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='Name Modifier';
		style.id='cs9';
		text.font.name='Verdana';
		text.font.size='7';
		text.color.foreground='#B2B2B2';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s1';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Profile Property Clear';
		style.id='cs10';
		text.font.name='Verdana';
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
	CHAR_STYLE={
		style.name='Underline';
		style.id='cs11';
		text.decor.underline='true';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs8';
}
<ROOT>
	<FOLDER>
		DESCR='HEADER'
		FMT={
			sec.outputStyle='text-par';
		}
		<BODY>
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
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
								TEXT=':'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<FOLDER>
				DESCR='content\'s datatype'
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
											<TEXT_CTRL>
												TEXT='element'
												FMT={
													text.style='cs6';
												}
											</TEXT_CTRL>
											<DATA_CTRL>
												ATTR='element'
												FMT={
													text.style='cs3';
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
								MATCHING_ETS={'#CUSTOM';'xs:complexType';'xs:simpleType'}
								<BODY>
									<AREA_SEC>
										DESCR='when the type reference is not resolved'
										MATCHING_ET='#CUSTOM'
										BREAK_PARENT_BLOCK='when-executed'
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<DATA_CTRL>
														MATCHING_ET='#CUSTOM'
														FORMULA='contextElement.value.toQName().toXMLName (rootElement)'
														FMT={
															text.style='cs3';
														}
													</DATA_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</AREA_SEC>
									<SS_CALL>
										SS_NAME='XSD Component Name'
										FMT={
											text.style='cs3';
										}
									</SS_CALL>
								</BODY>
								<HEADER>
									<AREA_SEC>
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='of'
													</TEXT_CTRL>
													<TEXT_CTRL>
														TEXT='type'
														FMT={
															text.style='cs6';
														}
													</TEXT_CTRL>
													<DELIMITER>
													</DELIMITER>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</AREA_SEC>
								</HEADER>
							</FOLDER>
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
											<TEXT_CTRL>
												TEXT='type'
												FMT={
													text.style='cs6';
												}
											</TEXT_CTRL>
											<DATA_CTRL>
												ATTR='type'
												FMT={
													text.style='cs3';
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
		</BODY>
	</FOLDER>
	<FOLDER>
		DESCR='DESCRIPTION'
		COND='getBooleanParam("part.description")'
		FMT={
			sec.spacing.before='6.7';
			text.style='cs1';
		}
		<BODY>
			<SS_CALL>
				DESCR='if this part has its own description'
				BREAK_PARENT_BLOCK='when-output'
				SS_NAME='WSDL Documentation'
			</SS_CALL>
			<FOLDER>
				DESCR='otherwise, copy description from the part\'s data type'
				COND='getBooleanParam("part.description.copyFrom.dataType")'
				<BODY>
					<FOLDER>
						DESCR='in case of \'element\' attribute, copy the annotation from the referenced XSD element or its type'
						COND='getAttrStringValue("element") != ""'
						FMT={
							sec.spacing.before='6.7';
						}
						<BODY>
							<FOLDER>
								DESCR='annotation copied from the referenced XSD element'
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
														TEXT='Description copied from element:'
													</TEXT_CTRL>
													<DATA_CTRL>
														ATTR='element'
														FMT={
															text.style='cs3';
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
								DESCR='if no output produced, try to copied the annotation of the element\'s type'
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
														TEXT='Description copied from type:'
													</TEXT_CTRL>
													<SS_CALL_CTRL>
														SS_NAME='XSD Component Name'
														FMT={
															text.style='cs3';
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
						DESCR='in case of \'type\' attribute, copy the annotation from the referenced XSD type'
						COND='getAttrStringValue("type") != ""'
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
												TEXT='Description copied from type:'
											</TEXT_CTRL>
											<DATA_CTRL>
												ATTR='type'
												FMT={
													text.style='cs3';
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
		<FOOTER>
			<AREA_SEC>
				COND='! getBooleanParam("$lastPart")'
				<AREA>
					<SPACER>
						FMT={
							spacer.height='5';
							spacer.option.noSuppress='true';
						}
					</SPACER>
				</AREA>
			</AREA_SEC>
		</FOOTER>
	</FOLDER>
</ROOT>
<STOCK_SECTIONS>
	<TEMPLATE_CALL>
		SS_NAME='WSDL Definition Link Title'
		TEMPLATE_FILE='../misc/defLinkTitle.tpl'
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
CHECKSUM='AV?3JKPhrrBMwt1K2xNLxmOBUVgtwTj1cKvXyALm?28'
</DOCFLEX_TEMPLATE>