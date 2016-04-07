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
ROOT_ETS={'xs:%complexType';'xs:%simpleType'}
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$mainXML';
		param.type='GOMElement';
	}
	PARAM={
		param.name='$detailLink';
		param.description='Indicates that the depiction of the given type (at the bottom of the tree) should be linked to the type\'s detailed documentation';
		param.type='boolean';
	}
	PARAM={
		param.name='$xmlSourceLink';
		param.description='Indicates that the depiction of the given type (at the bottom of the tree) should be linked at least to the definition of this type within the XML schema source';
		param.type='boolean';
	}
	PARAM={
		param.name='$xmlContext';
		param.description='Specifies an element that determines the preferable XML document context (i.e. the position on the XML document\'s tree) against which the namespace prefix/URI binding will be resolved';
		param.type='GOMElement';
		param.defaultValue.expr='contextElement';
	}
	PARAM={
		param.name='$resourceOutputDir';
		param.title='Documentation resources directory';
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
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='show.linkTitle.namespace';
		param.title='Namespace URI';
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
	PAR_STYLE={
		style.name='Derivation Tree Heading';
		style.id='s1';
		text.font.size.relative='90';
		text.font.style.bold='true';
		text.color.foreground='#990000';
		par.margin.bottom='5.7';
		par.page.keepWithNext='true';
	}
	CHAR_STYLE={
		style.name='Derivation Tree Method';
		style.id='cs2';
		text.font.name='Verdana';
		text.font.size.relative='70';
		text.color.foreground='#F59200';
	}
	CHAR_STYLE={
		style.name='Derivation Tree Type';
		style.id='cs3';
		text.font.name='Courier New';
		text.font.size.relative='90';
	}
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs4';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s2';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Page Number Small';
		style.id='cs5';
		text.font.name='Courier New';
		text.font.size='8';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs4';
}
<ROOT>
	<ELEMENT_ITER>
		TARGET_ETS={'#CUSTOM';'xs:%complexType';'xs:%simpleType';'xs:union'}
		SCOPE='advanced-location-rules'
		RULES={
			'(xs:%complexType|xs:%simpleType) -> .';
			'xs:%complexType -> xs:complexContent/(xs:extension|xs:restriction)',recursive;
			'xs:%complexType -> xs:simpleContent/(xs:extension|xs:restriction)',recursive;
			'xs:%simpleType -> (xs:list|xs:restriction|xs:union)',recursive;
			'xs:restriction -> xs:simpleType',recursive;
			'(xs:%extensionType|xs:%restrictionType|xs:restriction) -> {(typeQName = getAttrQNameValue("base")) != null ? 
{ 
  type = findElementByKey (
           "xsd-types", 
           hasServiceAttr ("redefined") ?
             HashKey (typeQName, getServiceAttr ("redefined")) : typeQName,
           BooleanQuery (checkElementByKey (
             "main-xmls",
             getXMLDocument().id,
             getElementParam("$mainXML")
           ))
         );

  Enum (type != null ? type : 
    CustomElement (typeQName.toXMLName (Array (rootElement, contextElement)))
  )
}}::(#CUSTOM|xs:complexType|xs:simpleType)',recursive;
			'xs:list -> {(typeQName = getAttrQNameValue("itemType")) != null ? 
{ 
  type = findElementByKey ("xsd-types", typeQName,
           BooleanQuery (checkElementByKey (
             "main-xmls",
             getXMLDocument().id,
             getElementParam("$mainXML")
           ))
         );

  Enum (type != null ? type :
    CustomElement (typeQName.toXMLName (Array (rootElement, contextElement)))
  )
}}::(#CUSTOM|xs:simpleType)',recursive;
			'xs:list -> xs:simpleType',recursive;
		}
		FILTER='! instanceOf("xs:%localSimpleType") ||
contextElement == iterator.contextElement'
		SORTING='reversed'
		<BODY>
			<FOLDER>
				DESCR='first item'
				COND='iterator.isFirstItem && ! iterator.isLastItem'
				BREAK_PARENT_BLOCK='when-executed'
				FMT={
					text.style='cs3';
				}
				<BODY>
					<FOLDER>
						MATCHING_ET='#CUSTOM'
						BREAK_PARENT_BLOCK='when-executed'
						FMT={
							par.option.nowrap='true';
						}
						<BODY>
							<AREA_SEC>
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<DATA_CTRL>
												ELEMENT_VALUE
											</DATA_CTRL>
											<DELIMITER>
											</DELIMITER>
											<SS_CALL_CTRL>
												SS_NAME='Derivation'
												PASSED_ELEMENT_EXPR='iterator.nextItem.toElement()'
												PASSED_ELEMENT_MATCHING_ETS={'xs:%complexType';'xs:%simpleType'}
												FMT={
													text.style='cs2';
												}
											</SS_CALL_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</BODY>
					</FOLDER>
					<SS_CALL>
						MATCHING_ET='xs:union'
						BREAK_PARENT_BLOCK='when-executed'
						SS_NAME='union'
					</SS_CALL>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<SS_CALL_CTRL>
										SS_NAME='Type Name'
									</SS_CALL_CTRL>
									<PANEL>
										COND='output.format.supportsPageRefs
