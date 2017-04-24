<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2013-07-22 07:00:14'
LAST_UPDATE='2014-07-05 20:02:50'
DESIGNER_TOOL='DocFlex SDK 1.x'
DESIGNER_LICENSE_TYPE='Filigris Works Team'
APP_ID='docflex-xml-xsddoc2'
APP_NAME='DocFlex/XML XSDDoc'
APP_VER='2.8.1'
APP_AUTHOR='Copyright © 2005-2014 Filigris Works, Leonid Rudy Softwareprodukte. All rights reserved.'
TEMPLATE_TYPE='DocumentTemplate'
DSM_TYPE_ID='xsddoc'
ROOT_ET='xs:schema'
TITLE_EXPR='title = \'XML Source of "\' +
           getXMLDocument().getAttrStringValue("xmlName") + \'"\';

(parentTitle = getStringParam("docTitle")) != null
  ? title + " | " + parentTitle : title'
HTML_HEAD_EXPR='title = \'XML Source of "\' + 
          getXMLDocument().getAttrStringValue("xmlName") + \'"\';

(parentTitle = getStringParam("docTitle")) != null
  ? title = title + " | " + parentTitle;

\'<script type="text/javascript">
    window.onload = function() {
        parent.document.title="\' + encodeJScriptString (title) + \'";
    }
</script>\''
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$mainXSD';
		param.type='GOMElement';
		param.defaultValue.expr='findElementByKey ("main-xsds", getXMLDocument().id)';
	}
	PARAM={
		param.name='$page.heading.left';
		param.title='Page Heading (on the left)';
		param.type='string';
		param.defaultValue.expr='\'XML Source of "\' + getXMLDocument().getAttrStringValue("xmlName") + \'"\'';
	}
	PARAM={
		param.name='docTitle';
		param.title='Documentation Title';
		param.type='string';
	}
	PARAM={
		param.name='doc.schema';
		param.title='Schema Overview';
		param.title.style.bold='true';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='doc.schema.profile';
		param.title='Schema Profile';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.profile.location';
		param.title='Schema Location';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.profile.location.relative';
		param.title='Relative Path';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.profile.location.hyperlink';
		param.title='Hyperlink';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.xml';
		param.title='XML Source';
		param.title.style.bold='true';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.xml.separate';
		param.title='Separate File';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.xml.box';
		param.title='Enclose in Box';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.xml.remove.anns';
		param.title='Remove Annotations';
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
		param.name='show.about';
		param.title='About (footer)';
		param.type='enum';
		param.enum.values='full;short;none';
	}
</TEMPLATE_PARAMS>
<STYLES>
	CHAR_STYLE={
		style.name='Annotation';
		style.id='cs1';
	}
	CHAR_STYLE={
		style.name='Default Paragraph Font';
		style.id='cs2';
		style.default='true';
	}
	PAR_STYLE={
		style.name='Heading 2';
		style.id='s1';
		text.font.name='Verdana';
		text.font.size='13';
		text.font.style.bold='true';
		text.color.foreground='#4477AA';
		par.bkgr.opaque='true';
		par.bkgr.color='#EEEEEE';
		par.border.style='solid';
		par.border.color='#4477AA';
		par.margin.top='0';
		par.margin.bottom='7.5';
		par.padding.left='4.2';
		par.padding.right='4.2';
		par.padding.top='2.5';
		par.padding.bottom='2.5';
		par.page.keepTogether='true';
		par.page.keepWithNext='true';
	}
	PAR_STYLE={
		style.name='Heading 3';
		style.id='s2';
		text.font.size='12';
		text.font.style.bold='true';
		par.bkgr.opaque='true';
		par.bkgr.color='#CCCCFF';
		par.border.style='solid';
		par.border.color='#666666';
		par.margin.top='10';
		par.margin.bottom='8.3';
		par.padding.left='2.1';
		par.padding.right='2.1';
		par.padding.top='1.7';
		par.padding.bottom='1.7';
		par.page.keepWithNext='true';
	}
	CHAR_STYLE={
		style.name='Heading Note';
		style.id='cs3';
		text.font.name='Arial';
		text.font.size='8';
		text.font.style.bold='false';
	}
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs4';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='Mono';
		style.id='cs5';
		text.font.name='Courier New';
		text.font.size='9';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s3';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Page Header Font';
		style.id='cs6';
		text.font.name='Arial';
		text.font.style.italic='true';
	}
	CHAR_STYLE={
		style.name='Page Number';
		style.id='cs7';
		text.font.size='9';
		text.font.style.italic='true';
	}
	CHAR_STYLE={
		style.name='Profile Item';
		style.id='cs8';
		text.font.name='Arial';
		text.font.size='9';
	}
	PAR_STYLE={
		style.name='Profile Item Title';
		style.id='s4';
		text.font.name='Arial';
		text.font.size='9';
		text.font.style.bold='true';
	}
	PAR_STYLE={
		style.name='Property Title';
		style.id='s5';
		text.font.size='8';
		text.font.style.bold='true';
		par.lineHeight='11';
		par.margin.right='5.8';
	}
	PAR_STYLE={
		style.name='Property Value';
		style.id='s6';
		text.font.name='Verdana';
		text.font.size='8';
		par.lineHeight='11';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs4';
}
<HTARGET>
	HKEYS={
		'contextElement.id';
		'"xml-source"';
	}
</HTARGET>
<HTARGET>
	HKEYS={
		'getXMLDocument().id';
		'"xml-source"';
	}
