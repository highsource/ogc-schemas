<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2004-06-21 01:50:00'
LAST_UPDATE='2014-07-05 20:02:50'
DESIGNER_TOOL='DocFlex SDK 1.x'
DESIGNER_LICENSE_TYPE='Filigris Works Team'
APP_ID='docflex-xml-xsddoc2'
APP_NAME='DocFlex/XML XSDDoc'
APP_VER='2.8.1'
APP_AUTHOR='Copyright © 2005-2014 Filigris Works, Leonid Rudy Softwareprodukte. All rights reserved.'
TEMPLATE_TYPE='DocumentTemplate'
DSM_TYPE_ID='xsddoc'
ROOT_ET='#DOCUMENTS'
TITLE_EXPR='title = "Overview";

(parentTitle = getStringParam("docTitle")) != null
  ? title + " | " + parentTitle : title'
HTML_HEAD_EXPR='title = "Overview";

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
		param.name='gen.doc';
		param.title='Include Details';
		param.title.style.bold='true';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='gen.doc.namespace';
		param.title='Namespaces';
		param.type='boolean';
	}
	PARAM={
		param.name='gen.doc.schema';
		param.title='Schemas';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview';
		param.title='Overview Summary';
		param.title.style.bold='true';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='doc.overview.title';
		param.title='Title';
		param.type='string';
	}
	PARAM={
		param.name='doc.overview.namespaces';
		param.title='Namespace Summary';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.namespaces.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.schemas';
		param.title='Schema Summary';
		param.title.style.bold='true';
		param.group='true';
		param.group.defaultState='expanded';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.schemas.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.schemas.annotation';
		param.title='Annotation';
		param.type='enum';
		param.enum.values='first_sentence;full;none';
	}
	PARAM={
		param.name='doc.overview.schemas.profile';
		param.title='Schema Profile';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.schemas.profile.targetNamespace';
		param.title='Target Namespace';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.schemas.profile.version';
		param.title='Version';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.schemas.profile.components';
		param.title='Components';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.schemas.profile.formDefault';
		param.title='Default NS-Qualified Form';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.schemas.profile.blockDefault';
		param.title='Default Block Attribute';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.schemas.profile.blockDefault.value';
		param.title='Value';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.schemas.profile.blockDefault.meaning';
		param.title='Meaning';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.schemas.profile.finalDefault';
		param.title='Default Final Attribute';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.schemas.profile.finalDefault.value';
		param.title='Value';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.schemas.profile.finalDefault.meaning';
		param.title='Meaning';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.schemas.profile.location';
		param.title='Schema Location';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.schemas.profile.location.relative';
		param.title='Relative Path';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.schemas.profile.location.hyperlink';
		param.title='Hyperlink';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.schemas.profile.relatedSchemas';
		param.title='Related Schemas';
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
	PARAM={
		param.name='show.about';
		param.title='About (footer)';
		param.type='enum';
		param.enum.values='full;short;none';
	}
	PARAM={
		param.name='fmt.page';
		param.title='Pagination';
		param.title.style.bold='true';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='fmt.page.columns';
		param.title='Generate page columns';
		param.type='boolean';
	}
</TEMPLATE_PARAMS>
<STYLES>
	CHAR_STYLE={
		style.name='Annotation (Small)';
		style.id='cs1';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Default Paragraph Font';
		style.id='cs2';
		style.default='true';
	}
	PAR_STYLE={
		style.name='Heading 1';
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
		par.margin.bottom='1.4';
		par.padding.left='3.3';
		par.padding.right='3.3';
		par.padding.top='2.5';
		par.padding.bottom='2.5';
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
		par.margin.top='11.7';
		par.margin.bottom='8.3';
		par.padding.left='2.5';
		par.padding.right='2.5';
		par.padding.top='1.7';
		par.padding.bottom='1.7';
		par.page.keepWithNext='true';
	}
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs3';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='Mono';
		style.id='cs4';
		text.font.name='Courier New';
		text.font.size='9';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s3';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Page Number';
		style.id='cs5';
		text.font.size='9';
		text.font.style.italic='true';
	}
	CHAR_STYLE={
		style.name='Summary Heading 1 (Font)';
		style.id='cs6';
		text.font.size='12';
		text.font.style.bold='true';
	}
	CHAR_STYLE={
		style.name='Summary Item';
		style.id='cs7';
		text.font.name='Verdana';
		text.font.size='9';
		text.font.style.bold='true';
	}
	CHAR_STYLE={
		style.name='Summary Item (Small)';
		style.id='cs8';
		text.font.name='Verdana';
		text.font.size='8.4';
		text.font.style.bold='true';
	}
	CHAR_STYLE={
		style.name='Timestamp';
		style.id='cs9';
		text.font.size='9';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs3';
}
<HTARGET>
	HKEYS={
		'"overview-summary"';
	}
