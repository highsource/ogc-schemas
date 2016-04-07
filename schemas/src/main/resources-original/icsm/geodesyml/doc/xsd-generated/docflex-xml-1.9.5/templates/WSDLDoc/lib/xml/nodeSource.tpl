<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2005-01-18 01:00:00'
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
ROOT_ET='<ANY>'
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$mainXML';
		param.type='GOMElement';
	}
	PARAM={
		param.name='$bookmark.xmlns';
		param.type='boolean';
	}
	PARAM={
		param.name='$bookmark.elements';
		param.type='boolean';
	}
	PARAM={
		param.name='$remove.xsd.anns';
		param.type='boolean';
	}
	PARAM={
		param.name='$remove.wsdl.docs';
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
		style.name='Underline';
		style.id='cs3';
		text.decor.underline='true';
	}
	CHAR_STYLE={
		style.name='XML Source';
		style.id='cs4';
		text.font.name='Verdana';
		text.font.size='8';
	}
	CHAR_STYLE={
		style.name='XML Source Comment';
		style.id='cs5';
		text.font.name='Courier New';
		text.color.foreground='#4D4D4D';
	}
	CHAR_STYLE={
		style.name='XML Source Internal Subset';
		style.id='cs6';
		text.font.name='Courier New';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='XML Source Markup';
		style.id='cs7';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='XML Source Name';
		style.id='cs8';
		text.color.foreground='#990000';
	}
	CHAR_STYLE={
		style.name='XML Source Name Highlight';
		style.id='cs9';
		text.color.foreground='#FF0000';
	}
	CHAR_STYLE={
		style.name='XML Source Value';
		style.id='cs10';
		text.font.size='7';
		text.font.style.bold='true';
		text.color.foreground='#000000';
	}
	CHAR_STYLE={
		style.name='XML Source Value Highlight';
		style.id='cs11';
		text.font.size='7';
		text.font.style.bold='true';
		text.color.foreground='#FF0000';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
}
<ROOT>
	<SS_CALL>
		SS_NAME='Node'
		FMT={
			text.style='cs4';
		}
	</SS_CALL>
