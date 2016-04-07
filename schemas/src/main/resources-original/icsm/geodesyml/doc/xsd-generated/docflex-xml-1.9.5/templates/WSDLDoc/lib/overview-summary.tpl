<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2004-06-21 01:50:00'
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
		param.name='$resourceOutputDir';
		param.title='documentation resources directory';
		param.type='string';
	}
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
		param.name='gen.doc.xsd.schema';
		param.title='Schemas';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview';
		param.title='Overview Summary';
		param.title.style.bold='true';
		param.group='true';
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
		param.name='doc.overview.wsdl.files';
		param.title='WSDL File Summary';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.wsdl.files.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.wsdl.files.description';
		param.title='Description';
		param.type='enum';
		param.enum.values='first_sentence;full;none';
		param.enum.displayValues='first sentence;full;none';
	}
	PARAM={
		param.name='doc.overview.wsdl.files.profile';
		param.title='WSDL File Profile';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.wsdl.files.profile.location';
		param.title='File Location';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.wsdl.files.profile.location.relative';
		param.title='Relative Path';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.wsdl.files.profile.location.hyperlink';
		param.title='Hyperlink';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.wsdl.files.profile.targetNamespace';
		param.title='Target Namespace';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.wsdl.files.profile.types.schemas';
		param.title='Types / Schemas';
		param.type='enum';
		param.enum.values='list;summary;none';
	}
	PARAM={
		param.name='doc.overview.wsdl.files.profile.defs';
		param.title='WSDL Definitions';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.wsdl.files.profile.relatedWSDLs';
		param.title='Related WSDL Files';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.xsd.files';
		param.title='Schema File Summary';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.xsd.files.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.xsd.files.annotation';
		param.title='Annotation';
		param.type='enum';
		param.enum.values='first_sentence;full;none';
		param.enum.displayValues='first sentence;full;none';
	}
	PARAM={
		param.name='doc.overview.xsd.files.profile';
		param.title='Schema Profile';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.xsd.files.profile.location';
		param.title='Schema Location';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.xsd.files.profile.location.relative';
		param.title='Relative Path';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.xsd.files.profile.location.hyperlink';
		param.title='Hyperlink';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.xsd.files.profile.targetNamespace';
		param.title='Target Namespace';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.xsd.files.profile.version';
		param.title='Version';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.xsd.files.profile.components';
		param.title='Components';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.xsd.files.profile.formDefault';
		param.title='Default NS-Qualified Form';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.xsd.files.profile.blockDefault';
		param.title='Default Block Attribute';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.xsd.files.profile.blockDefault.value';
		param.title='Value';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.xsd.files.profile.blockDefault.meaning';
		param.title='Meaning';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.xsd.files.profile.finalDefault';
		param.title='Default Final Attribute';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.xsd.files.profile.finalDefault.value';
		param.title='Value';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.xsd.files.profile.finalDefault.meaning';
		param.title='Meaning';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.xsd.files.profile.relatedSchemas';
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
		param.type='boolean';
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
		style.name='Annotation Smaller';
		style.id='cs1';
		text.font.name='Arial';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Code';
		style.id='cs2';
		text.font.name='Courier New';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Default Paragraph Font';
		style.id='cs3';
		style.default='true';
	}
	PAR_STYLE={
		style.name='Detail Heading 1';
		style.id='s1';
		text.font.size='12';
		text.font.style.bold='true';
	}
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs4';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s2';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Normal Smaller';
		style.id='cs5';
		text.font.name='Arial';
		text.font.size='9';
	}
	PAR_STYLE={
		style.name='Overview Heading';
		style.id='s3';
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
	CHAR_STYLE={
		style.name='Page Number';
		style.id='cs6';
		text.font.size='9';
		text.font.style.italic='true';
	}
	CHAR_STYLE={
		style.name='Summary Heading';
		style.id='cs7';
		text.font.size='12';
		text.font.style.bold='true';
	}
	CHAR_STYLE={
		style.name='Summary Item';
		style.id='cs8';
		text.font.name='Verdana';
		text.font.size='9';
		text.font.style.bold='true';
	}
	CHAR_STYLE={
		style.name='Summary Item Smaller';
		style.id='cs9';
		text.font.name='Verdana';
		text.font.size='8';
		text.font.style.bold='true';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs4';
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
					par.style='s3';
				}
				<CTRLS>
					<DATA_CTRL>
						FORMULA='getStringParam("doc.overview.title")'
						FMT={
							text.font.style.bold='true';
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
							text.font.size='9';
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
			sec.outputStyle='table';
			table.sizing='Relative';
			table.cell.padding.both='3';
		}
		<HTARGET>
			HKEYS={
				'"namespace-summary"';
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
							<SS_CALL_CTRL>
								SS_NAME='Namespace Info'
								FMT={
									ctrl.size.width='466.5';
									ctrl.size.height='17.3';
								}
							</SS_CALL_CTRL>
							<DATA_CTRL>
								COND='output.format.supportsPageRefs &&
thisContext.getBooleanVar ("showPageColumn")'
								DOCFIELD='page-htarget'
								FMT={
									ctrl.size.width='33';
									ctrl.size.height='17.3';
									ctrl.option.noHLinkFmt='true';
									tcell.sizing='Minimal';
									tcell.align.horz='Center';
									text.style='cs6';
									text.hlink.fmt='none';
								}
								<DOC_HLINK>
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
		</BODY>
		<HEADER>
			<AREA_SEC>
				<AREA>
					<SPACER>
						FMT={
							spacer.height='12';
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
									ctrl.size.width='465';
									ctrl.size.height='17.3';
									text.style='cs7';
								}
							</TEXT_CTRL>
							<TEXT_CTRL>
								COND='output.format.supportsPageRefs &&
thisContext.getBooleanVar ("showPageColumn")'
								TEXT='Page'
								FMT={
									ctrl.size.width='34.5';
									ctrl.size.height='17.3';
									tcell.sizing='Minimal';
									tcell.align.horz='Center';
									text.style='cs6';
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
		DESCR='WSDL file summary'
		COND='getBooleanParam("doc.overview.wsdl.files")'
		TEMPLATE_FILE='wsdl/file/wsdlSummary.tpl'
		PASSED_PARAMS={
			'doc.frgm.wsdl.files.sorting','getBooleanParam("doc.overview.wsdl.files.sorting")';
			'doc.frgm.wsdl.files.description','getStringParam("doc.overview.wsdl.files.description")';
			'doc.frgm.wsdl.files.profile','getBooleanParam("doc.overview.wsdl.files.profile")';
			'doc.frgm.wsdl.files.profile.location','getBooleanParam("doc.overview.wsdl.files.profile.location")';
			'doc.frgm.wsdl.files.profile.location.relative','getBooleanParam("doc.overview.wsdl.files.profile.location.relative")';
			'doc.frgm.wsdl.files.profile.location.hyperlink','getBooleanParam("doc.overview.wsdl.files.profile.location.hyperlink")';
			'doc.frgm.wsdl.files.profile.targetNamespace','getBooleanParam("doc.overview.wsdl.files.profile.targetNamespace")';
			'doc.frgm.wsdl.files.profile.types.schemas','getStringParam("doc.overview.wsdl.files.profile.types.schemas")';
			'doc.frgm.wsdl.files.profile.defs','getBooleanParam("doc.overview.wsdl.files.profile.defs")';
			'doc.frgm.wsdl.files.profile.relatedWSDLs','getBooleanParam("doc.overview.wsdl.files.profile.relatedWSDLs")';
		}
		FMT={
			sec.spacing.before='12';
		}
		<HTARGET>
			HKEYS={
				'"wsdl-file-summary"';
			}
		</HTARGET>
	</TEMPLATE_CALL>
	<TEMPLATE_CALL>
		DESCR='schema summary'
		COND='getBooleanParam("doc.overview.xsd.files")'
		TEMPLATE_FILE='xsd/schema/schemaSummary.tpl'
		PASSED_PARAMS={
			'doc.frgm.xsd.schemas.sorting','getBooleanParam("doc.overview.xsd.files.sorting")';
			'doc.frgm.xsd.schemas.annotation','getStringParam("doc.overview.xsd.files.annotation")';
			'doc.frgm.xsd.schemas.profile','getBooleanParam("doc.overview.xsd.files.profile")';
			'doc.frgm.xsd.schemas.profile.location','getBooleanParam("doc.overview.xsd.files.profile.location")';
			'doc.frgm.xsd.schemas.profile.location.relative','getBooleanParam("doc.overview.xsd.files.profile.location.relative")';
			'doc.frgm.xsd.schemas.profile.location.hyperlink','getBooleanParam("doc.overview.xsd.files.profile.location.hyperlink")';
			'doc.frgm.xsd.schemas.profile.targetNamespace','getBooleanParam("doc.overview.xsd.files.profile.targetNamespace")';
			'doc.frgm.xsd.schemas.profile.version','getBooleanParam("doc.overview.xsd.files.profile.version")';
			'doc.frgm.xsd.schemas.profile.components','getBooleanParam("doc.overview.xsd.files.profile.components")';
			'doc.frgm.xsd.schemas.profile.formDefault','getBooleanParam("doc.overview.xsd.files.profile.formDefault")';
			'doc.frgm.xsd.schemas.profile.blockDefault','getBooleanParam("doc.overview.xsd.files.profile.blockDefault")';
			'doc.frgm.xsd.schemas.profile.blockDefault.value','getBooleanParam("doc.overview.xsd.files.profile.blockDefault.value")';
			'doc.frgm.xsd.schemas.profile.blockDefault.meaning','getBooleanParam("doc.overview.xsd.files.profile.blockDefault.meaning")';
			'doc.frgm.xsd.schemas.profile.finalDefault','getBooleanParam("doc.overview.xsd.files.profile.finalDefault")';
			'doc.frgm.xsd.schemas.profile.finalDefault.value','getBooleanParam("doc.overview.xsd.files.profile.finalDefault.value")';
			'doc.frgm.xsd.schemas.profile.finalDefault.meaning','getBooleanParam("doc.overview.xsd.files.profile.finalDefault.meaning")';
			'doc.frgm.xsd.schemas.profile.relatedSchemas','getBooleanParam("doc.overview.xsd.files.profile.relatedSchemas")';
		}
		FMT={
			sec.spacing.before='12';
		}
		<HTARGET>
			HKEYS={
				'"schema-file-summary"';
			}
		</HTARGET>
	</TEMPLATE_CALL>
	<TEMPLATE_CALL>
		DESCR='Bottom Message'
		COND='output.type == "document" && getBooleanParam("show.about")'
		TEMPLATE_FILE='about.tpl'
	</TEMPLATE_CALL>
</ROOT>
<STOCK_SECTIONS>
	<FOLDER>
		SS_NAME='Namespace Info'
		MATCHING_ET='#CUSTOM'
		<BODY>
			<AREA_SEC>
				<HTARGET>
					HKEYS={
						'contextElement.id';
						'"detail"';
					}
				</HTARGET>
				<AREA>
					<CTRL_GROUP>
						FMT={
							trow.cell.align.vert='Top';
							txtfl.delimiter.type='none';
							par.margin.bottom='9';
							par.page.keepWithNext='true';
						}
						<CTRLS>
							<IMAGE_CTRL>
								IMAGE_TYPE='file-image'
								FILE='images/namespace.png'
								OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
								FMT={
									image.alignment='middle';
									image.padding.right='3.3';
									image.padding.bottom='1.5';
								}
							</IMAGE_CTRL>
							<DATA_CTRL>
								FORMULA='contextElement.value != "" ? contextElement.value : "{no namespace}"'
								FMT={
									text.font.name='Arial';
									text.font.size='9';
									text.font.style.bold='true';
									par.margin.left='0.8';
									par.margin.right='0.8';
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
					'$compact','true';
				}
				PASSED_ROOT_ELEMENT_EXPR='rootElement'
				FMT={
					sec.indent.block='true';
				}
			</TEMPLATE_CALL>
		</BODY>
	</FOLDER>
</STOCK_SECTIONS>
CHECKSUM='Njh?E0mxunKoC1DZ?GojkLP3I38YbFtdpRkWiuWnqIw'
</DOCFLEX_TEMPLATE>