<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2014-04-08 09:57:57'
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
ROOT_ET='wsdl:operation%wsdl:tOperation'
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$mainXML';
		param.type='GOMElement';
		param.defaultValue.expr='findElementByKey ("main-xmls", getXMLDocument().id)';
	}
	PARAM={
		param.name='$firstSentence';
		param.description='print only the first sentence of the description';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.altDesc';
		param.title='Alternative Descriptions';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='doc.wsdl.def.altDesc.operation';
		param.title='Operation';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='doc.wsdl.def.altDesc.operation.copyFrom';
		param.title='Copy From';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='doc.wsdl.def.altDesc.operation.copyFrom.input.message';
		param.title='Input Message';
		param.title.style.italic='true';
		param.group='true';
		param.group.defaultState='expanded';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.altDesc.operation.copyFrom.input.message.part.dataType';
		param.title='Data Type';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.altDesc.operation.copyFrom.output.message';
		param.title='Output Message';
		param.title.style.italic='true';
		param.group='true';
		param.group.defaultState='expanded';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.altDesc.operation.copyFrom.output.message.part.dataType';
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
		style.name='Code';
		style.id='cs1';
		text.font.name='Courier New';
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
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs3';
}
<ROOT>
	<SS_CALL>
		DESCR='if this operation has its own documentation'
		BREAK_PARENT_BLOCK='when-output'
		SS_NAME='WSDL Documentation'
	</SS_CALL>
	<SS_CALL>
		DESCR='otherwise, copy from input message'
		COND='getBooleanParam("doc.wsdl.def.altDesc.operation.copyFrom.input.message")
||
getBooleanParam("doc.wsdl.def.altDesc.operation.copyFrom.input.message.part.dataType")'
		BREAK_PARENT_BLOCK='when-output'
		SS_NAME='Copy From Message'
		PASSED_ELEMENT_EXPR='findElementByKey (
  "wsdl-messages",
  findChild("wsdl:input").getAttrQNameValue("message"),
  BooleanQuery (checkElementByKey (
    "main-xmls",
    getXMLDocument().id,
    getElementParam("$mainXML")
  ))
)'
		PASSED_ELEMENT_MATCHING_ET='wsdl:message'
		PARAMS_EXPR='Array (
  getBooleanParam("doc.wsdl.def.altDesc.operation.copyFrom.input.message"),
  getBooleanParam("doc.wsdl.def.altDesc.operation.copyFrom.input.message.part.dataType")
)'
	</SS_CALL>
	<SS_CALL>
		DESCR='otherwise, copy from output message'
		COND='getBooleanParam("doc.wsdl.def.altDesc.operation.copyFrom.output.message")
||
getBooleanParam("doc.wsdl.def.altDesc.operation.copyFrom.output.message.part.dataType")'
		SS_NAME='Copy From Message'
		PASSED_ELEMENT_EXPR='findElementByKey (
  "wsdl-messages",
  findChild("wsdl:output").getAttrQNameValue("message"),
  BooleanQuery (checkElementByKey (
    "main-xmls",
    getXMLDocument().id,
    getElementParam("$mainXML")
  ))
)'
		PASSED_ELEMENT_MATCHING_ET='wsdl:message'
		PARAMS_EXPR='Array (
  getBooleanParam("doc.wsdl.def.altDesc.operation.copyFrom.output.message"),
  getBooleanParam("doc.wsdl.def.altDesc.operation.copyFrom.output.message.part.dataType")
)'
	</SS_CALL>
</ROOT>
<STOCK_SECTIONS>
	<FOLDER>
		SS_NAME='Copy From Message'
		DESCR='param[0] - copy message description;
param[1] - copy annotation of part\'s data type'
		MATCHING_ET='wsdl:message'
		<BODY>
			<FOLDER>
				DESCR='copy message description'
				COND='stockSection.params[0].toBoolean()'
				BREAK_PARENT_BLOCK='when-output'
				<BODY>
					<SS_CALL>
						SS_NAME='WSDL Documentation'
					</SS_CALL>
				</BODY>
				<HEADER>
					COND='! getBooleanParam("$firstSentence")'
					<AREA_SEC>
						FMT={
							text.font.style.bold='true';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Description copied from message:'
									</TEXT_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='WSDL Definition Name'
										FMT={
											text.style='cs1';
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
			<FOLDER>
				DESCR='message part (first)'
				COND='stockSection.params[1].toBoolean()'
				CONTEXT_ELEMENT_EXPR='findChild("wsdl:part")'
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
						DESCR='in case of \'element\' attribute, copy the annotation of the referenced XSD element or its type'
						COND='getAttrStringValue("element") != ""'
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
									COND='! getBooleanParam("$firstSentence")'
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
															text.style='cs1';
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
									COND='! getBooleanParam("$firstSentence")'
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
															text.style='cs1';
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
							COND='! getBooleanParam("$firstSentence")'
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
													text.style='cs1';
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
	<TEMPLATE_CALL>
		SS_NAME='WSDL Definition Name'
		DESCR='prints the qualified name of the WSDL definiton'
		TEMPLATE_FILE='../misc/defName.tpl'
		FMT={
			sec.outputStyle='text-par';
		}
	</TEMPLATE_CALL>
	<FOLDER>
		SS_NAME='WSDL Documentation'
		MATCHING_ET='wsdl:%tDocumented'
		<BODY>
			<TEMPLATE_CALL>
				COND='getBooleanParam("$firstSentence")'
				BREAK_PARENT_BLOCK='when-executed'
				TEMPLATE_FILE='../misc/firstSentence.tpl'
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				TEMPLATE_FILE='../../doc/docOutput.tpl'
				PASSED_ROOT_ELEMENT_EXPR='findChild("wsdl:documentation")'
			</TEMPLATE_CALL>
		</BODY>
	</FOLDER>
	<FOLDER>
		SS_NAME='XSD Annotation'
		MATCHING_ET='xs:%annotated'
		<BODY>
			<TEMPLATE_CALL>
				COND='getBooleanParam("$firstSentence")'
				BREAK_PARENT_BLOCK='when-executed'
				TEMPLATE_FILE='../../xsd/ann/firstSentence.tpl'
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				TEMPLATE_FILE='../../xsd/ann/annotation.tpl'
			</TEMPLATE_CALL>
		</BODY>
	</FOLDER>
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
CHECKSUM='lFtowJD+wGqd07PYkmdxnKh2mv0BWhzWb?l9PBq8TIo'
</DOCFLEX_TEMPLATE>