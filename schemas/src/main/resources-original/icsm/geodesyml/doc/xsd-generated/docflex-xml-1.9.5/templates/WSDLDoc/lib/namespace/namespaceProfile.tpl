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
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$nsURI';
		param.title='Namespace URI';
		param.type='string';
	}
	PARAM={
		param.name='$compact';
		param.description='Print namespace profile in a compact form';
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
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs2';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s1';
		style.default='true';
	}
	PAR_STYLE={
		style.name='Profile Heading 1';
		style.id='s2';
		text.font.size='9';
		text.font.style.bold='true';
	}
	CHAR_STYLE={
		style.name='Profile Property';
		style.id='cs3';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Profile Property Clear';
		style.id='cs4';
		text.font.name='Verdana';
		text.font.size='8';
	}
	CHAR_STYLE={
		style.name='Profile Property Mono';
		style.id='cs5';
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
		style.name='Underline';
		style.id='cs6';
		text.decor.underline='true';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs2';
}
<ROOT>
	<FOLDER>
		DESCR='COMPACT FORM (when included in namespace summary)'
		COND='getBooleanParam("$compact")'
		BREAK_PARENT_BLOCK='when-executed'
		FMT={
			sec.outputStyle='table';
			table.cell.padding.both='0';
			table.border.style='none';
			table.page.keepTogether='true';
			table.option.borderStylesInHTML='true';
		}
		<BODY>
			<AREA_SEC>
				COND='count = countElementsByKey (
  "namespaces",
  getParam("$nsURI"),
  BooleanQuery (instanceOf ("wsdl:definitions"))
);

(count > 0) ? { setVar ("count", count); true } : false'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<PANEL>
								FMT={
									ctrl.size.width='171';
									ctrl.size.height='38.3';
									tcell.align.vert='Top';
									txtfl.delimiter.type='text';
									txtfl.delimiter.text=', ';
									par.style='s3';
								}
								<AREA>
									<CTRL_GROUP>
										FMT={
											txtfl.delimiter.type='none';
										}
										<CTRLS>
											<DATA_CTRL>
												FORMULA='"WSDL Files (" + getVar("count") + ")"'
												FMT={
													text.hlink.fmt='style';
													text.hlink.style='cs6';
													text.hlink.style.use='hover';
												}
												<DOC_HLINK>
													TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
													HKEYS={
														'getStringParam("$nsURI")';
														'"wsdl-file-summary"';
													}
												</DOC_HLINK>
											</DATA_CTRL>
											<TEXT_CTRL>
												TEXT=':'
											</TEXT_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
							<SS_CALL_CTRL>
								SS_NAME='WSDL Files'
								FMT={
									ctrl.size.width='328.5';
									ctrl.size.height='38.3';
									par.style='s4';
								}
							</SS_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				COND='checkStockSectionOutput("WSDL Definitions")'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='WSDL Definitions:'
								FMT={
									ctrl.size.width='171';
									ctrl.size.height='17.3';
									tcell.align.vert='Top';
									par.style='s3';
								}
							</TEXT_CTRL>
							<SS_CALL_CTRL>
								SS_NAME='WSDL Definitions'
								FMT={
									ctrl.size.width='328.5';
									ctrl.size.height='17.3';
									par.style='s4';
								}
							</SS_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				COND='count = countElementsByKey (
  "namespaces",
  getParam("$nsURI"),
  BooleanQuery (instanceOf ("xs:schema"))
);