</HTARGET>
<ROOT>
	<AREA_SEC>
		<AREA>
			<CTRL_GROUP>
				FMT={
					txtfl.delimiter.type='none';
					par.style='s1';
				}
				<CTRLS>
					<DATA_CTRL>
						FORMULA='getStringParam("doc.overview.title")'
						FMT={
							txtfl.ehtml.render='true';
						}
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
			<CTRL_GROUP>
				COND='! output.noTimeStamp'
				FMT={
					trow.cell.align.vert='Top';
				}
				<CTRLS>
					<DATA_CTRL>
						FORMULA='dateTime ("MEDIUM")'
						FMT={
							text.style='cs9';
							text.option.nbsps='true';
						}
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<ELEMENT_ITER>
		DESCR='namespace summary'
		COND='getBooleanParam("doc.overview.namespaces")'
		TARGET_ET='#CUSTOM'
		SCOPE='custom'
		ELEMENT_ENUM_EXPR='toCustomElements (getElementMapKeys("namespaces"))'
		SORTING='by-value'
		SORTING_KEY={lpath='.',ascending}
		SORTING_COND='getBooleanParam("doc.overview.namespaces.sorting")'
		FMT={
			table.sizing='Relative';
			table.cell.padding.both='2.5';
		}
		<HTARGET>
			HKEYS={
				'"namespace-summary"';
			}
		</HTARGET>
		<BODY>
			<AREA_SEC>
				FMT={
					sec.outputStyle='table';
					sec.spacing.before='8';
					sec.spacing.after='6';
					table.sizing='Relative';
					table.cell.padding.both='2.5';
				}
				<AREA>
					<CTRL_GROUP>
						FMT={
							trow.bkgr.color='#EEEEFF';
						}
						<CTRLS>
							<DATA_CTRL>
								FORMULA='contextElement.value != "" ? contextElement.value : "{no namespace}"'
								FMT={
									ctrl.size.width='499.5';
									ctrl.size.height='17.3';
									text.font.style.bold='true';
								}
								<DOC_HLINK>
									TITLE_EXPR='getBooleanParam("show.linkTitle") ? 
  contextElement.value != ""
    ? "Namespace {" + contextElement.value.toString() + "}"
    : "No Namespace"
