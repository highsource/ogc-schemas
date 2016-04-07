<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2005-04-26 03:31:00'
LAST_UPDATE='2014-07-05 20:02:50'
DESIGNER_TOOL='DocFlex SDK 1.x'
DESIGNER_LICENSE_TYPE='Filigris Works Team'
APP_ID='docflex-xml-xsddoc2'
APP_NAME='DocFlex/XML XSDDoc'
APP_VER='2.8.1'
APP_AUTHOR='Copyright © 2005-2014 Filigris Works, Leonid Rudy Softwareprodukte. All rights reserved.'
TEMPLATE_TYPE='DocumentTemplate'
DSM_TYPE_ID='xsddoc'
ROOT_ETS={'xs:%complexType';'xs:%simpleType'}
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$mainXSD';
		param.type='GOMElement';
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
		param.name='show.linkTitle.namespace';
		param.title='Namespace URI';
		param.type='boolean';
	}
</TEMPLATE_PARAMS>
<STYLES>
	CHAR_STYLE={
		style.name='Default Paragraph Font';
		style.id='cs1';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Derivation Method';
		style.id='cs2';
		text.font.name='Verdana';
		text.font.size='8';
		text.color.foreground='#FF9900';
	}
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs3';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='Mono';
		style.id='cs4';
		text.font.name='Courier New';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Mono (Small)';
		style.id='cs5';
		text.font.name='Courier New';
		text.font.size='8';
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
	<FOLDER>
		FMT={
			sec.outputStyle='text-par';
		}
		<BODY>
			<SS_CALL>
				MATCHING_ET='xs:%complexType'
				SS_NAME='complexType Derivation'
			</SS_CALL>
			<SS_CALL>
				MATCHING_ET='xs:%simpleType'
				SS_NAME='simpleType Derivation'
			</SS_CALL>
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
</ROOT>
<STOCK_SECTIONS>
	<ELEMENT_ITER>
		SS_NAME='complexType Derivation'
		MATCHING_ET='xs:%complexType'
		STEP_EXPR='typeQName = adaptQName (
  getAttrQNameValue("base"),
  rootElement
);

setVar ("typeQName", typeQName);

setVar (
  "type", 
  findElementByKey (
    "types",
    hasServiceAttr ("redefined") ?
      HashKey (typeQName, getServiceAttr ("redefined")) : typeQName,
    BooleanQuery (checkElementByKey (
      "main-xsds",
      getXMLDocument().id,
      getElementParam("$mainXSD")
    ))
  )
)'
		TARGET_ETS={'xs:%extensionType';'xs:%restrictionType'}
		SCOPE='advanced-location-rules'
		RULES={
			'* -> xs:complexContent/(xs:extension|xs:restriction)';
			'* -> xs:simpleContent/(xs:extension|xs:restriction)';
		}
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='space';
		}
		<BODY>
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								MATCHING_ET='xs:%restrictionType'
								TEXT='restriction of'
								FMT={
									text.style='cs2';
								}
							</TEXT_CTRL>
							<TEXT_CTRL>
								MATCHING_ET='xs:%extensionType'
								TEXT='extension of'
								FMT={
									text.style='cs2';
								}
							</TEXT_CTRL>
							<DATA_CTRL>
								COND='! getElementVar("type").getAttrBooleanValue ("abstract")'
								FORMULA='toXMLName (getQNameVar("typeQName"), Array (rootElement, contextElement))'
								FMT={
									text.style='cs5';
								}
								<DOC_HLINK>
									CONTEXT_ELEMENT_EXPR='getElementVar("type")'
									MATCHING_ETS={'xs:complexType';'xs:simpleType'}
									TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("Link Title") : ""'
									HKEYS={
										'contextElement.id';
										'Array ("detail", "xml-source-location")';
									}
								</DOC_HLINK>
							</DATA_CTRL>
							<DATA_CTRL>
								COND='getElementVar("type").getAttrBooleanValue ("abstract")'
								FORMULA='toXMLName (getQNameVar("typeQName"), Array (rootElement, contextElement))'
								FMT={
									text.style='cs5';
									text.font.style.italic='true';
								}
								<DOC_HLINK>
									CONTEXT_ELEMENT_EXPR='getElementVar("type")'
									MATCHING_ETS={'xs:complexType';'xs:simpleType'}
									TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("Link Title") : ""'
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
	</ELEMENT_ITER>
	<TEMPLATE_CALL>
		SS_NAME='Link Title'
		TEMPLATE_FILE='../component/componentLinkTitle.tpl'
	</TEMPLATE_CALL>
	<ELEMENT_ITER>
		SS_NAME='simpleType Derivation'
		MATCHING_ET='xs:%simpleType'
		TARGET_ETS={'xs:list';'xs:restriction';'xs:union'}
		SCOPE='simple-location-rules'
		RULES={
			'* -> (xs:list|xs:restriction|xs:union)';
		}
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='space';
		}
		<BODY>
			<FOLDER>
				MATCHING_ET='xs:restriction'
				<BODY>
					<AREA_SEC>
						COND='getAttrValue("base") != null'
						BREAK_PARENT_BLOCK='when-executed'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='restriction of'
										FMT={
											text.style='cs2';
										}
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='toXMLName (
  getAttrQNameValue("base"),
  Array (rootElement, contextElement)
)'
										FMT={
											text.style='cs5';
										}
										<DOC_HLINK>
											CONTEXT_ELEMENT_EXPR='qName = getAttrQNameValue("base");

