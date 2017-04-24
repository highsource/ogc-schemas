<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2005-01-18 01:00:00'
LAST_UPDATE='2014-07-05 20:02:51'
DESIGNER_TOOL='DocFlex SDK 1.x'
DESIGNER_LICENSE_TYPE='Filigris Works Team'
APP_ID='docflex-xml-xsddoc2'
APP_NAME='DocFlex/XML XSDDoc'
APP_VER='2.8.1'
APP_AUTHOR='Copyright © 2005-2014 Filigris Works, Leonid Rudy Softwareprodukte. All rights reserved.'
TEMPLATE_TYPE='DocumentTemplate'
DSM_TYPE_ID='xsddoc'
ROOT_ET='<ANY>'
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$mainXSD';
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
		param.name='$remove.anns';
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
	CHAR_STYLE={
		style.name='Hyperlink (blended in)';
		style.id='cs3';
		text.decor.underline='true';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s1';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='XML Source';
		style.id='cs4';
		text.font.name='Verdana';
		text.font.size='8';
	}
	CHAR_STYLE={
		style.name='XML Source Attribute Name';
		style.id='cs5';
		text.font.name='Verdana';
		text.font.size='8';
		text.color.foreground='#990000';
	}
	CHAR_STYLE={
		style.name='XML Source Attribute Name (Reserved)';
		style.id='cs6';
		text.font.name='Verdana';
		text.font.size='8';
		text.color.foreground='#FF0000';
	}
	CHAR_STYLE={
		style.name='XML Source Attribute Value';
		style.id='cs7';
		text.font.name='Verdana';
		text.font.size='7';
		text.font.style.bold='true';
		text.color.foreground='#000000';
	}
	CHAR_STYLE={
		style.name='XML Source Attribute Value (Reserved)';
		style.id='cs8';
		text.font.name='Verdana';
		text.font.size='7';
		text.font.style.bold='true';
		text.color.foreground='#FF0000';
	}
	CHAR_STYLE={
		style.name='XML Source Attribute Value Markup';
		style.id='cs9';
		text.font.name='Verdana';
		text.font.size='8';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='XML Source CDATA';
		style.id='cs10';
		text.font.name='Verdana';
		text.font.size='7';
		text.font.style.bold='true';
		text.color.foreground='#000000';
	}
	CHAR_STYLE={
		style.name='XML Source CDATA Markup';
		style.id='cs11';
		text.font.name='Verdana';
		text.font.size='8';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='XML Source Comment';
		style.id='cs12';
		text.font.name='Courier New';
		text.font.size='8';
		text.color.foreground='#4D4D4D';
	}
	CHAR_STYLE={
		style.name='XML Source Comment Markup';
		style.id='cs13';
		text.font.name='Verdana';
		text.font.size='8';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='XML Source Element Name';
		style.id='cs14';
		text.font.name='Verdana';
		text.font.size='8';
		text.color.foreground='#990000';
	}
	CHAR_STYLE={
		style.name='XML Source Element Value';
		style.id='cs15';
		text.font.name='Verdana';
		text.font.size='7';
		text.font.style.bold='true';
		text.color.foreground='#000000';
	}
	CHAR_STYLE={
		style.name='XML Source Markup';
		style.id='cs16';
		text.font.name='Verdana';
		text.font.size='8';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='XML Source Processing Instruction';
		style.id='cs17';
		text.font.name='Verdana';
		text.font.size='8';
		text.color.foreground='#0000FF';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
}
<ROOT>
	<SS_CALL>
		SS_NAME='Node'
	</SS_CALL>
