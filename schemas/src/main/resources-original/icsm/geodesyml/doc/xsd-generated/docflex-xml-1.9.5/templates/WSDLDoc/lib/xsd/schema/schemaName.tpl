<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2012-07-01 05:43:35'
LAST_UPDATE='2014-07-05 20:02:58'
DESIGNER_TOOL='DocFlex SDK 1.x'
DESIGNER_LICENSE_TYPE='Filigris Works Team'
APP_ID='docflex-xml-wsdldoc'
APP_NAME='DocFlex/XML WSDLDoc'
APP_VER='1.0.b'
APP_AUTHOR='Copyright © 2014 Filigris Works, Leonid Rudy Softwareprodukte. All rights reserved.'
FEATURE_TYPE='pro'
TEMPLATE_TYPE='DocumentTemplate'
DSM_TYPE_ID='wsdldoc'
ROOT_ET='xs:schema'
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$targetFrame';
		param.type='string';
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
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs2';
}
<ROOT>
	<AREA_SEC>
		COND='hasServiceAttr("embedded")'
		BREAK_PARENT_BLOCK='when-executed'
		<AREA>
			<CTRL_GROUP>
				FMT={
					txtfl.delimiter.type='space';
				}
				<CTRLS>
					<DATA_CTRL>
						FORMULA='"Schema" + getServiceAttr("embeddedSchemaNo")'
						<DOC_HLINK>
							TITLE_EXPR='getBooleanParam("show.linkTitle") ? 
  callStockSection("Schema Link Title")
: ""'
							TARGET_FRAME_EXPR='getStringParam("$targetFrame")'
							HKEYS={
								'contextElement.id';
								'"detail"';
							}
						</DOC_HLINK>
					</DATA_CTRL>
					<TEXT_CTRL>
						TEXT='in'
					</TEXT_CTRL>
					<DATA_CTRL>
						FORMULA='getXMLDocument().getAttrStringValue("xmlName")'
						<DOC_HLINK>
							CONTEXT_ELEMENT_EXPR='findAncestor ("wsdl:definitions")'
							MATCHING_ET='wsdl:definitions'
							ALT_HLINK
							TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("WSDL Link Title")
: ""'
							TARGET_FRAME_EXPR='getStringParam("$targetFrame")'
							HKEYS={
								'contextElement.id';
								'"detail"';
							}
						</DOC_HLINK>
						<DOC_HLINK>
							ALT_HLINK
							TARGET_FRAME_EXPR='getStringParam("$targetFrame")'
							HKEYS={
								'getXMLDocument().id';
								'"detail"';
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
						FORMULA='getXMLDocument().getAttrStringValue("xmlName")'
						<DOC_HLINK>
							TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("Schema Link Title")
: ""'
							TARGET_FRAME_EXPR='getStringParam("$targetFrame")'
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
</ROOT>
<STOCK_SECTIONS>
	<TEMPLATE_CALL>
		SS_NAME='Schema Link Title'
		MATCHING_ET='xs:schema'
		TEMPLATE_FILE='schemaLinkTitle.tpl'
	</TEMPLATE_CALL>
	<TEMPLATE_CALL>
		SS_NAME='WSDL Link Title'
		MATCHING_ET='wsdl:definitions'
		TEMPLATE_FILE='../../wsdl/file/wsdlLinkTitle.tpl'
	</TEMPLATE_CALL>
</STOCK_SECTIONS>
CHECKSUM='Ie24grCzOmwiemlEqyDVUme0DHZMcA3Tey6gde077fo'
</DOCFLEX_TEMPLATE>