findElementByKey (
  "types",
  hasServiceAttr ("redefined") ?
    HashKey (qName, getServiceAttr ("redefined")) : qName,
  BooleanQuery (checkElementByKey (
    "main-xsds",
    getXMLDocument().id,
    getElementParam("$mainXSD")
  ))
)'
											MATCHING_ETS={'xs:complexType';'xs:simpleType'}
											TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("Link Title") : ""'
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
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='restriction of'
										FMT={
											text.style='cs2';
										}
									</TEXT_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='simpleType Derivation'
										PASSED_ELEMENT_EXPR='findChild("xs:simpleType")'
										PASSED_ELEMENT_MATCHING_ET='xs:%localSimpleType'
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</FOLDER>
			<FOLDER>
				MATCHING_ET='xs:list'
				<BODY>
					<AREA_SEC>
						COND='getAttrValue("itemType") != null'
						BREAK_PARENT_BLOCK='when-executed'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='list of'
										FMT={
											text.style='cs2';
										}
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='toXMLName (
  getAttrQNameValue("itemType"),
  Array (rootElement, contextElement)
)'
										FMT={
											text.style='cs5';
										}
										<DOC_HLINK>
											CONTEXT_ELEMENT_EXPR='findElementByKey (
  "types",
  getAttrQNameValue("itemType"),
  BooleanQuery (
    checkElementByKey (
      "main-xsds",
      getXMLDocument().id,
      getElementParam("$mainXSD")
    )
  )
)'
											MATCHING_ETS={'xs:complexType';'xs:simpleType'}
											TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("Link Title") : ""'
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
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='list of'
										FMT={
											text.style='cs2';
										}
									</TEXT_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='simpleType Derivation'
										PASSED_ELEMENT_EXPR='findChild("xs:simpleType")'
										PASSED_ELEMENT_MATCHING_ET='xs:%localSimpleType'
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</FOLDER>
			<FOLDER>
				MATCHING_ET='xs:union'
				FMT={
					txtfl.delimiter.type='text';
					txtfl.delimiter.text=' | ';
				}
				<BODY>
					<ATTR_ITER>
						SCOPE='attr-values'
						ATTR='memberTypes'
						<BODY>
							<AREA_SEC>
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<DATA_CTRL>
												FORMULA='toXMLName (
  iterator.value.toQName(),
  Array (rootElement, contextElement)
)'
												FMT={
													text.style='cs5';
												}
												<DOC_HLINK>
													CONTEXT_ELEMENT_EXPR='findElementByKey (
  "types",
  toQName (iterator.value),
  BooleanQuery (
    checkElementByKey (
      "main-xsds",
      getXMLDocument().id,
      getElementParam("$mainXSD")
    )
  )
)'
													MATCHING_ETS={'xs:complexType';'xs:simpleType'}
													TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("Link Title") : ""'
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
					</ATTR_ITER>
					<ELEMENT_ITER>
						TARGET_ET='xs:%localSimpleType'
						SCOPE='simple-location-rules'
						RULES={
							'* -> xs:%localSimpleType';
						}
						<BODY>
							<SS_CALL>
								SS_NAME='simpleType Derivation'
							</SS_CALL>
						</BODY>
					</ELEMENT_ITER>
				</BODY>
				<HEADER>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='space';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='union of'
										FMT={
											text.style='cs2';
										}
									</TEXT_CTRL>
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
	</ELEMENT_ITER>
</STOCK_SECTIONS>
CHECKSUM='mjRW?NCwPqCwaypqIEpLhlheeIzEOPuMUuVbE6cBehk'
</DOCFLEX_TEMPLATE>