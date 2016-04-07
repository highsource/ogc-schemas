<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2005-04-26 03:31:00'
LAST_UPDATE='2014-07-05 20:02:50'
DESIGNER_TOOL='DocFlex SDK 1.x'
DESIGNER_LICENSE_TYPE='Filigris Works Team'
APP_ID='docflex-xml-xsddoc2'
APP_NAME='DocFlex/XML XSDDoc'
APP_VER='2.8.1'
APP_AUTHOR='Copyright © 2005-2014 Filigris Works, Leonid Rudy Softwareprodukte. All rights reserved.'
TEMPLATE_TYPE='DocumentTemplate'
DSM_TYPE_ID='xsddoc'
ROOT_ETS={'xs:%annotated';'xs:schema'}
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$showHeading';
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
		param.name='proc.annotation';
		param.title='Annotations';
		param.title.style.bold='true';
		param.description='This group of parameters controls processing and formatting of annotations (the content of <b><code>&lt;xs:annotation&gt;</code></b> elements specified in XML schemas).
<p>
The annotation text, which appears in a particular <i>"Annotation"</i> section of the generate documentation, is produced from all &lt;xs:documentation&gt; elements found by the path:
<dl><dd>
<code><b><i>xs:annotated</i></b>/xs:annotation/xs:documentation</code>
</dd></dl>
where <code><i>\'xs:annotated\'</i></code> is the XSD element which defines either the XML schema itself (<code>\'xs:schema\'</code>) or a schema component (e.g. <code>\'xs:complexType\'</code>) being documented.
<p>
Multiple &lt;xs:documentation&gt; elements will produce different sections of the annotation text.';
		param.group='true';
	}
	PARAM={
		param.name='proc.annotation.appinfo';
		param.title='<appinfo>';
		param.title.style.bold='true';
		param.featureType='pro';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='proc.annotation.appinfo.source';
		param.title='Source URI';
		param.type='enum';
		param.enum.values='as_see_link;as_title;no';
	}
	PARAM={
		param.name='proc.annotation.documentation';
		param.title='<documentation>';
		param.title.style.bold='true';
		param.group='true';
		param.group.defaultState='expanded';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='proc.annotation.documentation.lang';
		param.title='Language';
		param.group='true';
		param.type='string';
		param.trimSpaces='true';
		param.noEmptyString='true';
		param.list='true';
		param.list.noEmptyList='true';
	}
	PARAM={
		param.name='proc.annotation.documentation.lang.alt';
		param.title='Alternative Language';
		param.type='string';
		param.trimSpaces='true';
		param.noEmptyString='true';
		param.list='true';
		param.list.noEmptyList='true';
	}
	PARAM={
		param.name='proc.annotation.documentation.source';
		param.title='Source URI';
		param.type='enum';
		param.enum.values='as_see_link;as_title;no';
	}
	PARAM={
		param.name='proc.annotation.tags';
		param.title='Tags';
		param.title.style.bold='true';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='proc.annotation.tags.xhtml';
		param.title='XHTML';
		param.group='true';
		param.group.defaultState='expanded';
		param.type='boolean';
	}
	PARAM={
		param.name='proc.annotation.tags.xhtml.schemas';
		param.title='For schemas';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='proc.annotation.tags.xhtml.schemas.include';
		param.title='Include';
		param.title.style.italic='true';
		param.type='string';
		param.trimSpaces='true';
		param.collapseSpaces='true';
		param.noEmptyString='true';
		param.list='true';
	}
	PARAM={
		param.name='proc.annotation.tags.xhtml.schemas.exclude';
		param.title='Exclude';
		param.title.style.italic='true';
		param.type='string';
		param.trimSpaces='true';
		param.collapseSpaces='true';
		param.noEmptyString='true';
		param.list='true';
	}
	PARAM={
		param.name='proc.annotation.tags.xhtml.schemas.this';
		param.title='This schema';
		param.title.style.italic='true';
		param.description='Indicates if processing of XHTML tags is enabled for this particular schema (to which the annotated definition belongs).

This parameter is calculated dynamically from other parameters and the context element passed to the template.';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("proc.annotation.tags.xhtml")
&&
{
  schemaFileName = getXMLDocument().getAttrValue("xmlName");

  includeFiles = getArrayParam("proc.annotation.tags.xhtml.schemas.include");
  excludeFiles = getArrayParam("proc.annotation.tags.xhtml.schemas.exclude");

  (includeFiles.isEmpty() || includeFiles.contains (schemaFileName)) &&
  ! excludeFiles.contains (schemaFileName)
}';
		param.fixed='true';
	}
	PARAM={
		param.name='proc.annotation.tags.xhtml.images';
		param.title='Include Images';
		param.group='true';
		param.group.defaultState='expanded';
		param.type='boolean';
	}
	PARAM={
		param.name='proc.annotation.tags.xhtml.images.copy';
		param.title='Copy Images';
		param.type='boolean';
	}
	PARAM={
		param.name='proc.annotation.tags.other';
		param.title='Other Tags';
		param.type='enum';
		param.enum.values='show;xhtml;no';
	}
	PARAM={
		param.name='proc.annotation.encode.markup.chars';
		param.title='Encode markup characters';
		param.type='boolean';
	}
	PARAM={
		param.name='proc.annotation.show.part.headings';
		param.title='Show part headings';
		param.group='true';
		param.group.defaultState='expanded';
		param.type='boolean';
	}
	PARAM={
		param.name='proc.annotation.show.part.headings.for.schemas';
		param.title='For schemas';
		param.type='string';
		param.trimSpaces='true';
		param.collapseSpaces='true';
		param.noEmptyString='true';
		param.list='true';
	}
	PARAM={
		param.name='proc.annotation.show.part.headings.schemas';
		param.title='For schemas';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='proc.annotation.show.part.headings.schemas.include';
		param.title='Include';
		param.title.style.italic='true';
		param.type='string';
		param.trimSpaces='true';
		param.collapseSpaces='true';
		param.noEmptyString='true';
		param.list='true';
	}
	PARAM={
		param.name='proc.annotation.show.part.headings.schemas.exclude';
		param.title='Exclude';
		param.title.style.italic='true';
		param.type='string';
		param.trimSpaces='true';
		param.collapseSpaces='true';
		param.noEmptyString='true';
		param.list='true';
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
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs2';
}
<ROOT>
	<ELEMENT_ITER>
		DESCR='execute when no filtering by language needed:
Iterate by all <xs:appinfo> and/or <xs:documentation> elements found by the location path \'xs:annotation/(xs:appinfo|xs:documentation)\' 

(see "Processing | Scope" tab)'
		COND='! getBooleanParam("proc.annotation.documentation") ||
getParam("proc.annotation.documentation.lang") == null'
		BREAK_PARENT_BLOCK='when-executed'
		TARGET_ETS={'xs:appinfo';'xs:documentation'}
		SCOPE='advanced-location-rules'
		RULES={
			'* -> xs:annotation/(xs:appinfo|xs:documentation)[instanceOf("xs:documentation")
 ? getBooleanParam("proc.annotation.documentation")
 : getBooleanParam("proc.annotation.appinfo")]';
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
    "proc.annotation.documentation.lang"
  ).containsIgnoreCase (getAttrStringValue("xml:lang"))
} : {
  getBooleanParam("proc.annotation.appinfo")
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
				COND='getParam("proc.annotation.documentation.lang.alt") != null'
				TARGET_ET='xs:documentation'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> xs:annotation/xs:documentation[getArrayParam(
  "proc.annotation.documentation.lang.alt"
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
		SS_NAME='<img>'
		COND='getBooleanParam("proc.annotation.tags.xhtml.images")'
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='none';
		}
		<BODY>
			<ATTR_ITER>
				DESCR='generates the list of the element\'s attributes'
				SCOPE='enumerated-attrs'
				EXCL_PASSED=false
				FMT={
					txtfl.delimiter.type='none';
				}
				<BODY>
					<AREA_SEC>
						COND='iterator.attr.name == "src"'
						BREAK_PARENT_BLOCK='when-executed'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT=' src="'
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='srcURL = resolveURL (
  iterator.value.toString(),
  getXMLDocument().getAttrStringValue("xmlURI")
);

output.format.name == "HTML" && 
  getBooleanParam("proc.annotation.tags.xhtml.images.copy") &&
    (dstFile = copyFile (srcURL, output.docFilesDir)) != "" 
? makeRelativePath (dstFile, output.dir, true) : srcURL'
									</DATA_CTRL>
									<TEXT_CTRL>
										TEXT='"'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<DELIMITER>
									</DELIMITER>
									<DATA_CTRL>
										FORMULA='iterator.attr.name'
									</DATA_CTRL>
									<TEXT_CTRL>
										TEXT='="'
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='encodeXMLChars (
  iterator.attr.rawValue,
  true, true, true, false
)'
									</DATA_CTRL>
									<TEXT_CTRL>
										TEXT='"'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</ATTR_ITER>
		</BODY>
		<HEADER>
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='<img'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
		<FOOTER>
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='>'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</FOOTER>
	</FOLDER>
	<FOLDER>
		SS_NAME='appinfo'
		DESCR='process <xs:appinfo> element'
		MATCHING_ET='xs:appinfo'
		FMT={
			txtfl.delimiter.type='space';
		}
		<BODY>
			<SS_CALL>
				SS_NAME='Nodes'
			</SS_CALL>
			<AREA_SEC>
				COND='! getAttrStringValue("source").isBlank()