(count > 0) ? { setVar ("count", count); true } : false'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<PANEL>
								FMT={
									ctrl.size.width='171';
									ctrl.size.height='38.3';
									tcell.align.vert='Top';
									txtfl.delimiter.type='text';
									txtfl.delimiter.text=', ';
									par.style='s3';
								}
								<AREA>
									<CTRL_GROUP>
										FMT={
											txtfl.delimiter.type='none';
										}
										<CTRLS>
											<DATA_CTRL>
												FORMULA='"XML Schemas (" + getVar("count") + ")"'
												FMT={
													text.hlink.fmt='style';
													text.hlink.style='cs6';
													text.hlink.style.use='hover';
												}
												<DOC_HLINK>
													TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
													HKEYS={
														'getStringParam("$nsURI")';
														'"schema-summary"';
													}
												</DOC_HLINK>
											</DATA_CTRL>
											<TEXT_CTRL>
												TEXT=':'
											</TEXT_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
							<SS_CALL_CTRL>
								SS_NAME='Schemas'
								FMT={
									ctrl.size.width='328.5';
									ctrl.size.height='38.3';
									par.style='s4';
								}
							</SS_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				COND='checkStockSectionOutput("XSD Components")'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='XSD Components:'
								FMT={
									ctrl.size.width='171';
									ctrl.size.height='17.3';
									tcell.align.vert='Top';
									par.style='s3';
								}
							</TEXT_CTRL>
							<SS_CALL_CTRL>
								SS_NAME='XSD Components'
								FMT={
									ctrl.size.width='328.5';
									ctrl.size.height='17.3';
									par.style='s4';
								}
							</SS_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</FOLDER>
	<FOLDER>
		DESCR='EXTENDED FORM (when included in Namespace Overview)'
		<BODY>
			<ELEMENT_ITER>
				DESCR='WSDL files targeting this namespace'
				TARGET_ET='wsdl:definitions'
				SCOPE='custom'
				ELEMENT_ENUM_EXPR='findElementsByKey ("namespaces", getParam("$nsURI"))'
				SORTING='by-expr'
				SORTING_KEY={expr='getXMLDocument().getAttrStringValue("xmlName")',ascending}
				FMT={
					sec.outputStyle='list';
					sec.spacing.before='5';
					text.style='cs3';
					list.type='delimited';
					list.margin.block='true';
				}
				<BODY>
					<SS_CALL>
						SS_NAME='WSDL Name'
					</SS_CALL>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							par.style='s2';
							par.margin.top='0';
						}
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='none';
								}
								<CTRLS>
									<DATA_CTRL>
										FORMULA='"Targeting WSDL Files (" + iterator.numItems + ")"'
										FMT={
											text.hlink.fmt='style';
											text.hlink.style='cs6';
											text.hlink.style.use='hover';
										}
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
											HKEYS={
												'getStringParam("$nsURI")';
												'"wsdl-file-summary"';
											}
										</DOC_HLINK>
									</DATA_CTRL>
									<TEXT_CTRL>
										TEXT=':'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
			</ELEMENT_ITER>
			<FOLDER>
				DESCR='all WSDL definitions in this namespace'
				FMT={
					sec.spacing.before='5';
				}
				<BODY>
					<SS_CALL>
						SS_NAME='WSDL Definitions'
						FMT={
							sec.outputStyle='text-par';
							sec.indent.block='true';
							text.style='cs3';
							txtfl.delimiter.type='text';
							txtfl.delimiter.text=', ';
						}
					</SS_CALL>
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
										TEXT='WSDL Definitions:'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
			</FOLDER>
			<ELEMENT_ITER>
				DESCR='XML schemas targeting this namespace'
				TARGET_ET='xs:schema'
				SCOPE='custom'
				ELEMENT_ENUM_EXPR='findElementsByKey ("namespaces", getParam("$nsURI"))'
				SORTING='by-expr'
				SORTING_KEY={expr='getXMLDocument().getAttrStringValue("xmlName")',ascending}
				FMT={
					sec.outputStyle='list';
					sec.spacing.before='5';
					text.style='cs3';
					list.type='delimited';
					list.margin.block='true';
				}
				<BODY>
					<SS_CALL>
						SS_NAME='Schema Name'
					</SS_CALL>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							par.style='s2';
							par.margin.top='0';
						}
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='none';
								}
								<CTRLS>
									<DATA_CTRL>
										FORMULA='"Targeting XML Schemas (" + iterator.numItems + ")"'
										FMT={
											text.hlink.fmt='style';
											text.hlink.style='cs6';
											text.hlink.style.use='hover';
										}
										<DOC_HLINK>
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
											HKEYS={
												'getStringParam("$nsURI")';
												'"schema-summary"';
											}
										</DOC_HLINK>
									</DATA_CTRL>
									<TEXT_CTRL>
										TEXT=':'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
			</ELEMENT_ITER>
			<FOLDER>
				DESCR='all XSD components defined in this namespace'
				FMT={
					sec.spacing.before='5';
				}
				<BODY>
					<SS_CALL>
						SS_NAME='XSD Components'
						FMT={
							sec.outputStyle='text-par';
							sec.indent.block='true';
							text.style='cs3';
							txtfl.delimiter.type='text';
							txtfl.delimiter.text=', ';
						}
					</SS_CALL>
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
										TEXT='XSD Components:'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
			</FOLDER>
		</BODY>
	</FOLDER>
