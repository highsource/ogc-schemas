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
		param.name='$nsURI';
		param.title='Namespace URI';
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
	CHAR_STYLE={
		style.name='Hyperlink (blended in, hover)';
		style.id='cs3';
		text.decor.underline='true';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s1';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Profile Item';
		style.id='cs4';
		text.font.name='Arial';
		text.font.size='9';
	}
	PAR_STYLE={
		style.name='Profile Item Title';
		style.id='s2';
		text.font.name='Arial';
		text.font.size='9';
		text.font.style.bold='true';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs2';
}
<ROOT>
	<ELEMENT_ITER>
		DESCR='XML schemas targeting this namespace'
		TARGET_ET='xs:schema'
		SCOPE='custom'
		ELEMENT_ENUM_EXPR='findElementsByKey ("namespaces", getParam("$nsURI"))'
		SORTING='by-expr'
		SORTING_KEY={expr='getXMLDocument().getAttrStringValue("xmlName")',ascending}
		FMT={
			sec.outputStyle='list';
			text.style='cs4';
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
				}
				<AREA>
					<CTRL_GROUP>
						FMT={
							txtfl.delimiter.type='none';
						}
						<CTRLS>
							<DATA_CTRL>
								FORMULA='"Targeting Schemas (" + iterator.numItems + ")"'
								FMT={
									text.hlink.fmt='style';
									text.hlink.style='cs3';
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
		DESCR='all components defined in this namesapace'
		COLLAPSED
		FMT={
			sec.spacing.before='5';
		}
		<BODY>
			<FOLDER>
				FMT={
					sec.outputStyle='text-par';
					sec.indent.block='true';
					text.style='cs4';
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
											ctrl.size.width='144';
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
											ctrl.size.width='121.5';
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
								TEXT='Targeting Components:'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
</ROOT>
<STOCK_SECTIONS>
	<TEMPLATE_CALL>
		SS_NAME='Schema Name'
		TEMPLATE_FILE='../schema/schemaName.tpl'
	</TEMPLATE_CALL>
</STOCK_SECTIONS>
CHECKSUM='GyaoPv2HnGo?zsGppFnfKlT6mhZUPWsMyZ6FPNBhQ0s'
</DOCFLEX_TEMPLATE>