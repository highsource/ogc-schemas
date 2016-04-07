<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2005-04-26 03:31:00'
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
ROOT_ET='xs:simpleType'
TITLE_EXPR='title = getStringParam("$title");

(parentTitle = getStringParam("docTitle")) != null
  ? title + " | " + parentTitle : title'
HTML_HEAD_EXPR='title = getStringParam("$title");

(parentTitle = getStringParam("docTitle")) != null
  ? title = title + " | " + parentTitle;

\'<script type="text/javascript">
    window.onload = function() {
        parent.document.title="\' + encodeJScriptString (title) + \'";
    }
</script>\''
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$mainXML';
		param.type='GOMElement';
		param.defaultValue.expr='findElementByKey ("main-xmls", getXMLDocument().id)';
	}
	PARAM={
		param.name='$nsURI';
		param.title='Target Namespace URI';
		param.type='string';
		param.defaultValue.expr='findAncestor("xs:schema").getServiceAttr("targetNamespace")';
		param.hidden='true';
	}
	PARAM={
		param.name='$xmlName';
		param.description='Displayed XML name (qualified or local) of the simpleType';
		param.type='string';
		param.defaultValue.expr='toXMLName (
  getStringParam("$nsURI"),
  getAttrStringValue("name")
)';
		param.fixed='true';
		param.hidden='true';
	}
	PARAM={
		param.name='$title';
		param.title='Component\'s doc title';
		param.type='string';
		param.defaultValue.expr='\'simpleType "\' + getParam("$xmlName") + \'"\'
+ 
(hasServiceAttr ("redefinition") ?
  \' \' + callStockSection("redefinition") : "")';
	}
	PARAM={
		param.name='$usageCount';
		param.description='number of locations where this type is used';
		param.type='integer';
		param.defaultValue.expr='countElementsByKey ("xsd-type-usage", contextElement.id)';
		param.fixed='true';
		param.hidden='true';
	}
	PARAM={
		param.name='docTitle';
		param.title='Documentation Title';
		param.type='string';
	}
	PARAM={
		param.name='doc.xsd.comp';
		param.title='Schema Component';
		param.title.style.bold='true';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='doc.xsd.comp.profile';
		param.title='Component Profile';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.xmlRep';
		param.title='XML Representation Summary';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.xmlRep.for.simpleType';
		param.title='Generate For Simple Types';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.lists';
		param.title='Lists of Related Components';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.simpleContent';
		param.title='Simple Content Detail';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.simpleContent.restrictions';
		param.title='Restrictions';
		param.group='true';
		param.group.defaultState='expanded';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.simpleContent.restrictions.annotation';
		param.title='Annotations';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.usage';
		param.title='Usage / Definition Locations';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.usage.for.simpleType';
		param.title='Simple Types';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.annotation';
		param.title='Annotation';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.annotation.for.simpleType';
		param.title='Simple Types';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.type';
		param.title='Type Definition Detail';
		param.title.style.bold='true';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.type.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='doc.xsd.comp.type.for.type';
		param.title='Global Types';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.type.deriv.tree';
		param.title='Type Derivation Tree';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.type.annotation';
		param.title='Annotation';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.type.deriv.simpleContent';
		param.title='Simple Content Derivation';
		param.group='true';
		param.type='enum';
		param.enum.values='local;full;none';
	}
	PARAM={
		param.name='doc.xsd.comp.type.deriv.simpleContent.facets';
		param.title='Facets';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.type.deriv.simpleContent.annotations';
		param.title='Annotations';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.xml';
		param.title='XML Source';
		param.title.style.bold='true';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.xml.box';
		param.title='Enclose in Box';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.xml.remove.xsd.anns';
		param.title='Remove <xs:annotation>';
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
		param.name='show.about';
		param.title='About (footer)';
		param.type='boolean';
	}
</TEMPLATE_PARAMS>
<STYLES>
	CHAR_STYLE={
		style.name='Code Smaller';
		style.id='cs1';
		text.font.name='Courier New';
		text.font.size='8';
	}
	CHAR_STYLE={
		style.name='Default Paragraph Font';
		style.id='cs2';
		style.default='true';
	}
	PAR_STYLE={
		style.name='Detail Heading 1';
		style.id='s1';
		text.font.size='12';
		text.font.style.bold='true';
	}
	PAR_STYLE={
		style.name='Detail Heading 2';
		style.id='s2';
		text.font.size='9';
		text.font.style.bold='true';
		par.bkgr.opaque='true';
		par.bkgr.color='#EEEEFF';
		par.border.style='solid';
		par.border.color='#666666';
		par.margin.top='10';
		par.margin.bottom='8.3';
		par.padding.left='1.7';
		par.padding.right='1.7';
		par.padding.top='1.7';
		par.padding.bottom='1.7';
		par.page.keepWithNext='true';
	}
	PAR_STYLE={
		style.name='Detail Heading 3';
		style.id='s3';
		text.font.name='Arial';
		text.font.size='9';
		text.font.style.bold='true';
		par.margin.top='8.3';
		par.margin.bottom='6.7';
	}
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs3';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	PAR_STYLE={
		style.name='List Heading 1';
		style.id='s4';
		text.font.name='Arial';
		text.font.size='10';
		text.font.style.bold='true';
		par.margin.top='10';
		par.margin.bottom='6.7';
		par.page.keepWithNext='true';
	}
	PAR_STYLE={
		style.name='List Heading 2';
		style.id='s5';
		text.font.name='Arial';
		text.font.size='9';
		text.font.style.bold='true';
		par.margin.bottom='6.7';
		par.page.keepWithNext='true';
	}
	PAR_STYLE={
		style.name='Main Heading';
		style.id='s6';
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
		par.page.keepWithNext='true';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s7';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Note Font';
		style.id='cs4';
		text.font.name='Arial';
		text.font.size='8';
		text.font.style.bold='false';
	}
	CHAR_STYLE={
		style.name='Page Header Font';
		style.id='cs5';
		text.font.name='Arial';
		text.font.style.italic='true';
	}
	PAR_STYLE={
		style.name='Property Title';
		style.id='s8';
		text.font.size='8';
		text.font.style.bold='true';
		par.margin.right='5.8';
		par.margin.top='0.3';
		par.margin.bottom='0.3';
	}
	PAR_STYLE={
		style.name='Property Value';
		style.id='s9';
		text.font.name='Verdana';
		text.font.size='8';
		par.margin.top='0.3';
		par.margin.bottom='0.3';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs3';
}
<HTARGET>
	HKEYS={
		'contextElement.id';
		'"detail"';
	}