&&
getBooleanParam("fmt.page.refs")
&&
findHyperTarget (Array (
  contextElement.id,
  Array ("detail", "xml-source-location")
)) != null'
										FMT={
											ctrl.size.width='166';
											ctrl.size.height='38.3';
											text.style='cs5';
											txtfl.delimiter.type='none';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<DELIMITER>
													</DELIMITER>
													<TEXT_CTRL>
														TEXT='['
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
																'Array ("detail", "xml-source-location")';
															}
														</DOC_HLINK>
													</DATA_CTRL>
													<TEXT_CTRL>
														TEXT=']'
													</TEXT_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
									<DELIMITER>
									</DELIMITER>
									<SS_CALL_CTRL>
										SS_NAME='Derivation'
										PASSED_ELEMENT_EXPR='iterator.nextItem.toElement()'
										PASSED_ELEMENT_MATCHING_ETS={'xs:%complexType';'xs:%simpleType'}
										FMT={
											text.style='cs2';
										}
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</FOLDER>
			<AREA_SEC>
				DESCR='middle item'
				COND='! iterator.isFirstItem && ! iterator.isLastItem'
				BREAK_PARENT_BLOCK='when-executed'
				FMT={
					text.style='cs3';
					par.option.nowrap='true';
				}
				<AREA>
					<CTRL_GROUP>
						FMT={
							txtfl.delimiter.type='none';
						}
						<CTRLS>
							<DATA_CTRL>
								FORMULA='dup("  ", iterator.itemNo-2) + dup("  ", iterator.itemNo-1)'
								FMT={
									text.option.nbsps='true';
								}
							</DATA_CTRL>
							<IMAGE_CTRL>
								IMAGE_TYPE='file-image'
								FILE='../../images/inherit.gif'
								OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
							</IMAGE_CTRL>
							<SS_CALL_CTRL>
								SS_NAME='Type Name'
							</SS_CALL_CTRL>
							<PANEL>
								COND='output.format.supportsPageRefs
&&
getBooleanParam("fmt.page.refs")
&&
findHyperTarget (Array (
  contextElement.id,
  Array ("detail", "xml-source-location")
)) != null'
								FMT={
									ctrl.size.width='166';
									text.style='cs5';
									txtfl.delimiter.type='none';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<DELIMITER>
											</DELIMITER>
											<TEXT_CTRL>
												TEXT='['
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
														'Array ("detail", "xml-source-location")';
													}
												</DOC_HLINK>
											</DATA_CTRL>
											<TEXT_CTRL>
												TEXT=']'
											</TEXT_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
							<DELIMITER>
							</DELIMITER>
							<SS_CALL_CTRL>
								SS_NAME='Derivation'
								PASSED_ELEMENT_EXPR='iterator.nextItem.toElement()'
								PASSED_ELEMENT_MATCHING_ETS={'xs:%complexType';'xs:%simpleType'}
								FMT={
									text.style='cs2';
								}
							</SS_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				DESCR='last item'
				COND='iterator.isLastItem && ! iterator.isFirstItem'
				FMT={
					text.style='cs3';
					par.option.nowrap='true';
				}
				<AREA>
					<CTRL_GROUP>
						FMT={
							txtfl.delimiter.type='none';
							par.margin.bottom='0';
						}
						<CTRLS>
							<DATA_CTRL>
								FORMULA='dup("  ", iterator.itemNo-2) + dup("  ", iterator.itemNo-1)'
								FMT={
									text.option.nbsps='true';
								}
							</DATA_CTRL>
							<IMAGE_CTRL>
								IMAGE_TYPE='file-image'
								FILE='../../images/inherit.gif'
								OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
							</IMAGE_CTRL>
							<SS_CALL_CTRL>
								MATCHING_ETS={'xs:complexType';'xs:simpleType'}
								SS_NAME='Type Name'
								FMT={
									text.style='cs3';
									text.font.style.bold='true';
								}
							</SS_CALL_CTRL>
							<TEXT_CTRL>
								MATCHING_ET='xs:%localComplexType'
								TEXT='complexType'
								FMT={
									text.font.style.bold='true';
									text.hlink.fmt='none';
								}
								<DOC_HLINK>
									COND='getBooleanParam("$detailLink")'
									TITLE_EXPR='getBooleanParam("show.linkTitle") ? "anonymous complexType" : ""'
									HKEYS={
										'contextElement.id';
										'"detail"';
									}
								</DOC_HLINK>
								<DOC_HLINK>
									COND='getBooleanParam("$xmlSourceLink")'
									TITLE_EXPR='getBooleanParam("show.linkTitle") ? "anonymous complexType" : ""'
									HKEYS={
										'contextElement.id';
										'"xml-source-location"';
									}
								</DOC_HLINK>
							</TEXT_CTRL>
							<TEXT_CTRL>
								MATCHING_ET='xs:%localSimpleType'
								TEXT='simpleType'
								FMT={
									text.font.style.bold='true';
									text.hlink.fmt='none';
								}
								<DOC_HLINK>
									COND='getBooleanParam("$detailLink")'
									TITLE_EXPR='getBooleanParam("show.linkTitle") ? "anonymous simpleType" : ""'
									HKEYS={
										'contextElement.id';
										'"detail"';
									}
								</DOC_HLINK>
								<DOC_HLINK>
									COND='getBooleanParam("$xmlSourceLink")'
									TITLE_EXPR='getBooleanParam("show.linkTitle") ? "anonymous simpleType" : ""'
									HKEYS={
										'contextElement.id';
										'"xml-source-location"';
									}
								</DOC_HLINK>
							</TEXT_CTRL>
							<PANEL>
								COND='output.format.supportsPageRefs
