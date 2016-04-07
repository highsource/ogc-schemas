<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2005-01-18 01:00:00'
LAST_UPDATE='2013-12-16 01:42:52'
DESIGNER_TOOL='DocFlex SDK 1.x'
DESIGNER_LICENSE_TYPE='Filigris Works Team'
APP_NAME='XMLDoc'
APP_AUTHOR='Filigris Works'
TEMPLATE_TYPE='DocumentTemplate'
DSM_TYPE_ID='xmldoc'
ROOT_ET='#DOCUMENTS'
DESCR='<b>XML File Documentor Template</b> -- allows you to compile any number of XML files of any possible types into a single document with the special formatting and table of contents, which can be particularly suitable for printing.'
TITLE_EXPR='title = getStringParam("docTitle");
title != "" ? title : getAttrStringValue("xmlName")'
<TEMPLATE_PARAMS>
	PARAM={
		param.name='docTitle';
		param.title='Documentation Title';
		param.description='Specify the title for the documentation. For a single XML file,
by default, the title will be the XML\'s name.';
		param.type='string';
		param.trimSpaces='true';
	}
	PARAM={
		param.name='sorting';
		param.title='Sorting';
		param.description='Specify how XML files should be sorted.';
		param.type='enum';
		param.enum.values='none;by name;by path';
	}
	PARAM={
		param.name='include';
		param.title='Include';
		param.title.style.bold='true';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='include.toc';
		param.title='Table of Contents';
		param.description='Include Table of Contents';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='include.nsb';
		param.title='Namespace Bindings';
		param.description='Include Namespace Bindings report';
		param.type='boolean';
	}
	PARAM={
		param.name='fmt.page.breakBefore';
		param.title='Start from new page';
		param.title.style.bold='true';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='fmt.page.breakBefore.file';
		param.title='Each XML file';
		param.description='Start each XML file from a new page';
		param.type='boolean';
	}
	PARAM={
		param.name='fmt.page.breakBefore.nsb';
		param.title='Namespace Bindings';
		param.description='Start Namespace Bindings report from a new page';
		param.type='boolean';
	}
