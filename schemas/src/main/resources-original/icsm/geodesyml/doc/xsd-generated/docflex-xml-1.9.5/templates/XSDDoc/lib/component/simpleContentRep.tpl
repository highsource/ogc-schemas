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
		param.name='$highlightMarkup';
		param.description='highlight XML markup (quotes) with blue color';
		param.type='boolean';
	}
	PARAM={
		param.name='$applyBrackets';
		param.description='indicates that all brackets must be applied';
		param.type='boolean';
	}
	PARAM={
		param.name='$abbreviateEnum';
		param.description='indicates that when a simple content representation consists of the only enumeration, it should be abbreviated (shown as "enumeration of ...")';
		param.type='boolean';
	}
	PARAM={
		param.name='$xmlContext';
		param.description='Specifies an element that determines the preferable XML document context (i.e. the position on the XML document\'s tree) against which the namespace prefix/URI binding will be resolved';
		param.type='GOMElement';
		param.defaultValue.expr='contextElement';
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
	PAR_STYLE={
		style.name='Normal';
		style.id='s1';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='XML Rep Markup';
		style.id='cs3';
		text.color.foreground='#0000FF';
		text.option.nbsps='true';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs2';
}
<ROOT>
	<FOLDER>
		DESCR='in case of a global simpleType, first obtain the type\'s QName (see Processing). If this QName points to an XSD predefined type, print it as is'
		MATCHING_ET='xs:simpleType'
		INIT_EXPR='setVar ("typeQName", QName (
  findAncestor("xs:schema").getServiceAttr("targetNamespace").toString(),
  getAttrStringValue("name")
))'
		BREAK_PARENT_BLOCK='when-executed'
		<BODY>
			<AREA_SEC>
				COND='isXSPredefinedType (getQNameVar ("typeQName"))'
				BREAK_PARENT_BLOCK='when-executed'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								FORMULA='toXMLName (
  getQNameVar("typeQName"),
  Array (getElementParam("$xmlContext"), contextElement)
)'
								FMT={
									ctrl.option.text.noBlankOutput='true';
								}
								<DOC_HLINK>
									DESCR='link to the type\'s global documentation and, if not found, to its definition within XML schema source'
									TITLE_EXPR='getBooleanParam("show.linkTitle") ? callStockSection("Link Title") : ""'
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
			<SS_CALL>
				DESCR='otherwise, look into the type\'s inside'
				SS_NAME='simpleType'
				PARAMS_EXPR='Array ("", getBooleanParam("$applyBrackets"))'
			</SS_CALL>
		</BODY>
	</FOLDER>
	<SS_CALL>
		MATCHING_ET='xs:%localSimpleType'
		BREAK_PARENT_BLOCK='when-executed'
		SS_NAME='simpleType'
		PARAMS_EXPR='Array ("", getBooleanParam("$applyBrackets"))'
	</SS_CALL>
	<SS_CALL>
		MATCHING_ET='xs:%complexType'
		SS_NAME='complexType'
		PARAMS_EXPR='Array ("", getBooleanParam("$applyBrackets"))'
	</SS_CALL>
</ROOT>
<STOCK_SECTIONS>
	<ELEMENT_ITER>
		SS_NAME='complexType'
		DESCR='this should be a complexType with simple content only;

params[0]: indicates the expression context
params[1]: indicates that all brackets must be applied'
		MATCHING_ET='xs:%complexType'
		TARGET_ETS={'xs:extension%xs:simpleExtensionType';'xs:restriction%xs:simpleRestrictionType'}
		SCOPE='advanced-location-rules'
		RULES={
			'* -> xs:simpleContent/(xs:extension|xs:restriction)';
		}
		<BODY>
			<SS_CALL>
				DESCR='process the restriction contained in it'
				MATCHING_ET='xs:%simpleRestrictionType'
				SS_NAME='restriction'
				PARAMS_EXPR='stockSection.params'
			</SS_CALL>
			<SS_CALL>
				DESCR='process the extension contained in it;
proceed with the base type (see "Call Settings | Passed Parameters" tab)'
				MATCHING_ET='xs:%simpleExtensionType'
				SS_NAME='typeByQName'
				PARAMS_EXPR='Array (
  stockSection.params[0],
  stockSection.params[1],
  getAttrQNameValue("base"),
  getServiceAttr ("redefined")
)'
			</SS_CALL>
		</BODY>
	</ELEMENT_ITER>
	<TEMPLATE_CALL>
		SS_NAME='Link Title'
		TEMPLATE_FILE='componentLinkTitle.tpl'
	</TEMPLATE_CALL>
	<FOLDER>
		SS_NAME='restriction'
		DESCR='params[0]: indicates the expression context. Possible values: 