</ROOT>
<STOCK_SECTIONS>
	<TEMPLATE_CALL>
		SS_NAME='Schema Name'
		MATCHING_ET='xs:schema'
		TEMPLATE_FILE='../xsd/schema/schemaName.tpl'
	</TEMPLATE_CALL>
	<ELEMENT_ITER>
		SS_NAME='Schemas'
		DESCR='XML schemas targeting this namespace'
		TARGET_ET='xs:schema'
		SCOPE='custom'
		ELEMENT_ENUM_EXPR='findElementsByKey ("namespaces", getParam("$nsURI"))'
		SORTING='by-expr'
		SORTING_KEY={expr='getXMLDocument().getAttrStringValue("xmlName")',ascending}
		FMT={
			sec.outputStyle='list';
			list.type='delimited';
		}
		<BODY>
			<SS_CALL>
				SS_NAME='Schema Name'
			</SS_CALL>
		</BODY>
	</ELEMENT_ITER>
	<FOLDER>
		SS_NAME='WSDL Definitions'
		DESCR='all WSDL definitions in this namespace'
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='text';
			txtfl.delimiter.text=', ';
		}
		<BODY>
			<AREA_SEC>
				DESCR='global attributes'
				COND='count = countElementsByLPath (
  \'{findElementsByKey ("namespaces", getParam("$nsURI"))}::wsdl:definitions / wsdl:service\'
);

count > 0 ? { setVar ("count", count); true } : false'
				<AREA>
					<CTRL_GROUP>
						FMT={
							text.option.nbsps='true';
							txtfl.delimiter.type='nbsp';
						}
						<CTRLS>
							<TEXT_CTRL>
								TEXT='services'
								<DOC_HLINK>
									TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
									HKEYS={
										'getStringParam("$nsURI")';
										'"service-summary"';
									}
								</DOC_HLINK>
							</TEXT_CTRL>
							<DATA_CTRL>
								FORMULA='\'(\' + getVar("count") + \')\''
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				DESCR='global attributes'
				COND='count = countElementsByLPath (
  \'{findElementsByKey ("namespaces", getParam("$nsURI"))}::wsdl:definitions / wsdl:binding\'
);

count > 0 ? { setVar ("count", count); true } : false'
				<AREA>
					<CTRL_GROUP>
						FMT={
							text.option.nbsps='true';
							txtfl.delimiter.type='nbsp';
						}
						<CTRLS>
							<TEXT_CTRL>
								TEXT='bindings'
								<DOC_HLINK>
									TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
									HKEYS={
										'getStringParam("$nsURI")';
										'"binding-summary"';
									}
								</DOC_HLINK>
							</TEXT_CTRL>
							<DATA_CTRL>
								FORMULA='\'(\' + getVar("count") + \')\''
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				DESCR='global attributes'
				COND='count = countElementsByLPath (
  \'{findElementsByKey ("namespaces", getParam("$nsURI"))}::wsdl:definitions / wsdl:portType\'
);

count > 0 ? { setVar ("count", count); true } : false'
				<AREA>
					<CTRL_GROUP>
						FMT={
							text.option.nbsps='true';
							txtfl.delimiter.type='nbsp';
						}
						<CTRLS>
							<TEXT_CTRL>
								TEXT='portTypes'
								<DOC_HLINK>
									TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
									HKEYS={
										'getStringParam("$nsURI")';
										'"portType-summary"';
									}
								</DOC_HLINK>
							</TEXT_CTRL>
							<DATA_CTRL>
								FORMULA='\'(\' + getVar("count") + \')\''
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				DESCR='global attributes'
				COND='count = countElementsByLPath (
  \'{findElementsByKey ("namespaces", getParam("$nsURI"))}::wsdl:definitions / wsdl:message\'
);

