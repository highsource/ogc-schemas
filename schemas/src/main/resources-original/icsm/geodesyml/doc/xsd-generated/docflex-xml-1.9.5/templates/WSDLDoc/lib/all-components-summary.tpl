<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2008-11-27 11:31:09'
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
TITLE_EXPR='title = "All Components";

(parentTitle = getStringParam("docTitle")) != null
  ? title + " | " + parentTitle : title'
HTML_HEAD_EXPR='title = "All Components";

(parentTitle = getStringParam("docTitle")) != null
  ? title = title + " | " + parentTitle;

\'<script type="text/javascript">
    window.onload = function() {
        parent.document.title="\' + encodeJScriptString (title) + \'";
    }
</script>\''
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$scope';
		param.description='Specifies the scope passed to subtemplates (called from this template):
<ul>
<li>"any" - unspecified</li>
<li>"namespace" - namespace overview</li>
<li>"schema" - schema overview</li>
</ul>';
		param.type='enum';
		param.enum.values='any;namespace;schema';
		param.fixed='true';
	}
	PARAM={
		param.name='$page.heading.left';
		param.title='Page Heading (on the left)';
		param.type='string';
		param.defaultValue='All Components';
		param.fixed='true';
	}
	PARAM={
		param.name='docTitle';
		param.title='Documentation Title';
		param.type='string';
	}
	PARAM={
		param.name='doc.allcomps';
		param.title='All Component Summary';
		param.title.style.bold='true';
		param.group='true';
	}
	PARAM={
		param.name='doc.allcomps.wsdl.defs';
		param.title='WSDL Definition Summary';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.wsdl.defs.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='doc.allcomps.wsdl.defs.for.services';
		param.title='Services';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.wsdl.defs.for.bindings';
		param.title='Bindings';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.wsdl.defs.for.portTypes';
		param.title='Port Types';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.wsdl.defs.for.messages';
		param.title='Messages';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.wsdl.defs.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.wsdl.defs.description';
		param.title='Description';
		param.type='enum';
		param.enum.values='first_sentence;full;none';
		param.enum.displayValues='first sentence;full;none';
	}
	PARAM={
		param.name='doc.allcomps.wsdl.defs.profile';
		param.title='Definition Profile';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.wsdl.defs.profile.namespace';
		param.title='Namespace';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.wsdl.defs.profile.portType';
		param.title='Port Type';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.wsdl.defs.profile.includes';
		param.title='Includes';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.wsdl.defs.profile.defined';
		param.title='Defined / XML Source';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.wsdl.defs.profile.used';
		param.title='Used';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps';
		param.title='XSD Component Summary';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.for.elements';
		param.title='Elements';
		param.title.style.italic='true';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.for.elements.local';
		param.title='Local Elements';
		param.title.style.italic='true';
		param.type='enum';
		param.enum.values='all;complexType;none';
		param.enum.displayValues='all;with complex type;none';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.for.complexTypes';
		param.title='Complex Types';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.for.simpleTypes';
		param.title='Simple Types';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.for.groups';
		param.title='Element Groups';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.for.attributes';
		param.title='Global Attributes';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.for.attributeGroups';
		param.title='Attribute Groups';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.annotation';
		param.title='Annotation';
		param.type='enum';
		param.enum.values='first_sentence;full;none';
		param.enum.displayValues='first sentence;full;none';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile';
		param.title='Component Profile';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.namespace';
		param.title='Namespace';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.type';
		param.title='Type';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.content';
		param.title='Content';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.abstract';
		param.title='Abstract';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.block';
		param.title='Block';
		param.group='true';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.block.value';
		param.title='Value';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.block.meaning';
		param.title='Meaning';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.final';
		param.title='Final';
		param.group='true';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.final.value';
		param.title='Value';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.final.meaning';
		param.title='Meaning';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.subst';
		param.title='Subst.Gr';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.subst.heads';
		param.title='List of group heads';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.subst.members';
		param.title='List of group members';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.nillable';
		param.title='Nillable';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.defined';
		param.title='Defined';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.includes';
		param.title='Includes';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.redefines';
		param.title='Redefines';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.redefined';
		param.title='Redefined';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.used';
		param.title='Used';
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
	PAR_STYLE={
		style.name='Profile Heading 1';
		style.id='s3';
		text.font.size='9';
		text.font.style.bold='true';
	}
	CHAR_STYLE={
		style.name='Profile Property';
		style.id='cs6';
		text.font.size='9';
	}
	PAR_STYLE={
		style.name='Profile Subheading';
		style.id='s4';
		text.font.name='Arial';
		text.font.size='9';
		text.font.style.bold='true';
	}
	CHAR_STYLE={
		style.name='Summary Heading Font';
		style.id='cs7';
		text.font.size='12';
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
			text.style='cs4';
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
					<DATA_CTRL>
						FORMULA='getStringParam("$page.heading.left")'
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
</PAGE_HEADER>
<ROOT>
	<AREA_SEC>
		FMT={
			par.style='s1';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						TEXT='All Component Summary'
					</TEXT_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<FOLDER>
		DESCR='all WSDL definitions'
		COLLAPSED
		FMT={
			sec.spacing.before='10';
		}
		<BODY>
			<FOLDER>
				FMT={
					sec.outputStyle='text-par';
					sec.indent.block='true';
					text.style='cs6';
					txtfl.delimiter.type='text';
					txtfl.delimiter.text=', ';
				}
				<BODY>
					<AREA_SEC>
						DESCR='global attributes'
						COND='count = countElementsByLPath ("#DOCUMENT / wsdl:definitions / wsdl:service");
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
												'"all-service-summary"';
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
						COND='count = countElementsByLPath ("#DOCUMENT / wsdl:definitions / wsdl:binding");
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
												'"all-binding-summary"';
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
						COND='count = countElementsByLPath ("#DOCUMENT / wsdl:definitions / wsdl:portType");
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
												'"all-portType-summary"';
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
						COND='count = countElementsByLPath ("#DOCUMENT / wsdl:definitions / wsdl:message");
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
												'"all-message-summary"';
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
					par.style='s3';
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
	<FOLDER>
		DESCR='all XSD components'
		COLLAPSED
		FMT={
			sec.spacing.before='5';
		}
		<BODY>
			<FOLDER>
				FMT={
					sec.outputStyle='text-par';
					sec.indent.block='true';
					text.style='cs6';
					txtfl.delimiter.type='text';
					txtfl.delimiter.text=', ';
				}
				<BODY>
					<AREA_SEC>
						DESCR='elements'
						COND='global_count = countElementsByLRules (
  Array (
    LocationRule (
      \'* -> #DOCUMENT / wsdl:definitions / wsdl:types /
       xs:schema [checkElementsByKey ("documented-schemas", contextElement.id)] /
       xs:element\',
      false
    ),
    LocationRule (
      \'* -> #DOCUMENT /
       xs:schema [checkElementsByKey ("documented-schemas", contextElement.id)] /
       xs:element\',
      false
    )
  ),
  "xs:element"
);

local_count = countElementsByLRules (
  Array (
    LocationRule (
      \'* -> #DOCUMENT / wsdl:definitions / wsdl:types /
       xs:schema [checkElementsByKey ("documented-schemas", contextElement.id)] /
       descendant::xs:%localElement\',
      false
    ),
    LocationRule (
      \'* -> #DOCUMENT /
       xs:schema [checkElementsByKey ("documented-schemas", contextElement.id)] /
       descendant::xs:%localElement\',
      false
    )
  ),
  "xs:%localElement",
  BooleanQuery (! hasAttr ("ref")),
  null
);

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
												'"all-element-summary"';
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
											ctrl.size.width='146.3';
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
											ctrl.size.width='123';
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
						COND='count = countElementsByLRules (
  Array (
    LocationRule (
      \'* -> #DOCUMENT / wsdl:definitions / wsdl:types / xs:schema [checkElementsByKey ("documented-schemas", contextElement.id)]\',
      false
    ),
    LocationRule (
      \'* -> #DOCUMENT / xs:schema [checkElementsByKey ("documented-schemas", contextElement.id)]\',
      false
    ),
    LocationRule ("xs:schema -> xs:complexType", true),
    LocationRule ("xs:schema -> xs:redefine / xs:complexType", true)
  ),
  "xs:complexType"
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
												'"all-complexType-summary"';
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
						COND='count = countElementsByLRules (
  Array (
    LocationRule (
      \'* -> #DOCUMENT / wsdl:definitions / wsdl:types / xs:schema [checkElementsByKey ("documented-schemas", contextElement.id)]\',
      false
    ),
    LocationRule (
      \'* -> #DOCUMENT / xs:schema [checkElementsByKey ("documented-schemas", contextElement.id)]\',
      false
    ),
    LocationRule ("xs:schema -> xs:simpleType", true),
    LocationRule ("xs:schema -> xs:redefine / xs:simpleType", true)
  ),
  "xs:simpleType"
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
												'"all-simpleType-summary"';
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
						COND='count = countElementsByLRules (
  Array (
    LocationRule (
      \'* -> #DOCUMENT / wsdl:definitions / wsdl:types / xs:schema [checkElementsByKey ("documented-schemas", contextElement.id)]\',
      false
    ),
    LocationRule (
      \'* -> #DOCUMENT / xs:schema [checkElementsByKey ("documented-schemas", contextElement.id)]\',
      false
    ),
    LocationRule ("xs:schema -> xs:group", true),
    LocationRule ("xs:schema -> xs:redefine / xs:group", true)
  ),
  "xs:group"
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
												'"all-group-summary"';
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
						COND='count = countElementsByLRules (
  Array (
    LocationRule (
      \'* -> #DOCUMENT / wsdl:definitions / wsdl:types / xs:schema [checkElementsByKey ("documented-schemas", contextElement.id)]\',
      false
    ),
    LocationRule (
      \'* -> #DOCUMENT / xs:schema [checkElementsByKey ("documented-schemas", contextElement.id)]\',
      false
    ),
    LocationRule ("xs:schema -> xs:attribute", true)
  ),
  "xs:attribute"
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
												'"all-attribute-summary"';
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
						COND='count = countElementsByLRules (
  Array (
    LocationRule (
      \'* -> #DOCUMENT / wsdl:definitions / wsdl:types / xs:schema [checkElementsByKey ("documented-schemas", contextElement.id)]\',
      false
    ),
    LocationRule (
      \'* -> #DOCUMENT / xs:schema [checkElementsByKey ("documented-schemas", contextElement.id)]\',
      false
    ),
    LocationRule ("xs:schema -> xs:attributeGroup", true),
    LocationRule ("xs:schema -> xs:redefine / xs:attributeGroup", true)
  ),
  "xs:attributeGroup"
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
												'"all-attributeGroup-summary"';
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
					par.style='s3';
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
	<FOLDER>
		DESCR='WSDL definition summaries'
		COND='getBooleanParam("doc.allcomps.wsdl.defs")'
		<BODY>
			<TEMPLATE_CALL>
				DESCR='services'
				COND='getBooleanParam("doc.allcomps.wsdl.defs.for.services")'
				TEMPLATE_FILE='wsdl/service/serviceSummary.tpl'
				PASSED_PARAMS={
					'doc.frgm.wsdl.defs.sorting','getBooleanParam("doc.allcomps.wsdl.defs.sorting")';
					'doc.frgm.wsdl.defs.description','getStringParam("doc.allcomps.wsdl.defs.description")';
					'doc.frgm.wsdl.defs.profile','getBooleanParam("doc.allcomps.wsdl.defs.profile")';
					'doc.frgm.wsdl.defs.profile.namespace','getBooleanParam("doc.allcomps.wsdl.defs.profile.namespace")';
					'doc.frgm.wsdl.defs.profile.portType','getBooleanParam("doc.allcomps.wsdl.defs.profile.portType")';
					'doc.frgm.wsdl.defs.profile.includes','getBooleanParam("doc.allcomps.wsdl.defs.profile.includes")';
					'doc.frgm.wsdl.defs.profile.defined','getBooleanParam("doc.allcomps.wsdl.defs.profile.defined")';
					'doc.frgm.wsdl.defs.profile.used','getBooleanParam("doc.allcomps.wsdl.defs.profile.used")';
				}
				FMT={
					sec.spacing.before='10';
				}
				<HTARGET>
					HKEYS={
						'"all-service-summary"';
					}
				</HTARGET>
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				DESCR='bindings'
				COND='getBooleanParam("doc.allcomps.wsdl.defs.for.bindings")'
				TEMPLATE_FILE='wsdl/binding/bindingSummary.tpl'
				PASSED_PARAMS={
					'doc.frgm.wsdl.defs.sorting','getBooleanParam("doc.allcomps.wsdl.defs.sorting")';
					'doc.frgm.wsdl.defs.description','getStringParam("doc.allcomps.wsdl.defs.description")';
					'doc.frgm.wsdl.defs.profile','getBooleanParam("doc.allcomps.wsdl.defs.profile")';
					'doc.frgm.wsdl.defs.profile.namespace','getBooleanParam("doc.allcomps.wsdl.defs.profile.namespace")';
					'doc.frgm.wsdl.defs.profile.portType','getBooleanParam("doc.allcomps.wsdl.defs.profile.portType")';
					'doc.frgm.wsdl.defs.profile.includes','getBooleanParam("doc.allcomps.wsdl.defs.profile.includes")';
					'doc.frgm.wsdl.defs.profile.defined','getBooleanParam("doc.allcomps.wsdl.defs.profile.defined")';
					'doc.frgm.wsdl.defs.profile.used','getBooleanParam("doc.allcomps.wsdl.defs.profile.used")';
				}
				FMT={
					sec.spacing.before='10';
				}
				<HTARGET>
					HKEYS={
						'"all-binding-summary"';
					}
				</HTARGET>
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				DESCR='port types'
				COND='getBooleanParam("doc.allcomps.wsdl.defs.for.portTypes")'
				TEMPLATE_FILE='wsdl/portType/portTypeSummary.tpl'
				PASSED_PARAMS={
					'doc.frgm.wsdl.defs.sorting','getBooleanParam("doc.allcomps.wsdl.defs.sorting")';
					'doc.frgm.wsdl.defs.description','getStringParam("doc.allcomps.wsdl.defs.description")';
					'doc.frgm.wsdl.defs.profile','getBooleanParam("doc.allcomps.wsdl.defs.profile")';
					'doc.frgm.wsdl.defs.profile.namespace','getBooleanParam("doc.allcomps.wsdl.defs.profile.namespace")';
					'doc.frgm.wsdl.defs.profile.portType','getBooleanParam("doc.allcomps.wsdl.defs.profile.portType")';
					'doc.frgm.wsdl.defs.profile.includes','getBooleanParam("doc.allcomps.wsdl.defs.profile.includes")';
					'doc.frgm.wsdl.defs.profile.defined','getBooleanParam("doc.allcomps.wsdl.defs.profile.defined")';
					'doc.frgm.wsdl.defs.profile.used','getBooleanParam("doc.allcomps.wsdl.defs.profile.used")';
				}
				FMT={
					sec.spacing.before='10';
				}
				<HTARGET>
					HKEYS={
						'"all-portType-summary"';
					}
				</HTARGET>
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				DESCR='messages'
				COND='getBooleanParam("doc.allcomps.wsdl.defs.for.messages")'
				TEMPLATE_FILE='wsdl/message/messageSummary.tpl'
				PASSED_PARAMS={
					'doc.frgm.wsdl.defs.sorting','getBooleanParam("doc.allcomps.wsdl.defs.sorting")';
					'doc.frgm.wsdl.defs.description','getStringParam("doc.allcomps.wsdl.defs.description")';
					'doc.frgm.wsdl.defs.profile','getBooleanParam("doc.allcomps.wsdl.defs.profile")';
					'doc.frgm.wsdl.defs.profile.namespace','getBooleanParam("doc.allcomps.wsdl.defs.profile.namespace")';
					'doc.frgm.wsdl.defs.profile.portType','getBooleanParam("doc.allcomps.wsdl.defs.profile.portType")';
					'doc.frgm.wsdl.defs.profile.includes','getBooleanParam("doc.allcomps.wsdl.defs.profile.includes")';
					'doc.frgm.wsdl.defs.profile.defined','getBooleanParam("doc.allcomps.wsdl.defs.profile.defined")';
					'doc.frgm.wsdl.defs.profile.used','getBooleanParam("doc.allcomps.wsdl.defs.profile.used")';
				}
				FMT={
					sec.spacing.before='10';
				}
				<HTARGET>
					HKEYS={
						'"all-message-summary"';
					}
				</HTARGET>
			</TEMPLATE_CALL>
		</BODY>
	</FOLDER>
	<FOLDER>
		DESCR='XSD component summaries'
		COND='getBooleanParam("doc.allcomps.xsd.comps")'
		<BODY>
			<TEMPLATE_CALL>
				DESCR='elements'
				COND='getBooleanParam("doc.allcomps.xsd.comps.for.elements")'
				TEMPLATE_FILE='xsd/element/elementSummary.tpl'
				PASSED_PARAMS={
					'doc.frgm.xsd.comps.for.elements','getBooleanParam("doc.allcomps.xsd.comps.for.elements")';
					'doc.frgm.xsd.comps.for.elements.local','getStringParam("doc.allcomps.xsd.comps.for.elements.local")';
					'doc.frgm.xsd.comps.sorting','getBooleanParam("doc.allcomps.xsd.comps.sorting")';
					'doc.frgm.xsd.comps.annotation','getStringParam("doc.allcomps.xsd.comps.annotation")';
					'doc.frgm.xsd.comps.profile','getBooleanParam("doc.allcomps.xsd.comps.profile")';
					'doc.frgm.xsd.comps.profile.namespace','getBooleanParam("doc.allcomps.xsd.comps.profile.namespace")';
					'doc.frgm.xsd.comps.profile.type','getBooleanParam("doc.allcomps.xsd.comps.profile.type")';
					'doc.frgm.xsd.comps.profile.content','getBooleanParam("doc.allcomps.xsd.comps.profile.content")';
					'doc.frgm.xsd.comps.profile.abstract','getBooleanParam("doc.allcomps.xsd.comps.profile.abstract")';
					'doc.frgm.xsd.comps.profile.block','getStringParam("doc.allcomps.xsd.comps.profile.block")';
					'doc.frgm.xsd.comps.profile.block.value','getBooleanParam("doc.allcomps.xsd.comps.profile.block.value")';
					'doc.frgm.xsd.comps.profile.block.meaning','getBooleanParam("doc.allcomps.xsd.comps.profile.block.meaning")';
					'doc.frgm.xsd.comps.profile.final','getStringParam("doc.allcomps.xsd.comps.profile.final")';
					'doc.frgm.xsd.comps.profile.final.value','getBooleanParam("doc.allcomps.xsd.comps.profile.final.value")';
					'doc.frgm.xsd.comps.profile.final.meaning','getBooleanParam("doc.allcomps.xsd.comps.profile.final.meaning")';
					'doc.frgm.xsd.comps.profile.subst','getBooleanParam("doc.allcomps.xsd.comps.profile.subst")';
					'doc.frgm.xsd.comps.profile.subst.heads','getBooleanParam("doc.allcomps.xsd.comps.profile.subst.heads")';
					'doc.frgm.xsd.comps.profile.subst.members','getBooleanParam("doc.allcomps.xsd.comps.profile.subst.members")';
					'doc.frgm.xsd.comps.profile.nillable','getBooleanParam("doc.allcomps.xsd.comps.profile.nillable")';
					'doc.frgm.xsd.comps.profile.defined','getBooleanParam("doc.allcomps.xsd.comps.profile.defined")';
					'doc.frgm.xsd.comps.profile.includes','getBooleanParam("doc.allcomps.xsd.comps.profile.includes")';
					'doc.frgm.xsd.comps.profile.redefines','getBooleanParam("doc.allcomps.xsd.comps.profile.redefines")';
					'doc.frgm.xsd.comps.profile.redefined','getBooleanParam("doc.allcomps.xsd.comps.profile.redefined")';
					'doc.frgm.xsd.comps.profile.used','getBooleanParam("doc.allcomps.xsd.comps.profile.used")';
				}
				FMT={
					sec.spacing.before='10';
				}
				<HTARGET>
					HKEYS={
						'"all-element-summary"';
					}
				</HTARGET>
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				DESCR='complexTypes'
				COND='getBooleanParam("doc.allcomps.xsd.comps.for.complexTypes")'
				TEMPLATE_FILE='xsd/type/complexTypeSummary.tpl'
				PASSED_PARAMS={
					'doc.frgm.xsd.comps.sorting','getBooleanParam("doc.allcomps.xsd.comps.sorting")';
					'doc.frgm.xsd.comps.annotation','getStringParam("doc.allcomps.xsd.comps.annotation")';
					'doc.frgm.xsd.comps.profile','getBooleanParam("doc.allcomps.xsd.comps.profile")';
					'doc.frgm.xsd.comps.profile.namespace','getBooleanParam("doc.allcomps.xsd.comps.profile.namespace")';
					'doc.frgm.xsd.comps.profile.type','getBooleanParam("doc.allcomps.xsd.comps.profile.type")';
					'doc.frgm.xsd.comps.profile.content','getBooleanParam("doc.allcomps.xsd.comps.profile.content")';
					'doc.frgm.xsd.comps.profile.abstract','getBooleanParam("doc.allcomps.xsd.comps.profile.abstract")';
					'doc.frgm.xsd.comps.profile.block','getStringParam("doc.allcomps.xsd.comps.profile.block")';
					'doc.frgm.xsd.comps.profile.block.value','getBooleanParam("doc.allcomps.xsd.comps.profile.block.value")';
					'doc.frgm.xsd.comps.profile.block.meaning','getBooleanParam("doc.allcomps.xsd.comps.profile.block.meaning")';
					'doc.frgm.xsd.comps.profile.final','getStringParam("doc.allcomps.xsd.comps.profile.final")';
					'doc.frgm.xsd.comps.profile.final.value','getBooleanParam("doc.allcomps.xsd.comps.profile.final.value")';
					'doc.frgm.xsd.comps.profile.final.meaning','getBooleanParam("doc.allcomps.xsd.comps.profile.final.meaning")';
					'doc.frgm.xsd.comps.profile.subst','getBooleanParam("doc.allcomps.xsd.comps.profile.subst")';
					'doc.frgm.xsd.comps.profile.subst.heads','getBooleanParam("doc.allcomps.xsd.comps.profile.subst.heads")';
					'doc.frgm.xsd.comps.profile.subst.members','getBooleanParam("doc.allcomps.xsd.comps.profile.subst.members")';
					'doc.frgm.xsd.comps.profile.nillable','getBooleanParam("doc.allcomps.xsd.comps.profile.nillable")';
					'doc.frgm.xsd.comps.profile.defined','getBooleanParam("doc.allcomps.xsd.comps.profile.defined")';
					'doc.frgm.xsd.comps.profile.includes','getBooleanParam("doc.allcomps.xsd.comps.profile.includes")';
					'doc.frgm.xsd.comps.profile.redefines','getBooleanParam("doc.allcomps.xsd.comps.profile.redefines")';
					'doc.frgm.xsd.comps.profile.redefined','getBooleanParam("doc.allcomps.xsd.comps.profile.redefined")';
					'doc.frgm.xsd.comps.profile.used','getBooleanParam("doc.allcomps.xsd.comps.profile.used")';
				}
				FMT={
					sec.spacing.before='10';
				}
				<HTARGET>
					HKEYS={
						'"all-complexType-summary"';
					}
				</HTARGET>
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				DESCR='simpleTypes'
				COND='getBooleanParam("doc.allcomps.xsd.comps.for.simpleTypes")'
				TEMPLATE_FILE='xsd/type/simpleTypeSummary.tpl'
				PASSED_PARAMS={
					'doc.frgm.xsd.comps.sorting','getBooleanParam("doc.allcomps.xsd.comps.sorting")';
					'doc.frgm.xsd.comps.annotation','getStringParam("doc.allcomps.xsd.comps.annotation")';
					'doc.frgm.xsd.comps.profile','getBooleanParam("doc.allcomps.xsd.comps.profile")';
					'doc.frgm.xsd.comps.profile.namespace','getBooleanParam("doc.allcomps.xsd.comps.profile.namespace")';
					'doc.frgm.xsd.comps.profile.type','getBooleanParam("doc.allcomps.xsd.comps.profile.type")';
					'doc.frgm.xsd.comps.profile.content','getBooleanParam("doc.allcomps.xsd.comps.profile.content")';
					'doc.frgm.xsd.comps.profile.abstract','getBooleanParam("doc.allcomps.xsd.comps.profile.abstract")';
					'doc.frgm.xsd.comps.profile.block','getStringParam("doc.allcomps.xsd.comps.profile.block")';
					'doc.frgm.xsd.comps.profile.block.value','getBooleanParam("doc.allcomps.xsd.comps.profile.block.value")';
					'doc.frgm.xsd.comps.profile.block.meaning','getBooleanParam("doc.allcomps.xsd.comps.profile.block.meaning")';
					'doc.frgm.xsd.comps.profile.final','getStringParam("doc.allcomps.xsd.comps.profile.final")';
					'doc.frgm.xsd.comps.profile.final.value','getBooleanParam("doc.allcomps.xsd.comps.profile.final.value")';
					'doc.frgm.xsd.comps.profile.final.meaning','getBooleanParam("doc.allcomps.xsd.comps.profile.final.meaning")';
					'doc.frgm.xsd.comps.profile.subst','getBooleanParam("doc.allcomps.xsd.comps.profile.subst")';
					'doc.frgm.xsd.comps.profile.subst.heads','getBooleanParam("doc.allcomps.xsd.comps.profile.subst.heads")';
					'doc.frgm.xsd.comps.profile.subst.members','getBooleanParam("doc.allcomps.xsd.comps.profile.subst.members")';
					'doc.frgm.xsd.comps.profile.nillable','getBooleanParam("doc.allcomps.xsd.comps.profile.nillable")';
					'doc.frgm.xsd.comps.profile.defined','getBooleanParam("doc.allcomps.xsd.comps.profile.defined")';
					'doc.frgm.xsd.comps.profile.includes','getBooleanParam("doc.allcomps.xsd.comps.profile.includes")';
					'doc.frgm.xsd.comps.profile.redefines','getBooleanParam("doc.allcomps.xsd.comps.profile.redefines")';
					'doc.frgm.xsd.comps.profile.redefined','getBooleanParam("doc.allcomps.xsd.comps.profile.redefined")';
					'doc.frgm.xsd.comps.profile.used','getBooleanParam("doc.allcomps.xsd.comps.profile.used")';
				}
				FMT={
					sec.spacing.before='10';
				}
				<HTARGET>
					HKEYS={
						'"all-simpleType-summary"';
					}
				</HTARGET>
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				DESCR='element groups'
				COND='getBooleanParam("doc.allcomps.xsd.comps.for.groups")'
				TEMPLATE_FILE='xsd/groups/groupSummary.tpl'
				PASSED_PARAMS={
					'doc.frgm.xsd.comps.sorting','getBooleanParam("doc.allcomps.xsd.comps.sorting")';
					'doc.frgm.xsd.comps.annotation','getStringParam("doc.allcomps.xsd.comps.annotation")';
					'doc.frgm.xsd.comps.profile','getBooleanParam("doc.allcomps.xsd.comps.profile")';
					'doc.frgm.xsd.comps.profile.namespace','getBooleanParam("doc.allcomps.xsd.comps.profile.namespace")';
					'doc.frgm.xsd.comps.profile.type','getBooleanParam("doc.allcomps.xsd.comps.profile.type")';
					'doc.frgm.xsd.comps.profile.content','getBooleanParam("doc.allcomps.xsd.comps.profile.content")';
					'doc.frgm.xsd.comps.profile.abstract','getBooleanParam("doc.allcomps.xsd.comps.profile.abstract")';
					'doc.frgm.xsd.comps.profile.block','getStringParam("doc.allcomps.xsd.comps.profile.block")';
					'doc.frgm.xsd.comps.profile.block.value','getBooleanParam("doc.allcomps.xsd.comps.profile.block.value")';
					'doc.frgm.xsd.comps.profile.block.meaning','getBooleanParam("doc.allcomps.xsd.comps.profile.block.meaning")';
					'doc.frgm.xsd.comps.profile.final','getStringParam("doc.allcomps.xsd.comps.profile.final")';
					'doc.frgm.xsd.comps.profile.final.value','getBooleanParam("doc.allcomps.xsd.comps.profile.final.value")';
					'doc.frgm.xsd.comps.profile.final.meaning','getBooleanParam("doc.allcomps.xsd.comps.profile.final.meaning")';
					'doc.frgm.xsd.comps.profile.subst','getBooleanParam("doc.allcomps.xsd.comps.profile.subst")';
					'doc.frgm.xsd.comps.profile.subst.heads','getBooleanParam("doc.allcomps.xsd.comps.profile.subst.heads")';
					'doc.frgm.xsd.comps.profile.subst.members','getBooleanParam("doc.allcomps.xsd.comps.profile.subst.members")';
					'doc.frgm.xsd.comps.profile.nillable','getBooleanParam("doc.allcomps.xsd.comps.profile.nillable")';
					'doc.frgm.xsd.comps.profile.defined','getBooleanParam("doc.allcomps.xsd.comps.profile.defined")';
					'doc.frgm.xsd.comps.profile.includes','getBooleanParam("doc.allcomps.xsd.comps.profile.includes")';
					'doc.frgm.xsd.comps.profile.redefines','getBooleanParam("doc.allcomps.xsd.comps.profile.redefines")';
					'doc.frgm.xsd.comps.profile.redefined','getBooleanParam("doc.allcomps.xsd.comps.profile.redefined")';
					'doc.frgm.xsd.comps.profile.used','getBooleanParam("doc.allcomps.xsd.comps.profile.used")';
				}
				FMT={
					sec.spacing.before='10';
				}
				<HTARGET>
					HKEYS={
						'"all-group-summary"';
					}
				</HTARGET>
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				DESCR='attributes'
				COND='getBooleanParam("doc.allcomps.xsd.comps.for.attributes")'
				TEMPLATE_FILE='xsd/attribute/attributeSummary.tpl'
				PASSED_PARAMS={
					'doc.frgm.xsd.comps.sorting','getBooleanParam("doc.allcomps.xsd.comps.sorting")';
					'doc.frgm.xsd.comps.annotation','getStringParam("doc.allcomps.xsd.comps.annotation")';
					'doc.frgm.xsd.comps.profile','getBooleanParam("doc.allcomps.xsd.comps.profile")';
					'doc.frgm.xsd.comps.profile.namespace','getBooleanParam("doc.allcomps.xsd.comps.profile.namespace")';
					'doc.frgm.xsd.comps.profile.type','getBooleanParam("doc.allcomps.xsd.comps.profile.type")';
					'doc.frgm.xsd.comps.profile.content','getBooleanParam("doc.allcomps.xsd.comps.profile.content")';
					'doc.frgm.xsd.comps.profile.abstract','getBooleanParam("doc.allcomps.xsd.comps.profile.abstract")';
					'doc.frgm.xsd.comps.profile.block','getStringParam("doc.allcomps.xsd.comps.profile.block")';
					'doc.frgm.xsd.comps.profile.block.value','getBooleanParam("doc.allcomps.xsd.comps.profile.block.value")';
					'doc.frgm.xsd.comps.profile.block.meaning','getBooleanParam("doc.allcomps.xsd.comps.profile.block.meaning")';
					'doc.frgm.xsd.comps.profile.final','getStringParam("doc.allcomps.xsd.comps.profile.final")';
					'doc.frgm.xsd.comps.profile.final.value','getBooleanParam("doc.allcomps.xsd.comps.profile.final.value")';
					'doc.frgm.xsd.comps.profile.final.meaning','getBooleanParam("doc.allcomps.xsd.comps.profile.final.meaning")';
					'doc.frgm.xsd.comps.profile.subst','getBooleanParam("doc.allcomps.xsd.comps.profile.subst")';
					'doc.frgm.xsd.comps.profile.subst.heads','getBooleanParam("doc.allcomps.xsd.comps.profile.subst.heads")';
					'doc.frgm.xsd.comps.profile.subst.members','getBooleanParam("doc.allcomps.xsd.comps.profile.subst.members")';
					'doc.frgm.xsd.comps.profile.nillable','getBooleanParam("doc.allcomps.xsd.comps.profile.nillable")';
					'doc.frgm.xsd.comps.profile.defined','getBooleanParam("doc.allcomps.xsd.comps.profile.defined")';
					'doc.frgm.xsd.comps.profile.includes','getBooleanParam("doc.allcomps.xsd.comps.profile.includes")';
					'doc.frgm.xsd.comps.profile.redefines','getBooleanParam("doc.allcomps.xsd.comps.profile.redefines")';
					'doc.frgm.xsd.comps.profile.redefined','getBooleanParam("doc.allcomps.xsd.comps.profile.redefined")';
					'doc.frgm.xsd.comps.profile.used','getBooleanParam("doc.allcomps.xsd.comps.profile.used")';
				}
				FMT={
					sec.spacing.before='10';
				}
				<HTARGET>
					HKEYS={
						'"all-attribute-summary"';
					}
				</HTARGET>
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				DESCR='attribute groups'
				COND='getBooleanParam("doc.allcomps.xsd.comps.for.attributeGroups")'
				TEMPLATE_FILE='xsd/groups/attributeGroupSummary.tpl'
				PASSED_PARAMS={
					'doc.frgm.xsd.comps.sorting','getBooleanParam("doc.allcomps.xsd.comps.sorting")';
					'doc.frgm.xsd.comps.annotation','getStringParam("doc.allcomps.xsd.comps.annotation")';
					'doc.frgm.xsd.comps.profile','getBooleanParam("doc.allcomps.xsd.comps.profile")';
					'doc.frgm.xsd.comps.profile.namespace','getBooleanParam("doc.allcomps.xsd.comps.profile.namespace")';
					'doc.frgm.xsd.comps.profile.type','getBooleanParam("doc.allcomps.xsd.comps.profile.type")';
					'doc.frgm.xsd.comps.profile.content','getBooleanParam("doc.allcomps.xsd.comps.profile.content")';
					'doc.frgm.xsd.comps.profile.abstract','getBooleanParam("doc.allcomps.xsd.comps.profile.abstract")';
					'doc.frgm.xsd.comps.profile.block','getStringParam("doc.allcomps.xsd.comps.profile.block")';
					'doc.frgm.xsd.comps.profile.block.value','getBooleanParam("doc.allcomps.xsd.comps.profile.block.value")';
					'doc.frgm.xsd.comps.profile.block.meaning','getBooleanParam("doc.allcomps.xsd.comps.profile.block.meaning")';
					'doc.frgm.xsd.comps.profile.final','getStringParam("doc.allcomps.xsd.comps.profile.final")';
					'doc.frgm.xsd.comps.profile.final.value','getBooleanParam("doc.allcomps.xsd.comps.profile.final.value")';
					'doc.frgm.xsd.comps.profile.final.meaning','getBooleanParam("doc.allcomps.xsd.comps.profile.final.meaning")';
					'doc.frgm.xsd.comps.profile.subst','getBooleanParam("doc.allcomps.xsd.comps.profile.subst")';
					'doc.frgm.xsd.comps.profile.subst.heads','getBooleanParam("doc.allcomps.xsd.comps.profile.subst.heads")';
					'doc.frgm.xsd.comps.profile.subst.members','getBooleanParam("doc.allcomps.xsd.comps.profile.subst.members")';
					'doc.frgm.xsd.comps.profile.nillable','getBooleanParam("doc.allcomps.xsd.comps.profile.nillable")';
					'doc.frgm.xsd.comps.profile.defined','getBooleanParam("doc.allcomps.xsd.comps.profile.defined")';
					'doc.frgm.xsd.comps.profile.includes','getBooleanParam("doc.allcomps.xsd.comps.profile.includes")';
					'doc.frgm.xsd.comps.profile.redefines','getBooleanParam("doc.allcomps.xsd.comps.profile.redefines")';
					'doc.frgm.xsd.comps.profile.redefined','getBooleanParam("doc.allcomps.xsd.comps.profile.redefined")';
					'doc.frgm.xsd.comps.profile.used','getBooleanParam("doc.allcomps.xsd.comps.profile.used")';
				}
				FMT={
					sec.spacing.before='10';
				}
				<HTARGET>
					HKEYS={
						'"all-attributeGroup-summary"';
					}
				</HTARGET>
			</TEMPLATE_CALL>
		</BODY>
	</FOLDER>
	<TEMPLATE_CALL>
		DESCR='Bottom Message'
		COND='output.type == "document" && getBooleanParam("show.about")'
		TEMPLATE_FILE='about.tpl'
	</TEMPLATE_CALL>
</ROOT>
CHECKSUM='C4afP+FdE6KItFhBTrIS3ZRXQjFlcChyQNcv4fPwnlA'
</DOCFLEX_TEMPLATE>