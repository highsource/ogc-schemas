<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2005-10-13 03:37:00'
LAST_UPDATE='2014-07-05 20:02:50'
DESIGNER_TOOL='DocFlex SDK 1.x'
DESIGNER_LICENSE_TYPE='Filigris Works Team'
APP_ID='docflex-xml-xsddoc2'
APP_NAME='DocFlex/XML XSDDoc'
APP_VER='2.8.1'
APP_AUTHOR='Copyright © 2005-2014 Filigris Works, Leonid Rudy Softwareprodukte. All rights reserved.'
TEMPLATE_TYPE='DocumentTemplate'
DSM_TYPE_ID='xsddoc'
ROOT_ET='xs:group'
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$mainXSD';
		param.type='GOMElement';
		param.defaultValue.expr='findElementByKey ("main-xsds", getXMLDocument().id)';
	}
	PARAM={
		param.name='$nsURI';
		param.title='group\'s namespace URI';
		param.description='The namespace to which this group belongs';
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
		param.name='$usageCount';
		param.description='number of locations where this element group is used';
		param.type='integer';
		param.defaultValue.expr='countElementsByKey ("group-usage", contextElement.id)';
		param.hidden='true';
	}
	PARAM={
		param.name='$contentModelKey';
		param.title='map key for "content-model-elements"';
		param.description='The key for "content-model-elements" map to find items associated with this component';
		param.type='Object';
		param.defaultValue.expr='contextElement.id';
	}
	PARAM={
		param.name='$elementCount';
		param.title='number of all content elements';
		param.description='total number of content elements declared for this component';
		param.type='integer';
		param.defaultValue.expr='countElementsByKey (
  "content-model-elements", 
  getParam("$contentModelKey"),
  BooleanQuery (! instanceOf ("xs:any"))
)';
		param.hidden='true';
	}
	PARAM={
		param.name='$elementWildcardCount';
		param.title='number of all element wildcards';
		param.description='total number of element wildcards declared for this component';
		param.type='integer';
		param.defaultValue.expr='countElementsByKey (
  "content-model-elements", 
  getParam("$contentModelKey"),
  BooleanQuery (instanceOf ("xs:any"))
)';
		param.hidden='true';
	}
	PARAM={
		param.name='$ownElementCount';
		param.title='number of elements defined in this component';
		param.type='integer';
		param.defaultValue.expr='countElementsByKey (
  "content-model-elements", 
  getParam("$contentModelKey"),
  BooleanQuery (
    ! instanceOf ("xs:any") &&
    findPredecessorByType("xs:%element|xs:complexType|xs:group").id 
    == rootElement.id
  )
)';
		param.hidden='true';
	}
	PARAM={
		param.name='$ownElementWildcardCount';
		param.title='number of element wildcards defined in this component';
		param.type='integer';
		param.defaultValue.expr='countElementsByKey (
  "content-model-elements", 
  getParam("$contentModelKey"),
  BooleanQuery (
    instanceOf ("xs:any") &&
    findPredecessorByType("xs:%element|xs:complexType|xs:group").id 
    == rootElement.id
  )
)';
		param.hidden='true';
	}
	PARAM={
		param.name='doc.comp';
		param.title='Component Documentation';
		param.title.style.bold='true';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='doc.comp.profile.namespace';
		param.title='Namespace';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.profile.content';
		param.title='Content';
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
		param.name='doc.comp.profile.redefines';
		param.title='Redefines';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.profile.redefined';
		param.title='Redefined';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.profile.used';
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
		style.name='Mono (Small)';
		style.id='cs3';
		text.font.name='Courier New';
		text.font.size='8';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s1';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Page Reference';
		style.id='cs4';
		text.font.name='Courier New';
		text.font.size='8';
	}
	PAR_STYLE={
		style.name='Property Title';
		style.id='s2';
		text.font.size='8';
		text.font.style.bold='true';
		par.lineHeight='11';
		par.margin.right='5.8';
	}
	PAR_STYLE={
		style.name='Property Value';
		style.id='s3';
		text.font.name='Verdana';
		text.font.size='8';
		par.lineHeight='11';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs2';
}
<ROOT>
	<FOLDER>
		FMT={
			sec.outputStyle='table';
			table.cell.padding.both='0';
			table.border.style='none';
			table.page.keepTogether='true';
			table.option.borderStylesInHTML='true';
		}
		<BODY>
			<AREA_SEC>
				COND='getBooleanParam("doc.comp.profile.namespace")'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Namespace:'
								FMT={
									ctrl.size.width='54.8';
									ctrl.size.height='17.3';
									tcell.align.vert='Top';
									par.style='s2';
								}
							</TEXT_CTRL>
							<DATA_CTRL>
								FORMULA='(ns = getParam("$nsURI")) != "" ? ns : "{no namespace}"'
								FMT={
									ctrl.size.width='444.8';
									ctrl.size.height='17.3';
									text.style='cs3';
									par.style='s3';
								}
								<DOC_HLINK>
									HKEYS={
										'getStringParam("$nsURI")';
										'"detail"';
									}
								</DOC_HLINK>
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				COND='getBooleanParam("doc.comp.profile.content") &&
(
  getIntParam("$elementCount") > 0 ||
  getIntParam("$ownElementWildcardCount") > 0
)'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Content:'
								FMT={
									ctrl.size.width='54.8';
									ctrl.size.height='98.3';
									tcell.align.vert='Top';
									par.style='s2';
								}
							</TEXT_CTRL>
							<PANEL>
								FMT={
									content.outputStyle='text-par';
									ctrl.size.width='444.8';
									ctrl.size.height='98.3';
									par.style='s3';
								}
								<AREA>
									<CTRL_GROUP>
										FMT={
											txtfl.delimiter.type='text';
											txtfl.delimiter.text=', ';
										}
										<CTRLS>
											<PANEL>
												COND='getIntParam("$elementCount") > 0'
												FMT={
													ctrl.size.width='198.8';
													ctrl.size.height='38.3';
													txtfl.delimiter.type='nbsp';
												}
												<AREA>
													<CTRL_GROUP>
														<CTRLS>
															<DATA_CTRL>
																FORMULA='getIntParam("$elementCount")'
															</DATA_CTRL>
															<TEXT_CTRL>
																COND='getIntParam("$elementCount") == 1'
																TEXT='element'
																<DOC_HLINK>
																	HKEYS={
																		'contextElement.id';
																		'"content-element-detail"';
																	}
																</DOC_HLINK>
															</TEXT_CTRL>
															<TEXT_CTRL>
																COND='getIntParam("$elementCount") > 1'
																TEXT='elements'
																<DOC_HLINK>
																	HKEYS={
																		'contextElement.id';
																		'"content-element-detail"';
																	}
																</DOC_HLINK>
															</TEXT_CTRL>
														</CTRLS>
													</CTRL_GROUP>
												</AREA>
											</PANEL>
											<PANEL>
												COND='getIntParam("$elementWildcardCount") > 0'
												FMT={
													ctrl.size.width='253.5';
													ctrl.size.height='38.3';
													txtfl.delimiter.type='nbsp';
												}
												<AREA>
													<CTRL_GROUP>
														<CTRLS>
															<DATA_CTRL>
																COND='getIntParam("$elementWildcardCount") > 1'
																FORMULA='getIntParam("$elementWildcardCount")'
															</DATA_CTRL>
															<TEXT_CTRL>
																TEXT='elem.'
															</TEXT_CTRL>
															<TEXT_CTRL>
																COND='getIntParam("$elementWildcardCount") == 1'
																TEXT='wildcard'
																<DOC_HLINK>
																	DESCR='try to link to the wildcard\'s details, first, within the documentation of the current component (for which this content model representation is generated);