count > 0 ? { setVar ("count", count); true } : false'
				<AREA>
					<CTRL_GROUP>
						FMT={
							text.option.nbsps='true';
							txtfl.delimiter.type='nbsp';
						}
						<CTRLS>
							<TEXT_CTRL>
								TEXT='messages'
								<DOC_HLINK>
									TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
									HKEYS={
										'getStringParam("$nsURI")';
										'"message-summary"';
									}
								</DOC_HLINK>
							</TEXT_CTRL>
							<DATA_CTRL>
								FORMULA='\'(\' + getVar("count") + \')\''
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</FOLDER>
	<ELEMENT_ITER>
		SS_NAME='WSDL Files'
		DESCR='WSDL files targeting this namespace'
		TARGET_ET='wsdl:definitions'
		SCOPE='custom'
		ELEMENT_ENUM_EXPR='findElementsByKey ("namespaces", getParam("$nsURI"))'
		SORTING='by-expr'
		SORTING_KEY={expr='getXMLDocument().getAttrStringValue("xmlName")',ascending}
		FMT={
			sec.outputStyle='list';
			list.type='delimited';
		}
		<BODY>
			<SS_CALL>
				SS_NAME='WSDL Name'
			</SS_CALL>
		</BODY>
	</ELEMENT_ITER>
	<TEMPLATE_CALL>
		SS_NAME='WSDL Name'
		MATCHING_ET='wsdl:definitions'
		TEMPLATE_FILE='../wsdl/file/wsdlName.tpl'
	</TEMPLATE_CALL>
	<FOLDER>
		SS_NAME='XSD Components'
		DESCR='all XSD components defined in this namespace'
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='text';
			txtfl.delimiter.text=', ';
		}
		<BODY>
			<AREA_SEC>
				DESCR='elements'
				COND='global_count = countElementsByLPath(
  \'{findElementsByKey ("namespaces", getParam("$nsURI"))}::xs:schema / xs:element\'
);

(nsURI = getStringParam("$nsURI")) != "" ?
{
  local_count = countElementsByLPath (
    \'{findElementsByKey ("namespaces", nsURI)}::xs:schema / descendant::xs:%localElement\',
    BooleanQuery (
      ! hasAttr("ref") &&
      {
        form = hasAttr("form") ? getAttrValue("form") :
                 findPredecessorByType("xs:schema").getAttrStringValue ("elementFormDefault");

        (form == "qualified")
      }
    )
  )
} : {

  local_count = countElementsByLPath (
    \'{findElementsByKey ("namespaces", "")}::xs:schema / descendant::xs:%localElement\',
    BooleanQuery (
      ! hasAttr("ref")
    )
  ) + countElementsByKey ("namespaces", "", BooleanQuery (instanceOf ("xs:%localElement")))
};

global_count + local_count > 0 ? { 
  setVar ("global_count", global_count);
  setVar ("local_count", local_count);
  true 
} : false'
				<AREA>
					<CTRL_GROUP>
						FMT={
							text.option.nbsps='true';
							txtfl.delimiter.type='nbsp';
						}
						<CTRLS>
							<TEXT_CTRL>
								TEXT='elements'
								FMT={
									text.option.nbsps='true';
								}
								<DOC_HLINK>
									TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
									HKEYS={
										'getStringParam("$nsURI")';
										'"element-summary"';
									}
								</DOC_HLINK>
							</TEXT_CTRL>
							<TEXT_CTRL>
								TEXT='('
							</TEXT_CTRL>
							<DELIMITER>
								FMT={
									txtfl.delimiter.type='none';
								}
							</DELIMITER>
							<PANEL>
								COND='getVar("global_count").toInt() > 0'
								FMT={
									ctrl.size.width='163.5';
									ctrl.size.height='38.3';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<DATA_CTRL>
												FORMULA='getVar("global_count")'
											</DATA_CTRL>
											<TEXT_CTRL>
												TEXT='global'
											</TEXT_CTRL>
											<DELIMITER>
												FMT={
													txtfl.delimiter.type='nbtxt';
													txtfl.delimiter.text=' + ';
												}
											</DELIMITER>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
							<PANEL>
								COND='getVar("local_count").toInt() > 0'
								FMT={
									ctrl.size.width='139.5';
									ctrl.size.height='38.3';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<DATA_CTRL>
												FORMULA='getVar("local_count")'
											</DATA_CTRL>
											<TEXT_CTRL>
												TEXT='local'
											</TEXT_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
							<DELIMITER>
								FMT={
									txtfl.delimiter.type='none';
								}
							</DELIMITER>
							<TEXT_CTRL>
								TEXT=')'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				DESCR='complexTypes'
				COND='count = countElementsByLPath (
  \'{findElementsByKey ("namespaces", getParam("$nsURI"))}::xs:schema /
   descendant::xs:complexType\'
);

count > 0 ? { setVar ("count", count); true } : false'
				<AREA>
					<CTRL_GROUP>
						FMT={
							text.option.nbsps='true';
							txtfl.delimiter.type='nbsp';
						}
						<CTRLS>
							<TEXT_CTRL>
								TEXT='complexTypes'
								<DOC_HLINK>
									TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
									HKEYS={
										'getStringParam("$nsURI")';
										'"complexType-summary"';
									}
								</DOC_HLINK>
							</TEXT_CTRL>
							<DATA_CTRL>
								FORMULA='\'(\' + getVar("count") + \')\''
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				DESCR='simpleTypes'
				COND='count = countElementsByLPath (
  \'{findElementsByKey ("namespaces", getParam("$nsURI"))}::xs:schema /
   descendant::xs:simpleType\'
);