&&
hasParamValue (
  "proc.annotation.documentation.source", "as_see_link"
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
  "proc.annotation.appinfo.source", "as_title"
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
getBooleanParam("proc.annotation.show.part.headings")
&& 
iterator.numItems > 1
&&
{
  schemaFileName = getXMLDocument().getAttrValue("xmlName");

  includeFiles = getArrayParam("proc.annotation.show.part.headings.schemas.include");
  excludeFiles = getArrayParam("proc.annotation.show.part.headings.schemas.exclude");

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
	<ATTR_ITER>
		SS_NAME='AttrList'
		DESCR='generates the list of the element\'s attributes'
		SCOPE='enumerated-attrs'
		EXCL_PASSED=false
		FILTER='name = iterator.attr.name;
name != "xmlns" && ! name.startsWith ("xmlns:")'
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='none';
		}
		<BODY>
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DELIMITER>
							</DELIMITER>
							<DATA_CTRL>
								FORMULA='iterator.attr.name'
							</DATA_CTRL>
							<TEXT_CTRL>
								TEXT='="'
							</TEXT_CTRL>
							<DATA_CTRL>
								FORMULA='encodeXMLChars (
  iterator.attr.rawValue,
  true, true, true, false
)'
							</DATA_CTRL>
							<TEXT_CTRL>
								TEXT='"'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</ATTR_ITER>
	<FOLDER>
		SS_NAME='documentation'
		DESCR='process <xs:documentation> element'
		MATCHING_ET='xs:documentation'
		FMT={
			txtfl.delimiter.type='space';
		}
		<BODY>
			<SS_CALL>
				SS_NAME='Nodes'
			</SS_CALL>
			<AREA_SEC>
				COND='! getAttrStringValue("source").isBlank()