"" -- no context, what\'s generated will be the whole expression;
"expr_inside" -- what\'s generated will be enclodes in a bigger expression produced by this template;
"enum" -- this is both the "expression-inside" and indicates that the "enumeration of ..." has been started (so as to pass over another enumeration within the ancestor type)

params[1]: indicates that all brackets must be applied'
		MATCHING_ETS={'xs:%simpleRestrictionType';'xs:restriction'}
		FMT={
			sec.outputStyle='text-par';
		}
		<BODY>
			<FOLDER>
				DESCR='if there are enumeration facets, they override any enumerations defined in supertypes, therefore we are not interested in them'
				COND='hasChild("xs:enumeration")'
				<BODY>
					<AREA_SEC>
						DESCR='if the enumeration should be abbreviated'
						COND='stockSection.param != "expr_inside" && 
getBooleanParam("$abbreviateEnum")'
						BREAK_PARENT_BLOCK='when-executed'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										COND='stockSection.param == ""'
										TEXT='enumeration of'
										FMT={
											text.font.style.italic='true';
										}
									</TEXT_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='typeByQName'
										PARAMS_EXPR='Array (
  "enum",
  true,
  getAttrQNameValue("base"),
  getServiceAttr ("redefined")
)'
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<ELEMENT_ITER>
						DESCR='otherwise, print all enumeration values'
						TARGET_ET='xs:enumeration'
						SCOPE='simple-location-rules'
						RULES={
							'* -> xs:enumeration';
						}
						FMT={
							txtfl.delimiter.type='text';
							txtfl.delimiter.text=' | ';
						}
						<BODY>
							<AREA_SEC>
								COND='getBooleanParam("$highlightMarkup")'
								BREAK_PARENT_BLOCK='when-executed'
								<AREA>
									<CTRL_GROUP>
										FMT={
											txtfl.delimiter.type='none';
										}
										<CTRLS>
											<TEXT_CTRL>
												TEXT='"'
												FMT={
													text.style='cs3';
												}
											</TEXT_CTRL>
											<DATA_CTRL>
												ATTR='value'
											</DATA_CTRL>
											<TEXT_CTRL>
												TEXT='"'
												FMT={
													text.style='cs3';
												}
											</TEXT_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
							<AREA_SEC>
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
												ATTR='value'
											</DATA_CTRL>
											<TEXT_CTRL>
												TEXT='"'
											</TEXT_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</BODY>
						<HEADER>
							<AREA_SEC>
								COND='stockSection.params[1].toBoolean() &&
iterator.numItems > 1'
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
								COND='stockSection.params[1].toBoolean() &&
iterator.numItems > 1'
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
				</BODY>
			</FOLDER>
		</BODY>
		<ELSE>
			DESCR='if no enumeration facets, look what\'s defined in the anonymous type or supertype'
			<SS_CALL>
				DESCR='if there\'s an anonymous simple type'
				CONTEXT_ELEMENT_EXPR='findChild ("xs:simpleType")'
				MATCHING_ET='xs:%localSimpleType'
				SS_NAME='simpleType'
				PARAMS_EXPR='stockSection.params'
			</SS_CALL>
			<SS_CALL>
				DESCR='otherwise, process the base type'
				COND='sectionBlock.execSecNone && getAttrStringValue("base") != ""'
				SS_NAME='typeByQName'
				PARAMS_EXPR='Array (
  stockSection.params[0],
  stockSection.params[1],
  getAttrQNameValue("base"),
  getServiceAttr ("redefined")
)'
			</SS_CALL>
		</ELSE>
	</FOLDER>
	<ELEMENT_ITER>
		SS_NAME='simpleType'
		DESCR='params[0]: indicates the expression context. Possible values: 

"" -- no context, what\'s generated will be the whole expression;
"expr_inside" -- what\'s generated will be enclodes in a bigger expression produced by this template;
"enum" -- this is both the "expression-inside" and indicates that the "enumeration of ..." has been started (so as to pass over another enumeration within the ancestor type)