</ROOT>
<STOCK_SECTIONS>
	<FOLDER>
		SS_NAME='AttrList'
		DESCR='generates list of the element\'s attributes'
		<BODY>
			<ATTR_ITER>
				DESCR='case of XSD element'
				COND='belongsToNS ("xs")'
				BREAK_PARENT_BLOCK='when-executed'
				SCOPE='enumerated-attrs'
				EXCL_PASSED=false
				FMT={
					sec.outputStyle='text-par';
					txtfl.delimiter.type='none';
				}
				<BODY>
					<AREA_SEC>
						COND='iterator.attr.name.startsWith ("xml") && {
  name = iterator.attr.name;
  name.startsWith ("xml:") || name == "xmlns" ||
  name.startsWith ("xmlns:")
}'
						BREAK_PARENT_BLOCK='when-executed'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<DELIMITER>
									</DELIMITER>
									<DATA_CTRL>
										FORMULA='iterator.attr.name'
										FMT={
											text.style='cs9';
										}
									</DATA_CTRL>
									<TEXT_CTRL>
										TEXT='="'
										FMT={
											text.style='cs7';
										}
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='iterator.attr.value'
										FMT={
											text.style='cs11';
										}
									</DATA_CTRL>
									<TEXT_CTRL>
										TEXT='"'
										FMT={
											text.style='cs7';
										}
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<DELIMITER>
									</DELIMITER>
									<DATA_CTRL>
										FORMULA='iterator.attr.name'
										FMT={
											text.style='cs8';
										}
									</DATA_CTRL>
									<TEXT_CTRL>
										TEXT='="'
										FMT={
											text.style='cs7';
										}
									</TEXT_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='AttrValue (XSD)'
										FMT={
											text.style='cs10';
											text.hlink.fmt='style';
											text.hlink.style='cs3';
										}
									</SS_CALL_CTRL>
									<TEXT_CTRL>
										TEXT='"'
										FMT={
											text.style='cs7';
										}
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</ATTR_ITER>
			<ATTR_ITER>
				DESCR='case of WSDL element'
				COND='belongsToNS ("wsdl;soap;soap12;http;mime")'
				BREAK_PARENT_BLOCK='when-executed'
				SCOPE='enumerated-attrs'
				EXCL_PASSED=false
				FMT={
					sec.outputStyle='text-par';
					txtfl.delimiter.type='none';
				}
				<BODY>
					<AREA_SEC>
						COND='iterator.attr.name.startsWith ("xml") && {
  name = iterator.attr.name;
  name.startsWith ("xml:") || name == "xmlns" ||
  name.startsWith ("xmlns:")
}'
						BREAK_PARENT_BLOCK='when-executed'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<DELIMITER>
									</DELIMITER>
									<DATA_CTRL>
										FORMULA='iterator.attr.name'
										FMT={
											text.style='cs9';
										}
									</DATA_CTRL>
									<TEXT_CTRL>
										TEXT='="'
										FMT={
											text.style='cs7';
										}
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='iterator.attr.value'
										FMT={
											text.style='cs11';
										}
									</DATA_CTRL>
									<TEXT_CTRL>
										TEXT='"'
										FMT={
											text.style='cs7';
										}
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<DELIMITER>
									</DELIMITER>
									<DATA_CTRL>
										FORMULA='iterator.attr.name'
										FMT={
											text.style='cs8';
										}
									</DATA_CTRL>
									<TEXT_CTRL>
										TEXT='="'
										FMT={
											text.style='cs7';
										}
									</TEXT_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='AttrValue (WSDL)'
										FMT={
											text.style='cs10';
											text.hlink.fmt='style';
											text.hlink.style='cs3';
										}
									</SS_CALL_CTRL>
									<TEXT_CTRL>
										TEXT='"'
										FMT={
											text.style='cs7';
										}
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</ATTR_ITER>
			<ATTR_ITER>
				DESCR='any other namespace'
				SCOPE='enumerated-attrs'
				EXCL_PASSED=false
				FMT={
					sec.outputStyle='text-par';
					txtfl.delimiter.type='none';
				}
				<BODY>
					<AREA_SEC>
						COND='iterator.attr.name.startsWith ("xml") && {
  name = iterator.attr.name;
  name.startsWith ("xml:") || name == "xmlns" ||
  name.startsWith ("xmlns:")
}'
						BREAK_PARENT_BLOCK='when-executed'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<DELIMITER>
									</DELIMITER>
									<DATA_CTRL>
										FORMULA='iterator.attr.name'
										FMT={
											text.style='cs9';
										}
									</DATA_CTRL>
									<TEXT_CTRL>
										TEXT='="'
										FMT={
											text.style='cs7';
										}
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='iterator.attr.value'
										FMT={
											text.style='cs11';
										}
									</DATA_CTRL>
									<TEXT_CTRL>
										TEXT='"'
										FMT={
											text.style='cs7';
										}
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<DELIMITER>
									</DELIMITER>
									<DATA_CTRL>
										FORMULA='iterator.attr.name'
										FMT={
											text.style='cs8';
										}
									</DATA_CTRL>
									<TEXT_CTRL>
										TEXT='="'
										FMT={
											text.style='cs7';
										}
									</TEXT_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='AttrValue'
										FMT={
											text.style='cs10';
											text.hlink.fmt='style';
											text.hlink.style='cs3';
										}
									</SS_CALL_CTRL>
									<TEXT_CTRL>
										TEXT='"'
										FMT={
											text.style='cs7';
										}
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</ATTR_ITER>
		</BODY>
	</FOLDER>
	<FOLDER>
		SS_NAME='AttrValue'
		FMT={
			sec.outputStyle='text-par';
		}
		<BODY>
			<AREA_SEC>
				DESCR='case of single value'
				COND='! iterator.attr.multiValued'
				BREAK_PARENT_BLOCK='when-executed'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								FORMULA='encodeXMLChars (
  iterator.value.toString(),
  true, true, true, false
)'
								FMT={
									text.hlink.fmt='style';
									text.hlink.style='cs3';
								}
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<ATTR_ITER>
				DESCR='case of list value'
				SCOPE='current-attr-values'
				FMT={
					txtfl.delimiter.type='space';
				}
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<DATA_CTRL>
										FORMULA='encodeXMLChars (
  iterator.value.toString(),
  true, true, true, false
)'
										FMT={
											text.hlink.fmt='style';
											text.hlink.style='cs3';
										}
									</DATA_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</ATTR_ITER>
		</BODY>
	</FOLDER>
	<FOLDER>
		SS_NAME='AttrValue (WSDL)'
		FMT={
			sec.outputStyle='text-par';
		}
		<BODY>
			<AREA_SEC>
				DESCR='case of single value'
				COND='! iterator.attr.multiValued'
				BREAK_PARENT_BLOCK='when-executed'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								FORMULA='encodeXMLChars (
  iterator.value.toString(),
  true, true, true, false
)'
								FMT={
									text.hlink.fmt='style';
									text.hlink.style='cs3';
								}
								<DOC_HLINK>
									DESCR='WSDL definition name'
									COND='iterator.attr.name == "name"'
									ALT_HLINK
									HKEYS={
										'contextElement.id';
										'"detail"';
									}
								</DOC_HLINK>
								<DOC_HLINK>
									DESCR='reference to wsdl-message'
									COND='iterator.attr.name == "message"'
									ALT_HLINK
									HKEYS={
										'findElementByKey (
  "wsdl-messages",
  toQName (iterator.attr.value),
  BooleanQuery (checkElementByKey (
    "main-xmls",
    getXMLDocument().id,
    getElementParam("$mainXML")
  ))
).id';
										'Array ("detail", "xml-source-location")';
									}
								</DOC_HLINK>
								<DOC_HLINK>
									DESCR='reference to wsdl-message-part'
									COND='iterator.attr.name == "part"'
									ALT_HLINK
									HKEYS={
										'instanceOf("mime:mimeXml | mime:content") ?
{
  bindingOprIOF = findAncestor ("wsdl:input%wsdl:tBindingOperationMessage |
                                 wsdl:output%wsdl:tBindingOperationMessage |
                                 wsdl:fault%wsdl:tBindingOperationFault");

  portTypeOprIOF = findElementByKey ("wsdl-bound-operations", bindingOprIOF.id);
  messageQName = portTypeOprIOF.getAttrQNameValue ("message");
} : {
  messageQName = getAttrQNameValue ("message");
};

findElementByKey (
  "wsdl-messages",
  messageQName,
  BooleanQuery (checkElementByKey (
    "main-xmls",
    getXMLDocument().id,
    getElementParam("$mainXML")
  ))
).id;';
										'"message-part"';
										'iterator.attr.value';
									}
								</DOC_HLINK>
								<DOC_HLINK>
									DESCR='reference to xsd-type'
									COND='iterator.attr.name == "type"'
									MATCHING_ETS={'wsdl:binding';'wsdl:part'}
									ALT_HLINK
									HKEYS={
										'findElementByKey (
  "xsd-types",
  toQName (iterator.attr.value),
  BooleanQuery (checkElementByKey (
    "main-xmls",
    getXMLDocument().id,
    getElementParam("$mainXML")
  ))
).id';
										'Array ("detail", "xml-source-location")';
									}
								</DOC_HLINK>
								<DOC_HLINK>
									DESCR='reference to global xsd-element'
									COND='iterator.attr.name == "element"'
									MATCHING_ET='wsdl:part'
									ALT_HLINK
									HKEYS={
										'findElementByKey (
  "xsd-global-elements",
  toQName(iterator.attr.value),
  BooleanQuery (checkElementByKey (
    "main-xmls",
    getXMLDocument().id,
    getElementParam("$mainXML")
  ))
).id';
										'Array ("detail", "xml-source-location")';
									}
								</DOC_HLINK>
								<DOC_HLINK>
									DESCR='reference to wsdl-portType'
									COND='iterator.attr.name == "type"'
									MATCHING_ET='wsdl:binding'
									ALT_HLINK
									HKEYS={
										'findElementByKey (
  "wsdl-portTypes",
  toQName (iterator.attr.value),
  BooleanQuery (checkElementByKey (
    "main-xmls",
    getXMLDocument().id,
    getElementParam("$mainXML")
  ))
).id';
										'Array ("detail", "xml-source-location")';
									}
								</DOC_HLINK>
								<DOC_HLINK>
									DESCR='reference to wsdl-binding'
									COND='iterator.attr.name == "binding"'
									MATCHING_ET='wsdl:port'
									ALT_HLINK
									HKEYS={
										'findElementByKey (
  "wsdl-bindings",
  toQName (iterator.attr.value),
  BooleanQuery (checkElementByKey (
    "main-xmls",
    getXMLDocument().id,
    getElementParam("$mainXML")
  ))
).id';
										'Array ("detail", "xml-source-location")';
									}
								</DOC_HLINK>
								<DOC_HLINK>
									DESCR='when the attribute value is URI of a documented namespace'
									COND='iterator.attr.name == "targetNamespace"'
									MATCHING_ET='wsdl:definitions'
									ALT_HLINK
									HKEYS={
										'iterator.attr.value.toString()';
										'"detail"';
									}
								</DOC_HLINK>
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<ATTR_ITER>
				DESCR='case of list value'
				SCOPE='current-attr-values'
				FMT={
					txtfl.delimiter.type='space';
				}
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<DATA_CTRL>
										FORMULA='encodeXMLChars (
  iterator.value.toString(),
  true, true, true, false
)'
										FMT={
											text.hlink.fmt='style';
											text.hlink.style='cs3';
										}
										<DOC_HLINK>
											DESCR='reference to wsdl-message-parts'
											COND='iterator.attr.name == "parts"'
											ALT_HLINK
											HKEYS={
												'instanceOf("soap:body | soap12:body") ?
{
  bindingOprIOF = findAncestor ("wsdl:input%wsdl:tBindingOperationMessage |
                                 wsdl:output%wsdl:tBindingOperationMessage |
                                 wsdl:fault%wsdl:tBindingOperationFault");

  portTypeOprIOF = findElementByKey ("wsdl-bound-operations", bindingOprIOF.id);
  messageQName = portTypeOprIOF.getAttrQNameValue ("message");
} : {
  messageQName = null;
};

findElementByKey (
  "wsdl-messages",
  messageQName,
  BooleanQuery (checkElementByKey (
    "main-xmls",
    getXMLDocument().id,
    getElementParam("$mainXML")
  ))
).id;';
												'"message-part"';
												'iterator.value';
											}
										</DOC_HLINK>
									</DATA_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</ATTR_ITER>
		</BODY>
	</FOLDER>
	<FOLDER>
		SS_NAME='AttrValue (XSD)'
		FMT={
			sec.outputStyle='text-par';
		}
		<BODY>
			<AREA_SEC>
				DESCR='case of single value'
				COND='! iterator.attr.multiValued'
				BREAK_PARENT_BLOCK='when-executed'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								FORMULA='encodeXMLChars (
  iterator.value.toString(),
  true, true, true, false
)'
								FMT={
									text.hlink.fmt='style';
									text.hlink.style='cs3';
								}
								<DOC_HLINK>
									DESCR='type of element / attribute / list item'
									COND='name = iterator.attr.name;
