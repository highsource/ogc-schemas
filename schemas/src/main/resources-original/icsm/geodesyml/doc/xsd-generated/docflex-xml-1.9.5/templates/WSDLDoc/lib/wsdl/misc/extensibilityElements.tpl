<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2012-08-19 06:56:33'
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
		FMT={
			sec.outputStyle='table';
			table.cell.padding.both='3.3';
			table.bkgr.color='#F5F5F5';
			table.border.style='solid';
			table.border.color='#999999';
			table.option.borderStylesInHTML='true';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<SS_CALL_CTRL>
						SS_NAME='Extensibility Elements'
						FMT={
							ctrl.size.width='499.5';
							ctrl.size.height='17.3';
						}
					</SS_CALL_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
</ROOT>
<STOCK_SECTIONS>
	<ELEMENT_ITER>
		SS_NAME='Extensibility Elements'
		TARGET_ET='<ANY>'
		SCOPE='simple-location-rules'
		RULES={
			'* -> *';
		}
		FILTER='! contextElement.pseudoElement && ! belongsToNS ("wsdl")'
		<BODY>
			<TEMPLATE_CALL>
				TEMPLATE_FILE='../../xml/nodeSource.tpl'
			</TEMPLATE_CALL>
		</BODY>
	</ELEMENT_ITER>
</STOCK_SECTIONS>
CHECKSUM='QLoR9KcHVo0J51AAOqaheYCfsetfpUORCXJhsXzBn1o'
</DOCFLEX_TEMPLATE>