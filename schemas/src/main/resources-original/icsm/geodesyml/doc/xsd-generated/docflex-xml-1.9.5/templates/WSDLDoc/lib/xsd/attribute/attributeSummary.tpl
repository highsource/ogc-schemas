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
ROOT_ETS={'#DOCUMENTS';'xs:schema'}
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
<li>"schema" - schema overview</li>
</ul>';
		param.type='enum';
		param.enum.values='any;namespace;schema';
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
		param.name='doc.frgm.xsd.comps';
		param.title='XSD Component Summary';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.annotation';
		param.title='Annotation';
		param.type='enum';
		param.enum.values='first_sentence;full;none';
		param.enum.displayValues='first sentence;full;none';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile';
		param.title='Component Profile';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.namespace';
		param.title='Namespace';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.type';
		param.title='Type';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.content';
		param.title='Content';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.abstract';
		param.title='Abstract';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.block';
		param.title='Block';
		param.group='true';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.block.value';
		param.title='Value';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.block.meaning';
		param.title='Meaning';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.final';
		param.title='Final';
		param.group='true';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.final.value';
		param.title='Value';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.final.meaning';
		param.title='Meaning';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.subst';
		param.title='Subst.Gr';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.subst.heads';
		param.title='List of group heads';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.subst.members';
		param.title='List of group members';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.nillable';
		param.title='Nillable';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.defined';
		param.title='Defined';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.includes';
		param.title='Includes';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.redefines';
		param.title='Redefines';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.redefined';
		param.title='Redefined';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.used';
		param.title='Used';
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
		style.name='Summary Item Smaller';
		style.id='cs7';
		text.font.name='Verdana';
		text.font.size='8';
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
						TEXT='Global Attribute Summary'
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
		TARGET_ET='xs:attribute'
		SCOPE='advanced-location-rules'
		RULES={
			'#DOCUMENTS[hasParamValue("$scope", "any")] -> #DOCUMENT/wsdl:definitions/wsdl:types/xs:schema[checkElementsByKey ("documented-schemas", contextElement.id)]';
			'#DOCUMENTS[hasParamValue("$scope", "any")] -> #DOCUMENT/xs:schema[checkElementsByKey ("documented-schemas", contextElement.id)]';
			'#DOCUMENTS[hasParamValue("$scope", "namespace")] -> {findElementsByKey ("namespaces", getParam("$nsURI"))}::xs:schema';
			'xs:schema -> xs:attribute',recursive;
		}
		SORTING='by-expr'
		SORTING_KEY={expr='callStockSection("Attribute Name")',ascending}
		SORTING_COND='getBooleanParam("doc.frgm.xsd.comps.sorting")'
		FMT={
			sec.outputStyle='table';
			table.sizing='Relative';
			table.cell.padding.both='2.5';
		}
		<BODY>
			<AREA_SEC>
				FMT={
					trow.cell.align.vert='Top';
					trow.page.keepTogether='true';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<PANEL>
								FMT={
									ctrl.size.width='150';
									ctrl.size.height='60';
								}
								<AREA>
									<CTRL_GROUP>
										FMT={
											txtfl.delimiter.type='none';
											par.option.nowrap='true';
										}
										<CTRLS>
											<IMAGE_CTRL>
												IMAGE_TYPE='file-image'
												FILE='../../images/attribute.png'
												OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
												FMT={
													image.alignment='bottom';
													image.padding.right='3.3';
												}
											</IMAGE_CTRL>
											<SS_CALL_CTRL>
												SS_NAME='Attribute Name'
												FMT={
													text.style='cs7';
												}
											</SS_CALL_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
							<SS_CALL_CTRL>
								SS_NAME='Attribute Info'
								FMT={
									ctrl.size.width='318';
									ctrl.size.height='60';
									tcell.sizing='Relative';
								}
							</SS_CALL_CTRL>
							<DATA_CTRL>
								COND='output.format.supportsPageRefs &&
thisContext.getBooleanVar ("showPageColumn")'
								DOCFIELD='page-htarget'
								FMT={
									ctrl.size.width='31.5';
									ctrl.size.height='60';
									ctrl.option.noHLinkFmt='true';
									tcell.sizing='Minimal';
									tcell.align.horz='Center';
									text.style='cs5';
									text.hlink.fmt='none';
								}
								<DOC_HLINK>
									HKEYS={
										'contextElement.id';
										'Array ("detail", "xml-source-location")';
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
					trow.page.keepTogether='true';
					trow.page.keepWithNext='true';
				}
				<AREA>
					<CTRL_GROUP>
						FMT={
							trow.bkgr.color='#CCCCFF';
						}
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Global Attribute Summary'
								FMT={
									ctrl.size.width='467.3';
									ctrl.size.height='17.3';
									text.style='cs6';
								}
							</TEXT_CTRL>
							<TEXT_CTRL>
								COND='output.format.supportsPageRefs &&
thisContext.getBooleanVar ("showPageColumn")'
								TEXT='Page'
								FMT={
									ctrl.size.width='32.3';
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
		SS_NAME='Attribute Info'
		MATCHING_ET='xs:attribute'
		<BODY>
			<TEMPLATE_CALL>
				DESCR='first sentence of annotation'
				COND='hasParamValue("doc.frgm.xsd.comps.annotation", "first_sentence")'
				OUTPUT_CHECKER_EXPR='getValuesByLPath(
  "xs:annotation/xs:documentation//(#TEXT | #CDATA)"
).isBlank() ? -1 : 1'
				TEMPLATE_FILE='../ann/firstSentence.tpl'
				FMT={
					text.style='cs3';
				}
			</TEMPLATE_CALL>
			<FOLDER>
				DESCR='profile'
				COND='getBooleanParam("doc.frgm.xsd.comps.profile")'
				FMT={
					sec.spacing.before='5';
				}
				<BODY>
					<TEMPLATE_CALL>
						COND='getBooleanParam("fmt.allowNestedTables")'
						BREAK_PARENT_BLOCK='when-executed'
						TEMPLATE_FILE='attributeProfile.tpl'
						PASSED_PARAMS={
							'$nsURI','findAncestor("xs:schema").getServiceAttr("targetNamespace")';
							'doc.xsd.comp.profile.namespace','getBooleanParam("doc.frgm.xsd.comps.profile.namespace")';
							'doc.xsd.comp.profile.type','getBooleanParam("doc.frgm.xsd.comps.profile.type")';
							'doc.xsd.comp.profile.defined','getBooleanParam("doc.frgm.xsd.comps.profile.defined")';
							'doc.xsd.comp.profile.used','getBooleanParam("doc.frgm.xsd.comps.profile.used")';
						}
					</TEMPLATE_CALL>
					<TEMPLATE_CALL>
						TEMPLATE_FILE='attributeProfile2.tpl'
						PASSED_PARAMS={
							'$nsURI','findAncestor("xs:schema").getServiceAttr("targetNamespace")';
							'doc.xsd.comp.profile.namespace','getBooleanParam("doc.frgm.xsd.comps.profile.namespace")';
							'doc.xsd.comp.profile.type','getBooleanParam("doc.frgm.xsd.comps.profile.type")';
							'doc.xsd.comp.profile.defined','getBooleanParam("doc.frgm.xsd.comps.profile.defined")';
							'doc.xsd.comp.profile.used','getBooleanParam("doc.frgm.xsd.comps.profile.used")';
						}
					</TEMPLATE_CALL>
				</BODY>
			</FOLDER>
			<TEMPLATE_CALL>
				DESCR='full annotation'
				COND='hasParamValue("doc.frgm.xsd.comps.annotation", "full")'
				OUTPUT_CHECKER_EXPR='getValuesByLPath(
  "xs:annotation/xs:documentation//(#TEXT | #CDATA)"
).isBlank() ? -1 : 1'
				TEMPLATE_FILE='../ann/annotation.tpl'
				FMT={
					sec.spacing.before='6.7';
					text.style='cs3';
				}
			</TEMPLATE_CALL>
		</BODY>
	</FOLDER>
	<TEMPLATE_CALL>
		SS_NAME='Attribute Name'
		TEMPLATE_FILE='../component/componentName.tpl'
		FMT={
			sec.outputStyle='text-par';
		}
	</TEMPLATE_CALL>
</STOCK_SECTIONS>
CHECKSUM='O5FhzQaAoFiPjqX3hZog?8P3ej5MAOeAjkEBy3og6YA'
</DOCFLEX_TEMPLATE>