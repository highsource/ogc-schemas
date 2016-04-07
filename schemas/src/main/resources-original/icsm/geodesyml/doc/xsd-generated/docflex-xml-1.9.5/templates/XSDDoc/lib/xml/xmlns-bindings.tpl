<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2005-09-25 12:34:00'
LAST_UPDATE='2014-07-05 20:02:51'
DESIGNER_TOOL='DocFlex SDK 1.x'
DESIGNER_LICENSE_TYPE='Filigris Works Team'
APP_ID='docflex-xml-xsddoc2'
APP_NAME='DocFlex/XML XSDDoc'
APP_VER='2.8.1'
APP_AUTHOR='Copyright © 2005-2014 Filigris Works, Leonid Rudy Softwareprodukte. All rights reserved.'
TEMPLATE_TYPE='DocumentTemplate'
DSM_TYPE_ID='xsddoc'
ROOT_ET='#DOCUMENTS'
TITLE_EXPR='title = "Namespace Bindings";

(parentTitle = getStringParam("docTitle")) != null
  ? title + " | " + parentTitle : title'
HTML_HEAD_EXPR='title = "Namespace Bindings";

(parentTitle = getStringParam("docTitle")) != null
  ? title = title + " | " + parentTitle;

\'<script type="text/javascript">
    window.onload = function() {
        parent.document.title="\' + encodeJScriptString (title) + \'";
    }
</script>\''
<TEMPLATE_PARAMS>
	PARAM={
		param.name='docTitle';
		param.title='Documentation Title';
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
		param.name='show.about';
		param.title='About (footer)';
		param.type='enum';
		param.enum.values='full;short;none';
	}
	PARAM={
		param.name='fmt';
		param.title='Formatting';
		param.title.style.bold='true';
		param.group='true';
	}
	PARAM={
		param.name='fmt.page.refs';
		param.title='Generate page references';
		param.type='boolean';
		param.defaultValue='true';
	}
</TEMPLATE_PARAMS>
<STYLES>
	CHAR_STYLE={
		style.name='Default Paragraph Font';
		style.id='cs1';
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
	}
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs2';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='Hyperlink (xml source, hover)';
		style.id='cs3';
		text.decor.underline='true';
		text.color.foreground='#990000';
	}
	CHAR_STYLE={
		style.name='Mono';
		style.id='cs4';
		text.font.name='Courier New';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Mono (Small)';
		style.id='cs5';
		text.font.name='Courier New';
		text.font.size='8';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s2';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Page Reference';
		style.id='cs6';
		text.font.name='Courier New';
		text.font.size='8';
	}
	PAR_STYLE={
		style.name='Property Title';
		style.id='s3';
		text.font.size='8';
		text.font.style.bold='true';
		par.lineHeight='11';
		par.margin.right='5.8';
	}
	PAR_STYLE={
		style.name='Property Value';
		style.id='s4';
		text.font.name='Verdana';
		text.font.size='8';
		par.lineHeight='11';
	}
	CHAR_STYLE={
		style.name='Property Value (Font)';
		style.id='cs7';
		text.font.name='Verdana';
		text.font.size='8';
	}
	CHAR_STYLE={
		style.name='XML Source';
		style.id='cs8';
		text.font.name='Verdana';
		text.font.size='8';
	}
	CHAR_STYLE={
		style.name='XML Source Element Name';
		style.id='cs9';
		text.font.name='Verdana';
		text.font.size='8';
		text.color.foreground='#990000';
	}
	CHAR_STYLE={
		style.name='XML Source Markup';
		style.id='cs10';
		text.font.name='Verdana';
		text.font.size='8';
		text.color.foreground='#0000FF';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs2';
}
<HTARGET>
	HKEYS={
		'"xmlns-bindings"';
	}
</HTARGET>
<PAGE_HEADER>
	<AREA_SEC>
		FMT={
			table.cell.padding.both='0';
			table.border.style='none';
			table.border.bottom.style='solid';
		}
		<AREA>
			<CTRL_GROUP>
				FMT={
					par.border.bottom.style='solid';
				}
				<CTRLS>
					<TEXT_CTRL>
						TEXT='Namespace Bindings'
					</TEXT_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
