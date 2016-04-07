<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2005-08-07 07:34:00'
LAST_UPDATE='2014-07-05 20:02:50'
DESIGNER_TOOL='DocFlex SDK 1.x'
DESIGNER_LICENSE_TYPE='Filigris Works Team'
APP_ID='docflex-xml-xsddoc2'
APP_NAME='DocFlex/XML XSDDoc'
APP_VER='2.8.1'
APP_AUTHOR='Copyright © 2005-2014 Filigris Works, Leonid Rudy Softwareprodukte. All rights reserved.'
TEMPLATE_TYPE='DocumentTemplate'
DSM_TYPE_ID='xsddoc'
ROOT_ETS={'xs:%complexType';'xs:%simpleType'}
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$mainXSD';
		param.type='GOMElement';
	}
	PARAM={
		param.name='$xmlContext';
		param.description='Specifies an element that determines the preferable XML document context (i.e. the position on the XML document\'s tree) against which the namespace prefix/URI binding will be resolved';
		param.type='GOMElement';
		param.defaultValue.expr='contextElement';
	}
	PARAM={
		param.name='$deriv.simpleContent';
		param.title='Simple Content Derivation';
		param.group='true';
		param.group.defaultState='expanded';
		param.type='enum';
		param.enum.values='local;full;none';
	}
	PARAM={
		param.name='$deriv.simpleContent.facets';
		param.title='Facets';
		param.type='boolean';
	}
	PARAM={
		param.name='$deriv.simpleContent.annotations';
		param.title='Annotations';
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
		param.name='fmt.allowNestedTables';
		param.title='Allow nested tables';
		param.type='boolean';
		param.defaultValue='true';
	}
</TEMPLATE_PARAMS>
<STYLES>
	CHAR_STYLE={
		style.name='Annotation (Small)';
		style.id='cs1';
		text.font.name='Arial';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Annotation (Tiny)';
		style.id='cs2';
		text.font.name='Arial';
		text.font.size='8';
	}
	CHAR_STYLE={
		style.name='Default Paragraph Font';
		style.id='cs3';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Derivation Method';
		style.id='cs4';
		text.font.name='Verdana';
		text.font.size='8';
		text.color.foreground='#FF9900';
	}
	PAR_STYLE={
		style.name='Heading 7';
		style.id='s1';
		text.font.name='Arial';
		text.font.size='8';
		text.font.style.bold='true';
		text.font.style.italic='true';
		text.color.background='#CCCCFF';
		text.color.opaque='true';
		par.margin.top='6.7';
		par.margin.bottom='6.7';
		par.page.keepWithNext='true';
	}
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs5';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
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
	PAR_STYLE={
		style.name='Property Title';
		style.id='s3';
		text.font.name='Arial';
		text.font.size='8';
		text.font.style.bold='true';
		par.margin.right='5.8';
		par.margin.top='0.3';
		par.margin.bottom='0.3';
	}
	PAR_STYLE={
		style.name='Property Value';
		style.id='s4';
		text.font.name='Verdana';
		text.font.size='8';
		par.margin.top='0.3';
		par.margin.bottom='0.3';
	}
	CHAR_STYLE={
		style.name='Property Value (Font)';
		style.id='cs7';
		text.font.name='Verdana';
		text.font.size='8';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs5';
}
<ROOT>
	<SS_CALL>
		MATCHING_ET='xs:%simpleType'
		BREAK_PARENT_BLOCK='when-executed'
		SS_NAME='simpleType'
	</SS_CALL>
	<SS_CALL>
		MATCHING_ET='xs:%complexType'
		SS_NAME='complexType'
	</SS_CALL>
