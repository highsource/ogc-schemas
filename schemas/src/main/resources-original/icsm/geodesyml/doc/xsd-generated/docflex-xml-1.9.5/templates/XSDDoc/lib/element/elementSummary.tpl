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
		param.name='$sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='$page.heading.left';
		param.title='Page Heading (on the left)';
		param.type='string';
		param.defaultValue.expr='"Namespace " + ((ns = getStringParam("$nsURI")) != "" ? \'"\' + ns + \'"\' : "{no namespace}")';
	}
	PARAM={
		param.name='$elements.local';
		param.title='Local Elements';
		param.type='enum';
		param.enum.values='all;complexType;none';
	}
	PARAM={
		param.name='$item.annotation';
		param.title='Annotation';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='first_sentence;full;none';
	}
	PARAM={
		param.name='gen.doc.element.local';
		param.title='Local Elements';
		param.group='true';
		param.type='enum';
		param.enum.values='all;complexType;none';
	}
	PARAM={
		param.name='gen.doc.element.local.unifyByType';
		param.title='Unify By Type';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.profile';
		param.title='Component Profile';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.profile.namespace';
		param.title='Namespace';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.profile.type';
		param.title='Type';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.profile.content';
		param.title='Content';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.profile.abstract';
		param.title='Abstract';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.profile.block';
		param.title='Block';
		param.group='true';
		param.type='enum';
		param.enum.values='any;non_default;none';
	}
	PARAM={
		param.name='doc.comp.profile.block.value';
		param.title='Value';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.profile.block.meaning';
		param.title='Meaning';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.profile.final';
		param.title='Final';
		param.group='true';
		param.type='enum';
		param.enum.values='any;non_default;none';
	}
	PARAM={
		param.name='doc.comp.profile.final.value';
		param.title='Value';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.profile.final.meaning';
		param.title='Meaning';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.profile.subst';
		param.title='Subst.Gr';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.profile.subst.heads';
		param.title='List of group heads';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.profile.subst.members';
		param.title='List of group members';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.profile.nillable';
		param.title='Nillable';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.profile.defined';
		param.title='Defined';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.profile.includes';
		param.title='Includes';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.profile.used';
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
		param.name='fmt.page.refs';
		param.title='Generate page references';
		param.type='boolean';
		param.defaultValue='true';
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
		style.name='Heading Note';
		style.id='cs3';
		text.font.name='Arial';
		text.font.size='8';
		text.font.style.bold='false';
	}
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs4';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='Mono';
		style.id='cs5';
		text.font.name='Courier New';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Mono (Small)';
		style.id='cs6';
		text.font.name='Courier New';
		text.font.size='8';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s2';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Page Header Font';
		style.id='cs7';
		text.font.name='Arial';
		text.font.style.italic='true';
	}
	CHAR_STYLE={
		style.name='Page Number';
		style.id='cs8';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Property Title (Font)';
		style.id='cs9';
		text.font.size='8';
		text.font.style.bold='true';
	}
	CHAR_STYLE={
		style.name='Property Value (Font)';
		style.id='cs10';
		text.font.name='Verdana';
		text.font.size='8';
	}
	CHAR_STYLE={
		style.name='Summary Heading 1 (Font)';
		style.id='cs11';
		text.font.size='12';
		text.font.style.bold='true';
	}
	CHAR_STYLE={
		style.name='Summary Item (Small)';
		style.id='cs12';
		text.font.name='Verdana';
		text.font.size='8';
		text.font.style.bold='true';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs4';
}
<PAGE_HEADER>
	<AREA_SEC>
		FMT={
			sec.outputStyle='table';
			text.style='cs7';
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
							ctrl.size.width='403.5';
							ctrl.size.height='17.3';
						}
					</DATA_CTRL>
					<TEXT_CTRL>
						TEXT='Element Summary'
						FMT={
							ctrl.size.width='96';
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
          el.id, Array ("detail", "def", "xml-source-location")
        )) != null;

        index = index + 1;
        ! showPageColumn

      } : false;
    }));
  };

  thisContext.setVar ("showPageColumn", showPageColumn)
}'
		TARGET_ET='xs:%element'
		SCOPE='advanced-location-rules'
		RULES={
			'#DOCUMENTS[hasParamValue("$scope", "any")] -> #DOCUMENT/xs:schema[checkElementsByKey ("documented-schemas", contextElement.id)]/descendant::xs:%element/{// if this is a global element, return it
instanceOf("xs:element") ? return Enum (contextElement);

// if this is a reference to global element, return empty enumeration
getAttrValue("ref") != null ? return null;

// otherwise, it is a local element

// if this local element is documented globally replace it with its unifier
// (when several local elements are unified by type, during the generation 
// all of them are represented by a single local element component -- the unifier -- 
// which may be actually even from a different schema); 
// otherwise, return the same element

el = findElementByKey ("globally-documented-local-elements", contextElement.id);
Enum (el != null ? el : contextElement)}::xs:%element';
			'#DOCUMENTS[hasParamValue("$scope", "namespace")] -> {findElementsByKey ("namespaces", getParam("$nsURI"))}::xs:schema/descendant::xs:%element[instanceOf("xs:element") || ! hasAttr("ref") &&
{
  form = hasAttr("form") ? getAttrValue("form")
          : findPredecessorByType("xs:schema").getAttrStringValue ("elementFormDefault");

  (form == "qualified" || getParam("$nsURI") == "")
}]/{// if this is a global element, return it
instanceOf("xs:element") ? return Enum (contextElement);

// otherwise, it is a local element

// if this local element is documented globally replace it with its unifier
// (when several local elements are unified by type, during the generation 
// all of them are represented by a single local element component -- the unifier -- 
// which may be actually even from a different schema); 
// otherwise, return the same element

el = findElementByKey ("globally-documented-local-elements", contextElement.id);
Enum (el != null ? el : contextElement)}::xs:%element';
			'#DOCUMENTS[hasParamValue("$scope", "namespace") &&
