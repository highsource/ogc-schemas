<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2005-04-26 03:31:00'
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
ROOT_ETS={'xs:%annotated';'xs:schema'}
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$showHeading';
		param.type='boolean';
	}
	PARAM={
		param.name='proc';
		param.title='Processing';
		param.title.style.bold='true';
		param.group='true';
	}
	PARAM={
		param.name='proc.desc';
		param.title='Descriptions';
		param.title.style.bold='true';
		param.group='true';
	}
	PARAM={
		param.name='proc.desc.xsd.annotation';
		param.title='XSD Annotations';
		param.title.style.bold='true';
		param.group='true';
	}
	PARAM={
		param.name='proc.desc.xsd.annotation.appinfo';
		param.title='<appinfo>';
		param.title.style.bold='true';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='proc.desc.xsd.annotation.appinfo.source';
		param.title='Source URI';
		param.type='enum';
		param.enum.values='as_see_link;as_title;no';
	}
	PARAM={
		param.name='proc.desc.xsd.annotation.documentation';
		param.title='<documentation>';
		param.title.style.bold='true';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='proc.desc.xsd.annotation.documentation.lang';
		param.title='Language';
		param.group='true';
		param.type='string';
		param.trimSpaces='true';
		param.noEmptyString='true';
		param.list='true';
		param.list.noEmptyList='true';
	}
	PARAM={
		param.name='proc.desc.xsd.annotation.documentation.lang.alt';
		param.title='Alternative Language';
		param.type='string';
		param.trimSpaces='true';
		param.noEmptyString='true';
		param.list='true';
		param.list.noEmptyList='true';
	}
	PARAM={
		param.name='proc.desc.xsd.annotation.documentation.source';
		param.title='Source URI';
		param.type='enum';
		param.enum.values='as_see_link;as_title;no';
	}
	PARAM={
		param.name='proc.desc.xsd.annotation.show.part.headings';
		param.title='Show part headings';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='proc.desc.xsd.annotation.show.part.headings.schemas';
		param.title='For schemas';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='proc.desc.xsd.annotation.show.part.headings.schemas.include';
		param.title='Include';
		param.title.style.italic='true';
		param.type='string';
		param.trimSpaces='true';
		param.collapseSpaces='true';
		param.noEmptyString='true';
		param.list='true';
	}
	PARAM={
		param.name='proc.desc.xsd.annotation.show.part.headings.schemas.exclude';
		param.title='Exclude';
		param.title.style.italic='true';
		param.type='string';
		param.trimSpaces='true';
		param.collapseSpaces='true';
		param.noEmptyString='true';
		param.list='true';
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
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs3';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s1';
		style.default='true';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs3';
}
<ROOT>
	<ELEMENT_ITER>
		DESCR='execute when no filtering by language needed:
Iterate by all <xs:appinfo> and/or <xs:documentation> elements found by the location path \'xs:annotation/(xs:appinfo|xs:documentation)\' 

(see "Processing | Scope" tab)'
		COND='! getBooleanParam("proc.desc.xsd.annotation.documentation") ||
getParam("proc.desc.xsd.annotation.documentation.lang") == null'
		BREAK_PARENT_BLOCK='when-executed'
		TARGET_ETS={'xs:appinfo';'xs:documentation'}
		SCOPE='advanced-location-rules'
		RULES={
			'* -> xs:annotation/(xs:appinfo|xs:documentation)[instanceOf("xs:documentation")
 ? getBooleanParam("proc.desc.xsd.annotation.documentation")
 : getBooleanParam("proc.desc.xsd.annotation.appinfo")]';
		}
		<BODY>
			<SS_CALL>
				MATCHING_ET='xs:documentation'
				BREAK_PARENT_BLOCK='when-executed'
				SS_NAME='documentation'
			</SS_CALL>
			<SS_CALL>
				MATCHING_ET='xs:appinfo'
				SS_NAME='appinfo'
			</SS_CALL>
		</BODY>
	</ELEMENT_ITER>
	<ELEMENT_ITER>
		DESCR='otherwise, filtering by language specified:

Iterates by all <xs:documentation> (and possibly <xs:appinfo>) elements which are found by the location path \'xs:annotation/xs:(documentation|xs:appinfo)\' 
(see "Processing | Scope" tab).