</ROOT>
<STOCK_SECTIONS>
	<TEMPLATE_CALL>
		SS_NAME='annotation'
		MATCHING_ET='xs:%annotated'
		TEMPLATE_FILE='../ann/annotation.tpl'
	</TEMPLATE_CALL>
	<ELEMENT_ITER>
		SS_NAME='complexType'
		DESCR='this should be a complexType with simple content only'
		MATCHING_ET='xs:%complexType'
		TARGET_ETS={'xs:extension%xs:simpleExtensionType';'xs:restriction%xs:simpleRestrictionType'}
		SCOPE='advanced-location-rules'
		RULES={
			'* -> xs:simpleContent/(xs:extension|xs:restriction)';
		}
		<BODY>
			<SS_CALL>
				DESCR='process the restriction contained in it'
				MATCHING_ET='xs:restriction%xs:simpleRestrictionType'
				BREAK_PARENT_BLOCK='when-executed'
				SS_NAME='restriction'
			</SS_CALL>
			<SS_CALL>
				DESCR='process the extension contained in it'
				MATCHING_ET='xs:extension%xs:simpleExtensionType'
				SS_NAME='extension'
			</SS_CALL>
		</BODY>
	</ELEMENT_ITER>
	<FOLDER>
		SS_NAME='Derivation Method'
		MATCHING_ETS={'xs:%simpleExtensionType';'xs:%simpleRestrictionType';'xs:list';'xs:restriction';'xs:union'}
		<BODY>
			<FOLDER>
				MATCHING_ET='xs:%simpleExtensionType'
				<BODY>
					<AREA_SEC>
						COND='getAttrValue("base") != null'
						BREAK_PARENT_BLOCK='when-executed'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='extension of'
										FMT={
											text.style='cs4';
										}
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='getAttrQNameValue("base").toXMLName (
  Array (getElementParam("$xmlContext"), contextElement))'
										FMT={
											text.style='cs6';
										}
										<DOC_HLINK>
											CONTEXT_ELEMENT_EXPR='qName = getAttrQNameValue("base");

findElementByKey (
  "types",
  hasServiceAttr ("redefined") ?
    HashKey (qName, getServiceAttr ("redefined")) : qName,
  BooleanQuery (
    checkElementByKey (
      "main-xsds",
      getXMLDocument().id,
      getElementParam("$mainXSD")
    )
  )
)'
											MATCHING_ETS={'xs:complexType';'xs:simpleType'}
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? callStockSection("Link Title") : ""'
											HKEYS={
												'contextElement.id';
												'Array ("detail", "xml-source-location")';
											}
										</DOC_HLINK>
									</DATA_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='extension of'
										FMT={
											text.style='cs4';
										}
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='toXMLName (
  getNamespaceURI("xs"), "anySimpleType",
  getElementParam("$xmlContext")
)'
										FMT={
											text.style='cs6';
										}
									</DATA_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</FOLDER>
			<FOLDER>
				MATCHING_ETS={'xs:%simpleRestrictionType';'xs:restriction'}
				<BODY>
					<AREA_SEC>
						COND='getAttrValue("base") != null'
						BREAK_PARENT_BLOCK='when-executed'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='restriction of'
										FMT={
											text.style='cs4';
										}
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='getAttrQNameValue("base").toXMLName (
  Array (getElementParam("$xmlContext"), contextElement))'
										FMT={
											text.style='cs6';
										}
										<DOC_HLINK>
											CONTEXT_ELEMENT_EXPR='qName = getAttrQNameValue("base");