params[1]: indicates that all brackets must be applied'
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
			<SS_CALL>
				MATCHING_ET='xs:restriction'
				BREAK_PARENT_BLOCK='when-executed'
				SS_NAME='restriction'
				PARAMS_EXPR='stockSection.params'
			</SS_CALL>
			<FOLDER>
				MATCHING_ET='xs:list'
				BREAK_PARENT_BLOCK='when-executed'
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
											text.font.style.italic='true';
										}
									</TEXT_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='typeByQName'
										PARAMS_EXPR='Array ("expr_inside", true, getAttrQNameValue("itemType"))'
									</SS_CALL_CTRL>
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
											text.font.style.italic='true';
										}
									</TEXT_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='simpleType'
										PASSED_ELEMENT_EXPR='findChild("xs:simpleType")'
										PASSED_ELEMENT_MATCHING_ET='xs:%simpleType'
										PARAMS_EXPR='Array ("expr_inside", true)'
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</FOLDER>
			<FOLDER>
				MATCHING_ET='xs:union'
				BREAK_PARENT_BLOCK='when-executed'
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
											<SS_CALL_CTRL>
												SS_NAME='typeByQName'
												PARAMS_EXPR='Array ("expr_inside", true, toQName (iterator.value))'
											</SS_CALL_CTRL>
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
								SS_NAME='simpleType'
								PARAMS_EXPR='Array ("expr_inside", true)'
							</SS_CALL>
						</BODY>
					</ELEMENT_ITER>
				</BODY>
				<HEADER>
					<AREA_SEC>
						COND='stockSection.params[1].toBoolean()'
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
						COND='stockSection.params[1].toBoolean()'
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
	<FOLDER>
		SS_NAME='typeByQName'
		DESCR='params[0]: indicates the expression context
params[1]: indicates that all brackets must be applied
params[2]: QName of the global type
params[3]: the value of \'redefined\' service attribute; non-null value indicates that this type has been redefined, however the original type is referenced here'
		<BODY>
			<FOLDER>
				DESCR='if this is not a predefined XSD type, switch to an element representing it'
				COND='! isXSPredefinedType (toQName (stockSection.params [2]))'
				CONTEXT_ELEMENT_EXPR='qName = stockSection.params[2];

findElementByKey (
  "types", 
  ((redefined = stockSection.params[3]) != null ?
    HashKey (qName, redefined) : qName),
  BooleanQuery (
    checkElementByKey (
      "main-xsds",
      getXMLDocument().id,
      getElementParam("$mainXSD")
    )
  )
)'
				MATCHING_ETS={'xs:complexType';'xs:simpleType'}
				<BODY>
					<SS_CALL>
						DESCR='process simpleType'
						MATCHING_ET='xs:simpleType'
						BREAK_PARENT_BLOCK='when-executed'
						SS_NAME='simpleType'
						PARAMS_EXPR='stockSection.params'
					</SS_CALL>
					<SS_CALL>
						DESCR='process complexType'
						MATCHING_ET='xs:complexType'
						SS_NAME='complexType'
						PARAMS_EXPR='stockSection.params'
					</SS_CALL>
				</BODY>
			</FOLDER>
		</BODY>
		<ELSE>
			DESCR='if no output has been produced, just print the type\'s QName itself'
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								FORMULA='xmlContexts = Array (getElementParam("$xmlContext"), contextElement);

(typeQName = stockSection.params[2].toQName()) != null
  ? toXMLName (typeQName, xmlContexts)
  : toXMLName (getNamespaceURI("xs"), "anySimpleType", xmlContexts)'
								<DOC_HLINK>
									DESCR='link to the type\'s global documentation and, if not found, to its definition within XML schema source'
									CONTEXT_ELEMENT_EXPR='qName = stockSection.params[2];

findElementByKey (
  "types", 
  ((redefined = stockSection.params[3]) != null ?
    HashKey (qName, redefined) : qName),
  BooleanQuery (
    checkElementByKey (
      "main-xsds",
      getXMLDocument().id,
      getElementParam("$mainXSD")
    )
  )
)'
									MATCHING_ETS={'xs:complexType';'xs:simpleType'}
									TITLE_EXPR='getBooleanParam("show.linkTitle") ? callStockSection("Link Title") : ""'
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
		</ELSE>
	</FOLDER>
</STOCK_SECTIONS>
CHECKSUM='HNbQOLzrqL6bOJze1dmpzDyjXl4ls4hinKx0cOIg1k8'
</DOCFLEX_TEMPLATE>