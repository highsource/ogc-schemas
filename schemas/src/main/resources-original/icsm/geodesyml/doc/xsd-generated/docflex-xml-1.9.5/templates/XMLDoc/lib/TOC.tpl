<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2005-03-04 07:58:00'
LAST_UPDATE='2013-12-16 15:57:17'
DESIGNER_TOOL='DocFlex SDK 1.x'
DESIGNER_LICENSE_TYPE='Filigris Works Team'
APP_NAME='XMLDoc'
TEMPLATE_TYPE='DocumentTemplate'
DSM_TYPE_ID='xmldoc'
ROOT_ET='#DOCUMENTS'
<TEMPLATE_PARAMS>
	PARAM={
		param.name='docTitle';
		param.title='Documentation Title';
		param.type='string';
	}
	PARAM={
		param.name='sorting';
		param.title='Sorting';
		param.type='enum';
		param.enum.values='none;by name';
	}
</TEMPLATE_PARAMS>
<STYLES>
	CHAR_STYLE={
		style.name='Default Paragraph Font';
		style.id='cs1';
		style.default='true';
	}
	PAR_STYLE={
		style.name='Frame Heading 1';
		style.id='s1';
		text.font.name='Arial';
		text.font.size='11';
		text.font.style.bold='true';
		par.margin.bottom='4';
	}
	PAR_STYLE={
		style.name='Frame Heading 2';
		style.id='s2';
		text.font.name='Arial';
		text.font.size='9';
		text.font.style.bold='true';
		par.margin.top='8';
		par.margin.bottom='4';
		par.option.nowrap='true';
	}
	PAR_STYLE={
		style.name='Frame Item';
		style.id='s3';
		text.font.name='Arial';
		text.font.size='9';
		par.option.nowrap='true';
	}
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs2';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s4';
		style.default='true';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.default.font='Arial';
}
<ROOT>
	<AREA_SEC>
		FMT={
			par.style='s1';
		}
		<AREA>
			<CTRL_GROUP>
				FMT={
					txtfl.delimiter.type='none';
				}
				<CTRLS>
					<DATA_CTRL>
						FORMULA='getStringParam("docTitle")'
						FMT={
							txtfl.ehtml.render='true';
						}
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		COND='documentByTemplate("xmlns-bindings") != ""'
		FMT={
			par.style='s3';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						TEXT='Namespace Bindings'
						<DOC_HLINK>
							TARGET_FRAME_EXPR='"detailFrame"'
							HKEYS={
								'"xmlns-bindings"';
							}
						</DOC_HLINK>
					</TEXT_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<ELEMENT_ITER>
		TARGET_ET='#DOCUMENT'
		SCOPE='simple-location-rules'
		RULES={
			'* -> #DOCUMENT';
		}
		SORTING='by-expr'
		SORTING_KEY={expr='getStringParam("sorting") == "by name" ? getAttrStringValue("xmlName")  :  ""',ascending}
		<BODY>
			<AREA_SEC>
				FMT={
					par.style='s3';
				}
				<AREA>
					<CTRL_GROUP>
						FMT={
							par.option.nowrap='true';
						}
						<CTRLS>
							<DATA_CTRL>
								ATTR='xmlName'
								<DOC_HLINK>
									TARGET_FRAME_EXPR='"detailFrame"'
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
		</BODY>
		<HEADER>
			<AREA_SEC>
				FMT={
					par.style='s2';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='XML Files'
							</TEXT_CTRL>
							<DATA_CTRL>
								FORMULA='"(" + iterator.numItems + ")"'
							</DATA_CTRL>
							<DELIMITER>
								FMT={
									txtfl.delimiter.type='none';
								}
							</DELIMITER>
							<TEXT_CTRL>
								TEXT=':'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</ELEMENT_ITER>
</ROOT>
CHECKSUM='MO3EhCpyGjY2vmVRCjgiwnJDAFsU3JNjHNT8reAKKeI'
</DOCFLEX_TEMPLATE>