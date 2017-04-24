<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2012-06-20 09:26:56'
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
		MATCHING_ETS={'wsdl:binding';'wsdl:message';'wsdl:portType';'wsdl:service';'wsdl:types'}
		BREAK_PARENT_BLOCK='when-executed'
		<AREA>
			<CTRL_GROUP>
				FMT={
					txtfl.delimiter.type='none';
				}
				<CTRLS>
					<DATA_CTRL>
						FORMULA='toXMLName (
  findAncestor ("wsdl:definitions").getAttrStringValue("targetNamespace"),
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
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<DATA_CTRL>
						FORMULA='getAttrValue("name")'
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
</ROOT>
<STOCK_SECTIONS>
	<TEMPLATE_CALL>
		SS_NAME='Link Title'
		TEMPLATE_FILE='defLinkTitle.tpl'
	</TEMPLATE_CALL>
</STOCK_SECTIONS>
CHECKSUM='HWZi3+mIuptshfAMYXQL6+RPO?lp79TWONUZttm5ais'
</DOCFLEX_TEMPLATE>