name == "type" || name == "itemType"'
									MATCHING_ETS={'xs:%attribute';'xs:%element';'xs:list'}
									ALT_HLINK
									HKEYS={
										'findElementByKey (
  "xsd-types",
  toQName (iterator.attr.value),
  BooleanQuery (checkElementByKey (
    "main-xmls",
    getXMLDocument().id,
    getElementParam("$mainXML")
  ))
).id';
										'Array ("detail", "xml-source-location")';
									}
								</DOC_HLINK>
								<DOC_HLINK>
									DESCR='base type'
									COND='iterator.attr.name == "base"'
									MATCHING_ETS={'xs:%extensionType';'xs:%restrictionType';'xs:restriction'}
									ALT_HLINK
									HKEYS={
										'qName = toQName (iterator.attr.value);

findElementByKey (
  "xsd-types",
  hasServiceAttr ("redefined") ?
    HashKey (qName, getServiceAttr ("redefined")) : qName,
  BooleanQuery (checkElementByKey (
    "main-xmls",
    getXMLDocument().id,
    getElementParam("$mainXML")
  ))
).id';
										'Array ("detail", "xml-source-location")';
									}
								</DOC_HLINK>
								<DOC_HLINK>
									DESCR='reference to a global element/attribute or element/attribute group'
									COND='iterator.attr.name == "ref" ||