&&
hasParamValue (
  "proc.annotation.documentation.source", "as_see_link"
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
hasParamValue ("proc.annotation.documentation.source", "as_title")'
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
getBooleanParam("proc.annotation.show.part.headings")
&& 
iterator.numItems > 1
&&
{
  schemaFileName = getXMLDocument().getAttrValue("xmlName");

  includeFiles = getArrayParam("proc.annotation.show.part.headings.schemas.include");
  excludeFiles = getArrayParam("proc.annotation.show.part.headings.schemas.exclude");

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
		SS_NAME='Node'
		DESCR='processing the documentation node; param indicates whether to collapse whitespaces'
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='none';
		}
		<BODY>
			<AREA_SEC>
				DESCR='case of text or character data node'
				MATCHING_ETS={'#CDATA';'#TEXT'}
				BREAK_PARENT_BLOCK='when-executed'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								FORMULA='text = contextElement.value.toString();

stockSection.recursionDepth > 0 ?
{
  stockSection.param.toBoolean() ? 
    text = text.collapseSpaces (false)
} : {
  text = text.collapseSpaces (
           iterator.isFirstItem, iterator.isLastItem)
};

getBooleanParam ("proc.annotation.encode.markup.chars") &&
output.format.renderEmbeddedHTML
 ? encodeXMLChars (text) : text'
								FMT={
									ctrl.option.text.noEmptyOutput='true';
								}
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<ELEMENT_ITER>
				DESCR='otherwise, this is element node
--
if the current element belongs to the XHTML namespace and processing of XHTML tags is enabled, reprint the element\'s tags so as they look as an ordinary HTML and process the element\'s content;

In case of XHTML, the rendering of line-breaks is turned off to avoid conflicts with the schemas without XHTML documented simultaniously, where the line-breaks must be preserved in the generated doc. See: Formatting | Text | Options | Render Line breaks.'
				COND='getBooleanParam("proc.annotation.tags.xhtml.schemas.this")
&&
(belongsToNS ("xhtml") ||
 hasParamValue("proc.annotation.tags.other", "xhtml"))'
				INIT_EXPR='stockSection.setVar (
 "tag", contextElement.localName.toLowerCase()
)'
				BREAK_PARENT_BLOCK='when-executed'
				TARGET_ET='<ANY>'
				SCOPE='simple-location-rules'
				RULES={
					'* -> *';
				}
				FILTER='! contextElement.pseudoElement ||
instanceOf ("#TEXT | #CDATA")'
				FMT={
					text.option.renderNLs='false';
				}
				<BODY>
					<SS_CALL>
						DESCR='calls this stock-section recursively'
						SS_NAME='Node'
						PARAMS_EXPR='stockSection.getVar("tag") == "pre" ? 
  Array (false) : stockSection.params'
						FMT={
							sec.indent.left='8.3';
						}
					</SS_CALL>
				</BODY>
				<HEADER>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='<'
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='contextElement.localName'
									</DATA_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='AttrList'
									</SS_CALL_CTRL>
									<TEXT_CTRL>
										TEXT='>'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
				<FOOTER>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='</'
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='contextElement.localName'
									</DATA_CTRL>
									<TEXT_CTRL>
										TEXT='>'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</FOOTER>
				<ELSE>
					DESCR='this is executed when no child nodes encountered -- the case of a simple element'
					<SS_CALL>
						COND='stockSection.getVar("tag") == "img"'
						BREAK_PARENT_BLOCK='when-executed'
						SS_NAME='<img>'
					</SS_CALL>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='<'
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='contextElement.localName'
									</DATA_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='AttrList'
									</SS_CALL_CTRL>
									<TEXT_CTRL>
										TEXT='>'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</ELSE>
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='otherwise, this is non-XHTML element
--
if showing other tags is specified, reprint the element\'s tags so that they appear in the documentation the same as they are defined in XML. 

The "Formatting | Text Flow | Render embeded HTML" property is disabled at each Area Section printing the tag.'
				COND='hasParamValue("proc.annotation.tags.other", "show")'
				BREAK_PARENT_BLOCK='when-executed'
				TARGET_ET='<ANY>'
				SCOPE='simple-location-rules'
				RULES={
					'* -> *';
				}
				FILTER='! contextElement.pseudoElement ||
