<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2008-11-27 11:31:09'
LAST_UPDATE='2014-07-05 20:02:50'
DESIGNER_TOOL='DocFlex SDK 1.x'
DESIGNER_LICENSE_TYPE='Filigris Works Team'
APP_ID='docflex-xml-xsddoc2'
APP_NAME='DocFlex/XML XSDDoc'
APP_VER='2.8.1'
APP_AUTHOR='Copyright © 2005-2014 Filigris Works, Leonid Rudy Softwareprodukte. All rights reserved.'
TEMPLATE_TYPE='DocumentTemplate'
DSM_TYPE_ID='xsddoc'
ROOT_ETS={'#DOCUMENTS';'xs:schema'}
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
		param.title='All Components Summary';
		param.title.style.bold='true';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='doc.allcomps.item';
		param.title='Summary Item';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='doc.allcomps.item.annotation';
		param.title='Annotation';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='first_sentence;full;none';
	}
	PARAM={
		param.name='doc.allcomps.item.profile';
		param.title='Component Profile';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.namespace';
		param.title='Namespace';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.type';
		param.title='Type';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.content';
		param.title='Content';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.abstract';
		param.title='Abstract';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.block';
		param.title='Block';
		param.featureType='pro';
		param.group='true';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.block.value';
		param.title='Value';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.block.meaning';
		param.title='Meaning';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.final';
		param.title='Final';
		param.featureType='pro';
		param.group='true';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.final.value';
		param.title='Value';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.final.meaning';
		param.title='Meaning';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.subst';
		param.title='Subst.Gr';
		param.group='true';
		param.group.defaultState='expanded';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.subst.heads';
		param.title='List of group heads';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.subst.members';
		param.title='List of group members';
		param.featureType='pro';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.nillable';
		param.title='Nillable';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.defined';
		param.title='Defined';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.includes';
		param.title='Includes';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.redefines';
		param.title='Redefines';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.redefined';
		param.title='Redefined';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.used';
		param.title='Used';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.elements';
		param.title='Elements';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.elements.local';
		param.title='Local Elements';
		param.type='enum';
		param.enum.values='all;complexType;none';
	}
	PARAM={
		param.name='doc.allcomps.complexTypes';
		param.title='Complex Types';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.simpleTypes';
		param.title='Simple Types';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.groups';
		param.title='Element Groups';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.attributes';
		param.title='Global Attributes';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.attributeGroups';
		param.title='Attribute Groups';
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
		par.page.keepTogether='true';
		par.page.keepWithNext='true';
	}
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs2';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s2';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Page Header Font';
		style.id='cs3';
		text.font.name='Arial';
		text.font.style.italic='true';
	}
	CHAR_STYLE={
		style.name='Page Number';
		style.id='cs4';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Profile Item';
		style.id='cs5';
		text.font.name='Arial';
		text.font.size='9';
	}
	PAR_STYLE={
		style.name='Profile Item Title';
		style.id='s3';
		text.font.name='Arial';
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
			text.style='cs3';
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
		DESCR='all documented components'
		COLLAPSED
		FMT={
			sec.spacing.before='10';
		}
		<BODY>
			<FOLDER>
				FMT={
					sec.outputStyle='text-par';
					sec.indent.block='true';
					text.style='cs5';
					txtfl.delimiter.type='text';
					txtfl.delimiter.text=', ';
				}
				<BODY>
					<AREA_SEC>
						DESCR='elements'
						COND='! getBooleanParam("doc.allcomps.elements") ? return false;

global_count = countElementsByLPath (
  \'#DOCUMENT /
   xs:schema [checkElementsByKey ("documented-schemas", contextElement.id)] /
   xs:element\'
);

local_count = countElementsByLPath (

  \'#DOCUMENT /
   xs:schema [checkElementsByKey ("documented-schemas", contextElement.id)] /
   descendant::xs:%localElement\',

  BooleanQuery (
    ! hasAttr("ref")
    &&
    {
      // which local elements to list?
      local = getStringParam("doc.allcomps.elements.local");

      local == "complexType" ?
        ((typeQName = getAttrQNameValue("type")) != null) ?
        {
          mainXSD = findElementByKey ("main-xsds", getXMLDocument().id);

          checkElementsByKey (
            "types", typeQName,
            BooleanQuery (
              instanceOf("xs:complexType")
              &&
              checkElementByKey ("main-xsds", getXMLDocument().id, mainXSD)
            )
          )
        }
        : hasChild("xs:complexType")
      :
      local == "all"
    }
  )
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
											ctrl.size.width='144.8';
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
											ctrl.size.width='119.3';
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
						COND='! getBooleanParam("doc.allcomps.complexTypes") ? return false;

count = countElementsByLPath (
  \'#DOCUMENT /
   xs:schema [checkElementsByKey ("documented-schemas", contextElement.id)] /
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
						COND='! getBooleanParam("doc.allcomps.simpleTypes") ? return false;

count = countElementsByLPath (
  \'#DOCUMENT /
   xs:schema [checkElementsByKey ("documented-schemas", contextElement.id)] /
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
						COND='! getBooleanParam("doc.allcomps.groups") ? return false;

count = countElementsByLPath (
  \'#DOCUMENT /
   xs:schema [checkElementsByKey ("documented-schemas", contextElement.id)] /
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
						COND='! getBooleanParam("doc.allcomps.attributes") ? return false;

count = countElementsByLPath (
  \'#DOCUMENT /
   xs:schema [checkElementsByKey ("documented-schemas", contextElement.id)] /
   xs:attribute\'
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
						COND='! getBooleanParam("doc.allcomps.attributeGroups") ? return false;

count = countElementsByLPath (
  \'#DOCUMENT /
   xs:schema [checkElementsByKey ("documented-schemas", contextElement.id)] /
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
								TEXT='Components:'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
	<TEMPLATE_CALL>
		DESCR='elements'
		COND='getBooleanParam("doc.allcomps.elements")'
		TEMPLATE_FILE='../element/elementSummary.tpl'
		PASSED_PARAMS={
			'$elements.local','getStringParam("doc.allcomps.elements.local")';
			'$item.annotation','getStringParam("doc.allcomps.item.annotation")';
			'doc.comp.profile','getBooleanParam("doc.allcomps.item.profile")';
			'doc.comp.profile.namespace','getBooleanParam("doc.allcomps.item.profile.namespace")';
			'doc.comp.profile.type','getBooleanParam("doc.allcomps.item.profile.type")';
			'doc.comp.profile.content','getBooleanParam("doc.allcomps.item.profile.content")';
			'doc.comp.profile.abstract','getBooleanParam("doc.allcomps.item.profile.abstract")';
			'doc.comp.profile.block','getStringParam("doc.allcomps.item.profile.block")';
			'doc.comp.profile.block.value','getBooleanParam("doc.allcomps.item.profile.block.value")';
			'doc.comp.profile.block.meaning','getBooleanParam("doc.allcomps.item.profile.block.meaning")';
			'doc.comp.profile.final','getStringParam("doc.allcomps.item.profile.final")';
			'doc.comp.profile.final.value','getBooleanParam("doc.allcomps.item.profile.final.value")';
			'doc.comp.profile.final.meaning','getBooleanParam("doc.allcomps.item.profile.final.meaning")';
			'doc.comp.profile.subst','getBooleanParam("doc.allcomps.item.profile.subst")';
			'doc.comp.profile.subst.heads','getBooleanParam("doc.allcomps.item.profile.subst.heads")';
			'doc.comp.profile.subst.members','getBooleanParam("doc.allcomps.item.profile.subst.members")';
			'doc.comp.profile.nillable','getBooleanParam("doc.allcomps.item.profile.nillable")';
			'doc.comp.profile.defined','getBooleanParam("doc.allcomps.item.profile.defined")';
			'doc.comp.profile.includes','getBooleanParam("doc.allcomps.item.profile.includes")';
			'doc.comp.profile.used','getBooleanParam("doc.allcomps.item.profile.used")';
			'$sorting','getBooleanParam("doc.allcomps.sorting")';
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
		COND='getBooleanParam("doc.allcomps.complexTypes")'
		TEMPLATE_FILE='../type/complexTypeSummary.tpl'
		PASSED_PARAMS={
			'$item.annotation','getStringParam("doc.allcomps.item.annotation")';
			'doc.comp.profile','getBooleanParam("doc.allcomps.item.profile")';
			'doc.comp.profile.namespace','getBooleanParam("doc.allcomps.item.profile.namespace")';
			'doc.comp.profile.content','getBooleanParam("doc.allcomps.item.profile.content")';
			'doc.comp.profile.abstract','getBooleanParam("doc.allcomps.item.profile.abstract")';
			'doc.comp.profile.block','getStringParam("doc.allcomps.item.profile.block")';
			'doc.comp.profile.block.value','getBooleanParam("doc.allcomps.item.profile.block.value")';
			'doc.comp.profile.block.meaning','getBooleanParam("doc.allcomps.item.profile.block.meaning")';
			'doc.comp.profile.final','getStringParam("doc.allcomps.item.profile.final")';
			'doc.comp.profile.final.value','getBooleanParam("doc.allcomps.item.profile.final.value")';
			'doc.comp.profile.final.meaning','getBooleanParam("doc.allcomps.item.profile.final.meaning")';
			'doc.comp.profile.defined','getBooleanParam("doc.allcomps.item.profile.defined")';
			'doc.comp.profile.includes','getBooleanParam("doc.allcomps.item.profile.includes")';
			'doc.comp.profile.redefines','getBooleanParam("doc.allcomps.item.profile.redefines")';
			'doc.comp.profile.redefined','getBooleanParam("doc.allcomps.item.profile.redefined")';
			'doc.comp.profile.used','getBooleanParam("doc.allcomps.item.profile.used")';
			'$sorting','getBooleanParam("doc.allcomps.sorting")';
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
		COND='getBooleanParam("doc.allcomps.simpleTypes")'
		TEMPLATE_FILE='../type/simpleTypeSummary.tpl'
		PASSED_PARAMS={
			'$item.annotation','getStringParam("doc.allcomps.item.annotation")';
			'doc.comp.profile','getBooleanParam("doc.allcomps.item.profile")';
			'doc.comp.profile.namespace','getBooleanParam("doc.allcomps.item.profile.namespace")';
			'doc.comp.profile.content','getBooleanParam("doc.allcomps.item.profile.content")';
			'doc.comp.profile.final','getStringParam("doc.allcomps.item.profile.final")';
			'doc.comp.profile.final.value','getBooleanParam("doc.allcomps.item.profile.final.value")';
			'doc.comp.profile.final.meaning','getBooleanParam("doc.allcomps.item.profile.final.meaning")';
			'doc.comp.profile.defined','getBooleanParam("doc.allcomps.item.profile.defined")';
			'doc.comp.profile.redefines','getBooleanParam("doc.allcomps.item.profile.redefines")';
			'doc.comp.profile.redefined','getBooleanParam("doc.allcomps.item.profile.redefined")';
			'doc.comp.profile.used','getBooleanParam("doc.allcomps.item.profile.used")';
			'$sorting','getBooleanParam("doc.allcomps.sorting")';
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
		COND='getBooleanParam("doc.allcomps.groups")'
		TEMPLATE_FILE='../groups/groupSummary.tpl'
		PASSED_PARAMS={
			'$item.annotation','getStringParam("doc.allcomps.item.annotation")';
			'doc.comp.profile','getBooleanParam("doc.allcomps.item.profile")';
			'doc.comp.profile.namespace','getBooleanParam("doc.allcomps.item.profile.namespace")';
			'doc.comp.profile.content','getBooleanParam("doc.allcomps.item.profile.content")';
			'doc.comp.profile.defined','getBooleanParam("doc.allcomps.item.profile.defined")';
			'doc.comp.profile.includes','getBooleanParam("doc.allcomps.item.profile.includes")';
			'doc.comp.profile.redefines','getBooleanParam("doc.allcomps.item.profile.redefines")';
			'doc.comp.profile.redefined','getBooleanParam("doc.allcomps.item.profile.redefined")';
			'doc.comp.profile.used','getBooleanParam("doc.allcomps.item.profile.used")';
			'$sorting','getBooleanParam("doc.allcomps.sorting")';
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
		COND='getBooleanParam("doc.allcomps.attributes")'
		TEMPLATE_FILE='../attribute/attributeSummary.tpl'
		PASSED_PARAMS={
			'$item.annotation','getStringParam("doc.allcomps.item.annotation")';
			'doc.comp.profile','getBooleanParam("doc.allcomps.item.profile")';
			'doc.comp.profile.namespace','getBooleanParam("doc.allcomps.item.profile.namespace")';
			'doc.comp.profile.type','getBooleanParam("doc.allcomps.item.profile.type")';
			'doc.comp.profile.defined','getBooleanParam("doc.allcomps.item.profile.defined")';
			'doc.comp.profile.used','getBooleanParam("doc.allcomps.item.profile.used")';
			'$sorting','getBooleanParam("doc.allcomps.sorting")';
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
		COND='getBooleanParam("doc.allcomps.attributeGroups")'
		TEMPLATE_FILE='../groups/attributeGroupSummary.tpl'
		PASSED_PARAMS={
			'$item.annotation','getStringParam("doc.allcomps.item.annotation")';
			'doc.comp.profile','getBooleanParam("doc.allcomps.item.profile")';
			'doc.comp.profile.namespace','getBooleanParam("doc.allcomps.item.profile.namespace")';
			'doc.comp.profile.content','getBooleanParam("doc.allcomps.item.profile.content")';
			'doc.comp.profile.defined','getBooleanParam("doc.allcomps.item.profile.defined")';
			'doc.comp.profile.includes','getBooleanParam("doc.allcomps.item.profile.includes")';
			'doc.comp.profile.redefines','getBooleanParam("doc.allcomps.item.profile.redefines")';
			'doc.comp.profile.redefined','getBooleanParam("doc.allcomps.item.profile.redefined")';
			'doc.comp.profile.used','getBooleanParam("doc.allcomps.item.profile.used")';
			'$sorting','getBooleanParam("doc.allcomps.sorting")';
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
	<TEMPLATE_CALL>
		DESCR='Bottom Message'
		COND='output.type == "document" &&
! hasParamValue("show.about", "none")'
		TEMPLATE_FILE='../about.tpl'
	</TEMPLATE_CALL>
</ROOT>
CHECKSUM='xkpsN6bJr9DOveNUsFIWjyjEAntdYemSnoKPyWBTLCo'
</DOCFLEX_TEMPLATE>