iterator.attr.name == "substitutionGroup" && instanceOf ("xs:element")'
									ALT_HLINK
									HKEYS={
										'qName = toQName(iterator.attr.value);

filter = BooleanQuery (checkElementByKey (
           "main-xmls",
           getXMLDocument().id,
           getElementParam("$mainXML"))
         );

instanceOf ("xs:%element") ?
  findElementByKey ("xsd-global-elements", qName, filter).id :
instanceOf ("xs:%attribute") ?
  findElementByKey ("xsd-global-attributes", qName, filter).id :
instanceOf ("xs:%groupRef") ?
  findElementByKey ("xsd-groups", hasServiceAttr ("redefined") ? HashKey (qName, getServiceAttr ("redefined")) : qName, filter).id :
instanceOf ("xs:%attributeGroupRef") ?
  findElementByKey ("xsd-attributeGroups", hasServiceAttr ("redefined") ? HashKey (qName, getServiceAttr ("redefined")) : qName, filter).id;';
										'Array ("detail", "xml-source-location")';
									}
								</DOC_HLINK>
								<DOC_HLINK>
									DESCR='component name'
									COND='iterator.attr.name == "name"'
									MATCHING_ETS={'xs:%attribute';'xs:%element';'xs:attributeGroup';'xs:complexType';'xs:group';'xs:simpleType'}
									ALT_HLINK
									HKEYS={
										'contextElement.id';
										'Array ("def", "detail")

// "def" applies only to elements and attributes';
									}
								</DOC_HLINK>
								<DOC_HLINK>
									DESCR='Name of a local element; if processing reached here, such an element is neither documented locally nor globaly directly. However, it may be still documented globally via a unifier. Try to link to that documentation.'
									COND='iterator.attr.name == "name"'
									MATCHING_ET='xs:%localElement'
									ALT_HLINK
									HKEYS={
										'findElementByKey ("xsd-globally-documented-local-elements", contextElement.id).id';
										'"detail"';
									}
								</DOC_HLINK>
								<DOC_HLINK>
									DESCR='when the attribute value is URI of a documented namespace'
									COND='iterator.attr.name == "targetNamespace" && instanceOf ("xs:schema")