&&
getBooleanParam("fmt.page.refs")
&&
(
  getBooleanParam("$detailLink") &&
  findHyperTarget (Array (contextElement.id, "detail")) != null
  ||
  getBooleanParam("$xmlSourceLink") &&
  findHyperTarget (Array (contextElement.id, "xml-source-location")) != null
)'
								FMT={
									ctrl.size.width='166';
									text.style='cs5';
									txtfl.delimiter.type='none';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<DELIMITER>
											</DELIMITER>
											<TEXT_CTRL>
												TEXT='['
											</TEXT_CTRL>
											<DATA_CTRL>
												DOCFIELD='page-htarget'
												FMT={
													ctrl.option.noHLinkFmt='true';
													text.hlink.fmt='none';
												}
												<DOC_HLINK>
													COND='getBooleanParam("$detailLink")'
													HKEYS={
														'contextElement.id';
														'"detail"';
													}
												</DOC_HLINK>
												<DOC_HLINK>
													COND='getBooleanParam("$xmlSourceLink")'
													HKEYS={
														'contextElement.id';
														'"xml-source-location"';
													}
												</DOC_HLINK>
											</DATA_CTRL>
											<TEXT_CTRL>
												TEXT=']'
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
		<HEADER>
			<AREA_SEC>
				FMT={
					par.style='s1';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Type Derivation Tree'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</ELEMENT_ITER>
</ROOT>
<STOCK_SECTIONS>
	<FOLDER>
		SS_NAME='Derivation'
		MATCHING_ETS={'xs:%complexType';'xs:%simpleType'}
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='space';
		}
		<BODY>
			<AREA_SEC>
				COND='hasServiceAttr ("redefinition")'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='redefinition by'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<FOLDER>
				MATCHING_ET='xs:%complexType'
				BREAK_PARENT_BLOCK='when-executed'
				<BODY>
					<AREA_SEC>
						CONTEXT_ELEMENT_EXPR='findChild ("xs:simpleContent | xs:complexContent")'
						MATCHING_ETS={'xs:complexContent';'xs:simpleContent'}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										COND='hasChild ("xs:restriction")'
										TEXT='restriction'
									</TEXT_CTRL>
									<TEXT_CTRL>
										COND='hasChild ("xs:extension")'
										TEXT='extension'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</FOLDER>
			<SS_CALL>
				MATCHING_ET='xs:%simpleType'
				SS_NAME='Derivation (of simpleType)'
			</SS_CALL>
		</BODY>
		<HEADER>
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='('
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
								TEXT=')'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</FOOTER>
	</FOLDER>
	<ELEMENT_ITER>
		SS_NAME='Derivation (of simpleType)'
		MATCHING_ET='xs:%simpleType'
		TARGET_ETS={'xs:list';'xs:restriction'}
		SCOPE='simple-location-rules'
		RULES={
			'* -> (xs:list|xs:restriction)';
		}
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='space';
		}
		<BODY>
			<AREA_SEC>
				MATCHING_ET='xs:restriction'
				BREAK_PARENT_BLOCK='when-executed'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='restriction'
							</TEXT_CTRL>
							<DELIMITER>
								FMT={
									txtfl.delimiter.type='text';
									txtfl.delimiter.text=' of ';
								}
							</DELIMITER>
							<SS_CALL_CTRL>
								COND='getAttrValue("base") == null'
								SS_NAME='Derivation (of simpleType)'
								PASSED_ELEMENT_EXPR='findChild("xs:simpleType")'
								PASSED_ELEMENT_MATCHING_ET='xs:%localSimpleType'
							</SS_CALL_CTRL>
							<DELIMITER>
								FMT={
									txtfl.delimiter.type='none';
								}
							</DELIMITER>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				MATCHING_ET='xs:list'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='list'
							</TEXT_CTRL>
							<DELIMITER>
								FMT={
									txtfl.delimiter.type='text';
									txtfl.delimiter.text=' of ';
								}
							</DELIMITER>
							<SS_CALL_CTRL>
								COND='getAttrValue("itemType") == null'
								SS_NAME='Derivation (of simpleType)'
								PASSED_ELEMENT_EXPR='findChild("xs:simpleType")'
								PASSED_ELEMENT_MATCHING_ET='xs:%localSimpleType'
							</SS_CALL_CTRL>
							<DELIMITER>
								FMT={
									txtfl.delimiter.type='none';
								}
							</DELIMITER>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</ELEMENT_ITER>
	<TEMPLATE_CALL>
		SS_NAME='Link Title'
		TEMPLATE_FILE='../component/componentLinkTitle.tpl'
	</TEMPLATE_CALL>
	<ELEMENT_ITER>
		SS_NAME='simpleType (within union)'
		MATCHING_ET='xs:%simpleType'
		TARGET_ETS={'xs:list';'xs:restriction';'xs:union'}
		SCOPE='simple-location-rules'
		RULES={
			'* -> (xs:list|xs:restriction|xs:union)';
		}
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='space';
		}
		<BODY>
			<FOLDER>
				MATCHING_ET='xs:restriction'
				BREAK_PARENT_BLOCK='when-executed'
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
											text.style='cs2';
										}
									</TEXT_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='Type By QName'
										PARAMS_EXPR='Array (getAttrQNameValue("base"))'
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='none';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='restriction of '
										FMT={
											text.style='cs2';
										}
									</TEXT_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='simpleType (within union)'
										PASSED_ELEMENT_EXPR='findChild("xs:simpleType")'
										PASSED_ELEMENT_MATCHING_ET='xs:%localSimpleType'
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</FOLDER>
			<FOLDER>
				MATCHING_ET='xs:list'
				BREAK_PARENT_BLOCK='when-executed'
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
											text.style='cs2';
										}
									</TEXT_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='Type By QName'
										PARAMS_EXPR='Array (getAttrQNameValue("itemType"))'
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='none';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='list of '
										FMT={
											text.style='cs2';
										}
									</TEXT_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='simpleType (within union)'
										PASSED_ELEMENT_EXPR='findChild("xs:simpleType")'
										PASSED_ELEMENT_MATCHING_ET='xs:%localSimpleType'
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</FOLDER>
			<SS_CALL>
				MATCHING_ET='xs:union'
				SS_NAME='union'
			</SS_CALL>
		</BODY>
	</ELEMENT_ITER>
	<FOLDER>
		SS_NAME='Type By QName'
		DESCR='param: QName of the type'
		<BODY>
			<AREA_SEC>
				DESCR='if type can be resolved
