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
<TEMPLATE_PARAMS>
	PARAM={
		param.name='nav.overviewFrame.title';
		param.title='Title';
		param.type='string';
	}
	PARAM={
		param.name='gen.doc.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='gen.doc.sorting.namespaces';
		param.title='Namespaces';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='gen.doc.sorting.schemas';
		param.title='Schemas';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='gen.doc.sorting.comps';
		param.title='Components';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='gen.doc.overview';
		param.title='Overview Summary';
		param.type='boolean';
	}
	PARAM={
		param.name='gen.doc.allcomps';
		param.title='All Component Summary';
		param.type='boolean';
	}
	PARAM={
		param.name='gen.doc.namespace';
		param.title='Namespace Overviews';
		param.type='boolean';
	}
	PARAM={
		param.name='gen.doc.schema';
		param.title='Schema Overviews';
		param.type='boolean';
	}
	PARAM={
		param.name='gen.doc.xmlnsBindings';
		param.title='XML Namespace Bindings';
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
		text.font.size='9.5';
		text.font.style.bold='true';
		par.margin.bottom='5.8';
		par.option.nowrap='true';
	}
	PAR_STYLE={
		style.name='Frame Heading 2';
		style.id='s2';
		text.font.size='9';
		text.font.style.bold='true';
		par.margin.top='5.8';
		par.margin.bottom='2.5';
		par.option.nowrap='true';
	}
	PAR_STYLE={
		style.name='Frame Item';
		style.id='s3';
		text.font.size='9';
		par.option.nowrap='true';
	}
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs2';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='Hyperlink (blended in, hover)';
		style.id='cs3';
		text.decor.underline='true';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s4';
		style.default='true';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
}
<ROOT>
	<FOLDER>
		<BODY>
			<AREA_SEC>
				COND='getBooleanParam("gen.doc.overview")'
				FMT={
					text.option.nbsps='true';
					par.style='s3';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Overview'
								<DOC_HLINK>
									TARGET_FRAME_EXPR='"detailFrame"'
									HKEYS={
										'"overview-summary"';
									}
								</DOC_HLINK>
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				COND='getBooleanParam("gen.doc.allcomps")'
				FMT={
					text.option.nbsps='true';
					par.style='s3';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='All Components'
								<URL_HLINK>
									ALT_HLINK
									TARGET_FRAME_EXPR='"listFrame"'
									URL_EXPR='documentByTemplate ("all-components-frame")'
								</URL_HLINK>
								<URL_HLINK>
									ALT_HLINK
									TARGET_FRAME_EXPR='"detailFrame"'
									URL_EXPR='documentByTemplate ("all-components-summary")'
								</URL_HLINK>
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				COND='getBooleanParam("gen.doc.xmlnsBindings")'
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
				DESCR='iterates by namespaces'
				COND='getBooleanParam("gen.doc.namespace")
&&
(
  sectionBlock.outputSecCount > 0
  ||
  { 
    checkElementMap ("namespaces", @namespaceCount, null, null);
    namespaceCount.toInt() > 1 
  } 
  || 
  getBooleanParam("gen.doc.schema")
)'
				TARGET_ET='#CUSTOM'
				SCOPE='custom'
				ELEMENT_ENUM_EXPR='toCustomElements (getElementMapKeys("namespaces"))'
				SORTING='by-value'
				SORTING_KEY={lpath='.',ascending}
				SORTING_COND='getBooleanParam("gen.doc.sorting.namespaces")'
				<BODY>
					<AREA_SEC>
						FMT={
							par.style='s3';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<DATA_CTRL>
										FORMULA='contextElement.value != "" ? contextElement.value : "{no namespace}"'
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? 
  contextElement.value != ""
    ? "Namespace {" + contextElement.value.toString() + "}"
    : "No Namespace"
: ""'
											TARGET_FRAME_EXPR='"listFrame"'
											HKEYS={
												'contextElement.value';
												'"listFrame"';
											}
										</DOC_HLINK>
										<DOC_HLINK>
											ALT_HLINK
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? 
  contextElement.value != ""
    ? "Namespace {" + contextElement.value.toString() + "}"
    : "No Namespace"
: ""'
											TARGET_FRAME_EXPR='"detailFrame"'
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
						FMT={
							par.style='s2';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<PANEL>
										FMT={
											ctrl.size.width='180';
											ctrl.size.height='38.3';
											text.hlink.fmt='style';
											text.hlink.style='cs3';
											text.hlink.style.use='hover';
										}
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
											TARGET_FRAME_EXPR='"detailFrame"'
											HKEYS={
												'"namespace-summary"';
											}
											HKEYS_MATCHING='equiv'
										</DOC_HLINK>
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='Namespaces'
													</TEXT_CTRL>
													<DATA_CTRL>
														FORMULA='"(" + iterator.numItems + ")"'
													</DATA_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				COND='getBooleanParam("gen.doc.schema")
&&
(sectionBlock.outputSecCount > 0 ||
 countElementsByLPath("#DOCUMENT/xs:schema") > 1)'
				TARGET_ET='xs:schema'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> #DOCUMENT/xs:schema[checkElementsByKey ("documented-schemas", contextElement.id)]';
				}
				SORTING='by-expr'
				SORTING_KEY={expr='getXMLDocument().getAttrStringValue("xmlName")',ascending}
				SORTING_COND='getBooleanParam("gen.doc.sorting.schemas")'
				<BODY>
					<AREA_SEC>
						FMT={
							par.style='s3';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<DATA_CTRL>
										FORMULA='getXMLDocument().getAttrStringValue("xmlName")'
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("Schema Link Title")
: ""'
											TARGET_FRAME_EXPR='"listFrame"'
											HKEYS={
												'contextElement.id';
												'"listFrame"';
											}
										</DOC_HLINK>
										<DOC_HLINK>
											ALT_HLINK
											TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("Schema Link Title")
: ""'
											TARGET_FRAME_EXPR='"detailFrame"'
											HKEYS={
												'contextElement.id';
												'"detail"';
											}
										</DOC_HLINK>
									</DATA_CTRL>
									<PANEL>
										COND='findHyperTarget (
  Array (getXMLDocument().id, "xml-source")
) != null'
										FMT={
											ctrl.size.width='69.8';
											ctrl.size.height='38.3';
											txtfl.delimiter.type='none';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='['
													</TEXT_CTRL>
													<TEXT_CTRL>
														TEXT='src'
														<DOC_HLINK>
															TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see XML source" : ""'
															TARGET_FRAME_EXPR='"detailFrame"'
															HKEYS={
																'getXMLDocument().id';
																'"xml-source"';
															}
														</DOC_HLINK>
													</TEXT_CTRL>
													<TEXT_CTRL>
														TEXT=']'
													</TEXT_CTRL>
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
						FMT={
							par.style='s2';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<PANEL>
										FMT={
											ctrl.size.width='184.5';
											ctrl.size.height='38.3';
											text.hlink.fmt='style';
											text.hlink.style='cs3';
											text.hlink.style.use='hover';
										}
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
											TARGET_FRAME_EXPR='"detailFrame"'
											HKEYS={
												'"schema-summary"';
											}
											HKEYS_MATCHING='equiv'
										</DOC_HLINK>
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='XML Schemas'
													</TEXT_CTRL>
													<DATA_CTRL>
														FORMULA='"(" + iterator.numItems + ")"'
													</DATA_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
			</ELEMENT_ITER>
		</BODY>
		<HEADER>
			<AREA_SEC>
				FMT={
					par.style='s1';
				}
				<AREA>
					<CTRL_GROUP>
						FMT={
							txtfl.delimiter.type='none';
							par.margin.bottom='5';
						}
						<CTRLS>
							<DATA_CTRL>
								FORMULA='getStringParam("nav.overviewFrame.title")'
								FMT={
									txtfl.ehtml.render='true';
								}
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
</ROOT>
<STOCK_SECTIONS>
	<TEMPLATE_CALL>
		SS_NAME='Schema Link Title'
		TEMPLATE_FILE='schema/schemaLinkTitle.tpl'
	</TEMPLATE_CALL>
</STOCK_SECTIONS>
CHECKSUM='l5+FHwTeUVlk3INJHPD4bREu8ufzAHD84dH6rpBnTmI'
</DOCFLEX_TEMPLATE>