<xs:documentation> elements must have the \'xml:lang\' attribute with the needed value.
Filtering is specified directly within the location path.'
		TARGET_ETS={'xs:appinfo';'xs:documentation'}
		SCOPE='advanced-location-rules'
		RULES={
			'* -> xs:annotation/(xs:appinfo|xs:documentation)[instanceOf("xs:documentation") ?
{
  getArrayParam (
    "proc.desc.xsd.annotation.documentation.lang"
  ).containsIgnoreCase (getAttrStringValue("xml:lang"))
} : {
  getBooleanParam("proc.desc.xsd.annotation.appinfo")
}]';
		}
		<BODY>
			<SS_CALL>
				MATCHING_ET='xs:documentation'
				BREAK_PARENT_BLOCK='when-executed'
				SS_NAME='documentation'
			</SS_CALL>
			<SS_CALL>
				MATCHING_ET='xs:appinfo'
				SS_NAME='appinfo'
			</SS_CALL>
		</BODY>
		<ELSE>
			DESCR='if no output was generated, seek documentation by alternative language'
			<ELEMENT_ITER>
				DESCR='executed when filtering by alternative language is specified; see "Component | Enabling" tab.'
				COND='getParam("proc.desc.xsd.annotation.documentation.lang.alt") != null'
				TARGET_ET='xs:documentation'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> xs:annotation/xs:documentation[getArrayParam(
  "proc.desc.xsd.annotation.documentation.lang.alt"
).containsIgnoreCase (getAttrStringValue("xml:lang"))]';
				}
				<BODY>
					<SS_CALL>
						SS_NAME='documentation'
					</SS_CALL>
				</BODY>
			</ELEMENT_ITER>
		</ELSE>
	</ELEMENT_ITER>
</ROOT>
<STOCK_SECTIONS>
	<FOLDER>
		SS_NAME='appinfo'
		DESCR='process <xs:appinfo> element'
		MATCHING_ET='xs:appinfo'
		FMT={
			txtfl.delimiter.type='space';
		}
		<BODY>
			<TEMPLATE_CALL>
				TEMPLATE_FILE='../../doc/docOutput.tpl'
			</TEMPLATE_CALL>
			<AREA_SEC>
				COND='! getAttrStringValue("source").isBlank()
&&
hasParamValue (
  "proc.desc.xsd.annotation.documentation.source", "as_see_link"
)'
				<AREA>
					<SPACER>
						COND='! sectionBlock.execSecNone'
						FMT={
							spacer.height.relative='60';
						}
					</SPACER>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='See: '
								FMT={
									text.font.style.bold='true';
									text.option.nbsps='true';
								}
							</TEXT_CTRL>
							<DATA_CTRL>
								ATTR='source'
								FMT={
									ctrl.option.text.trimSpaces='true';
									ctrl.option.text.noBlankOutput='true';
									text.font.size.relative='95';
								}
								<DOC_HLINK>
									HKEYS={
										'uri = resolveURI (
  getAttrStringValue("source"),
  getXMLDocument().getAttrStringValue("xmlURI")
);

findXMLDocument(uri).id
';
										'"detail"';
									}
								</DOC_HLINK>
								<URL_HLINK>
									COND='getAttrStringValue("source").isURL()'
									TARGET_FRAME_EXPR='"_blank"'
									TARGET_FRAME_ALWAYS
									URL_EXPR='getAttrStringValue("source")'
								</URL_HLINK>
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
		<HEADER>
			<AREA_SEC>
				COND='! getAttrStringValue("source").isBlank()
&&
hasParamValue (
  "proc.desc.xsd.annotation.appinfo.source", "as_title"
)'
				BREAK_PARENT_BLOCK='when-executed'
				FMT={
					text.font.style.bold='true';
					par.page.keepWithNext='true';
				}
				<AREA>
					<SPACER>
						COND='! iterator.isFirstItem'
						FMT={
							spacer.height.relative='80';
						}
					</SPACER>
					<CTRL_GROUP>
						FMT={
							txtfl.delimiter.type='none';
							par.margin.top='0';
							par.margin.bottom='5';
						}
						<CTRLS>
							<DATA_CTRL>
								ATTR='source'
								FMT={
									ctrl.option.text.trimSpaces='true';
									ctrl.option.text.noBlankOutput='true';
								}
								<DOC_HLINK>
									HKEYS={
										'uri = resolveURI (
  getAttrStringValue("source"),
  getXMLDocument().getAttrStringValue("xmlURI")
);

findXMLDocument(uri).id
';
										'"detail"';
									}
								</DOC_HLINK>
								<URL_HLINK>
									COND='getAttrStringValue("source").isURL()'
									TARGET_FRAME_EXPR='"_blank"'
									TARGET_FRAME_ALWAYS
									URL_EXPR='getAttrStringValue("source")'
								</URL_HLINK>
							</DATA_CTRL>
							<TEXT_CTRL>
								TEXT=':'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				COND='getBooleanParam("$showHeading")
