<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2012-07-01 11:28:51'
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
ROOT_ET='wsdl:definitions'
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
		<AREA>
			<CTRL_GROUP>
				FMT={
					txtfl.delimiter.type='space';
				}
				<CTRLS>
					<TEXT_CTRL>
						TEXT='WSDL File'
					</TEXT_CTRL>
					<DATA_CTRL>
						FORMULA='\'“\' + getXMLDocument().getAttrValue("xmlName") + \'”\''
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
</ROOT>
CHECKSUM='bHzAOo+LhOdN7Kppno5x8qAvjb0NdL2FrNe2NPl?84w'
</DOCFLEX_TEMPLATE>