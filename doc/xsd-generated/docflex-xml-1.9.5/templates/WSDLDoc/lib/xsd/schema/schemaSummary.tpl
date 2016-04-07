<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2012-09-01 02:55:50'
LAST_UPDATE='2014-07-05 20:02:58'
DESIGNER_TOOL='DocFlex SDK 1.x'
DESIGNER_LICENSE_TYPE='Filigris Works Team'
APP_ID='docflex-xml-wsdldoc'
APP_NAME='DocFlex/XML WSDLDoc'
APP_VER='1.0.b'
APP_AUTHOR='Copyright © 2014 Filigris Works, Leonid Rudy Softwareprodukte. All rights reserved.'
FEATURE_TYPE='pro'
TEMPLATE_TYPE='DocumentTemplate'
DSM_TYPE_ID='wsdldoc'
ROOT_ETS={'#DOCUMENTS';'wsdl:definitions'}
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
<li>"wsdl_file" - WSDL file overview</li>
</ul>';
		param.type='enum';
		param.enum.values='any;namespace;wsdl_file';
	}
	PARAM={
		param.name='$summaryTitle';
		param.title='Summary Title';
		param.type='string';
		param.defaultValue.expr='hasParamValue("$scope", "wsdl_file") ?
 "Embedded Schema Summary" 
 : hasParamValue("$scope", "namespace") ?
   "Schema Summary" : "Schema File Summary"';
		param.autoPassed='false';
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
		param.name='doc.frgm.xsd.schemas';
		param.title='Schema Summary';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='doc.frgm.xsd.schemas.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.schemas.annotation';
		param.title='Annotation';
		param.type='enum';
		param.enum.values='first_sentence;full;none';
		param.enum.displayValues='first sentence;full;none';
	}
	PARAM={
		param.name='doc.frgm.xsd.schemas.profile';
		param.title='Schema Profile';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.schemas.profile.location';
		param.title='Schema Location';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.schemas.profile.location.relative';
		param.title='Relative Path';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.schemas.profile.location.hyperlink';
		param.title='Hyperlink';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.schemas.profile.targetNamespace';
		param.title='Target Namespace';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.schemas.profile.version';
		param.title='Version';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.schemas.profile.components';
		param.title='Components';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.schemas.profile.formDefault';
		param.title='Default NS-Qualified Form';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.schemas.profile.blockDefault';
		param.title='Default Block Attribute';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.schemas.profile.blockDefault.value';
		param.title='Value';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.schemas.profile.blockDefault.meaning';
		param.title='Meaning';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.schemas.profile.finalDefault';
		param.title='Default Final Attribute';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.schemas.profile.finalDefault.value';
		param.title='Value';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.schemas.profile.finalDefault.meaning';
		param.title='Meaning';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.schemas.profile.relatedSchemas';
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
					<DATA_CTRL>
						FORMULA='getParam("$summaryTitle")'
						FMT={
							ctrl.size.width='101.3';
							ctrl.size.height='17.3';
							tcell.align.horz='Right';
							tcell.option.nowrap='true';
						}
					</DATA_CTRL>
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
		TARGET_ET='xs:schema'
		SCOPE='advanced-location-rules'
		RULES={
			'#DOCUMENTS[hasParamValue("$scope", "any")] -> #DOCUMENT/xs:schema[checkElementsByKey("documented-schemas", contextElement.id)]';
			'#DOCUMENTS[hasParamValue("$scope", "namespace")] -> {findElementsByKey ("namespaces", getParam("$nsURI"))}::xs:schema';
			'wsdl:definitions -> wsdl:types/xs:schema[checkElementsByKey("documented-schemas", contextElement.id)]';
		}
		SORTING='by-compound-key'
		SORTING_KEY={
			{expr='getXMLDocument().getAttrValue("xmlName")',ascending};
			{expr='getServiceAttr("embeddedSchemaNo")',ascending};
		}
		SORTING_COND='getBooleanParam("doc.frgm.xsd.schemas.sorting")'
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
												FILE='../../images/schema.png'
												OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
												FMT={
													image.alignment='middle';
													image.padding.right='2.5';
												}
											</IMAGE_CTRL>
											<SS_CALL_CTRL>
												SS_NAME='Schema Name'
												FMT={
													text.style='cs7';
												}
											</SS_CALL_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
							<SS_CALL_CTRL>
								SS_NAME='Schema Info'
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
							<DATA_CTRL>
								FORMULA='getParam("$summaryTitle")'
								FMT={
									ctrl.size.width='465';
									ctrl.size.height='17.3';
									text.style='cs6';
								}
							</DATA_CTRL>
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
		SS_NAME='Schema Info'
		MATCHING_ET='xs:schema'
		<BODY>
			<TEMPLATE_CALL>
				COND='hasParamValue("doc.frgm.xsd.schemas.annotation", "first_sentence")'
				OUTPUT_CHECKER_EXPR='getValuesByLPath(
  "xs:annotation/xs:documentation//(#TEXT | #CDATA)"
).isBlank() ? -1 : 1'
				TEMPLATE_FILE='../ann/firstSentence.tpl'
				FMT={
					text.style='cs3';
				}
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				COND='getBooleanParam("doc.frgm.xsd.schemas.profile")'
				TEMPLATE_FILE='schemaProfile.tpl'
				PASSED_PARAMS={
					'doc.xsd.schema.profile.location','getBooleanParam("doc.frgm.xsd.schemas.profile.location")';
					'doc.xsd.schema.profile.location.relative','getBooleanParam("doc.frgm.xsd.schemas.profile.location.relative")';
					'doc.xsd.schema.profile.location.hyperlink','getBooleanParam("doc.frgm.xsd.schemas.profile.location.hyperlink")';
					'doc.xsd.schema.profile.targetNamespace','getBooleanParam("doc.frgm.xsd.schemas.profile.targetNamespace")';
					'doc.xsd.schema.profile.version','getBooleanParam("doc.frgm.xsd.schemas.profile.version")';
					'doc.xsd.schema.profile.components','getBooleanParam("doc.frgm.xsd.schemas.profile.components")';
					'doc.xsd.schema.profile.formDefault','getBooleanParam("doc.frgm.xsd.schemas.profile.formDefault")';
					'doc.xsd.schema.profile.blockDefault','getBooleanParam("doc.frgm.xsd.schemas.profile.blockDefault")';
					'doc.xsd.schema.profile.blockDefault.value','getBooleanParam("doc.frgm.xsd.schemas.profile.blockDefault.value")';
					'doc.xsd.schema.profile.blockDefault.meaning','getBooleanParam("doc.frgm.xsd.schemas.profile.blockDefault.meaning")';
					'doc.xsd.schema.profile.finalDefault','getBooleanParam("doc.frgm.xsd.schemas.profile.finalDefault")';
					'doc.xsd.schema.profile.finalDefault.value','getBooleanParam("doc.frgm.xsd.schemas.profile.finalDefault.value")';
					'doc.xsd.schema.profile.finalDefault.meaning','getBooleanParam("doc.frgm.xsd.schemas.profile.finalDefault.meaning")';
					'doc.xsd.schema.profile.relatedSchemas','getBooleanParam("doc.frgm.xsd.schemas.profile.relatedSchemas")';
				}
				FMT={
					sec.spacing.before='7';
				}
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				COND='hasParamValue("doc.frgm.xsd.schemas.annotation", "full")'
				OUTPUT_CHECKER_EXPR='getValuesByLPath(
  "xs:annotation/xs:documentation//(#TEXT | #CDATA)"
).isBlank() ? -1 : 1'
				TEMPLATE_FILE='../ann/annotation.tpl'
				FMT={
					sec.spacing.before='7';
					text.style='cs3';
				}
			</TEMPLATE_CALL>
		</BODY>
	</FOLDER>
	<TEMPLATE_CALL>
		SS_NAME='Schema Link Title'
		MATCHING_ET='xs:schema'
		TEMPLATE_FILE='schemaLinkTitle.tpl'
	</TEMPLATE_CALL>
	<FOLDER>
		SS_NAME='Schema Name'
		MATCHING_ET='xs:schema'
		<BODY>
			<AREA_SEC>
				COND='hasServiceAttr("embedded")'
				BREAK_PARENT_BLOCK='when-executed'
				<AREA>
					<CTRL_GROUP>
						FMT={
							txtfl.delimiter.type='space';
						}
						<CTRLS>
							<DATA_CTRL>
								FORMULA='"Schema" + getServiceAttr("embeddedSchemaNo")'
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
							<PANEL>
								COND='! hasParamValue("$scope", "wsdl_file")'
								FMT={
									ctrl.size.width='231.8';
									ctrl.size.height='38.3';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='in'
											</TEXT_CTRL>
											<DATA_CTRL>
												FORMULA='getXMLDocument().getAttrStringValue("xmlName")'
												<DOC_HLINK>
													CONTEXT_ELEMENT_EXPR='findAncestor ("wsdl:definitions")'
													MATCHING_ET='wsdl:definitions'
													ALT_HLINK
													TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("WSDL Link Title")
: ""'
													HKEYS={
														'contextElement.id';
														'"detail"';
													}
												</DOC_HLINK>
												<DOC_HLINK>
													ALT_HLINK
													HKEYS={
														'getXMLDocument().id';
														'"detail"';
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
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								FORMULA='getXMLDocument().getAttrStringValue("xmlName")'
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
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</FOLDER>
	<TEMPLATE_CALL>
		SS_NAME='WSDL Link Title'
		MATCHING_ET='wsdl:definitions'
		TEMPLATE_FILE='../../wsdl/file/wsdlLinkTitle.tpl'
	</TEMPLATE_CALL>
</STOCK_SECTIONS>
CHECKSUM='TIq8aDnBvLq0EsZ3GtYo3vsII+IyT9O5ib9fJP9s7jI'
</DOCFLEX_TEMPLATE>