findElementByKey (
  "types", 
  hasServiceAttr ("redefined") ?
    HashKey (qName, getServiceAttr ("redefined")) : qName,
  BooleanQuery (
    checkElementByKey (
      "main-xsds",
      getXMLDocument().id,
      getElementParam("$mainXSD")
    )
  )
)'
											MATCHING_ETS={'xs:complexType';'xs:simpleType'}
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? callStockSection("Link Title") : ""'
											HKEYS={
												'contextElement.id';
												'Array ("detail", "xml-source-location")';
											}
										</DOC_HLINK>
									</DATA_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='restriction of'
										FMT={
											text.style='cs4';
										}
									</TEXT_CTRL>
									<TEXT_CTRL>
										TEXT='anonymous'
									</TEXT_CTRL>
									<TEXT_CTRL>
										TEXT='simpleType'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</FOLDER>
			<FOLDER>
				MATCHING_ET='xs:list'
				<BODY>
					<AREA_SEC>
						COND='getAttrValue("itemType") != null'
						BREAK_PARENT_BLOCK='when-executed'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='list of'
										FMT={
											text.style='cs4';
										}
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='getAttrQNameValue("itemType").toXMLName (
  Array (getElementParam("$xmlContext"), contextElement))'
										FMT={
											text.style='cs6';
										}
										<DOC_HLINK>
											CONTEXT_ELEMENT_EXPR='findElementByKey (
  "types",
  getAttrQNameValue("itemType"),
  BooleanQuery (
    checkElementByKey (
      "main-xsds",
      getXMLDocument().id,
      getElementParam("$mainXSD")
    )
  )
)'
											MATCHING_ETS={'xs:complexType';'xs:simpleType'}
											TITLE_EXPR='getBooleanParam("show.linkTitle") ? callStockSection("Link Title") : ""'
											HKEYS={
												'contextElement.id';
												'Array ("detail", "xml-source-location")';
											}
										</DOC_HLINK>
									</DATA_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='list of'
										FMT={
											text.style='cs4';
										}
									</TEXT_CTRL>
									<TEXT_CTRL>
										TEXT='anonymous'
									</TEXT_CTRL>
									<TEXT_CTRL>
										TEXT='simpleType'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</FOLDER>
			<FOLDER>
				MATCHING_ET='xs:union'
				FMT={
					txtfl.delimiter.type='text';
					txtfl.delimiter.text=' | ';
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
										TEXT='by union'
										FMT={
											text.style='cs4';
										}
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</FOLDER>
			<SS_CALL>
				COND='getBooleanParam("$deriv.simpleContent.annotations")'
				SS_NAME='annotation'
				FMT={
					sec.spacing.before='6.7';
					sec.spacing.after='5';
					text.style='cs2';
				}
			</SS_CALL>
		</BODY>
	</FOLDER>
	<FOLDER>
		SS_NAME='extension'
		MATCHING_ET='xs:%simpleExtensionType'
		<BODY>
			<FOLDER>
				FMT={
					sec.outputStyle='table';
					table.cell.padding.both='0';
					table.border.style='none';
				}
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Derivation:'
										FMT={
											ctrl.size.width='63';
											ctrl.size.height='17.3';
											tcell.align.vert='Top';
											par.style='s3';
										}
									</TEXT_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='Derivation Method'
										FMT={
											ctrl.size.width='436.5';
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
				DESCR='derivation of referenced base type'
				COND='getAttrValue("base") != null &&
hasParamValue("$deriv.simpleContent", "full")'
				CONTEXT_ELEMENT_EXPR='typeQName = getAttrQNameValue("base");

isXSPredefinedType (typeQName) ? null :
{
  setVar ("typeQName", typeQName);

  findElementByKey (
    "types",
    hasServiceAttr ("redefined") ?
      HashKey (typeQName, getServiceAttr ("redefined")) : typeQName,
    BooleanQuery (
      checkElementByKey (
        "main-xsds",
        getXMLDocument().id,
        getElementParam("$mainXSD")
      )
    )
  )
}'
				MATCHING_ETS={'xs:complexType';'xs:simpleType'}
				FMT={
					sec.indent.block='true';
				}
				<BODY>
					<SS_CALL>
						COND='getBooleanParam("$deriv.simpleContent.annotations")'
						SS_NAME='annotation'
						FMT={
							sec.spacing.after='5';
							text.style='cs2';
						}
					</SS_CALL>
					<SS_CALL>
						MATCHING_ET='xs:simpleType'
						BREAK_PARENT_BLOCK='when-executed'
						SS_NAME='simpleType'
					</SS_CALL>
					<SS_CALL>
						MATCHING_ET='xs:complexType'
						SS_NAME='complexType'
					</SS_CALL>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							par.style='s1';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										MATCHING_ET='xs:simpleType'
										TEXT='simpleType'
									</TEXT_CTRL>
									<TEXT_CTRL>
										MATCHING_ET='xs:complexType'
										TEXT='complexType'
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='\'"\' + getVar("typeQName") + \'"\''
									</DATA_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
			</FOLDER>
		</BODY>
	</FOLDER>
	<TEMPLATE_CALL>
		SS_NAME='Facet'
		MATCHING_ET='xs:%facet'
		TEMPLATE_FILE='facet.tpl'
		PASSED_PARAMS={
			'$facet.annotation','getBooleanParam("$deriv.simpleContent.annotations")';
		}
	</TEMPLATE_CALL>
	<ELEMENT_ITER>
		SS_NAME='Facets'
		MATCHING_ETS={'xs:%restrictionType';'xs:restriction'}
		TARGET_ET='xs:%facet'
		SCOPE='simple-location-rules'
		RULES={
			'* -> xs:%facet';
		}
		FILTER_BY_KEY='// eliminate multiple instances of <xs:enumeration>

instanceOf("xs:enumeration") ? 1 : contextElement.id'
		SORTING='by-expr'
		SORTING_KEY={expr='contextElement.localName',ascending}
		FMT={
			sec.outputStyle='table';
			table.cell.padding.both='0';
			table.border.style='none';
		}
		<BODY>
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								FORMULA='contextElement.localName + \':\''
								FMT={
									ctrl.size.width='105';
									ctrl.size.height='17.3';
									tcell.align.vert='Top';
									tcell.option.nowrap='true';
									par.style='s3';
								}
							</DATA_CTRL>
							<SS_CALL_CTRL>
								SS_NAME='Facet'
								FMT={
									ctrl.size.width='394.5';
									ctrl.size.height='17.3';
									tcell.align.vert='Bottom';
									par.style='s4';
								}
							</SS_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</ELEMENT_ITER>
	<TEMPLATE_CALL>
		SS_NAME='Link Title'
		TEMPLATE_FILE='componentLinkTitle.tpl'
	</TEMPLATE_CALL>
	<FOLDER>
		SS_NAME='restriction'
		MATCHING_ETS={'xs:%simpleRestrictionType';'xs:restriction'}
		<BODY>
			<FOLDER>
				FMT={
					sec.outputStyle='table';
					table.cell.padding.both='0';
					table.border.style='none';
				}
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Derivation:'
										FMT={
											ctrl.size.width='63';
											ctrl.size.height='17.3';
											tcell.align.vert='Top';
											par.style='s3';
										}
									</TEXT_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='Derivation Method'
										FMT={
											ctrl.size.width='436.5';
											ctrl.size.height='17.3';
											par.style='s4';
										}
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<FOLDER>
						DESCR='facets'
						COND='getBooleanParam("$deriv.simpleContent.facets") &&
hasChild("xs:%facet")'
						<BODY>
							<AREA_SEC>
								COND='getBooleanParam("fmt.allowNestedTables")'
								BREAK_PARENT_BLOCK='when-executed'
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='Facets:'
												FMT={
													ctrl.size.width='63';
													ctrl.size.height='17.3';
													tcell.align.vert='Top';
													par.style='s3';
												}
											</TEXT_CTRL>
											<SS_CALL_CTRL>
												SS_NAME='Facets'
												FMT={
													ctrl.size.width='436.5';
													ctrl.size.height='17.3';
												}
											</SS_CALL_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
							<ELEMENT_ITER>
								DESCR='when nested tables are not allowed'
								TARGET_ET='xs:%facet'
								SCOPE='simple-location-rules'
								RULES={
									'* -> xs:%facet';
								}
								FILTER_BY_KEY='// eliminate multiple instanceof of <enumeration>

instanceOf("xs:enumeration") ? 1 : contextElement.id'
								SORTING='by-expr'
								SORTING_KEY={expr='contextElement.localName',ascending}
								<BODY>
									<AREA_SEC>
										COND='iterator.isFirstItem'
										BREAK_PARENT_BLOCK='when-executed'
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='Facets:'
														FMT={
															ctrl.size.width='63';
															ctrl.size.height='17.3';
															tcell.align.vert='Top';
															par.style='s3';
														}
													</TEXT_CTRL>
													<DATA_CTRL>
														FORMULA='contextElement.localName + \':\''
														FMT={
															ctrl.size.width='72';
															ctrl.size.height='17.3';
															tcell.align.vert='Top';
															tcell.option.nowrap='true';
															par.style='s3';
														}
													</DATA_CTRL>
													<SS_CALL_CTRL>
														SS_NAME='Facet'
														FMT={
															ctrl.size.width='364.5';
															ctrl.size.height='17.3';
															tcell.align.vert='Bottom';
															par.style='s4';
														}
													</SS_CALL_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</AREA_SEC>
									<AREA_SEC>
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT=''
														FMT={
															ctrl.size.width='63';
															ctrl.size.height='17.3';
															par.style='s3';
														}
													</TEXT_CTRL>
													<DATA_CTRL>
														FORMULA='contextElement.localName + \':\''
														FMT={
															ctrl.size.width='72';
															ctrl.size.height='17.3';
															tcell.align.vert='Top';
															tcell.option.nowrap='true';
															par.style='s3';
														}
													</DATA_CTRL>
													<SS_CALL_CTRL>
														SS_NAME='Facet'
														FMT={
															ctrl.size.width='364.5';
															ctrl.size.height='17.3';
															tcell.align.vert='Bottom';
															par.style='s4';
														}
													</SS_CALL_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</AREA_SEC>
								</BODY>
							</ELEMENT_ITER>
						</BODY>
					</FOLDER>
				</BODY>
			</FOLDER>
			<FOLDER>
				DESCR='derivation of referenced base type'
				COND='getAttrValue("base") != null &&
hasParamValue("$deriv.simpleContent", "full")'
				CONTEXT_ELEMENT_EXPR='typeQName = getAttrQNameValue("base");

isXSPredefinedType (typeQName) ? null :
{
  setVar ("typeQName", typeQName);

  findElementByKey (
    "types",
    hasServiceAttr ("redefined") ?
      HashKey (typeQName, getServiceAttr ("redefined")) : typeQName,
    BooleanQuery (
      checkElementByKey (
        "main-xsds",
        getXMLDocument().id,
        getElementParam("$mainXSD")
      )
    )
  )
}'
				MATCHING_ETS={'xs:complexType';'xs:simpleType'}
				FMT={
					sec.indent.block='true';
				}
				<BODY>
					<SS_CALL>
						COND='getBooleanParam("$deriv.simpleContent.annotations")'
						SS_NAME='annotation'
						FMT={
							sec.spacing.after='5';
							text.style='cs2';
						}
					</SS_CALL>
					<SS_CALL>
						MATCHING_ET='xs:simpleType'
						BREAK_PARENT_BLOCK='when-executed'
						SS_NAME='simpleType'
					</SS_CALL>
					<SS_CALL>
						MATCHING_ET='xs:complexType'
						SS_NAME='complexType'
					</SS_CALL>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							par.style='s1';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										MATCHING_ET='xs:simpleType'
										TEXT='simpleType'
									</TEXT_CTRL>
									<TEXT_CTRL>
										MATCHING_ET='xs:complexType'
										TEXT='complexType'
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='\'"\' + getVar("typeQName") + \'"\''
									</DATA_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
			</FOLDER>
			<FOLDER>
				DESCR='derivation of anonymous simpleType'
				COND='getAttrValue("base") == null'
				CONTEXT_ELEMENT_EXPR='findChild("xs:simpleType")'
				MATCHING_ET='xs:%localSimpleType'
				FMT={
					sec.indent.block='true';
				}
				<BODY>
					<SS_CALL>
						COND='getBooleanParam("$deriv.simpleContent.annotations")'
						SS_NAME='annotation'
						FMT={
							sec.spacing.after='5';
							text.style='cs2';
						}
					</SS_CALL>
					<SS_CALL>
						SS_NAME='simpleType'
					</SS_CALL>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							par.style='s1';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Anonymous simpleType'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
			</FOLDER>
		</BODY>
	</FOLDER>
	<ELEMENT_ITER>
		SS_NAME='simpleType'
		MATCHING_ET='xs:%simpleType'
		TARGET_ETS={'xs:list';'xs:restriction';'xs:union'}
		SCOPE='simple-location-rules'
		RULES={
			'* -> (xs:list|xs:restriction|xs:union)';
		}
		FMT={
			txtfl.delimiter.type='space';
		}
		<BODY>
			<SS_CALL>
				DESCR='Derivation BY RESTRICTION'
				MATCHING_ET='xs:restriction'
				BREAK_PARENT_BLOCK='when-executed'
				SS_NAME='restriction'
			</SS_CALL>
			<FOLDER>
				DESCR='Derivation BY LIST'
				MATCHING_ET='xs:list'
				BREAK_PARENT_BLOCK='when-executed'
				<BODY>
					<AREA_SEC>
						FMT={
							sec.outputStyle='table';
							table.cell.padding.both='0';
							table.border.style='none';
							trow.cell.align.vert='Top';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Derivation:'
										FMT={
											ctrl.size.width='63';
											ctrl.size.height='17.3';
											tcell.align.vert='Top';
											par.style='s3';
										}
									</TEXT_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='Derivation Method'
										FMT={
											ctrl.size.width='436.5';
											ctrl.size.height='17.3';
											par.style='s4';
										}
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						FMT={
							sec.outputStyle='table';
							table.cell.padding.both='0';
							table.border.style='none';
							trow.cell.align.vert='Top';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Derivation:'
										FMT={
											ctrl.size.width='63';
											ctrl.size.height='17.3';
											tcell.align.vert='Top';
											par.style='s3';
										}
									</TEXT_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='Derivation Method'
										FMT={
											ctrl.size.width='436.5';
											ctrl.size.height='17.3';
											par.style='s4';
										}
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<FOLDER>
						DESCR='derivation of referenced list item type'
						COND='getAttrValue("itemType") != null &&
hasParamValue("$deriv.simpleContent", "full")'
						CONTEXT_ELEMENT_EXPR='typeQName = getAttrQNameValue("itemType");

isXSPredefinedType (typeQName) ? null :
{
  setVar ("typeQName", typeQName);

  findElementByKey ("types", typeQName,
    BooleanQuery (checkElementByKey (
      "main-xsds",
      getXMLDocument().id,
      getElementParam("$mainXSD")
    ))
  )
}'
						MATCHING_ET='xs:simpleType'
						BREAK_PARENT_BLOCK='when-executed'
						FMT={
							sec.indent.block='true';
						}
						<BODY>
							<SS_CALL>
								COND='getBooleanParam("$deriv.simpleContent.annotations")'
								SS_NAME='annotation'
								FMT={
									sec.spacing.after='5';
									text.style='cs2';
								}
							</SS_CALL>
							<SS_CALL>
								SS_NAME='simpleType'
							</SS_CALL>
						</BODY>
						<HEADER>
							<AREA_SEC>
								FMT={
									par.style='s1';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='simpleType'
											</TEXT_CTRL>
											<DATA_CTRL>
												FORMULA='\'"\' + getVar("typeQName") + \'"\''
											</DATA_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</HEADER>
					</FOLDER>
					<FOLDER>
						DESCR='derivation of anonymous list item type'
						COND='getAttrValue("itemType") == null'
						CONTEXT_ELEMENT_EXPR='findChild("xs:simpleType")'
						MATCHING_ET='xs:%localSimpleType'
						FMT={
							sec.indent.block='true';
						}
						<BODY>
							<SS_CALL>
								COND='getBooleanParam("$deriv.simpleContent.annotations")'
								SS_NAME='annotation'
								FMT={
									sec.spacing.after='5';
									text.style='cs2';
								}
							</SS_CALL>
							<SS_CALL>
								SS_NAME='simpleType'
							</SS_CALL>
						</BODY>
						<HEADER>
							<AREA_SEC>
								FMT={
									par.style='s1';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='Anonymous simpleType'
											</TEXT_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</HEADER>
					</FOLDER>
				</BODY>
			</FOLDER>
			<FOLDER>
				DESCR='Derivation BY UNION'
				MATCHING_ET='xs:union'
				<BODY>
					<AREA_SEC>
						FMT={
							sec.outputStyle='table';
							table.cell.padding.both='0';
							table.border.style='none';
							trow.cell.align.vert='Top';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Derivation:'
										FMT={
											ctrl.size.width='63';
											ctrl.size.height='17.3';
											tcell.align.vert='Top';
											par.style='s3';
										}
									</TEXT_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='Derivation Method'
										FMT={
											ctrl.size.width='436.5';
											ctrl.size.height='17.3';
											par.style='s4';
										}
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<FOLDER>
						DESCR='derivation of member types'
						FMT={
							sec.outputStyle='list';
							text.style='cs7';
							list.type='ordered';
						}
						<BODY>
							<ATTR_ITER>
								DESCR='global member types'
								SCOPE='attr-values'
								ATTR='memberTypes'
								FMT={
									sec.outputStyle='list-items';
								}
								<BODY>
									<FOLDER>
										DESCR='derivation of a global member type'
										COND='hasParamValue("$deriv.simpleContent", "full")'
										CONTEXT_ELEMENT_EXPR='typeQName = iterator.value.toQName();

isXSPredefinedType (typeQName) ? null :
  findElementByKey (
    "types",
    typeQName,
    BooleanQuery (checkElementByKey (
      "main-xsds",
      getXMLDocument().id,
      getElementParam("$mainXSD")
    ))
  )'
										MATCHING_ET='xs:simpleType'
										BREAK_PARENT_BLOCK='when-executed'
										<BODY>
											<SS_CALL>
												COND='getBooleanParam("$deriv.simpleContent.annotations")'
												SS_NAME='annotation'
												FMT={
													sec.spacing.after='5';
													text.style='cs2';
												}
											</SS_CALL>
											<SS_CALL>
												SS_NAME='simpleType'
											</SS_CALL>
										</BODY>
										<HEADER>
											<AREA_SEC>
												FMT={
													par.margin.bottom='5';
												}
												<AREA>
													<CTRL_GROUP>
														<CTRLS>
															<DATA_CTRL>
																FORMULA='iterator.value.toQName().toXMLName (
  Array (getElementParam("$xmlContext"), contextElement))'
																FMT={
																	text.style='cs6';
																}
																<DOC_HLINK>
																	TITLE_EXPR='getBooleanParam("show.linkTitle") ? callStockSection("Link Title") : ""'
																	HKEYS={
																		'contextElement.id';
																		'Array ("detail", "xml-source-location")';
																	}
																</DOC_HLINK>
															</DATA_CTRL>
															<TEXT_CTRL>
																TEXT='simpleType:'
															</TEXT_CTRL>
														</CTRLS>
													</CTRL_GROUP>
												</AREA>
											</AREA_SEC>
										</HEADER>
									</FOLDER>
									<AREA_SEC>
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<DATA_CTRL>
														FORMULA='iterator.value.toQName().toXMLName (
  Array (getElementParam("$xmlContext"), contextElement))'
														FMT={
															text.style='cs6';
														}
														<DOC_HLINK>
															CONTEXT_ELEMENT_EXPR='findElementByKey (
  "types",
  iterator.value.toQName(),
  BooleanQuery (
    checkElementByKey (
      "main-xsds",
      getXMLDocument().id,
      getElementParam("$mainXSD")
    )
  )
)'
															MATCHING_ETS={'xs:complexType';'xs:simpleType'}
															TITLE_EXPR='getBooleanParam("show.linkTitle") ? callStockSection("Link Title") : ""'
															HKEYS={
																'contextElement.id';
																'Array ("detail", "xml-source-location")';
															}
														</DOC_HLINK>
													</DATA_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</AREA_SEC>
								</BODY>
							</ATTR_ITER>
							<ELEMENT_ITER>
								DESCR='anonymous member types'
								TARGET_ET='xs:%localSimpleType'
								SCOPE='simple-location-rules'
								RULES={
									'* -> xs:%localSimpleType';
								}
								FMT={
									sec.outputStyle='list-items';
									li.margin.top='5';
									li.margin.bottom='5';
								}
								<BODY>
									<FOLDER>
										DESCR='derivation of an anonymous member type'
										<BODY>
											<AREA_SEC>
												FMT={
													par.margin.bottom='5';
												}
												<AREA>
													<CTRL_GROUP>
														<CTRLS>
															<TEXT_CTRL>
																TEXT='anonymous simpleType:'
															</TEXT_CTRL>
														</CTRLS>
													</CTRL_GROUP>
												</AREA>
											</AREA_SEC>
											<SS_CALL>
												COND='getBooleanParam("$deriv.simpleContent.annotations")'
												SS_NAME='annotation'
												FMT={
													sec.spacing.after='5';
													text.style='cs2';
												}
											</SS_CALL>
											<SS_CALL>
												SS_NAME='simpleType'
											</SS_CALL>
										</BODY>
									</FOLDER>
								</BODY>
							</ELEMENT_ITER>
						</BODY>
						<HEADER>
							<AREA_SEC>
								FMT={
									text.font.style.italic='false';
									par.style='s1';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='Member Types'
											</TEXT_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</HEADER>
					</FOLDER>
				</BODY>
			</FOLDER>
		</BODY>
	</ELEMENT_ITER>
</STOCK_SECTIONS>
CHECKSUM='ULiVFMQ832GYhQhXNNLdczBiXMBd5syo2yILFRgpsN4'
</DOCFLEX_TEMPLATE>