if not found, link to such details in the documentation of its parent component (where this element reference is defined);
finally, if not found still, try to link to the location in the XML schema source, where this wildcard is defined'
																	CONTEXT_ELEMENT_EXPR='findElementByKey (
  "content-model-elements", 
  getParam("$contentModelKey"),
  BooleanQuery (instanceOf ("xs:any"))
)'
																	MATCHING_ET='xs:any'
																	TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection ("Wildcard Info") : ""'
																	HKEYS={
																		'contextElement.id';
																		'Array ("local", "def", "xml-source-location")';
																		'Array (rootElement.id, NoKey())';
																	}
																</DOC_HLINK>
															</TEXT_CTRL>
															<TEXT_CTRL>
																COND='getIntParam("$elementWildcardCount") > 1'
																TEXT='wildcards'
																<DOC_HLINK>
																	HKEYS={
																		'contextElement.id';
																		'"content-element-wildcard"';
																	}
																</DOC_HLINK>
															</TEXT_CTRL>
														</CTRLS>
													</CTRL_GROUP>
												</AREA>
											</PANEL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				COND='getBooleanParam("doc.comp.profile.defined")'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Defined:'
								FMT={
									ctrl.size.width='54.8';
									ctrl.size.height='119.3';
									tcell.align.vert='Top';
									par.style='s2';
								}
							</TEXT_CTRL>
							<PANEL>
								FMT={
									ctrl.size.width='444.8';
									ctrl.size.height='119.3';
									par.style='s3';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='globally'
											</TEXT_CTRL>
											<PANEL>
												COND='! hasParamValue("$scope", "schema")'
												FMT={
													ctrl.size.width='156.8';
													ctrl.size.height='38.3';
												}
												<AREA>
													<CTRL_GROUP>
														<CTRLS>
															<TEXT_CTRL>
																TEXT='in'
															</TEXT_CTRL>
															<SS_CALL_CTRL>
																SS_NAME='Schema Name'
															</SS_CALL_CTRL>
														</CTRLS>
													</CTRL_GROUP>
												</AREA>
											</PANEL>
											<PANEL>
												COND='findHyperTarget (Array (
  contextElement.id,
  Array ("xml-source", "xml-source-location")
)) != null'
												FMT={
													ctrl.size.width='289.5';
												}
												<AREA>
													<CTRL_GROUP>
														<CTRLS>
															<DELIMITER>
																FMT={
																	txtfl.delimiter.type='text';
																	txtfl.delimiter.text='; ';
																}
															</DELIMITER>
															<TEXT_CTRL>
																TEXT='see'
															</TEXT_CTRL>
															<TEXT_CTRL>
																TEXT='XML source'
																<DOC_HLINK>
																	HKEYS={
																		'contextElement.id';
																		'"xml-source"';
																	}
																</DOC_HLINK>
																<DOC_HLINK>
																	HKEYS={
																		'contextElement.id';
																		'"xml-source-location"';
																	}
																</DOC_HLINK>
															</TEXT_CTRL>
															<PANEL>
																COND='output.format.supportsPageRefs && 