count > 0 ? { setVar ("count", count); true } : false'
				<AREA>
					<CTRL_GROUP>
						FMT={
							text.option.nbsps='true';
							txtfl.delimiter.type='nbsp';
						}
						<CTRLS>
							<TEXT_CTRL>
								TEXT='simpleTypes'
								<DOC_HLINK>
									TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
									HKEYS={
										'getStringParam("$nsURI")';
										'"simpleType-summary"';
									}
								</DOC_HLINK>
							</TEXT_CTRL>
							<DATA_CTRL>
								FORMULA='\'(\' + getVar("count") + \')\''
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				DESCR='element groups'
				COND='count = countElementsByLPath (
  \'{findElementsByKey ("namespaces", getParam("$nsURI"))}::xs:schema /
   descendant::xs:group\'
);

count > 0 ? { setVar ("count", count); true } : false'
				<AREA>
					<CTRL_GROUP>
						FMT={
							text.option.nbsps='true';
							txtfl.delimiter.type='nbsp';
						}
						<CTRLS>
							<TEXT_CTRL>
								TEXT='element groups'
								<DOC_HLINK>
									TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
									HKEYS={
										'getStringParam("$nsURI")';
										'"group-summary"';
									}
								</DOC_HLINK>
							</TEXT_CTRL>
							<DATA_CTRL>
								FORMULA='\'(\' + getVar("count") + \')\''
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				DESCR='global attributes'
				COND='count = countElementsByLPath (
  \'{findElementsByKey ("namespaces", getParam("$nsURI"))}::xs:schema / xs:attribute\'
);

count > 0 ? { setVar ("count", count); true } : false'
				<AREA>
					<CTRL_GROUP>
						FMT={
							text.option.nbsps='true';
							txtfl.delimiter.type='nbsp';
						}
						<CTRLS>
							<TEXT_CTRL>
								TEXT='global attributes'
								<DOC_HLINK>
									TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
									HKEYS={
										'getStringParam("$nsURI")';
										'"attribute-summary"';
									}
								</DOC_HLINK>
							</TEXT_CTRL>
							<DATA_CTRL>
								FORMULA='\'(\' + getVar("count") + \')\''
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				DESCR='attribute groups'
				COND='count = countElementsByLPath (
  \'{findElementsByKey ("namespaces", getParam("$nsURI"))}::xs:schema /
   descendant::xs:attributeGroup\'
);

count > 0 ? { setVar ("count", count); true } : false'
				<AREA>
					<CTRL_GROUP>
						FMT={
							text.option.nbsps='true';
							txtfl.delimiter.type='nbsp';
						}
						<CTRLS>
							<TEXT_CTRL>
								TEXT='attribute groups'
								<DOC_HLINK>
									TITLE_EXPR='getBooleanParam("show.linkTitle") ? "see summary" : ""'
									HKEYS={
										'getStringParam("$nsURI")';
										'"attributeGroup-summary"';
									}
								</DOC_HLINK>
							</TEXT_CTRL>
							<DATA_CTRL>
								FORMULA='\'(\' + getVar("count") + \')\''
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</FOLDER>
</STOCK_SECTIONS>
CHECKSUM='x+fHiYx2d0sM2h9MNb?neHnLKAkHPI9?7nVLKhdyGsk'
</DOCFLEX_TEMPLATE>