-- 
see "New Context Element"'
				CONTEXT_ELEMENT_EXPR='findElementByKey (
  "xsd-types",
  stockSection.param.toQName(),
  BooleanQuery (
    checkElementByKey (
      "main-xmls",
      getXMLDocument().id,
      getElementParam("$mainXML")
    )
  )
)'
				MATCHING_ETS={'xs:complexType';'xs:simpleType'}
				BREAK_PARENT_BLOCK='when-executed'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								COND='! getAttrBooleanValue ("abstract")'
								FORMULA='stockSection.param.toQName().toXMLName (
  Array (getElementParam("$xmlContext"), contextElement))'
								<DOC_HLINK>
									TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("Link Title") : ""'
									HKEYS={
										'contextElement.id';
										'Array ("detail", "xml-source-location")';
									}
								</DOC_HLINK>
							</DATA_CTRL>
							<DATA_CTRL>
								COND='getAttrBooleanValue ("abstract")'
								FORMULA='stockSection.param.toQName().toXMLName (
  Array (getElementParam("$xmlContext"), contextElement))'
								FMT={
									text.font.style.italic='true';
								}
								<DOC_HLINK>
									TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("Link Title") : ""'
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
				DESCR='otherwise, the type cannot be resolved'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								FORMULA='stockSection.param.toQName().toXMLName (
  Array (getElementParam("$xmlContext"), contextElement))'
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</FOLDER>
	<AREA_SEC>
		SS_NAME='Type Name'
		DESCR='prints the XML (qualified or local) name of a global type component (passed in the stock-section context element)'
		<AREA>
			<CTRL_GROUP>
				FMT={
					txtfl.delimiter.type='none';
				}
				<CTRLS>
					<DATA_CTRL>
						COND='! getAttrBooleanValue ("abstract")'
						FORMULA='toXMLName (
  findAncestor ("xs:schema").getServiceAttr("targetNamespace").toString(),
  getAttrStringValue("name"),
  Array (getElementParam("$xmlContext"), contextElement)
)'
						<DOC_HLINK>
							COND='contextElement.id != rootElement.id ||
