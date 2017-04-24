<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2012-07-01 01:08:10'
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
		DESCR='case of embedded schema'
		COND='hasServiceAttr("embedded")'
		BREAK_PARENT_BLOCK='when-executed'
		<AREA>
			<CTRL_GROUP>
				FMT={
					txtfl.delimiter.type='space';
				}
				<CTRLS>
					<TEXT_CTRL>
						TEXT='XML Schema for namespace'
					</TEXT_CTRL>
					<DATA_CTRL>
						FORMULA='\'{\' + ((nsURI = getAttrStringValue("targetNamespace")) != "" ? nsURI : "no namespace") + \'}\''
					</DATA_CTRL>
					<TEXT_CTRL>
						TEXT='in'
					</TEXT_CTRL>
					<DATA_CTRL>
						FORMULA='getXMLDocument().getAttrStringValue("xmlName")'
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		<AREA>
			<CTRL_GROUP>
				FMT={
					txtfl.delimiter.type='space';
				}
				<CTRLS>
					<TEXT_CTRL>
						TEXT='XML Schema File'
					</TEXT_CTRL>
					<DATA_CTRL>
						FORMULA='\'“\' + getXMLDocument().getAttrValue("xmlName") + \'”\''
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
</ROOT>
CHECKSUM='2wVABJblAYH++eVa0xswGhU4ipyCPfOCG2ZE1d36fS8'
</DOCFLEX_TEMPLATE>