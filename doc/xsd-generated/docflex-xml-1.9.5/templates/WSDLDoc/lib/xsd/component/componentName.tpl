<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2010-12-18 09:42:02'
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
		param.name='$linkDestKeys';
		param.type='string';
		param.list='true';
		param.defaultValue.expr='Array ("detail", "def", "xml-source-location")';
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
		param.name='$redefFull';
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
		param.name='show.localElementExt';
		param.title='Local Element Extensions';
		param.type='enum';
		param.enum.values='always;repeating;never';
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
		style.name='Name Modifier';
		style.id='cs3';
		text.font.name='Verdana';
		text.font.size='7';
		text.color.foreground='#B2B2B2';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s1';
		style.default='true';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs2';
}
<ROOT>
	<AREA_SEC>
		DESCR='case of global element or global complexType'
		MATCHING_ETS={'xs:complexType';'xs:element'}
		BREAK_PARENT_BLOCK='when-executed'
		FMT={
			par.option.nowrap='true';
		}
		<AREA>
			<CTRL_GROUP>
				FMT={
					txtfl.delimiter.type='none';
				}
				<CTRLS>
					<DATA_CTRL>
						COND='! getAttrBooleanValue ("abstract")'
						FORMULA='toXMLName (
  findAncestor ("xs:schema").getServiceAttr("targetNamespace").toString(),
  getAttrStringValue("name"),
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
  findAncestor ("xs:schema").getServiceAttr("targetNamespace").toString(),
  getAttrStringValue("name"),
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
					<SS_CALL_CTRL>
						COND='hasServiceAttr ("redefinition")'
						SS_NAME='redefinition'
						FMT={
							text.style='cs3';
							text.font.style.bold='false';
						}
					</SS_CALL_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		DESCR='case of a local element'
		MATCHING_ET='xs:%localElement'
		BREAK_PARENT_BLOCK='when-executed'
		<AREA>
			<CTRL_GROUP>
				FMT={
					txtfl.delimiter.type='none';
				}
				<CTRLS>
					<DATA_CTRL>
						FORMULA='name = getAttrStringValue("name");
schema = findAncestor ("xs:schema");

(hasAttr("form") ? getAttrValue("form") : 
   schema.getAttrValue ("elementFormDefault")) == "qualified"
?
  toXMLName (
    schema.getServiceAttr("targetNamespace").toString(),
    name, 
    getArrayParam("$xmlContexts")
  )
: name'
						<DOC_HLINK>
							TITLE_EXPR='getBooleanParam("show.linkTitle") ? callStockSection("Link Title") : ""'
							TARGET_FRAME_EXPR='getStringParam("$targetFrame")'
							HKEYS={
								'contextElement.id';
								'getArrayParam("$linkDestKeys")';
							}
						</DOC_HLINK>
					</DATA_CTRL>
					<TEMPLATE_CALL_CTRL>
						COND='hasParamValue("show.localElementExt", "always")
||
hasParamValue("show.localElementExt", "repeating") &&
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
                    getElementParam("$mainXML"))
                  );

  countElementsByKey ("xsd-global-elements", qName, mainXMLFilter) +
  countElementsByKey ("xsd-local-elements", qName, mainXMLFilter) > 1
}'
						TEMPLATE_FILE='../element/localElementExt.tpl'
						PASSED_PARAMS={
							'$targetFrame','"detailFrame"';
						}
						FMT={
							text.style='cs3';
							text.font.style.bold='false';
						}
					</TEMPLATE_CALL_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		DESCR='any other (global) component'
		<AREA>
			<CTRL_GROUP>
				FMT={
					txtfl.delimiter.type='none';
				}
				<CTRLS>
					<DATA_CTRL>
						FORMULA='toXMLName (
  findAncestor ("xs:schema").getServiceAttr("targetNamespace").toString(),
  getAttrStringValue("name"),
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
					<SS_CALL_CTRL>
						COND='hasServiceAttr ("redefinition")'
						SS_NAME='redefinition'
						FMT={
							text.style='cs3';
							text.font.style.bold='false';
						}
					</SS_CALL_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
</ROOT>
<STOCK_SECTIONS>
	<TEMPLATE_CALL>
		SS_NAME='Link Title'
		TEMPLATE_FILE='componentLinkTitle.tpl'
	</TEMPLATE_CALL>
	<FOLDER>
		SS_NAME='redefinition'
		<BODY>
			<AREA_SEC>
				COND='getBooleanParam("$redefFull")'
				BREAK_PARENT_BLOCK='when-executed'
				FMT={
					sec.outputStyle='text-par';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT=' (redefinition'
							</TEXT_CTRL>
							<DELIMITER>
								FMT={
									txtfl.delimiter.type='nbsp';
								}
							</DELIMITER>
							<DATA_CTRL>
								COND='getServiceAttr("redefinition").toInt() > 0'
								FORMULA='getServiceAttr ("redefinition")'
							</DATA_CTRL>
							<DELIMITER>
								FMT={
									txtfl.delimiter.type='none';
								}
							</DELIMITER>
							<TEXT_CTRL>
								TEXT=')'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				FMT={
					sec.outputStyle='text-par';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT=' (redef'
							</TEXT_CTRL>
							<DATA_CTRL>
								COND='getServiceAttr("redefinition").toInt() > 0'
								FORMULA='getServiceAttr ("redefinition")'
							</DATA_CTRL>
							<TEXT_CTRL>
								TEXT=')'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</FOLDER>
</STOCK_SECTIONS>
CHECKSUM='yL1EZ+ayPRtuuK0PfBlqdmUifpFmfZWLzT?xUpSlxjg'
</DOCFLEX_TEMPLATE>