: ""'
									HKEYS={
										'contextElement.value';
										'"detail"';
									}
								</DOC_HLINK>
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<TEMPLATE_CALL>
				TEMPLATE_FILE='namespace/namespaceProfile.tpl'
				PASSED_PARAMS={
					'$nsURI','contextElement.value';
				}
				PASSED_ROOT_ELEMENT_EXPR='rootElement'
			</TEMPLATE_CALL>
		</BODY>
		<HEADER>
			<AREA_SEC>
				FMT={
					sec.outputStyle='table';
					table.sizing='Relative';
					table.cell.padding.both='2.5';
				}
				<AREA>
					<SPACER>
						FMT={
							spacer.height='11.7';
						}
					</SPACER>
					<CTRL_GROUP>
						FMT={
							trow.bkgr.color='#CCCCFF';
						}
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Namespace Summary'
								FMT={
									ctrl.size.width='499.5';
									ctrl.size.height='17.3';
									text.style='cs6';
								}
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</ELEMENT_ITER>
	<ELEMENT_ITER>
		DESCR='schema summary'
		COND='getBooleanParam("doc.overview.schemas")'
		TARGET_ET='xs:schema'
		SCOPE='advanced-location-rules'
		RULES={
			'* -> #DOCUMENT/xs:schema[checkElementsByKey ("documented-schemas", contextElement.id)]';
		}
		SORTING='by-expr'
		SORTING_KEY={expr='getXMLDocument().getAttrStringValue("xmlName")',ascending}
		SORTING_COND='getBooleanParam("doc.overview.schemas.sorting")'
		FMT={
			sec.outputStyle='table';
			table.sizing='Relative';
			table.cell.padding.both='2.5';
		}
		<HTARGET>
			HKEYS={
				'"schema-summary"';
			}
		</HTARGET>
		<BODY>
			<AREA_SEC>
				FMT={
					trow.cell.align.vert='Top';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								FORMULA='getXMLDocument().getAttrStringValue("xmlName")'
								FMT={
									ctrl.size.width='120';
									ctrl.size.height='17.3';
									tcell.sizing='Minimal';
									text.style='cs7';
									par.option.nowrap='true';
								}
								<DOC_HLINK>
									TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("Schema Link Title")
: ""'
									HKEYS={
										'contextElement.id';
										'"detail"';
									}
								</DOC_HLINK>
							</DATA_CTRL>
							<SS_CALL_CTRL>
								SS_NAME='Schema'
								FMT={
									ctrl.size.width='346.5';
									ctrl.size.height='17.3';
								}
							</SS_CALL_CTRL>
							<DATA_CTRL>
								COND='output.format.supportsPageRefs &&
getBooleanParam("fmt.page.columns") &&
getBooleanParam("gen.doc.schema")'
								DOCFIELD='page-htarget'
								FMT={
									ctrl.size.width='33';
									ctrl.size.height='17.3';
									ctrl.option.noHLinkFmt='true';
									tcell.sizing='Minimal';
									tcell.align.horz='Center';
									text.style='cs5';
									text.hlink.fmt='none';
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
		<HEADER>
			<AREA_SEC>
				<AREA>
					<SPACER>
						FMT={
							spacer.height='11.7';
						}
					</SPACER>
					<CTRL_GROUP>
						FMT={
							trow.bkgr.color='#CCCCFF';
						}
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Schema Summary'
								FMT={
									ctrl.size.width='465';
									ctrl.size.height='17.3';
									text.style='cs6';
								}
							</TEXT_CTRL>
							<TEXT_CTRL>
								COND='output.format.supportsPageRefs &&
getBooleanParam("fmt.page.columns") &&
getBooleanParam("gen.doc.schema")'
								TEXT='Page'
								FMT={
									ctrl.size.width='34.5';
									ctrl.size.height='17.3';
									tcell.sizing='Minimal';
									tcell.align.horz='Center';
									text.style='cs5';
									text.font.style.bold='true';
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
		TEMPLATE_FILE='about.tpl'
	</TEMPLATE_CALL>
</ROOT>
<STOCK_SECTIONS>
	<FOLDER>
		SS_NAME='Schema'
		MATCHING_ET='xs:schema'
		<BODY>
			<TEMPLATE_CALL>
				COND='hasParamValue("doc.overview.schemas.annotation", "full")'
				OUTPUT_CHECKER_EXPR='getValuesByLPath(
  "xs:annotation/xs:documentation//(#TEXT | #CDATA)"
).isBlank() ? -1 : 1'
				TEMPLATE_FILE='ann/annotation.tpl'
				FMT={
					text.style='cs1';
				}
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				COND='hasParamValue("doc.overview.schemas.annotation", "first_sentence")'
				OUTPUT_CHECKER_EXPR='getValuesByLPath(
  "xs:annotation/xs:documentation//(#TEXT | #CDATA)"
).isBlank() ? -1 : 1'
				TEMPLATE_FILE='ann/firstSentence.tpl'
				FMT={
					text.style='cs1';
				}
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				COND='getBooleanParam("doc.overview.schemas.profile")'
				TEMPLATE_FILE='schema/schemaProfile.tpl'
				PASSED_PARAMS={
					'doc.schema.profile.targetNamespace','getBooleanParam("doc.overview.schemas.profile.targetNamespace")';
					'doc.schema.profile.version','getBooleanParam("doc.overview.schemas.profile.version")';
					'doc.schema.profile.components','getBooleanParam("doc.overview.schemas.profile.components")';
					'doc.schema.profile.formDefault','getBooleanParam("doc.overview.schemas.profile.formDefault")';
					'doc.schema.profile.blockDefault','getBooleanParam("doc.overview.schemas.profile.blockDefault")';
					'doc.schema.profile.blockDefault.value','getBooleanParam("doc.overview.schemas.profile.blockDefault.value")';
					'doc.schema.profile.blockDefault.meaning','getBooleanParam("doc.overview.schemas.profile.blockDefault.meaning")';
					'doc.schema.profile.finalDefault','getBooleanParam("doc.overview.schemas.profile.finalDefault")';
					'doc.schema.profile.finalDefault.value','getBooleanParam("doc.overview.schemas.profile.finalDefault.value")';
					'doc.schema.profile.finalDefault.meaning','getBooleanParam("doc.overview.schemas.profile.finalDefault.meaning")';
					'doc.schema.profile.location','getBooleanParam("doc.overview.schemas.profile.location")';
					'doc.schema.profile.location.relative','getBooleanParam("doc.overview.schemas.profile.location.relative")';
					'doc.schema.profile.location.hyperlink','getBooleanParam("doc.overview.schemas.profile.location.hyperlink")';
					'doc.schema.profile.relatedSchemas','getBooleanParam("doc.overview.schemas.profile.relatedSchemas")';
				}
				FMT={
					sec.spacing.before='6.7';
				}
			</TEMPLATE_CALL>
		</BODY>
	</FOLDER>
	<TEMPLATE_CALL>
		SS_NAME='Schema Link Title'
		TEMPLATE_FILE='schema/schemaLinkTitle.tpl'
	</TEMPLATE_CALL>
</STOCK_SECTIONS>
CHECKSUM='x8FKsjq9Dbdd5KFYPNznr8P+B0dPILkVZ+8vYKlVTm4'
</DOCFLEX_TEMPLATE>