</PAGE_HEADER>
<ROOT>
	<AREA_SEC>
		DESCR='XML\'s doc heading'
		FMT={
			par.style='s1';
			par.page.keepWithNext='true';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						TEXT='Namespace Bindings'
					</TEXT_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<ELEMENT_ITER>
		DESCR='iterate by all prefix/namespaceURI pairs;

for each pair the iterator produces a group of #NAMESPACE elements defining the same prefix/namespaceURI binding (see "Processing | Sorting/Grouping" tab)'
		TARGET_ET='#NAMESPACE'
		SCOPE='advanced-location-rules'
		RULES={
			'* -> #DOCUMENT[checkElementsByKey ("documented-schemas", contextElement.id)]/namespaces^::#NAMESPACE[getAttrBooleanValue("original")]';
		}
		SORTING='by-compound-key'
		SORTING_KEY={
			{lpath='@prefix',ascending};
			{lpath='@namespaceURI',ascending};
			{expr='getXMLDocument().getAttrStringValue("xmlName")',ascending};
		}
		GROUPING_KEY_EXPR='HashKey (
  getAttrValue("prefix"),
  getAttrValue("namespaceURI")
)'
		FMT={
			sec.outputStyle='table';
			sec.spacing.before='11.7';
			table.sizing='Relative';
			table.cell.padding.both='2.5';
		}
		<BODY>
			<AREA_SEC>
				COND='getAttrValue("prefix") != ""'
				BREAK_PARENT_BLOCK='when-executed'
				FMT={
					trow.cell.align.vert='Top';
					trow.page.keepTogether='true';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								ATTR='prefix'
								FMT={
									ctrl.size.width='44.3';
									ctrl.size.height='17.3';
									tcell.sizing='Minimal';
									tcell.option.nowrap='true';
									text.style='cs4';
								}
							</DATA_CTRL>
							<SS_CALL_CTRL>
								SS_NAME='xmlns'
								FMT={
									ctrl.size.width='455.3';
									ctrl.size.height='17.3';
								}
							</SS_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				FMT={
					trow.cell.align.vert='Top';
					trow.page.keepTogether='true';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='-'
								FMT={
									ctrl.size.width='44.3';
									ctrl.size.height='17.3';
									tcell.sizing='Minimal';
									text.style='cs4';
								}
							</TEXT_CTRL>
							<SS_CALL_CTRL>
								SS_NAME='xmlns'
								FMT={
									ctrl.size.width='455.3';
									ctrl.size.height='17.3';
								}
							</SS_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
		<HEADER>
			<AREA_SEC>
				FMT={
					text.font.style.bold='true';
					trow.bkgr.color='#CCCCFF';
					trow.page.keepTogether='true';
					trow.page.keepWithNext='true';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Prefix'
								FMT={
									ctrl.size.width='45';
									ctrl.size.height='17.3';
									tcell.sizing='Minimal';
								}
							</TEXT_CTRL>
							<TEXT_CTRL>
								TEXT='Namespace URI / Binding Location(s)'
								FMT={
									ctrl.size.width='454.5';
									ctrl.size.height='17.3';
								}
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</ELEMENT_ITER>
	<TEMPLATE_CALL>
		DESCR='Bottom Message'
		COND='output.type == "document" &&
! hasParamValue("show.about", "none")'
		TEMPLATE_FILE='../about.tpl'
	</TEMPLATE_CALL>
</ROOT>
<STOCK_SECTIONS>
	<AREA_SEC>
		SS_NAME='Element'
		MATCHING_ET='#NAMESPACE'
		FMT={
			sec.outputStyle='text-par';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<PANEL>
						FMT={
							ctrl.size.width='240.8';
							ctrl.size.height='38.3';
							text.style='cs8';
							text.decor.underline='false';
							text.hlink.fmt='style';
							text.hlink.style='cs3';
							text.hlink.style.use='hover';
						}
						<DOC_HLINK>
							HKEYS={
								'getAttrValue("elementId")';
								'"xmlns"';
							}
						</DOC_HLINK>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='<'
										FMT={
											text.style='cs10';
										}
									</TEXT_CTRL>
									<DELIMITER>
										FMT={
											txtfl.delimiter.type='none';
										}
									</DELIMITER>
									<DATA_CTRL>
										FORMULA='getElementByLinkAttr("elementId").qName'
										FMT={
											text.style='cs9';
										}
									</DATA_CTRL>
									<TEXT_CTRL>
										TEXT='...'
										FMT={
											text.style='cs9';
										}
									</TEXT_CTRL>
									<TEXT_CTRL>
										TEXT='>'
										FMT={
											text.style='cs10';
										}
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</PANEL>
					<PANEL>
						COND='output.format.supportsPageRefs
&&
getBooleanParam("fmt.page.refs")
&&
findHyperTarget (
  Array (
    getAttrValue("elementId"),
    "xmlns"
  )
) != null'
						FMT={
							ctrl.size.width='162.8';
							ctrl.size.height='38.3';
							txtfl.delimiter.type='none';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<DELIMITER>
										FMT={
											text.style='cs8';
										}
									</DELIMITER>
									<TEXT_CTRL>
										TEXT='['
										FMT={
											text.style='cs6';
										}
									</TEXT_CTRL>
									<DATA_CTRL>
										DOCFIELD='page-htarget'
										FMT={
											ctrl.option.noHLinkFmt='true';
											text.style='cs6';
											text.hlink.fmt='none';
										}
										<DOC_HLINK>
											HKEYS={
												'getAttrValue("elementId")';
												'"xmlns"';
											}
										</DOC_HLINK>
									</DATA_CTRL>
									<TEXT_CTRL>
										TEXT=']'
										FMT={
											text.style='cs6';
										}
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</PANEL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<ELEMENT_ITER>
		SS_NAME='Elements'
		TARGET_ET='#NAMESPACE'
		SCOPE='custom'
		ELEMENT_ENUM_EXPR='parentIterator.groupElements'
		<BODY>
			<SS_CALL>
				SS_NAME='Element'
			</SS_CALL>
		</BODY>
	</ELEMENT_ITER>
	<FOLDER>
		SS_NAME='xmlns'
		DESCR='documents a particular prefix/namespaceURI pair (binding)'
		MATCHING_ET='#NAMESPACE'
		<BODY>
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
						FMT={
							par.margin.bottom='5';
						}
						<CTRLS>
							<DATA_CTRL>
								FORMULA='(nsURI = getAttrValue("namespaceURI")) != "" ? nsURI : "{no namespace}"'
								FMT={
									text.style='cs5';
								}
								<DOC_HLINK>
									ALT_HLINK
									HKEYS={
										'getAttrStringValue("namespaceURI")';
										'"detail"';
									}
								</DOC_HLINK>
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<ELEMENT_ITER>
				DESCR='iterate by XML files where this prefix/namespaceURI is defined;

for each file the iterator produces a groups of XML elements where this binding is defined (see "Processing | Sorting/Grouping" tab)'
				TARGET_ET='#NAMESPACE'
				SCOPE='custom'
				ELEMENT_ENUM_EXPR='parentIterator.groupElements'
				GROUPING_KEY_EXPR='getXMLDocument().id'
				FMT={
					sec.outputStyle='table';
					table.cell.padding.both='0';
					table.border.style='none';
				}
				<BODY>
					<AREA_SEC>
						DESCR='this produces a spacing between rows for different files;
see Text Control: "Formatting | Table Cell | Extra Padding" tab'
						COND='! iterator.isFirstItem'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT=''
										FMT={
											ctrl.size.width='499.5';
											ctrl.size.height='17.3';
											tcell.padding.extra.top='5';
											text.option.nbsps='true';
										}
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='File:'
										FMT={
											ctrl.size.width='39';
											ctrl.size.height='17.3';
											par.style='s3';
										}
									</TEXT_CTRL>
									<DATA_CTRL>
										CONTEXT_ELEMENT_EXPR='getXMLDocument()'
										MATCHING_ET='#DOCUMENT'
										ATTR='xmlName'
										FMT={
											ctrl.size.width='460.5';
											ctrl.size.height='17.3';
											text.style='cs7';
										}
										<DOC_HLINK>
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
						COND='iterator.groupSize == 1'
						BREAK_PARENT_BLOCK='when-executed'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Element:'
										FMT={
											ctrl.size.width='39';
											ctrl.size.height='17.3';
											par.style='s3';
										}
									</TEXT_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='Element'
										FMT={
											ctrl.size.width='460.5';
											ctrl.size.height='17.3';
										}
									</SS_CALL_CTRL>
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
										TEXT='Elements:'
										FMT={
											ctrl.size.width='39';
											ctrl.size.height='17.3';
											par.style='s3';
										}
									</TEXT_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='Elements'
										FMT={
											ctrl.size.width='460.5';
											ctrl.size.height='17.3';
										}
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</ELEMENT_ITER>
		</BODY>
	</FOLDER>
</STOCK_SECTIONS>
CHECKSUM='jjS8WbtRppUbsvmwEKcBxt7Uj0940354PbYZ2KUZElI'
</DOCFLEX_TEMPLATE>