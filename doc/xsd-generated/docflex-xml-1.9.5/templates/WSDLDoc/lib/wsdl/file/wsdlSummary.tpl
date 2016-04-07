<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2012-09-02 01:41:21'
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
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$nsURI';
		param.title='Namespace URI';
		param.type='string';
	}
	PARAM={
		param.name='$scope';
		param.description='Indicates the scope of the main document for which this template is called:
<ul>
<li>"any" - unspecified</li>
<li>"namespace" - namespace overview</li>
</ul>';
		param.type='enum';
		param.enum.values='any;namespace';
	}
	PARAM={
		param.name='$page.heading.left';
		param.title='Page Heading (on the left)';
		param.type='string';
	}
	PARAM={
		param.name='$resourceOutputDir';
		param.title='documentation resources directory';
		param.type='string';
	}
	PARAM={
		param.name='doc.frgm.wsdl.files';
		param.title='WSDL File Summary';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='doc.frgm.wsdl.files.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.wsdl.files.description';
		param.title='Description';
		param.type='enum';
		param.enum.values='first_sentence;full;none';
		param.enum.displayValues='first sentence;full;none';
	}
	PARAM={
		param.name='doc.frgm.wsdl.files.profile';
		param.title='WSDL File Profile';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.wsdl.files.profile.location';
		param.title='File Location';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.wsdl.files.profile.location.relative';
		param.title='Relative Path';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.wsdl.files.profile.location.hyperlink';
		param.title='Hyperlink';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.wsdl.files.profile.targetNamespace';
		param.title='Target Namespace';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.wsdl.files.profile.types.schemas';
		param.title='Types / Schemas';
		param.type='enum';
		param.enum.values='list;summary;none';
	}
	PARAM={
		param.name='doc.frgm.wsdl.files.profile.defs';
		param.title='WSDL Definitions';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.wsdl.files.profile.relatedWSDLs';
		param.title='Related WSDL Files';
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
		param.name='fmt';
		param.title='Formatting';
		param.title.style.bold='true';
		param.group='true';
	}
	PARAM={
		param.name='fmt.allowNestedTables';
		param.title='Allow nested tables';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='fmt.page.columns';
		param.title='Generate page columns';
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
		style.name='Main Heading';
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
		style.name='Normal';
		style.id='s2';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Normal Smaller';
		style.id='cs3';
		text.font.name='Arial';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Page Header Font';
		style.id='cs4';
		text.font.name='Arial';
		text.font.style.italic='true';
	}
	CHAR_STYLE={
		style.name='Page Number';
		style.id='cs5';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Summary Heading';
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
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs2';
}
<PAGE_HEADER>
	<AREA_SEC>
		FMT={
			sec.outputStyle='table';
			text.style='cs4';
			table.sizing='Relative';
			table.cell.padding.horz='0.8';
			table.cell.padding.vert='0';
			table.border.style='none';
			table.border.bottom.style='solid';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<DATA_CTRL>
						FORMULA='getStringParam("$page.heading.left")'
						FMT={
							ctrl.size.width='398.3';
							ctrl.size.height='17.3';
						}
					</DATA_CTRL>
					<TEXT_CTRL>
						TEXT='WSDL File Summary'
						FMT={
							ctrl.size.width='101.3';
							ctrl.size.height='17.3';
							tcell.align.horz='Right';
							tcell.option.nowrap='true';
						}
					</TEXT_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
</PAGE_HEADER>
<ROOT>
	<ELEMENT_ITER>
		INIT_EXPR='output.format.supportsPageRefs ?
{
  showPageColumn = false;

  getBooleanParam("fmt.page.columns") && output.generating ?
  {
    index = 0;
    repeat (BooleanQuery ({

      (el = iterator.itemAt (index).toElement()) != null ?
      {
        showPageColumn = findHyperTarget (Array (
          el.id, Array ("detail", "xml-source-location")
        )) != null;

        index = index + 1;
        ! showPageColumn

      } : false;
    }));
  };

  thisContext.setVar ("showPageColumn", showPageColumn)
}'
		TARGET_ET='wsdl:definitions'
		SCOPE='advanced-location-rules'
		RULES={
			'*[hasParamValue("$scope", "any")] -> #DOCUMENT/wsdl:definitions[checkElementsByKey("documented-wsdl-files", contextElement.id)]';
			'*[hasParamValue("$scope", "namespace")] -> {findElementsByKey ("namespaces", getParam("$nsURI"))}::wsdl:definitions';
		}
		SORTING='by-expr'
		SORTING_KEY={expr='getXMLDocument().getAttrStringValue("xmlName")',ascending}
		SORTING_COND='getBooleanParam("doc.frgm.wsdl.files.sorting")'
		FMT={
			sec.outputStyle='table';
			table.sizing='Relative';
			table.cell.padding.both='2.5';
		}
		<BODY>
			<AREA_SEC>
				FMT={
					trow.cell.align.vert='Top';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<PANEL>
								FMT={
									ctrl.size.width='183';
									ctrl.size.height='42';
									tcell.sizing='Minimal';
									par.option.nowrap='true';
								}
								<AREA>
									<CTRL_GROUP>
										FMT={
											txtfl.delimiter.type='none';
										}
										<CTRLS>
											<IMAGE_CTRL>
												IMAGE_TYPE='file-image'
												FILE='../../images/wsdl.png'
												OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
												FMT={
													image.alignment='middle';
													image.padding.right='2.5';
												}
											</IMAGE_CTRL>
											<SS_CALL_CTRL>
												SS_NAME='WSDL Name'
												FMT={
													text.style='cs7';
												}
											</SS_CALL_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
							<SS_CALL_CTRL>
								SS_NAME='WSDL File Info'
								FMT={
									ctrl.size.width='283.5';
									ctrl.size.height='42';
								}
							</SS_CALL_CTRL>
							<DATA_CTRL>
								COND='output.format.supportsPageRefs &&
thisContext.getBooleanVar ("showPageColumn")'
								DOCFIELD='page-htarget'
								FMT={
									ctrl.size.width='33';
									ctrl.size.height='42';
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
					<CTRL_GROUP>
						FMT={
							trow.bkgr.color='#CCCCFF';
						}
						<CTRLS>
							<TEXT_CTRL>
								TEXT='WSDL File Summary'
								FMT={
									ctrl.size.width='465';
									ctrl.size.height='17.3';
									text.style='cs6';
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
</ROOT>
<STOCK_SECTIONS>
	<FOLDER>
		SS_NAME='WSDL File Info'
		MATCHING_ET='wsdl:definitions'
		<BODY>
			<TEMPLATE_CALL>
				DESCR='first sentence of description'
				COND='hasParamValue("doc.frgm.wsdl.files.description", "first_sentence")'
				TEMPLATE_FILE='../misc/firstSentence.tpl'
				FMT={
					text.style='cs3';
				}
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				COND='getBooleanParam("doc.frgm.wsdl.files.profile")'
				TEMPLATE_FILE='wsdlProfile.tpl'
				PASSED_PARAMS={
					'doc.wsdl.file.profile.targetNamespace','getBooleanParam("doc.frgm.wsdl.files.profile.targetNamespace")';
					'doc.wsdl.file.profile.types.schemas','getStringParam("doc.frgm.wsdl.files.profile.types.schemas")';
					'doc.wsdl.file.profile.defs','getBooleanParam("doc.frgm.wsdl.files.profile.defs")';
					'doc.wsdl.file.profile.location','getBooleanParam("doc.frgm.wsdl.files.profile.location")';
					'doc.wsdl.file.profile.location.relative','getBooleanParam("doc.frgm.wsdl.files.profile.location.relative")';
					'doc.wsdl.file.profile.location.hyperlink','getBooleanParam("doc.frgm.wsdl.files.profile.location.hyperlink")';
					'doc.wsdl.file.profile.relatedWSDLs','getBooleanParam("doc.frgm.wsdl.files.profile.relatedWSDLs")';
				}
				FMT={
					sec.spacing.before='7';
				}
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				DESCR='full description'
				COND='hasParamValue("doc.frgm.wsdl.files.description", "full")'
				CONTEXT_ELEMENT_EXPR='findChild("wsdl:documentation")'
				MATCHING_ET='wsdl:documentation'
				OUTPUT_CHECKER_EXPR='getValuesByLPath(
  "xs:annotation/xs:documentation//(#TEXT | #CDATA)"
).isBlank() ? -1 : 1'
				TEMPLATE_FILE='../../doc/docOutput.tpl'
				FMT={
					sec.spacing.before='7';
					text.style='cs3';
				}
			</TEMPLATE_CALL>
		</BODY>
	</FOLDER>
	<TEMPLATE_CALL>
		SS_NAME='WSDL Name'
		MATCHING_ET='wsdl:definitions'
		TEMPLATE_FILE='wsdlName.tpl'
	</TEMPLATE_CALL>
</STOCK_SECTIONS>
CHECKSUM='eRYrRyQS61zWuKdMFPaM5LSymKVtFr?UxO3Ak8BeLoM'
</DOCFLEX_TEMPLATE>