instanceOf ("#TEXT | #CDATA")'
				<BODY>
					<SS_CALL>
						DESCR='calls this stock-section recursively'
						SS_NAME='Node'
						PARAMS_EXPR='stockSection.params'
						FMT={
							sec.indent.left='8.3';
						}
					</SS_CALL>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							txtfl.ehtml.render='false';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='<'
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='contextElement.qName'
									</DATA_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='AttrList'
									</SS_CALL_CTRL>
									<TEXT_CTRL>
										TEXT='>'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
				<FOOTER>
					<AREA_SEC>
						FMT={
							txtfl.ehtml.render='false';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='</'
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='contextElement.qName'
									</DATA_CTRL>
									<TEXT_CTRL>
										TEXT='>'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</FOOTER>
				<ELSE>
					DESCR='this is executed when no child nodes encountered -- the case of a simple element'
					<AREA_SEC>
						FMT={
							txtfl.ehtml.render='false';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='<'
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='contextElement.qName'
									</DATA_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='AttrList'
									</SS_CALL_CTRL>
									<TEXT_CTRL>
										TEXT='/>'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</ELSE>
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='otherwise, only process the element content'
				TARGET_ET='<ANY>'
				SCOPE='simple-location-rules'
				RULES={
					'* -> *';
				}
				FILTER='! contextElement.pseudoElement ||
instanceOf ("#TEXT | #CDATA")'
				<BODY>
					<SS_CALL>
						DESCR='calls this stock-section recursively'
						SS_NAME='Node'
						PARAMS_EXPR='stockSection.params'
						FMT={
							sec.indent.left='8.3';
						}
					</SS_CALL>
				</BODY>
			</ELEMENT_ITER>
		</BODY>
	</FOLDER>
	<FOLDER>
		SS_NAME='Nodes'
		MATCHING_ETS={'xs:appinfo';'xs:documentation'}
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='none';
			txtfl.ehtml.render='true';
		}
		<BODY>
			<ELEMENT_ITER>
				DESCR='if XHTML markup is processed and the default namespace is XHTML (see "Enabling" tab), turn off the rendering of line-breaks to avoid conflicts with the schemas without XHTML documented simultaniously, where the line-breaks must be preserved in the generated doc. See: Formatting | Text | Options | Render Line breaks.
--
iterate by all nodes contained in <xs:documentation> element;
the output is set to text flow and the rendering of embedded HTML is switched on (see  Formatting | Text Flow tab)'
				COND='testDefaultNS ("xhtml")
&&
getBooleanParam("proc.annotation.tags.xhtml.schemas.this")'
				BREAK_PARENT_BLOCK='when-executed'
				TARGET_ET='<ANY>'
				SCOPE='simple-location-rules'
				RULES={
					'* -> *';
				}
				FILTER='! contextElement.pseudoElement ||
instanceOf ("#TEXT | #CDATA")'
				FMT={
					text.option.renderNLs='false';
					txtfl.delimiter.type='none';
					txtfl.ehtml.render='true';
				}
				<BODY>
					<SS_CALL>
						DESCR='processing of each node'
						SS_NAME='Node'
						PARAMS_EXPR='Array (true)'
						FMT={
							sec.indent.left='8.3';
						}
					</SS_CALL>
				</BODY>
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='otherwise, the rendering of line breaks is default
--
iterate by all nodes contained in <xs:documentation> element;
the output is set to text flow and the rendering of embedded HTML is switched on (see  Formatting | Text Flow tab)'
				TARGET_ET='<ANY>'
				SCOPE='simple-location-rules'
				RULES={
					'* -> *';
				}
				FILTER='! contextElement.pseudoElement ||
instanceOf ("#TEXT | #CDATA")'
				FMT={
					txtfl.delimiter.type='none';
					txtfl.ehtml.render='true';
				}
				<BODY>
					<SS_CALL>
						DESCR='processing of each node'
						SS_NAME='Node'
						PARAMS_EXPR='Array (true)'
						FMT={
							sec.indent.left='8.3';
						}
					</SS_CALL>
				</BODY>
			</ELEMENT_ITER>
		</BODY>
	</FOLDER>
</STOCK_SECTIONS>
CHECKSUM='Ha?I+jgQk9LsWXoCbFgIF0ONVNI1pQNNcIJKqeeDe6M'
</DOCFLEX_TEMPLATE>