getParam("$nsURI") == ""] -> {findElementsByKey ("namespaces", "")}::xs:%localElement/{// if this is a global element, return it
instanceOf("xs:element") ? return Enum (contextElement);

// otherwise, it is a local element

// if this local element is documented globally replace it with its unifier
// (when several local elements are unified by type, during the generation 
// all of them are represented by a single local element component -- the unifier -- 
// which may be actually even from a different schema); 
// otherwise, return the same element

el = findElementByKey ("globally-documented-local-elements", contextElement.id);
Enum (el != null ? el : contextElement)}::xs:%element';
			'xs:schema -> descendant::xs:%element/{// if this is a global element, return it
instanceOf("xs:element") ? return Enum (contextElement);

// if this is a reference to global element, return empty enumeration
getAttrValue("ref") != null ? return null;

// otherwise, it is a local element

// if this local element is documented globally replace it with its unifier
// (when several local elements are unified by type, during the generation 
// all of them are represented by a single local element component -- the unifier -- 
// which may be actually even from a different schema); 
// otherwise, return the same element

el = findElementByKey ("globally-documented-local-elements", contextElement.id);
Enum (el != null ? el : contextElement)}::xs:%element';
		}
		FILTER='instanceOf("xs:element")
||
// case of local element
{
  // which local elements to list?
  local = getStringParam("$elements.local");
  
  local == "complexType" ?
    ((typeQName = getAttrQNameValue("type")) != null) ? 
    {
      mainXSD = findElementByKey ("main-xsds", getXMLDocument().id);

      checkElementsByKey ("types", typeQName,
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
}'
		SORTING='by-expr'
		SORTING_KEY={expr='callStockSection("Element Name")',ascending}
		SORTING_COND='getBooleanParam("$sorting")'
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
							<SS_CALL_CTRL>
								SS_NAME='Element Name'
								FMT={
									content.outputStyle='text-par';
									ctrl.size.width='150';
									ctrl.size.height='17.3';
									text.style='cs12';
								}
							</SS_CALL_CTRL>
							<SS_CALL_CTRL>
								SS_NAME='Element Info'
								FMT={
									ctrl.size.width='318';
									ctrl.size.height='17.3';
									tcell.sizing='Relative';
								}
							</SS_CALL_CTRL>
							<DATA_CTRL>
								COND='output.format.supportsPageRefs &&
thisContext.getBooleanVar ("showPageColumn")'
								DOCFIELD='page-htarget'
								FMT={
									ctrl.size.width='31.5';
									ctrl.size.height='17.3';
									ctrl.option.noHLinkFmt='true';
									tcell.sizing='Minimal';
									tcell.align.horz='Center';
									text.style='cs8';
									text.hlink.fmt='none';
								}
								<DOC_HLINK>
									HKEYS={
										'contextElement.id';
										'Array ("detail", "def", "xml-source-location")';
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
							<PANEL>
								FMT={
									ctrl.size.width='467.3';
									ctrl.size.height='41.3';
									text.style='cs11';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												COND='hasParamValue("$elements.local", "all")'
												TEXT='All'
											</TEXT_CTRL>
											<TEXT_CTRL>
												COND='hasParamValue("$elements.local", "none")'
												TEXT='Global'
											</TEXT_CTRL>
											<TEXT_CTRL>
												TEXT='Element Summary'
												FMT={
													tcell.sizing='Relative';
													text.style='cs11';
												}
											</TEXT_CTRL>
											<DELIMITER>
												FMT={
													text.style='cs5';
												}
											</DELIMITER>
											<TEMPLATE_CALL_CTRL>
												TEMPLATE_FILE='elementListNote.tpl'
												PASSED_PARAMS={
													'$elements.local.unifiedByType','! hasParamValue("gen.doc.element.local", "none")
&&
getBooleanParam("gen.doc.element.local.unifyByType")
&&
{
  localElementFilter = hasParamValue("$scope", "schema") ?
    BooleanQuery (findAncestor("xs:schema").id == rootElement.id) : null;

  findElementByFilter (
    iterator.items,
    BooleanQuery
    (
      instanceOf ("xs:%localElement")
      &&
      countElementsByKey (
        "globally-documented-local-elements",
        contextElement.id,
        localElementFilter
      ) > 1
    )
  ) != null
}';
												}
												FMT={
													text.style='cs3';
												}
											</TEMPLATE_CALL_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
							<TEXT_CTRL>
								COND='output.format.supportsPageRefs &&
thisContext.getBooleanVar ("showPageColumn")'
								TEXT='Page'
								FMT={
									ctrl.size.width='32.3';
									ctrl.size.height='41.3';
									tcell.sizing='Minimal';
									tcell.align.horz='Center';
									text.style='cs8';
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
	<TEMPLATE_CALL>
		SS_NAME='annotation'
		TEMPLATE_FILE='../ann/annotation.tpl'
	</TEMPLATE_CALL>
	<FOLDER>
		SS_NAME='Element Info'
		MATCHING_ET='xs:%element'
		INIT_EXPR='schema = findPredecessorByType ("xs:schema");

nsURI = instanceOf ("xs:element") ? schema.getServiceAttr("targetNamespace") :
          (hasAttr("form") ? getAttrValue("form") :
            schema.getAttrStringValue ("elementFormDefault")) == "qualified" 
              ? schema.getServiceAttr("targetNamespace") : "";

stockSection.setVar ("nsURI", nsURI);
stockSection.setVar ("usageCount", countElementsByKey ("element-usage", contextElement.id));'
		<BODY>
			<TEMPLATE_CALL>
				COND='hasParamValue ("$item.annotation", "first_sentence")
&&
(instanceOf("xs:element") || stockSection.getIntVar("usageCount") == 1)'
				OUTPUT_CHECKER_EXPR='getValuesByLPath(
  "xs:annotation/xs:documentation//(#TEXT | #CDATA)"
).isBlank() ? -1 : 1'
				TEMPLATE_FILE='../ann/firstSentence.tpl'
				FMT={
					text.style='cs1';
				}
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				COND='getBooleanParam("doc.comp.profile")
&&
getBooleanParam("fmt.allowNestedTables")'
				TEMPLATE_FILE='elementProfile.tpl'
				PASSED_PARAMS={
					'$nsURI','stockSection.getStringVar("nsURI")';
					'$usageCount','stockSection.getIntVar("usageCount")';
				}
				FMT={
					sec.spacing.before='5';
				}
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				COND='getBooleanParam("doc.comp.profile")
&&
! getBooleanParam("fmt.allowNestedTables")'
				TEMPLATE_FILE='elementProfile2.tpl'
				PASSED_PARAMS={
					'$nsURI','stockSection.getStringVar("nsURI")';
					'$usageCount','stockSection.getIntVar("usageCount")';
				}
				FMT={
					sec.spacing.before='5';
				}
			</TEMPLATE_CALL>
			<FOLDER>
				DESCR='full annotation'
				COND='hasParamValue("$item.annotation", "full")'
				COLLAPSED
				FMT={
					sec.spacing.before='6.7';
				}
				<BODY>
					<SS_CALL>
						DESCR='in case of global element or local element defined in one location, print the only annotation'
						COND='instanceOf("xs:element") || 
stockSection.getIntVar("usageCount") == 1'
						BREAK_PARENT_BLOCK='when-executed'
						SS_NAME='annotation'
						FMT={
							text.style='cs1';
						}
					</SS_CALL>
					<ELEMENT_ITER>
						DESCR='in case of unified local element, print all annotations by definition locations'
						OUTPUT_CHECKER_EXPR='checkElementsByKey (
  "element-usage",
  contextElement.id,
  BooleanQuery (checkStockSectionOutput ("annotation"))
) ? 1 : -1'
						FINISH_EXPR='removeElementMap ("local-annotations")'
						COLLAPSED
						TARGET_ET='#CUSTOM'
						SCOPE='custom'
						ELEMENT_ENUM_EXPR='prepareElementMap (
  "local-annotations",
  findElementsByKey ("element-usage", stockSection.contextElement.id),
  FlexQuery ({
    ann = callStockSection ("annotation");
    (ann != "") ? ann : null
  })
);

toCustomElements (getElementMapKeys ("local-annotations"))'
						<BODY>
							<ELEMENT_ITER>
								DESCR='iterate by all locations with the same (current) annotation'
								OUTPUT_CHECKER_EXPR='1 // the output always exists'
								TARGET_ET='xs:%element'
								SCOPE='custom'
								ELEMENT_ENUM_EXPR='findElementsByKey ("local-annotations", contextElement.value)'
								FMT={
									sec.outputStyle='text-par';
									sec.spacing.before='6.7';
									list.type='delimited';
									list.margin.block='true';
								}
								<BODY>
									<AREA_SEC>
										FMT={
											text.style='cs10';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='within'
														<DOC_HLINK>
															HKEYS={
																'contextElement.id';
																'"def"';
															}
														</DOC_HLINK>
													</TEXT_CTRL>
													<PANEL>
														CONTEXT_ELEMENT_EXPR='findPredecessorByType("xs:%element|xs:complexType|xs:group")'
														MATCHING_ETS={'xs:%element';'xs:complexType';'xs:group'}
														FMT={
															ctrl.size.width='284.3';
															ctrl.size.height='38.3';
														}
														<AREA>
															<CTRL_GROUP>
																<CTRLS>
																	<TEXT_CTRL>
																		MATCHING_ET='xs:%element'
																		TEXT='element'
																	</TEXT_CTRL>
																	<TEXT_CTRL>
																		MATCHING_ET='xs:complexType'
																		TEXT='complexType'
																	</TEXT_CTRL>
																	<TEXT_CTRL>
																		MATCHING_ET='xs:group'
																		TEXT='group'
																	</TEXT_CTRL>
																	<SS_CALL_CTRL>
																		SS_NAME='Element Name'
																		FMT={
																			text.style='cs6';
																		}
																	</SS_CALL_CTRL>
																</CTRLS>
															</CTRL_GROUP>
														</AREA>
													</PANEL>
													<DELIMITER>
														FMT={
															txtfl.delimiter.type='text';
															txtfl.delimiter.text=', ';
														}
													</DELIMITER>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</AREA_SEC>
								</BODY>
								<HEADER>
									<AREA_SEC>
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='Annotation'
														FMT={
															text.style='cs9';
															text.decor.underline='true';
														}
													</TEXT_CTRL>
													<TEXT_CTRL>
														TEXT='('
														FMT={
															text.style='cs10';
														}
													</TEXT_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</AREA_SEC>
								</HEADER>
								<FOOTER>
									<AREA_SEC>
										FMT={
											text.style='cs10';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
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
								</FOOTER>
							</ELEMENT_ITER>
							<SS_CALL>
								SS_NAME='annotation'
								PASSED_ELEMENT_EXPR='findElementByKey ("local-annotations", contextElement.value)'
								PASSED_ELEMENT_MATCHING_ET='xs:%element'
								FMT={
									sec.spacing.before='6.7';
									text.style='cs1';
								}
							</SS_CALL>
						</BODY>
					</ELEMENT_ITER>
				</BODY>
			</FOLDER>
		</BODY>
	</FOLDER>
	<TEMPLATE_CALL>
		SS_NAME='Element Name'
		DESCR='prints the qualified name of any global schema component or local element (passed as the stock-section context element)'
		TEMPLATE_FILE='../component/componentName.tpl'
		FMT={
			sec.outputStyle='text-par';
		}
	</TEMPLATE_CALL>
</STOCK_SECTIONS>
CHECKSUM='8esCKcWbspSqWDdUxTvyatO3ncrH07MI?Q8bw7pq?z4'
</DOCFLEX_TEMPLATE>