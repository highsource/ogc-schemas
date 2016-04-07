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
ROOT_ETS={'#DOCUMENTS';'xs:schema'}
TITLE_EXPR='nsURI = getStringParam("$nsURI");

title = (nsURI != "") ? \'Namespace "\' + nsURI + \'"\' : \'{no namespace}\';

(parentTitle = getStringParam("docTitle")) != null
  ? title + " | " + parentTitle : title'
HTML_HEAD_EXPR='nsURI = getStringParam("$nsURI");

title = (nsURI != "") ? \'Namespace "\' + nsURI + \'"\' : \'{no namespace}\';

(parentTitle = getStringParam("docTitle")) != null
  ? title = title + " | " + parentTitle;

\'<script type="text/javascript">
    window.onload = function() {
        parent.document.title="\' + encodeJScriptString (title) + \'";
    }
</script>\''
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$nsURI';
		param.title='Namespace URI';
		param.type='string';
	}
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
		param.defaultValue='namespace';
		param.fixed='true';
	}
	PARAM={
		param.name='$page.heading.left';
		param.title='Page Heading (on the left)';
		param.type='string';
		param.defaultValue.expr='(ns = getStringParam("$nsURI")) != ""
  ? \'Namespace "\' + ns + \'"\' : "{no namespace}"';
		param.fixed='true';
	}
	PARAM={
		param.name='docTitle';
		param.title='Documentation Title';
		param.type='string';
	}
	PARAM={
		param.name='gen.doc';
		param.title='Generate Details';
		param.title.style.bold='true';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='gen.doc.schema';
		param.title='Schema Overviews';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace';
		param.title='Namespace Overview';
		param.title.style.bold='true';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='doc.namespace.profile';
		param.title='Namespace Profile';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.schemas';
		param.title='Schema Summary';
		param.group='true';
		param.group.defaultState='expanded';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.schemas.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.schemas.annotation';
		param.title='Annotation';
		param.type='enum';
		param.enum.values='first_sentence;full;none';
	}
	PARAM={
		param.name='doc.namespace.schemas.profile';
		param.title='Schema Profile';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.schemas.profile.targetNamespace';
		param.title='Target Namespace';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.schemas.profile.version';
		param.title='Version';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.schemas.profile.components';
		param.title='Components';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.schemas.profile.formDefault';
		param.title='Default NS-Qualified Form';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.schemas.profile.blockDefault';
		param.title='Default Block Attribute';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.schemas.profile.blockDefault.value';
		param.title='Value';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.schemas.profile.blockDefault.meaning';
		param.title='Meaning';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.schemas.profile.finalDefault';
		param.title='Default Final Attribute';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.schemas.profile.finalDefault.value';
		param.title='Value';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.schemas.profile.finalDefault.meaning';
		param.title='Meaning';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.schemas.profile.location';
		param.title='Schema Location';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.schemas.profile.location.relative';
		param.title='Relative Path';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.schemas.profile.location.hyperlink';
		param.title='Hyperlink';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.schemas.profile.relatedSchemas';
		param.title='Related Schemas';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.comps';
		param.title='Component Summaries';
		param.title.style.bold='true';
		param.group='true';
		param.group.defaultState='expanded';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.comps.item';
		param.title='Summary Item';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='doc.namespace.comps.item.annotation';
		param.title='Annotation';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='first_sentence;full;none';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile';
		param.title='Component Profile';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.namespace';
		param.title='Namespace';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.type';
		param.title='Type';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.content';
		param.title='Content';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.abstract';
		param.title='Abstract';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.block';
		param.title='Block';
		param.featureType='pro';
		param.group='true';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.block.value';
		param.title='Value';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.block.meaning';
		param.title='Meaning';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.final';
		param.title='Final';
		param.featureType='pro';
		param.group='true';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.final.value';
		param.title='Value';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.final.meaning';
		param.title='Meaning';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.subst';
		param.title='Subst.Gr';
		param.group='true';
		param.group.defaultState='expanded';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.subst.heads';
		param.title='List of group heads';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.subst.members';
		param.title='List of group members';
		param.featureType='pro';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.nillable';
		param.title='Nillable';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.defined';
		param.title='Defined';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.includes';
		param.title='Includes';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.redefines';
		param.title='Redefines';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.redefined';
		param.title='Redefined';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.used';
		param.title='Used';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.comps.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.comps.elements';
		param.title='Elements';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.comps.elements.local';
		param.title='Local Elements';
		param.type='enum';
		param.enum.values='all;complexType;none';
	}
	PARAM={
		param.name='doc.namespace.comps.complexTypes';
		param.title='Complex Types';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.comps.simpleTypes';
		param.title='Simple Types';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.comps.groups';
		param.title='Element Groups';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.comps.attributes';
		param.title='Global Attributes';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.comps.attributeGroups';
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
		style.id='cs3';
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
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs3';
}
<HTARGET>
	HKEYS={
		'getStringParam("$nsURI")';
		'"detail"';
	}