</HTARGET>
<PAGE_HEADER>
	<AREA_SEC>
		FMT={
			text.style='cs5';
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
						FORMULA='getParam("$title")'
						FMT={
							text.font.style.italic='true';
						}
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
</PAGE_HEADER>
<ROOT>
	<AREA_SEC>
		FMT={
			par.style='s6';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<DATA_CTRL>
						FORMULA='getParam("$title")'
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<TEMPLATE_CALL>
		DESCR='Type Profile'
		COND='getBooleanParam("doc.xsd.comp.profile")'
		ON_OUTPUT_EXPR='thisContext.setVar ("has-profile", true)'
		TEMPLATE_FILE='typeProfile.tpl'
	</TEMPLATE_CALL>
	<TEMPLATE_CALL>
		DESCR='XML Representation Summary'
		COND='getBooleanParam("doc.xsd.comp.xmlRep") &&
getBooleanParam("doc.xsd.comp.xmlRep.for.simpleType")'
		ON_OUTPUT_EXPR='thisContext.setVar ("has-xml-rep-summary", true)'
		TEMPLATE_FILE='../content/xmlRep.tpl'
		PASSED_PARAMS={
			'$abbreviateSimpleContent','getBooleanParam("doc.xsd.comp.simpleContent") &&
getBooleanParam("doc.xsd.comp.simpleContent.restrictions")';
		}
		FMT={
			sec.spacing.before='10';
			sec.spacing.after='6.7';
		}
		<HTARGET>
			COND='output.type == "document"'
			HKEYS={
				'contextElement.id';
				'"xml-rep-summary"';
			}
			NAME_EXPR='"xml_rep_summary"'
		</HTARGET>
	</TEMPLATE_CALL>
	<FOLDER>
		DESCR='Simple Content Restrictions'
		COND='getBooleanParam("doc.xsd.comp.simpleContent")'
		ON_OUTPUT_EXPR='thisContext.setVar ("has-simple-content-detail", true)'
		COLLAPSED
		<BODY>
			<ELEMENT_ITER>
				DESCR='Iterate By Actual Facets
--
The iterated elements are produced as the following:

1. First, all facet elements that are declared both in the context type and all its ancestor types (global and anonymous) are collected. (This will work, however, until a derivation by list or union is reached.) 

What\'s important is that how the facets will follow in the result sequence. The facets from the same restriction will appear in the same order as they were declared. The facets from different restrictions will appear according to the remoteness of their parent restrictions from the context type.

This everything is determined with the Location Rules (and their ordering) specified in "Processing | Iteration Scope" tab.

2. Once the initial sequence is produced, the filtering by key will be applied (see "Processing | Filtering | Filter By Key" tab). The purpose of the filtering is to remove those facets that are overridden in the descendant types.  There are two special cases:

(1) All <xs:enumeration> facets will be removed except the first (valid) one. That will be enough to obtain all valid enumeration facets from the <xs:restriction> parent of the left one. This is done in "facet.tpl" template (called to print a facet value).

(2) All <xs:pattern> facets will be left because they all are valid.

All those conditions are specified in the "Expression For Unique Key". In the case of <xs:pattern>, the key will be the element ID, which is always unique (therefore, no <xs:pattern> element will be removed.

The "Preference Condition" expression determines if a given element should replace the already passed element with the same key. That will be so when the expression returns true. We specify to return the value of the facet\'s \'fixed\' attribute. The \'fixed\' attribute overrides anything that might be specified about that facet in the descendant types. (However, actually, doing this is not allowed in XSD!)

3. In the "Processing | Sorting" tab we specify sorting the result facets according to the facet type names. This is done primarily to ensure that all "pattern" facets are printed together.'
				COND='getBooleanParam("doc.xsd.comp.simpleContent.restrictions")'
				TARGET_ET='xs:%facet'
				SCOPE='advanced-location-rules'
				RULES={
					'xs:%simpleType -> xs:restriction',recursive;
					'xs:restriction -> (xs:%facet|xs:simpleType)',recursive;
					'xs:restriction -> {baseQName = getAttrQNameValue("base");
(baseQName != null && ! baseQName.isXSPredefinedType()) ? 
{
  findElementsByKey (
    "xsd-types",
    hasServiceAttr ("redefined") ?
      HashKey (baseQName, getServiceAttr ("redefined")) : baseQName,
    BooleanQuery (checkElementByKey (
      "main-xmls",
      getXMLDocument().id,
      getElementParam("$mainXML")
    ))
  )
}}::xs:simpleType',recursive;
				}
				FILTER_BY_KEY='instanceOf("xs:pattern") ?
  contextElement.id : contextElement.qName
'
				FILTER_BY_KEY_COND='getAttrBooleanValue("fixed")'
				SORTING='by-name'
				SORTING_KEY={expr='contextElement.name',ascending}
				FMT={
					sec.outputStyle='table';
					table.cell.padding.both='0';
					table.border.style='none';
					table.option.borderStylesInHTML='true';
				}
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<DATA_CTRL>
										FORMULA='name = contextElement.localName;
name.charAt(0).toUpperCase() + name.substring(1) + \':\''
										FMT={
											ctrl.size.width='32.3';
											ctrl.size.height='17.3';
											tcell.align.vert='Top';
											par.style='s8';
										}
									</DATA_CTRL>
									<TEMPLATE_CALL_CTRL>
										TEMPLATE_FILE='../content/facet.tpl'
										PASSED_PARAMS={
											'$facet.annotation','getBooleanParam("doc.xsd.comp.simpleContent.restrictions.annotation")';
										}
										FMT={
											ctrl.size.width='467.3';
											ctrl.size.height='17.3';
											tcell.align.vert='Bottom';
											par.style='s9';
										}
									</TEMPLATE_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</ELEMENT_ITER>
		</BODY>
		<HEADER>
			<AREA_SEC>
				COND='thisContext.checkVar ("has-profile")
&&
! thisContext.checkVar ("has-xml-rep-summary")'
				FMT={
					sec.outputStyle='pars';
				}
				<AREA>
					<HR>
						FMT={
							par.margin.top='10';
							par.margin.bottom='10';
						}
					</HR>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				FMT={
					par.style='s3';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Simple Content Restrictions:'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
	<FOLDER>
		DESCR='Lists of Related Components'
		COND='getBooleanParam("doc.xsd.comp.lists")'
		COLLAPSED
		<BODY>
			<TEMPLATE_CALL>
				TEMPLATE_FILE='typeRelatedCompLists.tpl'
			</TEMPLATE_CALL>
		</BODY>
		<HEADER>
			<AREA_SEC>
				COND='thisContext.checkVar ("has-simple-content-detail")
||
thisContext.checkVar ("has-profile")
&&
! thisContext.checkVar ("has-xml-rep-summary")'
				FMT={
					sec.outputStyle='pars';
				}
				<AREA>
					<HR>
						FMT={
							par.margin.top='10';
							par.margin.bottom='10';
						}
					</HR>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
	<TEMPLATE_CALL>
		DESCR='Usage Locations'
		COND='getBooleanParam("doc.xsd.comp.usage") &&
getBooleanParam("doc.xsd.comp.usage.for.simpleType")
&&
getIntParam("$usageCount") > 0'
		TEMPLATE_FILE='typeUsage.tpl'
	</TEMPLATE_CALL>
	<FOLDER>
		DESCR='Annotation'
		COND='getBooleanParam("doc.xsd.comp.annotation") &&
getBooleanParam("doc.xsd.comp.annotation.for.simpleType")'
		COLLAPSED
		FMT={
			sec.spacing.before='10';
		}
		<BODY>
			<TEMPLATE_CALL>
				TEMPLATE_FILE='../ann/annotation.tpl'
			</TEMPLATE_CALL>
		</BODY>
		<HEADER>
			<AREA_SEC>
				FMT={
					par.style='s2';
				}
				<AREA>
					<CTRL_GROUP>
						FMT={
							trow.bkgr.color='#CCCCFF';
						}
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Annotation'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
	<FOLDER>
		DESCR='TYPE DEFINITION DETAIL'
		COND='getBooleanParam("doc.xsd.comp.type") &&
getBooleanParam("doc.xsd.comp.type.for.type")'
		COLLAPSED
		<HTARGET>
			HKEYS={
				'contextElement.id';
				'"type-def-detail"';
			}
			NAME_EXPR='output.type == "document" ? "type_def_detail" : ""'
		</HTARGET>
		<BODY>
			<AREA_SEC>
				COND='getBooleanParam("doc.xsd.comp.type.deriv.tree")'
				FMT={
					sec.outputStyle='table';
					sec.spacing.before='8.3';
					sec.spacing.after='8.3';
					table.sizing='Relative';
					table.autofit='false';
					table.cell.padding.both='3.3';
					table.bkgr.color='#F5F5F5';
					table.border.style='solid';
					table.border.color='#999999';
					table.page.keepTogether='true';
					table.option.borderStylesInHTML='true';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEMPLATE_CALL_CTRL>
								TEMPLATE_FILE='typeDerivationTree.tpl'
								PASSED_PARAMS={
									'$xmlSourceLink','! getBooleanParam("doc.xsd.comp.xml")';
								}
								FMT={
									ctrl.size.width='499.5';
									ctrl.size.height='17.3';
								}
							</TEMPLATE_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<TEMPLATE_CALL>
				COND='! hasParamValue("doc.xsd.comp.type.deriv.simpleContent", "none")'
				TEMPLATE_FILE='../content/simpleContentDerivation.tpl'
				PASSED_PARAMS={
					'$deriv.simpleContent','getStringParam("doc.xsd.comp.type.deriv.simpleContent")';
					'$deriv.simpleContent.facets','getBooleanParam("doc.xsd.comp.type.deriv.simpleContent.facets")';
					'$deriv.simpleContent.annotations','getBooleanParam("doc.xsd.comp.type.deriv.simpleContent.annotations")';
				}
			</TEMPLATE_CALL>
		</BODY>
		<HEADER>
			<AREA_SEC>
				FMT={
					sec.outputStyle='table';
					table.sizing='Relative';
				}
				<AREA>
					<SPACER>
						FMT={
							spacer.height='10';
						}
					</SPACER>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Type Definition Detail'
								FMT={
									ctrl.size.width='499.5';
									ctrl.size.height='17.3';
									tcell.bkgr.color='#CCCCFF';
									par.style='s1';
								}
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
					<SPACER>
						FMT={
							spacer.height='8.3';
						}
					</SPACER>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
	<FOLDER>
		DESCR='XML SOURCE'
		COND='getBooleanParam("doc.xsd.comp.xml")'
		COLLAPSED
		<HTARGET>
			HKEYS={
				'contextElement.id';
				'"xml-source"';
			}
			NAME_EXPR='output.type == "document" ? "xml_source" : ""'
		</HTARGET>
		<BODY>
			<AREA_SEC>
				COND='getBooleanParam("doc.xsd.comp.xml.box")'
				BREAK_PARENT_BLOCK='when-executed'
				FMT={
					sec.outputStyle='table';
					table.sizing='Relative';
					table.autofit='false';
					table.cell.padding.both='3.3';
					table.bkgr.color='#F5F5F5';
					table.border.style='solid';
					table.border.color='#999999';
					table.option.borderStylesInHTML='true';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEMPLATE_CALL_CTRL>
								TEMPLATE_FILE='../../xml/nodeSource.tpl'
								PASSED_PARAMS={
									'$remove.xsd.anns','getBooleanParam("doc.xsd.comp.xml.remove.xsd.anns")';
								}
								FMT={
									ctrl.size.width='499.5';
									ctrl.size.height='17.3';
								}
							</TEMPLATE_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<TEMPLATE_CALL>
				TEMPLATE_FILE='../../xml/nodeSource.tpl'
				PASSED_PARAMS={
					'$remove.xsd.anns','getBooleanParam("doc.xsd.comp.xml.remove.xsd.anns")';
				}
			</TEMPLATE_CALL>
		</BODY>
		<HEADER>
			<AREA_SEC>
				FMT={
					sec.outputStyle='table';
					table.sizing='Relative';
				}
				<AREA>
					<SPACER>
						FMT={
							spacer.height='10';
						}
					</SPACER>
					<CTRL_GROUP>
						<CTRLS>
							<PANEL>
								FMT={
									ctrl.size.width='499.5';
									ctrl.size.height='41.3';
									tcell.bkgr.color='#CCCCFF';
									par.style='s1';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='XML Source'
											</TEXT_CTRL>
											<DELIMITER>
											</DELIMITER>
											<TEMPLATE_CALL_CTRL>
												TEMPLATE_FILE='../../xml/sourceNote.tpl'
												PASSED_PARAMS={
													'$remove.xsd.anns','getBooleanParam("doc.xsd.comp.xml.remove.xsd.anns")';
												}
												FMT={
													text.style='cs4';
												}
											</TEMPLATE_CALL_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
						</CTRLS>
					</CTRL_GROUP>
					<SPACER>
						FMT={
							spacer.height='8.3';
						}
					</SPACER>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
	<TEMPLATE_CALL>
		DESCR='Bottom Message'
		COND='output.type == "document" && getBooleanParam("show.about")'
		TEMPLATE_FILE='../../about.tpl'
	</TEMPLATE_CALL>
</ROOT>
<STOCK_SECTIONS>
	<AREA_SEC>
		SS_NAME='redefinition'
		FMT={
			sec.outputStyle='text-par';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						TEXT='(redefinition'
					</TEXT_CTRL>
					<DATA_CTRL>
						COND='getServiceAttr("redefinition").toInt() > 0'
						FORMULA='getServiceAttr ("redefinition")'
					</DATA_CTRL>
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
</STOCK_SECTIONS>
CHECKSUM='Mh9jGeaMkfuEI2BmexBebSp8jC78DjSdodIAymH8ZtQ'
</DOCFLEX_TEMPLATE>