getBooleanParam("fmt.page.refs")'
																FMT={
																	ctrl.size.width='186';
																	ctrl.size.height='38.3';
																	txtfl.delimiter.type='none';
																}
																<AREA>
																	<CTRL_GROUP>
																		<CTRLS>
																			<DELIMITER>
																				FMT={
																					txtfl.delimiter.type='nbsp';
																				}
																			</DELIMITER>
																			<TEXT_CTRL>
																				TEXT='['
																				FMT={
																					text.style='cs4';
																				}
																			</TEXT_CTRL>
																			<DATA_CTRL>
																				DOCFIELD='page-htarget'
																				FMT={
																					ctrl.option.noHLinkFmt='true';
																					text.style='cs4';
																					text.hlink.fmt='none';
																				}
																				<DOC_HLINK>
																					HKEYS={
																						'contextElement.id';
																						'Array ("xml-source", "xml-source-location")';
																					}
																				</DOC_HLINK>
																			</DATA_CTRL>
																			<TEXT_CTRL>
																				TEXT=']'
																				FMT={
																					text.style='cs4';
																				}
																			</TEXT_CTRL>
																		</CTRLS>
																	</CTRL_GROUP>
																</AREA>
															</PANEL>
														</CTRLS>
													</CTRL_GROUP>
												</AREA>
											</PANEL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				COND='getBooleanParam("doc.comp.profile.includes") &&
{
 count = getIntParam("$ownElementCount") +
         getIntParam("$ownElementWildcardCount");

 count > 0 ? { setVar ("count", count); true } : false;
}'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Includes:'
								FMT={
									ctrl.size.width='54.8';
									ctrl.size.height='98.3';
									tcell.align.vert='Top';
									par.style='s2';
								}
							</TEXT_CTRL>
							<PANEL>
								FMT={
									ctrl.size.width='444.8';
									ctrl.size.height='98.3';
									par.style='s3';
								}
								<AREA>
									<CTRL_GROUP>
										FMT={
											txtfl.delimiter.type='text';
											txtfl.delimiter.text=', ';
										}
										<CTRLS>
											<TEXT_CTRL>
												COND='getVar("count").toInt() == 1'
												TEXT='definition'
											</TEXT_CTRL>
											<TEXT_CTRL>
												COND='getVar("count").toInt() > 1'
												TEXT='definitions'
											</TEXT_CTRL>
											<DELIMITER>
												FMT={
													txtfl.delimiter.type='text';
													txtfl.delimiter.text=' of ';
												}
											</DELIMITER>
											<PANEL>
												COND='getIntParam("$ownElementCount") > 0'
												FMT={
													ctrl.size.width='210.8';
													ctrl.size.height='38.3';
													txtfl.delimiter.type='nbsp';
												}
												<AREA>
													<CTRL_GROUP>
														<CTRLS>
															<DATA_CTRL>
																FORMULA='getIntParam("$ownElementCount")'
															</DATA_CTRL>
															<TEXT_CTRL>
																COND='getIntParam("$ownElementCount") == 1'
																TEXT='element'
																<DOC_HLINK>
																	HKEYS={
																		'contextElement.id';
																		'"content-element-def"';
																	}
																</DOC_HLINK>
															</TEXT_CTRL>
															<TEXT_CTRL>
																COND='getIntParam("$ownElementCount") > 1'
																TEXT='elements'
																<DOC_HLINK>
																	HKEYS={
																		'contextElement.id';
																		'"content-element-def"';
																	}
																</DOC_HLINK>
															</TEXT_CTRL>
														</CTRLS>
													</CTRL_GROUP>
												</AREA>
											</PANEL>
											<PANEL>
												COND='getIntParam("$ownElementWildcardCount") > 0'
												FMT={
													ctrl.size.width='261';
													ctrl.size.height='38.3';
													txtfl.delimiter.type='nbsp';
												}
												<AREA>
													<CTRL_GROUP>
														<CTRLS>
															<DATA_CTRL>
																COND='getIntParam("$ownElementWildcardCount") > 1'
																FORMULA='getIntParam("$ownElementWildcardCount")'
															</DATA_CTRL>
															<TEXT_CTRL>
																TEXT='elem.'
															</TEXT_CTRL>
															<TEXT_CTRL>
																COND='getIntParam("$ownElementWildcardCount") == 1'
																TEXT='wildcard'
																<DOC_HLINK>
																	HKEYS={
																		'contextElement.id';
																		'"content-element-wildcard-def"';
																	}
																</DOC_HLINK>
															</TEXT_CTRL>
															<TEXT_CTRL>
																COND='getIntParam("$ownElementWildcardCount") > 1'
																TEXT='wildcards'
																<DOC_HLINK>
																	HKEYS={
																		'contextElement.id';
																		'"content-element-wildcard-def"';
																	}
																</DOC_HLINK>
															</TEXT_CTRL>
														</CTRLS>
													</CTRL_GROUP>
												</AREA>
											</PANEL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				COND='getBooleanParam("doc.comp.profile.redefines")