</HTARGET>
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
		COND='getStringParam("$nsURI") == ""'
		FMT={
			par.style='s1';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						TEXT='{no namespace}'
					</TEXT_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		COND='getStringParam("$nsURI") != ""'
		FMT={
			par.style='s1';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						TEXT='Namespace'
					</TEXT_CTRL>
					<DATA_CTRL>
						FORMULA='\'"\' + getStringParam("$nsURI") + \'"\''
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<TEMPLATE_CALL>
		COND='getBooleanParam("doc.namespace.profile")'
		TEMPLATE_FILE='namespaceProfile.tpl'
		FMT={
			sec.spacing.before='10';
		}
	</TEMPLATE_CALL>
	<ELEMENT_ITER>
		DESCR='schema summary'
		COND='getBooleanParam("doc.namespace.schemas")'
		TARGET_ET='xs:schema'
		SCOPE='advanced-location-rules'
		RULES={
			'* -> {findElementsByKey ("namespaces", getParam("$nsURI"))}::xs:schema';
		}
		SORTING='by-expr'
		SORTING_KEY={expr='getXMLDocument().getAttrStringValue("xmlName")',ascending}
		FMT={
			sec.outputStyle='table';
			sec.spacing.before='10';
			table.sizing='Relative';
			table.cell.padding.both='2.5';
		}
		<HTARGET>
			HKEYS={
				'getStringParam("$nsURI")';
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
							<SS_CALL_CTRL>
								SS_NAME='Schema Name'
								FMT={
									ctrl.size.width='120';
									ctrl.size.height='17.3';
									tcell.sizing='Minimal';
									text.style='cs7';
									txtfl.delimiter.type='text';
									txtfl.delimiter.text=', ';
									par.option.nowrap='true';
								}
							</SS_CALL_CTRL>
							<SS_CALL_CTRL>
								SS_NAME='Schema'
								FMT={
									ctrl.size.width='346.5';
									ctrl.size.height='17.3';
									tcell.sizing='Relative';
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
	<FOLDER>
		DESCR='COMPONENT SUMMARY'
		COND='getBooleanParam("doc.namespace.comps")'
		<BODY>
			<TEMPLATE_CALL>
				DESCR='elements'
				COND='getBooleanParam("doc.namespace.comps.elements")'
				TEMPLATE_FILE='../element/elementSummary.tpl'
				PASSED_PARAMS={
					'$elements.local','getStringParam("doc.namespace.comps.elements.local")';
					'$item.annotation','getStringParam("doc.namespace.comps.item.annotation")';
					'doc.comp.profile','getBooleanParam("doc.namespace.comps.item.profile")';
					'doc.comp.profile.namespace','getBooleanParam("doc.namespace.comps.item.profile.namespace")';
					'doc.comp.profile.type','getBooleanParam("doc.namespace.comps.item.profile.type")';
					'doc.comp.profile.content','getBooleanParam("doc.namespace.comps.item.profile.content")';
					'doc.comp.profile.abstract','getBooleanParam("doc.namespace.comps.item.profile.abstract")';
					'doc.comp.profile.block','getStringParam("doc.namespace.comps.item.profile.block")';
					'doc.comp.profile.block.value','getBooleanParam("doc.namespace.comps.item.profile.block.value")';
					'doc.comp.profile.block.meaning','getBooleanParam("doc.namespace.comps.item.profile.block.meaning")';
					'doc.comp.profile.final','getStringParam("doc.namespace.comps.item.profile.final")';
					'doc.comp.profile.final.value','getBooleanParam("doc.namespace.comps.item.profile.final.value")';
					'doc.comp.profile.final.meaning','getBooleanParam("doc.namespace.comps.item.profile.final.meaning")';
					'doc.comp.profile.subst','getBooleanParam("doc.namespace.comps.item.profile.subst")';
					'doc.comp.profile.subst.heads','getBooleanParam("doc.namespace.comps.item.profile.subst.heads")';
					'doc.comp.profile.subst.members','getBooleanParam("doc.namespace.comps.item.profile.subst.members")';
					'doc.comp.profile.nillable','getBooleanParam("doc.namespace.comps.item.profile.nillable")';
					'doc.comp.profile.defined','getBooleanParam("doc.namespace.comps.item.profile.defined")';
					'doc.comp.profile.includes','getBooleanParam("doc.namespace.comps.item.profile.includes")';
					'doc.comp.profile.used','getBooleanParam("doc.namespace.comps.item.profile.used")';
					'$sorting','getBooleanParam("doc.namespace.comps.sorting")';
				}
				FMT={
					sec.spacing.before='10';
				}
				<HTARGET>
					HKEYS={
						'getStringParam("$nsURI")';
						'"element-summary"';
					}
				</HTARGET>
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				DESCR='complexTypes'
				COND='getBooleanParam("doc.namespace.comps.complexTypes")'
				TEMPLATE_FILE='../type/complexTypeSummary.tpl'
				PASSED_PARAMS={
					'$item.annotation','getStringParam("doc.namespace.comps.item.annotation")';
					'doc.comp.profile','getBooleanParam("doc.namespace.comps.item.profile")';
					'doc.comp.profile.namespace','getBooleanParam("doc.namespace.comps.item.profile.namespace")';
					'doc.comp.profile.content','getBooleanParam("doc.namespace.comps.item.profile.content")';
					'doc.comp.profile.abstract','getBooleanParam("doc.namespace.comps.item.profile.abstract")';
					'doc.comp.profile.block','getStringParam("doc.namespace.comps.item.profile.block")';
					'doc.comp.profile.block.value','getBooleanParam("doc.namespace.comps.item.profile.block.value")';
					'doc.comp.profile.block.meaning','getBooleanParam("doc.namespace.comps.item.profile.block.meaning")';
					'doc.comp.profile.final','getStringParam("doc.namespace.comps.item.profile.final")';
					'doc.comp.profile.final.value','getBooleanParam("doc.namespace.comps.item.profile.final.value")';
					'doc.comp.profile.final.meaning','getBooleanParam("doc.namespace.comps.item.profile.final.meaning")';
					'doc.comp.profile.defined','getBooleanParam("doc.namespace.comps.item.profile.defined")';
					'doc.comp.profile.includes','getBooleanParam("doc.namespace.comps.item.profile.includes")';
					'doc.comp.profile.redefines','getBooleanParam("doc.namespace.comps.item.profile.redefines")';
					'doc.comp.profile.redefined','getBooleanParam("doc.namespace.comps.item.profile.redefined")';
					'doc.comp.profile.used','getBooleanParam("doc.namespace.comps.item.profile.used")';
					'$sorting','getBooleanParam("doc.namespace.comps.sorting")';
				}
				FMT={
					sec.spacing.before='10';
				}
				<HTARGET>
					HKEYS={
						'getStringParam("$nsURI")';
						'"complexType-summary"';
					}
				</HTARGET>
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				DESCR='simpleTypes'
				COND='getBooleanParam("doc.namespace.comps.simpleTypes")'
				TEMPLATE_FILE='../type/simpleTypeSummary.tpl'
				PASSED_PARAMS={
					'$item.annotation','getStringParam("doc.namespace.comps.item.annotation")';
					'doc.comp.profile','getBooleanParam("doc.namespace.comps.item.profile")';
					'doc.comp.profile.namespace','getBooleanParam("doc.namespace.comps.item.profile.namespace")';
					'doc.comp.profile.content','getBooleanParam("doc.namespace.comps.item.profile.content")';
					'doc.comp.profile.final','getStringParam("doc.namespace.comps.item.profile.final")';
					'doc.comp.profile.final.value','getBooleanParam("doc.namespace.comps.item.profile.final.value")';
					'doc.comp.profile.final.meaning','getBooleanParam("doc.namespace.comps.item.profile.final.meaning")';
					'doc.comp.profile.defined','getBooleanParam("doc.namespace.comps.item.profile.defined")';
					'doc.comp.profile.redefines','getBooleanParam("doc.namespace.comps.item.profile.redefines")';
					'doc.comp.profile.redefined','getBooleanParam("doc.namespace.comps.item.profile.redefined")';
					'doc.comp.profile.used','getBooleanParam("doc.namespace.comps.item.profile.used")';
					'$sorting','getBooleanParam("doc.namespace.comps.sorting")';
				}
				FMT={
					sec.spacing.before='10';
				}
				<HTARGET>
					HKEYS={
						'getStringParam("$nsURI")';
						'"simpleType-summary"';
					}
				</HTARGET>
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				DESCR='element groups'
				COND='getBooleanParam("doc.namespace.comps.groups")'
				TEMPLATE_FILE='../groups/groupSummary.tpl'
				PASSED_PARAMS={
					'$item.annotation','getStringParam("doc.namespace.comps.item.annotation")';
					'doc.comp.profile','getBooleanParam("doc.namespace.comps.item.profile")';
					'doc.comp.profile.namespace','getBooleanParam("doc.namespace.comps.item.profile.namespace")';
					'doc.comp.profile.content','getBooleanParam("doc.namespace.comps.item.profile.content")';
					'doc.comp.profile.defined','getBooleanParam("doc.namespace.comps.item.profile.defined")';
					'doc.comp.profile.includes','getBooleanParam("doc.namespace.comps.item.profile.includes")';
					'doc.comp.profile.redefines','getBooleanParam("doc.namespace.comps.item.profile.redefines")';
					'doc.comp.profile.redefined','getBooleanParam("doc.namespace.comps.item.profile.redefined")';
					'doc.comp.profile.used','getBooleanParam("doc.namespace.comps.item.profile.used")';
					'$sorting','getBooleanParam("doc.namespace.comps.sorting")';
				}
				FMT={
					sec.spacing.before='10';
				}
				<HTARGET>
					HKEYS={
						'getStringParam("$nsURI")';
						'"group-summary"';
					}
				</HTARGET>
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				DESCR='attributes'
				COND='getBooleanParam("doc.namespace.comps.attributes")'
				TEMPLATE_FILE='../attribute/attributeSummary.tpl'
				PASSED_PARAMS={
					'$item.annotation','getStringParam("doc.namespace.comps.item.annotation")';
					'doc.comp.profile','getBooleanParam("doc.namespace.comps.item.profile")';
					'doc.comp.profile.namespace','getBooleanParam("doc.namespace.comps.item.profile.namespace")';
					'doc.comp.profile.type','getBooleanParam("doc.namespace.comps.item.profile.type")';
					'doc.comp.profile.defined','getBooleanParam("doc.namespace.comps.item.profile.defined")';
					'doc.comp.profile.used','getBooleanParam("doc.namespace.comps.item.profile.used")';
					'$sorting','getBooleanParam("doc.namespace.comps.sorting")';
				}
				FMT={
					sec.spacing.before='10';
				}
				<HTARGET>
					HKEYS={
						'getStringParam("$nsURI")';
						'"attribute-summary"';
					}
				</HTARGET>
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				DESCR='attribute groups'
				COND='getBooleanParam("doc.namespace.comps.attributeGroups")'
				TEMPLATE_FILE='../groups/attributeGroupSummary.tpl'
				PASSED_PARAMS={
					'$item.annotation','getStringParam("doc.namespace.comps.item.annotation")';
					'doc.comp.profile','getBooleanParam("doc.namespace.comps.item.profile")';
					'doc.comp.profile.namespace','getBooleanParam("doc.namespace.comps.item.profile.namespace")';
					'doc.comp.profile.content','getBooleanParam("doc.namespace.comps.item.profile.content")';
					'doc.comp.profile.defined','getBooleanParam("doc.namespace.comps.item.profile.defined")';
					'doc.comp.profile.includes','getBooleanParam("doc.namespace.comps.item.profile.includes")';
					'doc.comp.profile.redefines','getBooleanParam("doc.namespace.comps.item.profile.redefines")';
					'doc.comp.profile.redefined','getBooleanParam("doc.namespace.comps.item.profile.redefined")';
					'doc.comp.profile.used','getBooleanParam("doc.namespace.comps.item.profile.used")';
					'$sorting','getBooleanParam("doc.namespace.comps.sorting")';
				}
				FMT={
					sec.spacing.before='10';
				}
				<HTARGET>
					HKEYS={
						'getStringParam("$nsURI")';
						'"attributeGroup-summary"';
					}
				</HTARGET>
			</TEMPLATE_CALL>
		</BODY>
	</FOLDER>
	<TEMPLATE_CALL>
		DESCR='Bottom Message'
		COND='output.type == "document" &&
! hasParamValue("show.about", "none")'
		TEMPLATE_FILE='../about.tpl'
	</TEMPLATE_CALL>
</ROOT>
<STOCK_SECTIONS>
	<FOLDER>
		SS_NAME='Schema'
		MATCHING_ET='xs:schema'
		<BODY>
			<TEMPLATE_CALL>
				COND='hasParamValue("doc.namespace.schemas.annotation", "full")'
				OUTPUT_CHECKER_EXPR='getValuesByLPath(
  "xs:annotation/xs:documentation//(#TEXT | #CDATA)"
).isBlank() ? -1 : 1'
				TEMPLATE_FILE='../ann/annotation.tpl'
				FMT={
					text.style='cs1';
				}
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				COND='hasParamValue("doc.namespace.schemas.annotation", "first_sentence")'
				OUTPUT_CHECKER_EXPR='getValuesByLPath(
  "xs:annotation/xs:documentation//(#TEXT | #CDATA)"
).isBlank() ? -1 : 1'
				TEMPLATE_FILE='../ann/firstSentence.tpl'
				FMT={
					text.style='cs1';
				}
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				COND='getBooleanParam("doc.namespace.schemas.profile")'
				TEMPLATE_FILE='../schema/schemaProfile.tpl'
				PASSED_PARAMS={
					'doc.schema.profile.targetNamespace','getBooleanParam("doc.namespace.schemas.profile.targetNamespace")';
					'doc.schema.profile.version','getBooleanParam("doc.namespace.schemas.profile.version")';
					'doc.schema.profile.components','getBooleanParam("doc.namespace.schemas.profile.components")';
					'doc.schema.profile.formDefault','getBooleanParam("doc.namespace.schemas.profile.formDefault")';
					'doc.schema.profile.blockDefault','getBooleanParam("doc.namespace.schemas.profile.blockDefault")';
					'doc.schema.profile.blockDefault.value','getBooleanParam("doc.namespace.schemas.profile.blockDefault.value")';
					'doc.schema.profile.blockDefault.meaning','getBooleanParam("doc.namespace.schemas.profile.blockDefault.meaning")';
					'doc.schema.profile.finalDefault','getBooleanParam("doc.namespace.schemas.profile.finalDefault")';
					'doc.schema.profile.finalDefault.value','getBooleanParam("doc.namespace.schemas.profile.finalDefault.value")';
					'doc.schema.profile.finalDefault.meaning','getBooleanParam("doc.namespace.schemas.profile.finalDefault.meaning")';
					'doc.schema.profile.location','getBooleanParam("doc.namespace.schemas.profile.location")';
					'doc.schema.profile.location.relative','getBooleanParam("doc.namespace.schemas.profile.location.relative")';
					'doc.schema.profile.location.hyperlink','getBooleanParam("doc.namespace.schemas.profile.location.hyperlink")';
					'doc.schema.profile.relatedSchemas','getBooleanParam("doc.namespace.schemas.profile.relatedSchemas")';
				}
				FMT={
					sec.spacing.before='6.7';
				}
			</TEMPLATE_CALL>
		</BODY>
	</FOLDER>
	<TEMPLATE_CALL>
		SS_NAME='Schema Name'
		TEMPLATE_FILE='../schema/schemaName.tpl'
	</TEMPLATE_CALL>
</STOCK_SECTIONS>
CHECKSUM='7Dsn6+6dQhuWMN06GSSlDLokB79+d1vmMDUTD05U2Cw'
</DOCFLEX_TEMPLATE>