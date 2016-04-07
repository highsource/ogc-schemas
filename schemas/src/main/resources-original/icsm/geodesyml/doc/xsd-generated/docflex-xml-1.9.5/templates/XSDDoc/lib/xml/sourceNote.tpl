<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2006-10-20 08:41:15'
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
	<FOLDER>
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='text';
			txtfl.delimiter.text='; ';
		}
		<BODY>
			<AREA_SEC>
				COND='getBooleanParam("$remove.anns")'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								FORMULA='(n = countElementsByLPath(".//xs:annotation")) > 0 ?
 "w/o annotations (" + toString(n) + ")"
'
								FMT={
									ctrl.option.text.noBlankOutput='true';
								}
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				COND='findHyperTarget (
  Array (contextElement.id, "xml-source-location")
) != null'
				<AREA>
					<CTRL_GROUP>
						FMT={
							txtfl.delimiter.type='space';
						}
						<CTRLS>
							<TEXT_CTRL>
								TEXT='see'
								<DOC_HLINK>
									HKEYS={
										'contextElement.id';
										'"xml-source-location"';
									}
								</DOC_HLINK>
							</TEXT_CTRL>
							<TEXT_CTRL>
								TEXT='within schema source'
							</TEXT_CTRL>
							<PANEL>
								COND='output.format.supportsPageRefs'
								FMT={
									ctrl.size.width='153.8';
									ctrl.size.height='38.3';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<DELIMITER>
												FMT={
													txtfl.delimiter.type='text';
													txtfl.delimiter.text=': ';
												}
											</DELIMITER>
											<TEXT_CTRL>
												TEXT='p.'
											</TEXT_CTRL>
											<DATA_CTRL>
												DOCFIELD='page-htarget'
												FMT={
													ctrl.option.noHLinkFmt='true';
													text.hlink.fmt='none';
												}
												<DOC_HLINK>
													HKEYS={
														'contextElement.id';
														'"xml-source-location"';
													}
												</DOC_HLINK>
											</DATA_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
		<HEADER>
			<AREA_SEC>
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
</ROOT>
CHECKSUM='TxRGRryOK1a0oIrngDfQTP4HUZaXaz6AWXB0KbVpUec'
</DOCFLEX_TEMPLATE>