||
iterator.attr.name == "namespace" && instanceOf ("xs:import")'
									ALT_HLINK
									HKEYS={
										'iterator.attr.value.toString()';
										'"detail"';
									}
								</DOC_HLINK>
								<DOC_HLINK>
									DESCR='when the attribute value is URI of a documented schema'
									COND='attrName = iterator.attr.name;
attrName == "schemaLocation" && 
  instanceOf ("xs:import | xs:include | xs:redefine")
||
attrName == "source" && instanceOf ("xs:documentation")'
									ALT_HLINK
									HKEYS={
										'uri = resolveURI (
  iterator.attr.value.toString(),
  getXMLDocument().getAttrStringValue("xmlURI")
);

findXMLDocument(uri)->findChild("xs:schema")->id';
										'"detail"';
									}
								</DOC_HLINK>
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<ATTR_ITER>
				DESCR='case of list value'
				SCOPE='current-attr-values'
				FMT={
					txtfl.delimiter.type='space';
				}
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<DATA_CTRL>
										FORMULA='encodeXMLChars (
  iterator.value.toString(),
  true, true, true, false
)'
										FMT={
											text.hlink.fmt='style';
											text.hlink.style='cs3';
										}
										<DOC_HLINK>
											DESCR='union member types'
											COND='iterator.attr.name == "memberTypes"'
											MATCHING_ET='xs:union'
											HKEYS={
												'findElementByKey (
  "xsd-types",
  toQName (iterator.value),
  BooleanQuery (checkElementByKey (
    "main-xmls",
    getXMLDocument().id,
    getElementParam("$mainXML")
  ))
).id';
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
		</BODY>
	</FOLDER>
	<FOLDER>
		SS_NAME='Node'
		DESCR='This stock-section processes a node which may contain similar nodes within itself'
		<BODY>
			<FOLDER>
				DESCR='case of element node'
				COND='! contextElement.pseudoElement'
				BREAK_PARENT_BLOCK='when-executed'
				<HTARGET>
					COND='getBooleanParam("$bookmark.xmlns") && hasChild("#NAMESPACE")'
					HKEYS={
						'contextElement.id';
						'"xmlns"';
					}
				</HTARGET>
				<HTARGET>
					COND='getBooleanParam("$bookmark.elements") && 