getBooleanParam("$detailLink")'
							TITLE_EXPR='getBooleanParam("show.linkTitle") ? callStockSection("Link Title") : ""'
							HKEYS={
								'contextElement.id';
								'"detail"';
							}
						</DOC_HLINK>
						<DOC_HLINK>
							COND='contextElement.id != rootElement.id ||
getBooleanParam("$xmlSourceLink")'
							TITLE_EXPR='getBooleanParam("show.linkTitle") ? callStockSection("Link Title") : ""'
							HKEYS={
								'contextElement.id';
								'"xml-source-location"';
							}
						</DOC_HLINK>
					</DATA_CTRL>
					<DATA_CTRL>
						COND='getAttrBooleanValue ("abstract")'
						FORMULA='toXMLName (
  findAncestor ("xs:schema").getServiceAttr("targetNamespace").toString(),
  getAttrStringValue("name"),
  Array (getElementParam("$xmlContext"), contextElement)
)'
						FMT={
							text.font.style.italic='true';
						}
						<DOC_HLINK>
							COND='contextElement.id != rootElement.id ||
getBooleanParam("$detailLink")'
							TITLE_EXPR='getBooleanParam("show.linkTitle") ? callStockSection("Link Title") : ""'
							HKEYS={
								'contextElement.id';
								'"detail"';
							}
						</DOC_HLINK>
						<DOC_HLINK>
							COND='contextElement.id != rootElement.id ||
getBooleanParam("$xmlSourceLink")'
							TITLE_EXPR='getBooleanParam("show.linkTitle") ? callStockSection("Link Title") : ""'
							HKEYS={
								'contextElement.id';
								'"xml-source-location"';
							}
						</DOC_HLINK>
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<FOLDER>
		SS_NAME='union'
		MATCHING_ET='xs:union'
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='text';
			txtfl.delimiter.text=' | ';
		}
		<BODY>
			<ATTR_ITER>
				SCOPE='attr-values'
				ATTR='memberTypes'
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<SS_CALL_CTRL>
										SS_NAME='Type By QName'
										PARAMS_EXPR='Array (iterator.value.toQName())'
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</ATTR_ITER>
			<ELEMENT_ITER>
				TARGET_ET='xs:%localSimpleType'
				SCOPE='simple-location-rules'
				RULES={
					'* -> xs:%localSimpleType';
				}
				<BODY>
					<SS_CALL>
						SS_NAME='simpleType (within union)'
					</SS_CALL>
				</BODY>
			</ELEMENT_ITER>
		</BODY>
		<HEADER>
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
						FMT={
							txtfl.delimiter.type='space';
						}
						<CTRLS>
							<TEXT_CTRL>
								TEXT='union of'
								FMT={
									text.style='cs2';
								}
							</TEXT_CTRL>
							<TEXT_CTRL>
								TEXT='('
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
								TEXT=')'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</FOOTER>
	</FOLDER>
</STOCK_SECTIONS>
CHECKSUM='sVpRsCnIoXvDOaHr?bThwHBSbsZ5PnbAFgsJsjUN8xo'
</DOCFLEX_TEMPLATE>