</ROOT>
<STOCK_SECTIONS>
	<ATTR_ITER>
		SS_NAME='AttrList'
		DESCR='generates list of the element\'s attributes'
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
								FMT={
									text.style='cs4';
								}
							</DELIMITER>
							<DATA_CTRL>
								FORMULA='iterator.attr.name'
								FMT={
									text.style='cs6';
								}
							</DATA_CTRL>
							<TEXT_CTRL>
								TEXT='="'
								FMT={
									text.style='cs16';
								}
							</TEXT_CTRL>
							<DATA_CTRL>
								FORMULA='iterator.attr.value'
								FMT={
									text.style='cs8';
								}
							</DATA_CTRL>
							<TEXT_CTRL>
								TEXT='"'
								FMT={
									text.style='cs16';
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
								FMT={
									text.style='cs4';
								}
							</DELIMITER>
							<DATA_CTRL>
								FORMULA='iterator.attr.name'
								FMT={
									text.style='cs5';
								}
							</DATA_CTRL>
							<TEXT_CTRL>
								TEXT='="'
								FMT={
									text.style='cs16';
								}
							</TEXT_CTRL>
							<SS_CALL_CTRL>
								SS_NAME='AttrValue'
								FMT={
									text.style='cs7';
									text.hlink.fmt='style';
									text.hlink.style='cs3';
								}
							</SS_CALL_CTRL>
							<TEXT_CTRL>
								TEXT='"'
								FMT={
									text.style='cs16';
								}
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</ATTR_ITER>
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
								<DOC_HLINK>
									DESCR='type of element / attribute / list item'
									COND='name = iterator.attr.name;
name == "type" || name == "itemType"'
									MATCHING_ETS={'xs:%attribute';'xs:%element';'xs:list'}
									ALT_HLINK
									HKEYS={
										'findElementByKey (
  "types",
  toQName (iterator.attr.value),
  BooleanQuery (checkElementByKey (
    "main-xsds",
    getXMLDocument().id,
    getElementParam("$mainXSD")
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
  "types",
  hasServiceAttr ("redefined") ?
    HashKey (qName, getServiceAttr ("redefined")) : qName,
  BooleanQuery (checkElementByKey (
    "main-xsds",
    getXMLDocument().id,
    getElementParam("$mainXSD")
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
           "main-xsds",
           getXMLDocument().id,
           getElementParam("$mainXSD"))
         );

instanceOf ("xs:%element") ?
  findElementByKey ("global-elements", qName, filter).id :
instanceOf ("xs:%attribute") ?
  findElementByKey ("global-attributes", qName, filter).id :
instanceOf ("xs:%groupRef") ?
  findElementByKey ("groups", hasServiceAttr ("redefined") ? HashKey (qName, getServiceAttr ("redefined")) : qName, filter).id :
instanceOf ("xs:%attributeGroupRef") ?
  findElementByKey ("attributeGroups", hasServiceAttr ("redefined") ? HashKey (qName, getServiceAttr ("redefined")) : qName, filter).id;';
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
										'findElementByKey ("globally-documented-local-elements", contextElement.id).id';
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
  "types",
  toQName (iterator.value),
  BooleanQuery (checkElementByKey (
    "main-xsds",
    getXMLDocument().id,
    getElementParam("$mainXSD")
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
  instanceOf ("xs:import | xs:include | xs:redefine |
    xs:%element | xs:%attribute | xs:%complexType |
    xs:simpleType | xs:group | xs:attributeGroup |
    xs:any | xs:anyAttribute | xs:documentation | xs:appinfo")
  ||
  instanceOf ("xs:complexContent") &&
  getAttrBooleanValue("mixed")
  ||
  instanceOf ("xs:%simpleType") &&
  contextElement.parent.instanceOf ("xs:%element | xs:%attribute")
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
											text.style='cs16';
										}
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='contextElement.name'
										FMT={
											text.style='cs14';
										}
									</DATA_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='AttrList'
									</SS_CALL_CTRL>
									<TEXT_CTRL>
										TEXT='>'
										FMT={
											text.style='cs16';
										}
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='encodeXMLChars (
  getValueByLPath ("#TEXT").toString()
)'
										FMT={
											ctrl.option.text.collapseSpaces='true';
											ctrl.option.text.trimSpaces='true';
											text.style='cs15';
										}
									</DATA_CTRL>
									<TEXT_CTRL>
										TEXT='</'
										FMT={
											text.style='cs16';
										}
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='contextElement.name'
										FMT={
											text.style='cs14';
										}
									</DATA_CTRL>
									<TEXT_CTRL>
										TEXT='>'
										FMT={
											text.style='cs16';
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
						FILTER='! (instanceOf("xs:annotation") && getBooleanParam("$remove.anns"))'
						<BODY>
							<SS_CALL>
								DESCR='calls this stock-section recursively'
								SS_NAME='Node'
								FMT={
									sec.indent.left='9';
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
													text.style='cs16';
												}
											</TEXT_CTRL>
											<DATA_CTRL>
												FORMULA='contextElement.name'
												FMT={
													text.style='cs14';
												}
											</DATA_CTRL>
											<SS_CALL_CTRL>
												SS_NAME='AttrList'
											</SS_CALL_CTRL>
											<TEXT_CTRL>
												TEXT='>'
												FMT={
													text.style='cs16';
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
													text.style='cs16';
												}
											</TEXT_CTRL>
											<DATA_CTRL>
												FORMULA='contextElement.name'
												FMT={
													text.style='cs14';
												}
											</DATA_CTRL>
											<TEXT_CTRL>
												TEXT='>'
												FMT={
													text.style='cs16';
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
											text.style='cs16';
										}
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='contextElement.name'
										FMT={
											text.style='cs14';
										}
									</DATA_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='AttrList'
									</SS_CALL_CTRL>
									<TEXT_CTRL>
										TEXT='/>'
										FMT={
											text.style='cs16';
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
									text.style='cs15';
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
									text.style='cs13';
								}
							</TEXT_CTRL>
							<DATA_CTRL>
								ELEMENT_VALUE
								FMT={
									ctrl.option.text.collapseSpaces='true';
									text.style='cs12';
									text.option.renderNLs='true';
								}
							</DATA_CTRL>
							<TEXT_CTRL>
								TEXT='-->'
								FMT={
									text.style='cs13';
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
									text.style='cs11';
								}
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
					<CTRL_GROUP>
						FMT={
							text.style='cs10';
							par.margin.left='9';
						}
						<CTRLS>
							<DATA_CTRL>
								ELEMENT_VALUE
								FMT={
									ctrl.option.text.collapseSpaces='true';
									ctrl.option.text.trimSpaces='true';
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
									text.style='cs11';
								}
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				DESCR='Processing Instruction node'
				MATCHING_ET='#PI'
				FMT={
					text.style='cs17';
				}
				<AREA>
					<CTRL_GROUP>
						FMT={
							txtfl.delimiter.type='none';
						}
						<CTRLS>
							<TEXT_CTRL>
								TEXT='<?'
							</TEXT_CTRL>
							<DATA_CTRL>
								ATTR='target'
							</DATA_CTRL>
							<DELIMITER>
							</DELIMITER>
							<DATA_CTRL>
								ELEMENT_VALUE
							</DATA_CTRL>
							<TEXT_CTRL>
								TEXT='?>'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</FOLDER>
</STOCK_SECTIONS>
CHECKSUM='Bgu7rhmh0bCv5V58Lxmj1ClQJKNY0JYp1aPtRhXN+Tc'
</DOCFLEX_TEMPLATE>