</HTARGET>
<PAGE_HEADER>
	<AREA_SEC>
		FMT={
			sec.outputStyle='table';
			text.style='cs6';
			table.sizing='Relative';
			table.cell.padding.horz='0.8';
			table.border.style='none';
			table.border.bottom.style='solid';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<DATA_CTRL>
						FORMULA='getStringParam("$page.heading.left")'
						FMT={
							ctrl.size.width='282.8';
							ctrl.size.height='17.3';
						}
					</DATA_CTRL>
					<TEXT_CTRL>
						TEXT='XML Source'
						FMT={
							ctrl.size.width='216.8';
							ctrl.size.height='17.3';
							tcell.align.horz='Right';
						}
					</TEXT_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
</PAGE_HEADER>
<ROOT>
	<AREA_SEC>
		COND='output.type == "document"'
		FMT={
			par.style='s1';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						TEXT='XML Source of'
					</TEXT_CTRL>
					<DATA_CTRL>
						FORMULA='\'"\' + getXMLDocument().getAttrStringValue("xmlName") + \'"\''
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<FOLDER>
		COND='output.type == "document"'
		FMT={
			sec.outputStyle='table';
			table.cell.padding.both='0';
			table.border.style='none';
			table.page.keepTogether='true';
			table.option.borderStylesInHTML='true';
		}
		<BODY>
			<AREA_SEC>
				DESCR='Schema Location'
				COND='getBooleanParam("doc.schema.profile.location")'
				CONTEXT_ELEMENT_EXPR='getXMLDocument()'
				MATCHING_ET='#DOCUMENT'
				FMT={
					trow.cell.align.vert='Top';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Schema Location:'
								FMT={
									ctrl.size.width='60';
									ctrl.size.height='17.3';
									par.style='s5';
								}
							</TEXT_CTRL>
							<DATA_CTRL>
								FORMULA='uri = getAttrStringValue("xmlURI");

getBooleanParam("doc.schema.profile.location.relative")
 ? makeRelativePath (uri, mainContext.output.dir) : uri'
								FMT={
									ctrl.size.width='439.5';
									ctrl.size.height='17.3';
									par.style='s6';
								}
								<URL_HLINK>
									COND='getBooleanParam("doc.schema.profile.location.hyperlink")'
									TARGET_FRAME_EXPR='"_blank"'
									URL_EXPR='uri = getAttrStringValue("xmlURI");

getBooleanParam("doc.schema.profile.location.relative")
 ? makeRelativePath (uri, output.dir, true) : toURL (uri)'
								</URL_HLINK>
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				FMT={
					trow.cell.align.vert='Top';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Schema Overview:'
								FMT={
									ctrl.size.width='60';
									ctrl.size.height='17.3';
									par.style='s5';
								}
							</TEXT_CTRL>
							<DATA_CTRL>
								FORMULA='\'XML Schema “\' + getXMLDocument().getAttrValue("xmlName") + \'”\''
								FMT={
									ctrl.size.width='439.5';
									ctrl.size.height='17.3';
									par.style='s6';
								}
								<DOC_HLINK>
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
	</FOLDER>
	<FOLDER>
		DESCR='XML SOURCE'
		CONTEXT_ELEMENT_EXPR='getXMLDocument()'
		MATCHING_ET='#DOCUMENT'
		<BODY>
			<AREA_SEC>
				COND='getBooleanParam("doc.schema.xml.box")'
				BREAK_PARENT_BLOCK='when-executed'
				FMT={
					sec.outputStyle='table';
					table.sizing='Relative';
					table.autofit='false';
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
								SS_NAME='XML Source'
								FMT={
									ctrl.size.width='499.5';
									ctrl.size.height='17.3';
								}
							</SS_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<SS_CALL>
				SS_NAME='XML Source'
			</SS_CALL>
		</BODY>
		<HEADER>
			<AREA_SEC>
				FMT={
					par.style='s2';
				}
				<AREA>
					<CTRL_GROUP>
						FMT={
							trow.bkgr.color='#CCCCFF';
						}
						<CTRLS>
							<TEXT_CTRL>
								TEXT='XML Source'
							</TEXT_CTRL>
							<DELIMITER>
								FMT={
									text.style='cs5';
								}
							</DELIMITER>
							<TEMPLATE_CALL_CTRL>
								TEMPLATE_FILE='../xml/sourceNote.tpl'
								PASSED_PARAMS={
									'$remove.anns','getBooleanParam("doc.schema.xml.remove.anns")';
								}
								FMT={
									text.style='cs3';
								}
							</TEMPLATE_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
	<TEMPLATE_CALL>
		DESCR='Bottom Message'
		COND='output.type == "document" && 
! hasParamValue("show.about", "none")'
		TEMPLATE_FILE='../about.tpl'
	</TEMPLATE_CALL>
</ROOT>
<STOCK_SECTIONS>
	<TEMPLATE_CALL>
		SS_NAME='XML Source'
		MATCHING_ET='#DOCUMENT'
		TEMPLATE_FILE='../xml/documentSource.tpl'
		PASSED_PARAMS={
			'$bookmark.elements','true';
			'$bookmark.xmlns','true';
			'$remove.anns','getBooleanParam("doc.schema.xml.remove.anns")';
		}
	</TEMPLATE_CALL>
</STOCK_SECTIONS>
CHECKSUM='VR0kzBiBdPEPgHIXN?AyPT12KGHBrzQuDqZGNHVwh1A'
</DOCFLEX_TEMPLATE>