||
getBooleanParam("proc.desc.xsd.annotation.show.part.headings")
&& 
iterator.numItems > 1
&&
{
  schemaFileName = getXMLDocument().getAttrValue("xmlName");

  includeFiles = getArrayParam("proc.desc.xsd.annotation.show.part.headings.schemas.include");
  excludeFiles = getArrayParam("proc.desc.xsd.annotation.show.part.headings.schemas.exclude");

  (includeFiles.isEmpty() || includeFiles.contains (schemaFileName)) &&
  ! excludeFiles.contains (schemaFileName)
}'
				FMT={
					text.font.style.bold='true';
					par.page.keepWithNext='true';
				}
				<AREA>
					<SPACER>
						COND='! iterator.isFirstItem'
						FMT={
							spacer.height.relative='80';
						}
					</SPACER>
					<CTRL_GROUP>
						FMT={
							par.margin.top='0';
							par.margin.bottom='5';
						}
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Annotation'
							</TEXT_CTRL>
							<PANEL>
								COND='iterator.numItems > 1'
								FMT={
									ctrl.size.width='366';
									ctrl.size.height='80.3';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<DATA_CTRL>
												FORMULA='iterator.itemNo'
											</DATA_CTRL>
											<PANEL>
												COND='findHyperTarget (
  Array (contextElement.id, "xml-source-location")
) != null'
												FMT={
													ctrl.size.width='223.5';
													ctrl.size.height='59.3';
													text.font.style.bold='false';
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
																	HKEYS={
																		'contextElement.id';
																		'"xml-source-location"';
																	}
																</DOC_HLINK>
															</TEXT_CTRL>
															<PANEL>
																COND='output.format.supportsPageRefs'
																FMT={
																	ctrl.size.width='153.8';
																	ctrl.size.height='38.3';
																}
																<AREA>
																	<CTRL_GROUP>
																		<CTRLS>
																			<DELIMITER>
																				FMT={
																					txtfl.delimiter.type='text';
																					txtfl.delimiter.text=', ';
																				}
																			</DELIMITER>
																			<TEXT_CTRL>
																				TEXT='p. '
																			</TEXT_CTRL>
																			<DATA_CTRL>
																				DOCFIELD='page-htarget'
																				FMT={
																					ctrl.option.noHLinkFmt='true';
																					text.hlink.fmt='none';
																				}
																				<DOC_HLINK>
																					HKEYS={
																						'contextElement.id';
																						'"xml-source-location"';
																					}
																				</DOC_HLINK>
																			</DATA_CTRL>
																		</CTRLS>
																	</CTRL_GROUP>
																</AREA>
															</PANEL>
															<TEXT_CTRL>
																TEXT=']'
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
												TEXT=':'
											</TEXT_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
	<FOLDER>
		SS_NAME='documentation'
		DESCR='process <xs:documentation> element'
		MATCHING_ET='xs:documentation'
		FMT={
			txtfl.delimiter.type='space';
		}
		<BODY>
			<TEMPLATE_CALL>
				TEMPLATE_FILE='../../doc/docOutput.tpl'
			</TEMPLATE_CALL>
			<AREA_SEC>
				COND='! getAttrStringValue("source").isBlank()
&&
hasParamValue (
  "proc.desc.xsd.annotation.documentation.source", "as_see_link"
)'
				<AREA>
					<SPACER>
						COND='! sectionBlock.execSecNone'
						FMT={
							spacer.height.relative='60';
						}
					</SPACER>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='See: '
								FMT={
									text.font.style.bold='true';
									text.option.nbsps='true';
								}
							</TEXT_CTRL>
							<DATA_CTRL>
								ATTR='source'
								FMT={
									ctrl.option.text.trimSpaces='true';
									ctrl.option.text.noBlankOutput='true';
									text.font.size.relative='95';
								}
								<DOC_HLINK>
									HKEYS={
										'uri = resolveURI (
  getAttrStringValue("source"),
  getXMLDocument().getAttrStringValue("xmlURI")
);

findXMLDocument(uri).id
';
										'"detail"';
									}
								</DOC_HLINK>
								<URL_HLINK>
									COND='getAttrStringValue("source").isURL()'
									TARGET_FRAME_EXPR='"_blank"'
									TARGET_FRAME_ALWAYS
									URL_EXPR='getAttrStringValue("source")'
								</URL_HLINK>
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
		<HEADER>
			<AREA_SEC>
				COND='! getAttrStringValue("source").isBlank()