</TEMPLATE_PARAMS>
<STYLES>
	CHAR_STYLE={
		style.name='About';
		style.id='cs1';
		style.description='Used for "About" section added at the bottom of each generated document.';
		style.css.className='about';
		style.css.allowNamedRule='false';
		text.font.name='Verdana';
		text.font.size='7';
		text.color.foreground='#808080';
	}
	CHAR_STYLE={
		style.name='Default Paragraph Font';
		style.id='cs2';
		style.default='true';
	}
	PAR_STYLE={
		style.name='File Info';
		style.id='s1';
		style.css.className='fileInfo';
		text.font.size='7';
		text.font.style.bold='true';
		par.margin.top='1.7';
	}
	PAR_STYLE={
		style.name='Heading 1';
		style.id='s2';
		style.css.className='head1';
		text.font.name='Arial';
		text.font.size='16';
		text.font.style.bold='true';
		par.level='1';
		par.border.bottom.style='solid';
		par.border.bottom.thickness='medium';
		par.padding.bottom='1.7';
		par.page.keepWithNext='true';
	}
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs3';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='Hyperlink (blended in)';
		style.id='cs4';
		text.decor.underline='true';
	}
	CHAR_STYLE={
		style.name='Hyperlink (xml source, hover)';
		style.id='cs5';
		style.description='This style is used to indicate a hyperlink assigned to little piece of XML source (with all markup included). That hyperlink doesn\'t reveal itself until mouse cursor hovers over it. Then, the whole text (XML source) is highlighted with the red-colored underlining, which this style defines.

That feature is used only in the XML Namespace Bindings report.';
		style.css.className='xmlSrcLink-hover';
		text.decor.underline='true';
		text.color.foreground='#990000';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s3';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Page header / footer';
		style.id='cs6';
		text.font.name='Arial';
		text.font.style.italic='true';
	}
	PAR_STYLE={
		style.name='Property Title';
		style.id='s4';
		style.description='The style for property titles. Besides formatting of text, it specifies also a few paragraph settings to ensure necessary spacing between neighbouring rows and cells.';
		style.css.className='propTitle';
		text.font.name='Arial';
		text.font.size='8.4';
		text.font.style.bold='true';
		text.decor.underline='false';
		text.color.foreground='#000000';
		par.margin.right='5.8';
		par.margin.top='0.3';
		par.margin.bottom='0.3';
		par.option.nowrap='true';
	}
	CHAR_STYLE={
		style.name='Property Value (Font)';
		style.id='cs7';
		style.description='Specify only font (text formatting) of the property value';
		style.css.className='propValue';
		text.font.name='Verdana';
		text.font.size='8.3';
	}
	CHAR_STYLE={
		style.name='TOC';
		style.id='cs8';
		style.css.className='toc';
		text.font.name='Verdana';
	}
	PAR_STYLE={
		style.name='TOC Heading 1';
		style.id='s5';
		style.css.className='tocHead';
		text.font.name='Arial';
		text.font.size='16';
		text.font.style.bold='true';
		text.font.style.italic='true';
		par.margin.bottom='10';
		par.page.keepWithNext='true';
	}
	CHAR_STYLE={
		style.name='XML Source';
		style.id='cs9';
		style.description='The default font for the reproduced XML source.';
		style.css.className='xml';
		text.font.name='Verdana';
		text.font.size='8.3';
	}
	CHAR_STYLE={
		style.name='XML Source Attribute Name';
		style.id='cs10';
		style.description='The font for the names of attributes in the reproduced XML source.';
		style.css.className='xmlAttrName';
		text.font.name='Verdana';
		text.font.size='8.3';
		text.color.foreground='#990000';
	}
	CHAR_STYLE={
		style.name='XML Source Attribute Name (Reserved)';
		style.id='cs11';
		style.description='The font for reserved attribute names in the reproduced XML source.

Reserved are namespace bindings (e.g. "xmlns:xs") and attributes from the XML namespace (e.g. "xml:lang").';
		style.css.className='xmlAttrName-reserved';
		text.font.name='Verdana';
		text.font.size='8.3';
		text.color.foreground='#FF0000';
	}
	CHAR_STYLE={
		style.name='XML Source Attribute Value';
		style.id='cs12';
		style.description='The font for the values of attributes in the reproduced XML source.

NOTE: The attribute values may be simultaneously hyperlinks, which are formatted with the same font/color and highlighted only with underlining. So, in case of HTML, this style will produce the same named CSS rule for both <span> element (to format just the value text) and <a> element (to format the hyperlink, along with \'blended-in hyperlink\' style).';
		style.css.className='xmlAttrVal';
		text.font.name='Verdana';
		text.font.size='7';
		text.font.style.bold='true';
		text.color.foreground='#000000';
	}
	CHAR_STYLE={
		style.name='XML Source Attribute Value (Reserved)';
		style.id='cs13';
		style.description='The font for the values of reserved attributes in the reproduced XML source.

Reserved are namespace bindings (e.g. "xmlns:xs") and attributes from the XML namespace (e.g. "xml:lang").';
		style.css.className='xmlAttrVal-reserved';
		text.font.name='Verdana';
		text.font.size='7';
		text.font.style.bold='true';
		text.color.foreground='#FF0000';
	}
	CHAR_STYLE={
		style.name='XML Source CDATA';
		style.id='cs14';
		style.description='The font for CDATA section content in the reproduced XML source';
		style.css.className='xmlCDATA';
		text.font.name='Verdana';
		text.font.size='8.3';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='XML Source CDATA Markup';
		style.id='cs15';
		style.description='The font for CDATA section markup ("<![CDATA[" and "]]>") in the reproduced XML source';
		style.css.className='xmlCDATAMrk';
		text.font.name='Verdana';
		text.font.size='8.3';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='XML Source Comment';
		style.id='cs16';
		style.description='The font for XML source comments';
		style.css.className='xmlCom';
		text.font.name='Courier New';
		text.font.size='8.3';
		text.color.foreground='#4D4D4D';
	}
	CHAR_STYLE={
		style.name='XML Source Comment Markup';
		style.id='cs17';
		style.description='The font for XML comment markup ("<!--" and "-->") in the reproduced XML source';
		style.css.className='xmlComMrk';
		text.font.name='Verdana';
		text.font.size='8.3';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='XML Source DOCTYPE';
		style.id='cs18';
		style.description='The font for <!DOCTYPE> declaration (except internal subset) in the reproduced XML source';
		style.css.className='xmlDOCTYPE';
		text.font.name='Verdana';
		text.font.size='8.3';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='XML Source Element Name';
		style.id='cs19';
		style.description='The font for the names of elements in the reproduced XML source.';
		style.css.className='xmlElemName';
		text.font.name='Verdana';
		text.font.size='8.3';
		text.color.foreground='#990000';
	}
	CHAR_STYLE={
		style.name='XML Source Element Value';
		style.id='cs20';
		style.description='The font for the values of elements in the reproduced XML source.';
		style.css.className='xmlElemVal';
		text.font.name='Verdana';
		text.font.size='7';
		text.font.style.bold='true';
	}
	CHAR_STYLE={
		style.name='XML Source Internal Subset';
		style.id='cs21';
		style.description='The font for Internal Subset (embedded in <!DOCTYPE> declaration) in the reproduced XML source.';
		style.css.className='xmlIS';
		text.font.name='Courier New';
		text.font.size='8.3';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='XML Source Internal Subset Markup';
		style.id='cs22';
		style.description='The font for specific XML markup surrounding Internal Subset section in the reproduced XML source';
		style.css.className='xmlSubsetMrk';
		text.font.name='Verdana';
		text.font.size='8.3';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='XML Source Markup';
		style.id='cs23';
		style.description='The font for XML markup characters (such as angle brackets, quotes etc.)';
		style.css.className='xmlMrk';
		text.font.name='Verdana';
		text.font.size='8.3';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='XML Source Processing Instruction';
		style.id='cs24';
		style.description='The font for Processing Instructions in the reproduced XML source.

It will be used also for XML declarions (which have the same syntax as processing instructions), e.g.:
<?xml version="1.0" encoding="UTF-8"?>';
		style.css.className='xmlPI';
		text.font.name='Verdana';
		text.font.size='8.3';
		text.color.foreground='#0000FF';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.default.font='Arial';
	doc.hlink.style.link='cs3';
	doc.page.margin.top='42.5';
}
<PAGE_FOOTER>
	<AREA_SEC>
		FMT={
			sec.outputStyle='table';
			text.style='cs6';
			table.sizing='Relative';
			table.cell.padding.horz='0.8';
			table.border.style='none';
			table.border.top.style='solid';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<DATA_CTRL>
						FORMULA='getStringParam("docTitle")'
						FMT={
							ctrl.size.width='303';
							ctrl.size.height='39.8';
						}
					</DATA_CTRL>
					<PANEL>
						FMT={
							content.outputStyle='text-par';
							ctrl.size.width='196.5';
							ctrl.size.height='39.8';
							tcell.align.horz='Right';
							table.border.style='none';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Page'
									</TEXT_CTRL>
									<DATA_CTRL>
										DOCFIELD='page'
									</DATA_CTRL>
									<TEXT_CTRL>
										TEXT='of'
									</TEXT_CTRL>
									<DATA_CTRL>
										DOCFIELD='num-pages'
									</DATA_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</PANEL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
</PAGE_FOOTER>
<ROOT>
	<FOLDER>
		DESCR='TABLE OF CONTENTS'
		COND='getBooleanParam("include.toc")'
		<BODY>
			<AREA_SEC>
				FMT={
					par.style='s5';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								FORMULA='(title = getParam("docTitle")) != "" ? title : "Table of Contents"'
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				DESCR='TOC (for RTF output)'
				COND='output.format.supportsPagination'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								DOCFIELD='toc'
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<FOLDER>
				DESCR='generates an alternative TOC (for non-framed HTML output)'
				COND='! output.format.supportsPagination'
				FMT={
					sec.outputStyle='list';
					text.style='cs8';
					list.type='ordered';
				}
				<BODY>
					<ELEMENT_ITER>
						TARGET_ET='#DOCUMENT'
						SCOPE='simple-location-rules'
						RULES={
							'* -> #DOCUMENT';
						}
						SORTING='by-expr'
						SORTING_KEY={expr='(sorting = getStringParam("sorting")) == "by name" 
  ? getAttrStringValue("xmlName") 
  :  sorting == "by path" ? getAttrStringValue("xmlURI") : ""',ascending}
						FMT={
							sec.outputStyle='list-items';
							list.type='ordered';
						}
						<BODY>
							<AREA_SEC>
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<DATA_CTRL>
												ATTR='xmlName'
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
					</ELEMENT_ITER>
					<AREA_SEC>
						COND='findHyperTarget ("xmlns-bindings") != null'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Namespace Bindings'
										<DOC_HLINK>
											HKEYS={
												'"xmlns-bindings"';
											}
										</DOC_HLINK>
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</FOLDER>
		</BODY>
	</FOLDER>
	<ELEMENT_ITER>
		DESCR='DOC FOR EACH XML FILE'
		TARGET_ET='#DOCUMENT'
		SCOPE='simple-location-rules'
		RULES={
			'* -> #DOCUMENT';
		}
		SORTING='by-expr'
		SORTING_KEY={expr='(sorting = getStringParam("sorting")) == "by name" 
  ? getAttrStringValue("xmlName") 
  :  sorting == "by path" ? getAttrStringValue("xmlURI") : ""',ascending}
		<BODY>
			<TEMPLATE_CALL>
				DESCR='(start from a new page)'
				COND='getBooleanParam("fmt.page.breakBefore.file")'
				BREAK_PARENT_BLOCK='when-executed'
				TEMPLATE_FILE='lib/Document.tpl'
				FMT={
					sec.spacing.before='15';
					sec.page.breakBefore='true';
				}
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				TEMPLATE_FILE='lib/Document.tpl'
				FMT={
					sec.spacing.before='15';
				}
			</TEMPLATE_CALL>
		</BODY>
	</ELEMENT_ITER>
	<FOLDER>
		DESCR='NAMESPACE BINDINGS'
		COND='getBooleanParam("include.nsb")'
		FMT={
			sec.spacing.before='15';
		}
		<BODY>
			<TEMPLATE_CALL>
				DESCR='(start from a new page)'
				COND='getBooleanParam("fmt.page.breakBefore.nsb")'
				BREAK_PARENT_BLOCK='when-executed'
				TEMPLATE_FILE='lib/xmlns-bindings.tpl'
				OUTPUT_DIR_EXPR='output.docFilesDir'
				FMT={
					sec.page.breakBefore='true';
				}
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				DESCR='(continue on the same page)'
				TEMPLATE_FILE='lib/xmlns-bindings.tpl'
				OUTPUT_DIR_EXPR='output.docFilesDir'
			</TEMPLATE_CALL>
		</BODY>
	</FOLDER>
	<TEMPLATE_CALL>
		DESCR='Bottom Message'
		TEMPLATE_FILE='lib/about.tpl'
	</TEMPLATE_CALL>
</ROOT>
CHECKSUM='SmSkCn7EAqv7oIpiWIlrL8RrCl1MB8enkoqcZFs9Ivc'
</DOCFLEX_TEMPLATE>