(
  belongsToNS("xs") &&
  (
    instanceOf ("xs:%element | xs:%attribute | xs:%complexType |
                 xs:simpleType | xs:group | xs:attributeGroup |
                 xs:any | xs:anyAttribute | xs:documentation | xs:appinfo |
                 xs:import | xs:include | xs:redefine")
    ||
    instanceOf ("xs:complexContent") && getAttrBooleanValue("mixed")
    ||
    instanceOf ("xs:%simpleType") && contextElement.parent.instanceOf ("xs:%element | xs:%attribute")
    ||
    instanceOf ("xs:schema") && contextElement.parent.instanceOf ("wsdl:types")
  )
  ||
  belongsToNS("wsdl") &&
  instanceOf ("wsdl:service | wsdl:port | wsdl:portType | wsdl:binding |
               wsdl:operation%wsdl:tOperation | wsdl:operation%wsdl:tBindingOperation |
               wsdl:message | wsdl:part |
               wsdl:import")
)'
					HKEYS={
						'contextElement.id';
						'"xml-source-location"';
					}
				</HTARGET>
				<BODY>
					<AREA_SEC>
						DESCR='this is executed only when the element contains a short text (in order to produce a single-line output)'
						COND='countChildren ("*") == 1 &&
(text = getValueByLPath ("#TEXT")) != null && {
  s = text.toString();
  s.len() < 50 && ! s.contains ("\\n")
}'
						BREAK_PARENT_BLOCK='when-executed'
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='none';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='<'
										FMT={
											text.style='cs7';
										}
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='contextElement.name'
										FMT={
											text.style='cs8';
										}
									</DATA_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='AttrList'
									</SS_CALL_CTRL>
									<TEXT_CTRL>
										TEXT='>'
										FMT={
											text.style='cs7';
										}
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='encodeXMLChars (
  getValueByLPath ("#TEXT").toString()
)'
										FMT={
											ctrl.option.text.collapseSpaces='true';
											ctrl.option.text.trimSpaces='true';
											text.style='cs10';
										}
									</DATA_CTRL>
									<TEXT_CTRL>
										TEXT='</'
										FMT={
											text.style='cs7';
										}
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='contextElement.name'
										FMT={
											text.style='cs8';
										}
									</DATA_CTRL>
									<TEXT_CTRL>
										TEXT='>'
										FMT={
											text.style='cs7';
										}
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<ELEMENT_ITER>
						DESCR='iterates by the element\'s child nodes -- the case of a complex element'
						BREAK_PARENT_BLOCK='when-output'
						TARGET_ET='<ANY>'
						SCOPE='simple-location-rules'
						RULES={
							'* -> *';
						}
						FILTER='! (instanceOf("xs:annotation") && getBooleanParam("$remove.xsd.anns"))
&&
! (instanceOf("wsdl:documentation") && getBooleanParam("$remove.wsdl.docs"))'
						<BODY>
							<SS_CALL>
								DESCR='calls this stock-section recursively'
								SS_NAME='Node'
								FMT={
									sec.indent.left='8.3';
								}
							</SS_CALL>
						</BODY>
						<HEADER>
							<AREA_SEC>
								<AREA>
									<CTRL_GROUP>
										FMT={
											txtfl.delimiter.type='none';
										}
										<CTRLS>
											<TEXT_CTRL>
												TEXT='<'
												FMT={
													text.style='cs7';
												}
											</TEXT_CTRL>
											<DATA_CTRL>
												FORMULA='contextElement.name'
												FMT={
													text.style='cs8';
												}
											</DATA_CTRL>
											<SS_CALL_CTRL>
												SS_NAME='AttrList'
											</SS_CALL_CTRL>
											<TEXT_CTRL>
												TEXT='>'
												FMT={
													text.style='cs7';
												}
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
										FMT={
											txtfl.delimiter.type='none';
										}
										<CTRLS>
											<TEXT_CTRL>
												TEXT='</'
												FMT={
													text.style='cs7';
												}
											</TEXT_CTRL>
											<DATA_CTRL>
												FORMULA='contextElement.name'
												FMT={
													text.style='cs8';
												}
											</DATA_CTRL>
											<TEXT_CTRL>
												TEXT='>'
												FMT={
													text.style='cs7';
												}
											</TEXT_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</FOOTER>
					</ELEMENT_ITER>
					<AREA_SEC>
						DESCR='this is executed when no child nodes encountered -- the case of a simple element'
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='none';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='<'
										FMT={
											text.style='cs7';
										}
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='contextElement.name'
										FMT={
											text.style='cs8';
										}
									</DATA_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='AttrList'
									</SS_CALL_CTRL>
									<TEXT_CTRL>
										TEXT='/>'
										FMT={
											text.style='cs7';
										}
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</FOLDER>
			<AREA_SEC>
				DESCR='TEXT node'
				MATCHING_ET='#TEXT'
				BREAK_PARENT_BLOCK='when-executed'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								FORMULA='encodeXMLChars (contextElement.value.toString())'
								FMT={
									ctrl.option.text.collapseSpaces='true';
									ctrl.option.text.trimSpaces='true';
									ctrl.option.text.noEmptyOutput='true';
									text.style='cs10';
									text.option.renderNLs='true';
								}
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				DESCR='COMMENT node'
				MATCHING_ET='#COMMENT'
				BREAK_PARENT_BLOCK='when-executed'
				<AREA>
					<CTRL_GROUP>
						FMT={
							txtfl.delimiter.type='none';
						}
						<CTRLS>
							<TEXT_CTRL>
								TEXT='<!--'
								FMT={
									text.style='cs7';
								}
							</TEXT_CTRL>
							<DATA_CTRL>
								ELEMENT_VALUE
								FMT={
									ctrl.option.text.collapseSpaces='true';
									text.style='cs5';
									text.option.renderNLs='true';
								}
							</DATA_CTRL>
							<TEXT_CTRL>
								TEXT='-->'
								FMT={
									text.style='cs7';
								}
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				DESCR='CDATA node'
				MATCHING_ET='#CDATA'
				BREAK_PARENT_BLOCK='when-executed'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='<![CDATA['
								FMT={
									text.style='cs7';
								}
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
					<CTRL_GROUP>
						FMT={
							par.margin.left='8.3';
						}
						<CTRLS>
							<DATA_CTRL>
								ELEMENT_VALUE
								FMT={
									ctrl.option.text.collapseSpaces='true';
									ctrl.option.text.trimSpaces='true';
									text.style='cs10';
									text.option.renderNLs='true';
								}
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT=']]>'
								FMT={
									text.style='cs7';
								}
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				DESCR='Processing Instruction node'
				MATCHING_ET='#PI'
				<AREA>
					<CTRL_GROUP>
						FMT={
							txtfl.delimiter.type='none';
						}
						<CTRLS>
							<TEXT_CTRL>
								TEXT='<?'
								FMT={
									text.style='cs7';
								}
							</TEXT_CTRL>
							<DATA_CTRL>
								ATTR='target'
								FMT={
									text.style='cs7';
								}
							</DATA_CTRL>
							<DELIMITER>
							</DELIMITER>
							<DATA_CTRL>
								ELEMENT_VALUE
								FMT={
									text.style='cs7';
								}
							</DATA_CTRL>
							<TEXT_CTRL>
								TEXT='?>'
								FMT={
									text.style='cs7';
								}
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</FOLDER>
</STOCK_SECTIONS>
CHECKSUM='X0bDe?NhFaMSwGZeDYorlfyoOWWEW9mXsvAyeFhw3zE'
</DOCFLEX_TEMPLATE>