&&
hasParamValue ("proc.desc.xsd.annotation.documentation.source", "as_title")'
				BREAK_PARENT_BLOCK='when-executed'
				FMT={
					text.font.style.bold='true';
					par.page.keepWithNext='true';
				}
				<AREA>
					<SPACER>
						COND='! iterator.isFirstItem'
						FMT={
							spacer.height.relative='80';
						}
					</SPACER>
					<CTRL_GROUP>
						FMT={
							txtfl.delimiter.type='none';
							par.margin.top='0';
							par.margin.bottom='5';
						}
						<CTRLS>
							<DATA_CTRL>
								ATTR='source'
								FMT={
									ctrl.option.text.trimSpaces='true';
									ctrl.option.text.noBlankOutput='true';
								}
								<DOC_HLINK>
									HKEYS={
										'uri = resolveURI (
  getAttrStringValue("source"),
  getXMLDocument().getAttrStringValue("xmlURI")
);

findXMLDocument(uri).id
';
										'"detail"';
									}
								</DOC_HLINK>
								<URL_HLINK>
									COND='getAttrStringValue("source").isURL()'
									TARGET_FRAME_EXPR='"_blank"'
									TARGET_FRAME_ALWAYS
									URL_EXPR='getAttrStringValue("source")'
								</URL_HLINK>
							</DATA_CTRL>
							<TEXT_CTRL>
								TEXT=':'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				COND='getBooleanParam("$showHeading")
||
getBooleanParam("proc.desc.xsd.annotation.show.part.headings")
&& 
iterator.numItems > 1
&&
{
  schemaFileName = getXMLDocument().getAttrValue("xmlName");

  includeFiles = getArrayParam("proc.desc.xsd.annotation.show.part.headings.schemas.include");
  excludeFiles = getArrayParam("proc.desc.xsd.annotation.show.part.headings.schemas.exclude");

  (includeFiles.isEmpty() || includeFiles.contains (schemaFileName)) &&
  ! excludeFiles.contains (schemaFileName)
}'
				FMT={
					text.font.style.bold='true';
					par.page.keepWithNext='true';
				}
				<AREA>
					<SPACER>
						COND='! iterator.isFirstItem'
						FMT={
							spacer.height.relative='80';
						}
					</SPACER>
					<CTRL_GROUP>
						FMT={
							par.margin.top='0';
							par.margin.bottom='5';
						}
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Annotation'
							</TEXT_CTRL>
							<PANEL>
								COND='iterator.numItems > 1'
								FMT={
									ctrl.size.width='366';
									ctrl.size.height='80.3';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<DATA_CTRL>
												FORMULA='iterator.itemNo'
											</DATA_CTRL>
											<PANEL>
												COND='findHyperTarget (
  Array (contextElement.id, "xml-source-location")
) != null'
												FMT={
													ctrl.size.width='223.5';
													ctrl.size.height='59.3';
													text.font.style.bold='false';
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
																	HKEYS={
																		'contextElement.id';
																		'"xml-source-location"';
																	}
																</DOC_HLINK>
															</TEXT_CTRL>
															<PANEL>
																COND='output.format.supportsPageRefs'
																FMT={
																	ctrl.size.width='153.8';
																	ctrl.size.height='38.3';
																}
																<AREA>
																	<CTRL_GROUP>
																		<CTRLS>
																			<DELIMITER>
																				FMT={
																					txtfl.delimiter.type='text';
																					txtfl.delimiter.text=', ';
																				}
																			</DELIMITER>
																			<TEXT_CTRL>
																				TEXT='p. '
																			</TEXT_CTRL>
																			<DATA_CTRL>
																				DOCFIELD='page-htarget'
																				FMT={
																					ctrl.option.noHLinkFmt='true';
																					text.hlink.fmt='none';
																				}
																				<DOC_HLINK>
																					HKEYS={
																						'contextElement.id';
																						'"xml-source-location"';
																					}
																				</DOC_HLINK>
																			</DATA_CTRL>
																		</CTRLS>
																	</CTRL_GROUP>
																</AREA>
															</PANEL>
															<TEXT_CTRL>
																TEXT=']'
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
												TEXT=':'
											</TEXT_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
</STOCK_SECTIONS>
CHECKSUM='p2ljx3w1pztiLOd7Og8FgeYKJ7o4WKqlvz3bDX9Hl8Y'
</DOCFLEX_TEMPLATE>