// see also "Context Element" tab'
				CONTEXT_ELEMENT_EXPR='findElementByKey ("redefined-component", contextElement.id)'
				MATCHING_ET='<ANY>'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Redefines:'
								FMT={
									ctrl.size.width='54.8';
									ctrl.size.height='38.3';
									tcell.align.vert='Top';
									par.style='s2';
								}
							</TEXT_CTRL>
							<PANEL>
								FMT={
									ctrl.size.width='444.8';
									ctrl.size.height='38.3';
									par.style='s3';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<DATA_CTRL>
												FORMULA='toXMLName (getStringParam("$nsURI"), getAttrStringValue("name"))'
												<DOC_HLINK>
													HKEYS={
														'contextElement.id';
														'Array ("detail", "xml-source-location")';
													}
												</DOC_HLINK>
											</DATA_CTRL>
											<TEXT_CTRL>
												TEXT='in'
											</TEXT_CTRL>
											<SS_CALL_CTRL>
												SS_NAME='Schema Name'
											</SS_CALL_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				COND='getBooleanParam("doc.comp.profile.redefined")
&&
checkElementsByKey ("redefining-components", contextElement.id)'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Redefined:'
								FMT={
									ctrl.size.width='54.8';
									ctrl.size.height='17.3';
									tcell.align.vert='Top';
									par.style='s2';
								}
							</TEXT_CTRL>
							<SS_CALL_CTRL>
								SS_NAME='Redefining Components'
								FMT={
									content.outputStyle='text-par';
									ctrl.size.width='444.8';
									ctrl.size.height='17.3';
									par.style='s3';
								}
							</SS_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				COND='getBooleanParam("doc.comp.profile.used") &&
getIntParam("$usageCount") == 0'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Used:'
								FMT={
									ctrl.size.width='54.8';
									ctrl.size.height='17.3';
									tcell.align.vert='Top';
									par.style='s2';
								}
							</TEXT_CTRL>
							<TEXT_CTRL>
								TEXT='never'
								FMT={
									ctrl.size.width='444.8';
									ctrl.size.height='17.3';
									par.style='s3';
								}
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				COND='getBooleanParam("doc.comp.profile.used") &&
getIntParam("$usageCount") > 0'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Used:'
								FMT={
									ctrl.size.width='54.8';
									ctrl.size.height='38.3';
									tcell.align.vert='Top';
									par.style='s2';
								}
							</TEXT_CTRL>
							<PANEL>
								FMT={
									ctrl.size.width='444.8';
									ctrl.size.height='38.3';
									par.style='s3';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='at'
											</TEXT_CTRL>
											<DATA_CTRL>
												FORMULA='getIntParam("$usageCount")'
											</DATA_CTRL>
											<TEXT_CTRL>
												COND='getIntParam("$usageCount") == 1'
												TEXT='location'
												<DOC_HLINK>
													HKEYS={
														'contextElement.id';
														'"usage-locations"';
													}
												</DOC_HLINK>
											</TEXT_CTRL>
											<TEXT_CTRL>
												COND='getIntParam("$usageCount") > 1'
												TEXT='locations'
												<DOC_HLINK>
													HKEYS={
														'contextElement.id';
														'"usage-locations"';
													}
												</DOC_HLINK>
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
	</FOLDER>
</ROOT>
<STOCK_SECTIONS>
	<ELEMENT_ITER>
		SS_NAME='Redefining Components'
		TARGET_ET='<ANY>'
		SCOPE='custom'
		ELEMENT_ENUM_EXPR='findElementsByKey ("redefining-components", contextElement.id)'
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='text';
			txtfl.delimiter.text=', ';
		}
		<BODY>
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
						FMT={
							txtfl.delimiter.type='space';
						}
						<CTRLS>
							<TEXT_CTRL>
								TEXT='with'
							</TEXT_CTRL>
							<DATA_CTRL>
								FORMULA='toXMLName (getStringParam("$nsURI"), getAttrStringValue("name"))'
								<DOC_HLINK>
									HKEYS={
										'contextElement.id';
										'Array ("detail", "xml-source-location")';
									}
								</DOC_HLINK>
							</DATA_CTRL>
							<TEXT_CTRL>
								TEXT='in'
							</TEXT_CTRL>
							<SS_CALL_CTRL>
								SS_NAME='Schema Name'
							</SS_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</ELEMENT_ITER>
	<TEMPLATE_CALL>
		SS_NAME='Schema Name'
		TEMPLATE_FILE='../schema/schemaName.tpl'
	</TEMPLATE_CALL>
	<TEMPLATE_CALL>
		SS_NAME='Wildcard Info'
		MATCHING_ETS={'xs:any';'xs:anyAttribute'}
		TEMPLATE_FILE='../component/wildcard.tpl'
		PASSED_PARAMS={
			'$brackets','false';
		}
	</TEMPLATE_CALL>
</STOCK_SECTIONS>
CHECKSUM='1ORMHI8nQ9mpArIUe9kPcYYAGiZ5HaF2RKJ87st6pNA'
</DOCFLEX_TEMPLATE>