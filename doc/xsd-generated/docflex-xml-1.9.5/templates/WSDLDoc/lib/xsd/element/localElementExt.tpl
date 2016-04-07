<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2004-06-21 01:50:00'
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
ROOT_ET='xs:%localElement'
DESCR='Prints extension for the local element name which is allows it to be distinguished it from others.

IMPORTANT: The root element passed to this template must be either globaly documented directly (not via a unifier) or not globally documented at all.'
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$linkDestKeys';
		param.type='string';
		param.list='true';
		param.defaultValue.expr='Array ("detail", "xml-source-location")';
	}
	PARAM={
		param.name='$targetFrame';
		param.type='string';
	}
	PARAM={
		param.name='$mainXML';
		param.type='GOMElement';
		param.defaultValue.expr='findElementByKey ("main-xmls", getXMLDocument().id)';
	}
	PARAM={
		param.name='$xmlContexts';
		param.description='Specifies an array of one or several alternative elements that determine the XML document context (i.e. the position on the XML document\'s tree) against which the namespace prefix/URI binding will be resolved.';
		param.type='GOMElement';
		param.list='true';
		param.defaultValue.expr='Array (contextElement)';
	}
	PARAM={
		param.name='gen.doc';
		param.title='Generate Details';
		param.title.style.bold='true';
		param.group='true';
	}
	PARAM={
		param.name='gen.doc.xsd.comp.element.local.unifyByType';
		param.title='Unify local elements by type';
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
</STYLES>
FMT={
	doc.lengthUnits='pt';
}
<ROOT>
	<AREA_SEC>
		DESCR='when the element is included in the content model of only one other element'
		COND='// see "New Context Element"'
		CONTEXT_ELEMENT_EXPR='countElementsByKey ("xsd-containing-elements", contextElement.id) == 1
 ? findElementByKey ("xsd-containing-elements", contextElement.id) : null'
		MATCHING_ET='xs:%element'
		BREAK_PARENT_BLOCK='when-executed'
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='none';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						TEXT=' (in '
					</TEXT_CTRL>
					<SS_CALL_CTRL>
						SS_NAME='Component Name'
						FMT={
							text.hlink.fmt='style';
							text.hlink.style='cs3';
						}
					</SS_CALL_CTRL>
					<SS_CALL_CTRL>
						COND='instanceOf("xs:%localElement") && 
{
  schema = findAncestor ("xs:schema");

  qName = QName (
    ((hasAttr("form") ? getAttrValue("form") :
        schema.getAttrValue ("elementFormDefault")) == "qualified" 
          ? schema.getServiceAttr("targetNamespace").toString() : ""),
    getAttrStringValue("name")
  );

  mainXMLFilter = BooleanQuery (checkElementByKey (
                    "main-xmls",
                    getXMLDocument().id,
                    getElementParam("$mainXML")
                  ));

  countElementsByKey ("xsd-global-elements", qName, mainXMLFilter) +
  countElementsByKey ("xsd-local-elements", qName, mainXMLFilter) > 1
}'
						SS_NAME='Local Name Extension'
					</SS_CALL_CTRL>
					<TEXT_CTRL>
						TEXT=')'
					</TEXT_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		DESCR='otherwise, if the following conditions are satisfied:
- the element has \'type\' attribute
- the unification by type is enabled 
- the element is documented globally'
		COND='getAttrValue("type") != ""
&&
getBooleanParam("gen.doc.xsd.comp.element.local.unifyByType")
&&
checkElementsByKey (
  "xsd-globally-documented-local-elements",
  contextElement.id
)'
		BREAK_PARENT_BLOCK='when-executed'
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='none';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						TEXT=' (type '
					</TEXT_CTRL>
					<SS_CALL_CTRL>
						SS_NAME='Type By QName'
						PARAMS_EXPR='Array (getAttrQNameValue("type"))'
						FMT={
							text.hlink.fmt='style';
							text.hlink.style='cs3';
							txtfl.delimiter.type='text';
							txtfl.delimiter.text=', ';
						}
					</SS_CALL_CTRL>
					<TEXT_CTRL>
						TEXT=')'
					</TEXT_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		DESCR='Otherwise, derive the element name extension from its definition location.

Since this local element is not included in the content model of only one other element, it must be defined within a global complex type or element group. Indeed, a local element can be defined only in three types of locations:

- a global complex type
- a global element group
- an anonymous complex type within another element component.

The last possibility is excluded here because in that case the given local element would be included in the content model of the only other element -- the one in which it is defined.'
		CONTEXT_ELEMENT_EXPR='findAncestor("xs:complexType|xs:group")'
		MATCHING_ETS={'xs:complexType';'xs:group'}
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='none';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						TEXT=' (defined in '
					</TEXT_CTRL>
					<SS_CALL_CTRL>
						SS_NAME='Component Name'
						FMT={
							text.hlink.fmt='style';
							text.hlink.style='cs3';
						}
					</SS_CALL_CTRL>
					<DELIMITER>
					</DELIMITER>
					<TEXT_CTRL>
						MATCHING_ET='xs:complexType'
						TEXT='complexType'
					</TEXT_CTRL>
					<TEXT_CTRL>
						MATCHING_ET='xs:group'
						TEXT='group'
					</TEXT_CTRL>
					<TEXT_CTRL>
						TEXT=')'
					</TEXT_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
</ROOT>
<STOCK_SECTIONS>
	<TEMPLATE_CALL>
		SS_NAME='Component Name'
		DESCR='prints the qualified name of any global schema component and local element (passed as the stock-section context element)'
		TEMPLATE_FILE='../component/componentName.tpl'
		PASSED_PARAMS={
			'show.localElementExt','"never"';
		}
		FMT={
			sec.outputStyle='text-par';
		}
	</TEMPLATE_CALL>
	<TEMPLATE_CALL>
		SS_NAME='Link Title'
		TEMPLATE_FILE='../component/componentLinkTitle.tpl'
	</TEMPLATE_CALL>
	<FOLDER>
		SS_NAME='Local Name Extension'
		MATCHING_ET='xs:%localElement'
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='none';
		}
		<BODY>
			<AREA_SEC>
				DESCR='when the element is included in the content model of only one other element'
				COND='// see "New Context Element"'
				CONTEXT_ELEMENT_EXPR='countElementsByKey ("xsd-containing-elements", contextElement.id) == 1
 ? findElementByKey ("xsd-containing-elements", contextElement.id) : null'
				MATCHING_ET='xs:%element'
				BREAK_PARENT_BLOCK='when-executed'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT=' in '
							</TEXT_CTRL>
							<SS_CALL_CTRL>
								SS_NAME='Component Name'
								FMT={
									text.hlink.fmt='style';
									text.hlink.style='cs3';
								}
							</SS_CALL_CTRL>
							<SS_CALL_CTRL>
								COND='instanceOf("xs:%localElement") && 
{
  schema = findAncestor ("xs:schema");

  qName = QName (
    ((hasAttr("form") ? getAttrValue("form") :
        schema.getAttrValue ("elementFormDefault")) == "qualified" 
          ? schema.getServiceAttr("targetNamespace").toString() : ""),
    getAttrStringValue("name")
  );

  mainXMLFilter = BooleanQuery (checkElementByKey (
                    "main-xmls",
                    getXMLDocument().id,
                    getElementParam("$mainXML")
                  ));

  countElementsByKey ("xsd-global-elements", qName, mainXMLFilter) +
  countElementsByKey ("xsd-local-elements", qName, mainXMLFilter) > 1
}'
								SS_NAME='Local Name Extension'
							</SS_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				DESCR='otherwise, if the following conditions are satisfied:

- the element has \'type\' attribute
- the unification by type is enabled 
- the element is documented globally'
				COND='getAttrValue("type") != ""
&&
getBooleanParam("gen.doc.xsd.comp.element.local.unifyByType")
&&
checkElementsByKey (
  "xsd-globally-documented-local-elements",
  contextElement.id
)'
				BREAK_PARENT_BLOCK='when-executed'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT=' : '
							</TEXT_CTRL>
							<SS_CALL_CTRL>
								SS_NAME='Type By QName'
								PARAMS_EXPR='Array (getAttrQNameValue("type"))'
								FMT={
									text.hlink.fmt='style';
									text.hlink.style='cs3';
									txtfl.delimiter.type='text';
									txtfl.delimiter.text=', ';
								}
							</SS_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				DESCR='otherwise, derive the element name extension from its definition location'
				CONTEXT_ELEMENT_EXPR='findAncestor("xs:complexType|xs:group")'
				MATCHING_ETS={'xs:complexType';'xs:group'}
				FMT={
					txtfl.delimiter.type='none';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT=' defined in '
							</TEXT_CTRL>
							<SS_CALL_CTRL>
								SS_NAME='Component Name'
								FMT={
									text.hlink.fmt='style';
									text.hlink.style='cs3';
								}
							</SS_CALL_CTRL>
							<DELIMITER>
							</DELIMITER>
							<TEXT_CTRL>
								MATCHING_ET='xs:complexType'
								TEXT='complexType'
							</TEXT_CTRL>
							<TEXT_CTRL>
								MATCHING_ET='xs:group'
								TEXT='group'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</FOLDER>
	<FOLDER>
		SS_NAME='Type By QName'
		DESCR='param: QName of the type'
		<BODY>
			<AREA_SEC>
				DESCR='if type can be resolved'
				CONTEXT_ELEMENT_EXPR='findElementByKey (
  "xsd-types",
  stockSection.param.toQName(),
  BooleanQuery (
    checkElementByKey (
      "main-xmls",
      getXMLDocument().id,
      getElementParam("$mainXML")
    )
  )
)'
				MATCHING_ETS={'xs:complexType';'xs:simpleType'}
				BREAK_PARENT_BLOCK='when-executed'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								COND='! getAttrBooleanValue ("abstract")'
								FORMULA='toXMLName (
  stockSection.param.toQName(),
  getArrayParam("$xmlContexts")
)'
								<DOC_HLINK>
									TITLE_EXPR='getBooleanParam("show.linkTitle") ? callStockSection("Link Title") : ""'
									TARGET_FRAME_EXPR='getStringParam("$targetFrame")'
									HKEYS={
										'contextElement.id';
										'getArrayParam("$linkDestKeys")';
									}
								</DOC_HLINK>
							</DATA_CTRL>
							<DATA_CTRL>
								COND='getAttrBooleanValue ("abstract")'
								FORMULA='toXMLName (
  stockSection.param.toQName(),
  getArrayParam("$xmlContexts")
)'
								FMT={
									text.font.style.italic='true';
								}
								<DOC_HLINK>
									TITLE_EXPR='getBooleanParam("show.linkTitle") ? callStockSection("Link Title") : ""'
									TARGET_FRAME_EXPR='getStringParam("$targetFrame")'
									HKEYS={
										'contextElement.id';
										'getArrayParam("$linkDestKeys")';
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
							<DATA_CTRL>
								FORMULA='toXMLName (
  stockSection.param.toQName(),
  getArrayParam("$xmlContexts")
)'
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</FOLDER>
</STOCK_SECTIONS>
CHECKSUM='9cD8ehi6SJCdJDwA3r5EToCGUJu14bZPiR1qBMjh4yc'
</DOCFLEX_TEMPLATE>