<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2005-10-13 03:37:00'
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
ROOT_ET='xs:%element'
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$mainXML';
		param.type='GOMElement';
		param.defaultValue.expr='findElementByKey ("main-xmls", getXMLDocument().id)';
	}
	PARAM={
		param.name='$nsURI';
		param.title='element namespace URI';
		param.description='The namespace to which this element belongs';
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
		param.title='number of usage locations';
		param.description='number of locations where this element is used (by reference)
or declared locally';
		param.type='integer';
		param.defaultValue.expr='countElementsByKey (
  "xsd-element-usage", contextElement.id
)';
		param.hidden='true';
	}
	PARAM={
		param.name='$elementType';
		param.title='element type component';
		param.description='this is either global or anonymous type or null (when type cannot be resolved)';
		param.type='GOMElement';
		param.defaultValue.expr='findElementByKey ("xsd-element-types", contextElement.id)';
	}
	PARAM={
		param.name='$elementTypeQName';
		param.title='element type qualified name';
		param.description='for an anonymous this will be null';
		param.type='Object';
		param.defaultValue.expr='elementType = getElementParam("$elementType");

elementType.instanceOf("#CUSTOM")
?
  adaptQName (elementType.value.toQName(), rootElement)
: 
  QName (
    elementType.findAncestor("xs:schema").getServiceAttr("targetNamespace").toString(),
    elementType.getAttrStringValue("name"),
    Enum (rootElement, elementType)
  )';
	}
	PARAM={
		param.name='$contentModelKey';
		param.title='map key for "xsd-content-model-attributes", "xsd-content-model-elements"';
		param.description='The key for "xsd-content-model-attributes" and "xsd-content-model-elements" maps to find items associated with this element';
		param.type='Object';
		param.defaultValue.expr='getElementParam("$elementType").id';
	}
	PARAM={
		param.name='$attributeCount';
		param.title='number of all attributes';
		param.description='total number of attributes declared for this component';
		param.type='integer';
		param.defaultValue.expr='countElementsByKey (
  "xsd-content-model-attributes",
  getParam("$contentModelKey"),
  BooleanQuery (
   ! instanceOf ("xs:anyAttribute") &&
   getAttrValue("use") != "prohibited"
  )
)';
		param.hidden='true';
	}
	PARAM={
		param.name='$attributeWildcardCount';
		param.title='number of all attr. wildcards';
		param.description='total number of attribute wildcards declared for this component';
		param.type='integer';
		param.defaultValue.expr='countElementsByKey (
  "xsd-content-model-attributes",
  getParam("$contentModelKey"),
  BooleanQuery (instanceOf ("xs:anyAttribute"))
)';
		param.hidden='true';
	}
	PARAM={
		param.name='$ownAttributeCount';
		param.title='number of attributes defined in this component';
		param.type='integer';
		param.defaultValue.expr='countElementsByKey (
  "xsd-content-model-attributes",
  getParam("$contentModelKey"),
  BooleanQuery (
    ! instanceOf ("xs:anyAttribute") &&
    getAttrValue("use") != "prohibited" &&
    findPredecessorByType("xs:%element|xs:complexType|xs:attributeGroup").id
    == rootElement.id
  )
)';
		param.hidden='true';
	}
	PARAM={
		param.name='$ownAttributeWildcardCount';
		param.title='number of attr. wildcards defined in this component';
		param.type='integer';
		param.defaultValue.expr='countElementsByKey (
  "xsd-content-model-attributes",
  getParam("$contentModelKey"),
  BooleanQuery (
    instanceOf ("xs:anyAttribute") &&
    findPredecessorByType("xs:%element|xs:complexType|xs:attributeGroup").id
    == rootElement.id
  )
)';
		param.hidden='true';
	}
	PARAM={
		param.name='$ownAttributeProhibitionCount';
		param.title='number of attr. prohibitions specified in this component';
		param.type='integer';
		param.defaultValue.expr='countElementsByKey (
  "xsd-content-model-attributes",
  getParam("$contentModelKey"),
  BooleanQuery (
    getAttrValue("use") == "prohibited" &&
    findPredecessorByType("xs:%element|xs:complexType|xs:attributeGroup").id
    == rootElement.id
  )
)';
		param.hidden='true';
	}
	PARAM={
		param.name='$elementCount';
		param.title='number of all content elements';
		param.description='total number of content elements declared for this component';
		param.type='integer';
		param.defaultValue.expr='countElementsByKey (
  "xsd-content-model-elements",
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
  "xsd-content-model-elements",
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
  "xsd-content-model-elements",
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
  "xsd-content-model-elements",
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
		param.name='doc.xsd.comp.profile';
		param.title='Component Profile';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.namespace';
		param.title='Namespace';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.type';
		param.title='Type';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.content';
		param.title='Content';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.abstract';
		param.title='Abstract';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.block';
		param.title='Block';
		param.group='true';
		param.type='enum';
		param.enum.values='any;non_default;none';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.block.value';
		param.title='Value';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.block.meaning';
		param.title='Meaning';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.final';
		param.title='Final';
		param.group='true';
		param.type='enum';
		param.enum.values='any;non_default;none';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.final.value';
		param.title='Value';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.final.meaning';
		param.title='Meaning';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.subst';
		param.title='Subst.Gr';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.subst.heads';
		param.title='Heads';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.subst.members';
		param.title='Members';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.nillable';
		param.title='Nillable';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.defined';
		param.title='Defined';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.includes';
		param.title='Includes';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.used';
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
		param.name='show.localElementExt';
		param.title='Local Element Extensions';
		param.type='boolean';
		param.defaultValue='true';
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
		style.name='Code';
		style.id='cs1';
		text.font.name='Courier New';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Code Smaller';
		style.id='cs2';
		text.font.name='Courier New';
		text.font.size='8';
	}
	CHAR_STYLE={
		style.name='Default Paragraph Font';
		style.id='cs3';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs4';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s1';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Page Number Small';
		style.id='cs5';
		text.font.name='Courier New';
		text.font.size='8';
	}
	CHAR_STYLE={
		style.name='Property Note';
		style.id='cs6';
		text.font.name='Tahoma';
		text.font.size='8';
		text.font.style.italic='true';
	}
	CHAR_STYLE={
		style.name='Property Title Font';
		style.id='cs7';
		text.font.size='8';
		text.font.style.bold='true';
	}
	CHAR_STYLE={
		style.name='Property Value Font';
		style.id='cs8';
		text.font.name='Verdana';
		text.font.size='8';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs4';
}
<ROOT>
	<AREA_SEC>
		COND='getBooleanParam("doc.xsd.comp.profile.namespace")'
		FMT={
			trow.cell.align.vert='Top';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						TEXT='Namespace:'
						FMT={
							text.style='cs7';
						}
					</TEXT_CTRL>
					<DELIMITER>
						FMT={
							text.style='cs1';
						}
					</DELIMITER>
					<DATA_CTRL>
						FORMULA='(ns = getParam("$nsURI")) != "" ? ns : "{no namespace}"'
						FMT={
							text.style='cs2';
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
		COND='getBooleanParam("doc.xsd.comp.profile.type")'
		FMT={
			trow.cell.align.vert='Top';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						TEXT='Type:'
						FMT={
							text.style='cs7';
						}
					</TEXT_CTRL>
					<DELIMITER>
						FMT={
							text.style='cs1';
						}
					</DELIMITER>
					<SS_CALL_CTRL>
						SS_NAME='Type Info'
						PASSED_ELEMENT_EXPR='getElementParam("$elementType")'
						PASSED_ELEMENT_MATCHING_ETS={'#CUSTOM';'xs:%complexType';'xs:%simpleType'}
						FMT={
							text.style='cs8';
						}
					</SS_CALL_CTRL>
					<PANEL>
						DESCR='when the type is inherited from the substitution group head element'
						COND='instanceOf ("xs:element") && getAttrValue("type") == null
&& ! hasChild ("xs:complexType | xs:simpleType")'
						CONTEXT_ELEMENT_EXPR='findElementByKey (
  "xsd-global-elements",
  getAttrQNameValue("substitutionGroup"),
  BooleanQuery (
    checkElementByKey (
      "main-xmls",
      getXMLDocument().id,
      getElementParam("$mainXML")
    )
  )
)'
						MATCHING_ET='xs:element'
						FMT={
							ctrl.size.width='237';
							ctrl.size.height='38.3';
							text.style='cs8';
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
										TEXT='inherited from'
									</TEXT_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='Component Name'
										FMT={
											text.style='cs2';
										}
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
		COND='getBooleanParam("doc.xsd.comp.profile.content")'
		FMT={
			trow.cell.align.vert='Top';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						TEXT='Content:'
						FMT={
							text.style='cs7';
						}
					</TEXT_CTRL>
					<DELIMITER>
						FMT={
							text.style='cs1';
						}
					</DELIMITER>
					<PANEL>
						FMT={
							ctrl.size.width='434.3';
							text.style='cs8';
						}
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='text';
									txtfl.delimiter.text=', ';
								}
								<CTRLS>
									<TEMPLATE_CALL_CTRL>
										TEMPLATE_FILE='../content/contentType.tpl'
									</TEMPLATE_CALL_CTRL>
									<PANEL>
										COND='getIntParam("$attributeCount") > 0'
										FMT={
											ctrl.size.width='200.3';
											ctrl.size.height='38.3';
											txtfl.delimiter.type='nbsp';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<DATA_CTRL>
														FORMULA='getIntParam("$attributeCount")'
													</DATA_CTRL>
													<TEXT_CTRL>
														COND='getIntParam("$attributeCount") == 1'
														TEXT='attribute'
														<DOC_HLINK>
															HKEYS={
																'contextElement.id';
																'"attribute-detail"';
															}
														</DOC_HLINK>
													</TEXT_CTRL>
													<TEXT_CTRL>
														COND='getIntParam("$attributeCount") > 1'
														TEXT='attributes'
														<DOC_HLINK>
															HKEYS={
																'contextElement.id';
																'"attribute-detail"';
															}
														</DOC_HLINK>
													</TEXT_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
									<PANEL>
										COND='getIntParam("$attributeWildcardCount") > 0'
										FMT={
											ctrl.size.width='83.3';
											ctrl.size.height='38.3';
											txtfl.delimiter.type='nbsp';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='attr.'
													</TEXT_CTRL>
													<TEXT_CTRL>
														TEXT='wildcard'
														<DOC_HLINK>
															DESCR='try to link to wildcard\'s detail by this component;
otherwise, link to wildcard\'s details by its parent component (where the attribute is defined);
if not found still, link to the XML schema source location, where this wildcard is defined'
															CONTEXT_ELEMENT_EXPR='findElementByKey (
  "xsd-content-model-attributes",
  getParam("$contentModelKey"),
  BooleanQuery (instanceOf ("xs:anyAttribute"))
)'
															MATCHING_ET='xs:anyAttribute'
															TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection ("Wildcard Info") : ""'
															HKEYS={
																'contextElement.id';
																'Array ("local", "def", "xml-source-location")';
																'Array (rootElement.id, NoKey())';
															}
														</DOC_HLINK>
													</TEXT_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
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
  "xsd-content-model-elements",
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
	<FOLDER>
		DESCR='case of global element'
		MATCHING_ET='xs:element'
		<BODY>
			<AREA_SEC>
				COND='getBooleanParam("doc.xsd.comp.profile.abstract")
&&
getAttrBooleanValue("abstract")'
				FMT={
					trow.cell.align.vert='Top';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Abstract:'
								FMT={
									text.style='cs7';
									text.option.renderNLs='true';
								}
							</TEXT_CTRL>
							<DELIMITER>
								FMT={
									text.style='cs1';
								}
							</DELIMITER>
							<TEXT_CTRL>
								TEXT='(may not be used directly in instance XML documents)'
								FMT={
									text.style='cs6';
								}
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				COND='! hasParamValue("doc.xsd.comp.profile.block", "none")
&&
(
  getAttrValue("block") != null
  ||
  hasParamValue("doc.xsd.comp.profile.block", "any") &&
    findAncestor("xs:schema").getAttrValue ("blockDefault") != null
)'
				FMT={
					trow.cell.align.vert='Top';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Block:'
								FMT={
									text.style='cs7';
									text.option.renderNLs='true';
								}
							</TEXT_CTRL>
							<DELIMITER>
								FMT={
									text.style='cs1';
								}
							</DELIMITER>
							<TEMPLATE_CALL_CTRL>
								TEMPLATE_FILE='elementBlockAttrInfo.tpl'
								PASSED_PARAMS={
									'$profile.block.value','getBooleanParam("doc.xsd.comp.profile.block.value")';
									'$profile.block.meaning','getBooleanParam("doc.xsd.comp.profile.block.meaning")';
								}
								FMT={
									text.style='cs8';
								}
							</TEMPLATE_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				COND='! hasParamValue("doc.xsd.comp.profile.final", "none")
&&
(
  getAttrValue("final") != null
  ||
  hasParamValue("doc.xsd.comp.profile.final", "any") &&
    findAncestor("xs:schema").getAttrValue ("finalDefault") != null
)'
				FMT={
					trow.cell.align.vert='Top';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Final:'
								FMT={
									text.style='cs7';
									text.option.renderNLs='true';
								}
							</TEXT_CTRL>
							<DELIMITER>
								FMT={
									text.style='cs1';
								}
							</DELIMITER>
							<TEMPLATE_CALL_CTRL>
								TEMPLATE_FILE='elementFinalAttrInfo.tpl'
								PASSED_PARAMS={
									'$profile.final.value','getBooleanParam("doc.xsd.comp.profile.final.value")';
									'$profile.final.meaning','getBooleanParam("doc.xsd.comp.profile.final.meaning")';
								}
								FMT={
									text.style='cs8';
								}
							</TEMPLATE_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				COND='getBooleanParam("doc.xsd.comp.profile.subst")
&&
(
  checkElementsByKey (
    "xsd-substitution-group-members", contextElement.id
  ) 
  ||
  getAttrValue("substitutionGroup") != ""
)'
				FMT={
					trow.cell.align.vert='Top';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Subst.Gr:'
								FMT={
									text.style='cs7';
									text.option.renderNLs='true';
								}
							</TEXT_CTRL>
							<DELIMITER>
								FMT={
									text.style='cs1';
								}
							</DELIMITER>
							<TEMPLATE_CALL_CTRL>
								TEMPLATE_FILE='substitutionGroupInfo.tpl'
								PASSED_PARAMS={
									'$list.heads','getBooleanParam("doc.xsd.comp.profile.subst.heads")';
									'$list.members','getBooleanParam("doc.xsd.comp.profile.subst.members")';
								}
								FMT={
									text.style='cs8';
								}
							</TEMPLATE_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				COND='getBooleanParam("doc.xsd.comp.profile.nillable")
&&
getAttrBooleanValue("nillable")'
				FMT={
					trow.cell.align.vert='Top';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Nillable:'
								FMT={
									text.style='cs7';
									text.option.renderNLs='true';
								}
							</TEXT_CTRL>
							<DELIMITER>
								FMT={
									text.style='cs1';
								}
							</DELIMITER>
							<TEXT_CTRL>
								TEXT='(can be declared as nil using xsi:nil attribute in instance XML documents)'
								FMT={
									text.style='cs6';
								}
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				DESCR='in case of global element'
				COND='getBooleanParam("doc.xsd.comp.profile.defined")'
				FMT={
					trow.cell.align.vert='Top';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Defined:'
								FMT={
									text.style='cs7';
								}
							</TEXT_CTRL>
							<DELIMITER>
								FMT={
									text.style='cs1';
								}
							</DELIMITER>
							<PANEL>
								FMT={
									ctrl.size.width='315.8';
									ctrl.size.height='119.3';
									text.style='cs8';
								}
								<AREA>
									<CTRL_GROUP>
										FMT={
											row.indent.block='true';
										}
										<CTRLS>
											<TEXT_CTRL>
												TEXT='globally'
											</TEXT_CTRL>
											<PANEL>
												COND='! hasParamValue("$scope", "schema")'
												FMT={
													ctrl.size.width='150.8';
													ctrl.size.height='38.3';
												}
												<AREA>
													<CTRL_GROUP>
														<CTRLS>
															<TEXT_CTRL>
																TEXT='in'
															</TEXT_CTRL>
															<SS_CALL_CTRL>
																CONTEXT_ELEMENT_EXPR='findAncestor("xs:schema")'
																MATCHING_ET='xs:schema'
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
													ctrl.size.width='286.5';
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
																		'Array ("xml-source", "xml-source-location")';
																	}
																</DOC_HLINK>
															</TEXT_CTRL>
															<PANEL>
																COND='output.format.supportsPageRefs && 
getBooleanParam("fmt.page.refs")'
																FMT={
																	ctrl.size.width='184.5';
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
																					text.style='cs5';
																				}
																			</TEXT_CTRL>
																			<DATA_CTRL>
																				DOCFIELD='page-htarget'
																				FMT={
																					ctrl.option.noHLinkFmt='true';
																					text.style='cs5';
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
																					text.style='cs5';
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
		</BODY>
	</FOLDER>
	<FOLDER>
		DESCR='case of local element'
		MATCHING_ET='xs:%localElement'
		<BODY>
			<AREA_SEC>
				COND='! hasParamValue("doc.xsd.comp.profile.block", "none")
&&
{
  blockValue = getAttrValue("block");

  // When this element is a unifier representing > 1
  // local element components,
  // check if the value of \'block\' attribute is the same
  // at all locations.

  getIntParam("$usageCount") > 1
  &&
  countElementsByKey (
    "xsd-element-usage",
    contextElement.id,
    BooleanQuery (
      getAttrValue("block") == blockValue
    )
  ) != getIntParam("$usageCount") ? {

    setVar ("variesByLocation", true);
    true

  } : {

    blockValue != null
    ||
    hasParamValue("doc.xsd.comp.profile.block", "any") &&
      findAncestor("xs:schema").getAttrValue ("blockDefault") != null ?
    {
      setVar ("variesByLocation", false);
      true;
    } : false
  }
}'
				FMT={
					trow.cell.align.vert='Top';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Block:'
								FMT={
									text.style='cs7';
									text.option.renderNLs='true';
								}
							</TEXT_CTRL>
							<DELIMITER>
								FMT={
									text.style='cs1';
								}
							</DELIMITER>
							<TEMPLATE_CALL_CTRL>
								TEMPLATE_FILE='elementBlockAttrInfo.tpl'
								PASSED_PARAMS={
									'$variesByLocation','getBooleanVar ("variesByLocation")';
									'$profile.block.value','getBooleanParam("doc.xsd.comp.profile.block.value")';
									'$profile.block.meaning','getBooleanParam("doc.xsd.comp.profile.block.meaning")';
								}
								FMT={
									text.style='cs8';
								}
							</TEMPLATE_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				COND='getBooleanParam("doc.xsd.comp.profile.nillable")
&&
{
  nillable = getAttrBooleanValue("nillable");

  // When this element is a unifier representing > 1
  // local element components,
  // check if the value of \'nillable\' attribute is the same
  // at all locations

  getIntParam("$usageCount") > 1
  &&
  countElementsByKey (
    "xsd-element-usage",
    contextElement.id,
    BooleanQuery (
      getAttrBooleanValue("nillable") == nillable
    )
  ) != getIntParam("$usageCount") ? {

    setVar ("variesByLocation", true);
    true

  } : {
    nillable ?
    {
      setVar ("variesByLocation", false);
      true;
    } : false
  }
}'
				FMT={
					trow.cell.align.vert='Top';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Nillable:'
								FMT={
									text.style='cs7';
									text.option.renderNLs='true';
								}
							</TEXT_CTRL>
							<DELIMITER>
								FMT={
									text.style='cs1';
								}
							</DELIMITER>
							<PANEL>
								FMT={
									ctrl.size.width='353.3';
									text.style='cs8';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<PANEL>
												COND='getBooleanVar ("variesByLocation")'
												FMT={
													ctrl.size.width='109.5';
													ctrl.size.height='38.3';
												}
												<AREA>
													<CTRL_GROUP>
														<CTRLS>
															<TEXT_CTRL>
																TEXT='???'
																FMT={
																	text.style='cs2';
																}
															</TEXT_CTRL>
															<TEXT_CTRL>
																TEXT='(varies by location)'
																FMT={
																	text.style='cs6';
																}
															</TEXT_CTRL>
														</CTRLS>
													</CTRL_GROUP>
												</AREA>
											</PANEL>
											<TEXT_CTRL>
												COND='! getBooleanVar ("variesByLocation")'
												TEXT='(can be declared as nil using xsi:nil attribute in instance XML documents)'
												FMT={
													text.style='cs6';
												}
											</TEXT_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				DESCR='in case of local element'
				COND='getBooleanParam("doc.xsd.comp.profile.defined")'
				FMT={
					trow.cell.align.vert='Top';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Defined:'
								FMT={
									text.style='cs7';
								}
							</TEXT_CTRL>
							<DELIMITER>
								FMT={
									text.style='cs1';
								}
							</DELIMITER>
							<SS_CALL_CTRL>
								SS_NAME='Defined Locally At'
								FMT={
									text.style='cs8';
								}
							</SS_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</FOLDER>
	<AREA_SEC>
		COND='getBooleanParam("doc.xsd.comp.profile.includes") &&
{
 count = getIntParam("$ownAttributeCount") +
         getIntParam("$ownAttributeWildcardCount") +
         getIntParam("$ownElementCount") +
         getIntParam("$ownElementWildcardCount");

 count > 0 ||
 getIntParam("$ownAttributeProhibitionCount") > 0
 ? { setVar ("count", count); true } : false;
}'
		FMT={
			trow.cell.align.vert='Top';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						TEXT='Includes:'
						FMT={
							text.style='cs7';
						}
					</TEXT_CTRL>
					<DELIMITER>
						FMT={
							text.style='cs1';
						}
					</DELIMITER>
					<PANEL>
						FMT={
							ctrl.size.width='439.5';
							text.style='cs8';
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
										COND='getIntParam("$ownAttributeCount") > 0'
										FMT={
											ctrl.size.width='212.3';
											ctrl.size.height='38.3';
											txtfl.delimiter.type='nbsp';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<DATA_CTRL>
														COND='getIntParam("$ownAttributeCount") > 0'
														FORMULA='getIntParam("$ownAttributeCount")'
													</DATA_CTRL>
													<TEXT_CTRL>
														COND='getIntParam("$ownAttributeCount") == 1'
														TEXT='attribute'
														<DOC_HLINK>
															HKEYS={
																'contextElement.id';
																'"attribute-def"';
															}
														</DOC_HLINK>
													</TEXT_CTRL>
													<TEXT_CTRL>
														COND='getIntParam("$ownAttributeCount") > 1'
														TEXT='attributes'
														<DOC_HLINK>
															HKEYS={
																'contextElement.id';
																'"attribute-def"';
															}
														</DOC_HLINK>
													</TEXT_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
									<PANEL>
										COND='getIntParam("$ownAttributeWildcardCount") > 0'
										FMT={
											ctrl.size.width='80.3';
											ctrl.size.height='38.3';
											txtfl.delimiter.type='nbsp';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='attr.'
													</TEXT_CTRL>
													<TEXT_CTRL>
														TEXT='wildcard'
														<DOC_HLINK>
															HKEYS={
																'contextElement.id';
																'"attribute-wildcard-def"';
															}
														</DOC_HLINK>
													</TEXT_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
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
									<PANEL>
										COND='getIntParam("$ownAttributeProhibitionCount") > 0'
										FMT={
											ctrl.size.width='288';
											ctrl.size.height='38.3';
											txtfl.delimiter.type='nbsp';
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
													<DATA_CTRL>
														FORMULA='getIntParam("$ownAttributeProhibitionCount")'
													</DATA_CTRL>
													<TEXT_CTRL>
														TEXT='attr.'
													</TEXT_CTRL>
													<TEXT_CTRL>
														COND='getIntParam("$ownAttributeProhibitionCount") == 1'
														TEXT='probition'
														<DOC_HLINK>
															HKEYS={
																'contextElement.id';
																'"attribute-prohibition"';
															}
														</DOC_HLINK>
													</TEXT_CTRL>
													<TEXT_CTRL>
														COND='getIntParam("$ownAttributeProhibitionCount") > 1'
														TEXT='prohibitions'
														<DOC_HLINK>
															HKEYS={
																'contextElement.id';
																'"attribute-prohibition"';
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
	<FOLDER>
		DESCR='in case of global element only'
		COND='getBooleanParam("doc.xsd.comp.profile.used")'
		MATCHING_ET='xs:element'
		<BODY>
			<AREA_SEC>
				COND='getIntParam("$usageCount") == 0'
				BREAK_PARENT_BLOCK='when-executed'
				FMT={
					trow.cell.align.vert='Top';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Used:'
								FMT={
									text.style='cs7';
								}
							</TEXT_CTRL>
							<DELIMITER>
								FMT={
									text.style='cs1';
								}
							</DELIMITER>
							<TEXT_CTRL>
								TEXT='never'
								FMT={
									text.style='cs8';
								}
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				FMT={
					trow.cell.align.vert='Top';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Used:'
								FMT={
									text.style='cs7';
								}
							</TEXT_CTRL>
							<DELIMITER>
								FMT={
									text.style='cs1';
								}
							</DELIMITER>
							<PANEL>
								FMT={
									ctrl.size.width='209.3';
									text.style='cs8';
								}
								<AREA>
									<CTRL_GROUP>
										FMT={
											row.indent.block='true';
										}
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
	<TEMPLATE_CALL>
		SS_NAME='Component Name'
		DESCR='prints the qualified name of any global schema component or local element (passed as the stock-section context element)'
		TEMPLATE_FILE='../component/componentName.tpl'
		PASSED_PARAMS={
			'$xmlContexts','Array (rootElement, contextElement)';
			'show.localElementExt','"never"';
		}
		FMT={
			sec.outputStyle='text-par';
		}
	</TEMPLATE_CALL>
	<FOLDER>
		SS_NAME='Defined Locally At'
		MATCHING_ET='xs:%localElement'
		FMT={
			sec.outputStyle='text-par';
		}
		<BODY>
			<FOLDER>
				DESCR='if the element is defined at multiple locations'
				COND='getIntParam("$usageCount") > 1'
				BREAK_PARENT_BLOCK='when-executed'
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='locally at'
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='getIntParam("$usageCount")'
									</DATA_CTRL>
									<TEXT_CTRL>
										COND='getIntParam("$usageCount") > 1'
										TEXT='locations'
										<DOC_HLINK>
											HKEYS={
												'contextElement.id';
												'"def-locations"';
											}
										</DOC_HLINK>
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<ELEMENT_ITER>
						COND='! hasParamValue("$scope", "schema")'
						TARGET_ET='xs:schema'
						SCOPE='advanced-location-rules'
						RULES={
							'* -> {findElementsByKey (
  "xsd-element-usage", contextElement.id
)}::xs:%element/{Enum (findAncestor("xs:schema"))}::xs:schema';
						}
						SORTING='by-compound-key'
						SORTING_KEY={
							{expr='getXMLDocument().getAttrValue("xmlName")',ascending};
							{expr='getServiceAttr("embeddedSchemaNo")',ascending};
						}
						FMT={
							txtfl.delimiter.type='text';
							txtfl.delimiter.text=', ';
						}
						<BODY>
							<AREA_SEC>
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<SS_CALL_CTRL>
												SS_NAME='Schema Name'
											</SS_CALL_CTRL>
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
												TEXT='in '
											</TEXT_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</HEADER>
					</ELEMENT_ITER>
				</BODY>
			</FOLDER>
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='locally'
								<DOC_HLINK>
									HKEYS={
										'contextElement.id';
										'"def-locations"';
									}
								</DOC_HLINK>
								<DOC_HLINK>
									HKEYS={
										'contextElement.id';
										'"def"';
									}
								</DOC_HLINK>
							</TEXT_CTRL>
							<TEXT_CTRL>
								TEXT='within'
							</TEXT_CTRL>
							<PANEL>
								COND='getIntParam("$usageCount") == 1'
								CONTEXT_ELEMENT_EXPR='findAncestor("xs:%element|xs:complexType|xs:group")'
								MATCHING_ETS={'xs:%element';'xs:complexType';'xs:group'}
								FMT={
									ctrl.size.width='287.3';
									ctrl.size.height='38.3';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<SS_CALL_CTRL>
												SS_NAME='Component Name'
												FMT={
													text.style='cs2';
												}
											</SS_CALL_CTRL>
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
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
							<PANEL>
								COND='output.format.supportsPageRefs
&&
getBooleanParam("fmt.page.refs")
&&
findHyperTarget (Array (
  contextElement.id,
  Array ("def", "xml-source-location")
)) != null'
								FMT={
									ctrl.size.width='147';
									ctrl.size.height='38.3';
									text.style='cs5';
									txtfl.delimiter.type='none';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
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
														'Array ("def", "xml-source-location")';
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
							<PANEL>
								COND='! hasParamValue("$scope", "schema")'
								FMT={
									ctrl.size.width='178.5';
									ctrl.size.height='38.3';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='in'
											</TEXT_CTRL>
											<SS_CALL_CTRL>
												CONTEXT_ELEMENT_EXPR='findAncestor("xs:schema")'
												MATCHING_ET='xs:schema'
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
				COND='findHyperTarget (Array (
  contextElement.id,
  Array ("xml-source", "xml-source-location")
)) != null'
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
										'Array ("xml-source", "xml-source-location")';
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
													text.style='cs5';
												}
											</TEXT_CTRL>
											<DATA_CTRL>
												DOCFIELD='page-htarget'
												FMT={
													ctrl.option.noHLinkFmt='true';
													text.style='cs5';
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
													text.style='cs5';
												}
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
	<TEMPLATE_CALL>
		SS_NAME='Link Title'
		TEMPLATE_FILE='../component/componentLinkTitle.tpl'
	</TEMPLATE_CALL>
	<TEMPLATE_CALL>
		SS_NAME='Schema Name'
		MATCHING_ET='xs:schema'
		TEMPLATE_FILE='../schema/schemaName.tpl'
	</TEMPLATE_CALL>
	<FOLDER>
		SS_NAME='Type Info'
		MATCHING_ETS={'#CUSTOM';'xs:%complexType';'xs:%simpleType'}
		FMT={
			sec.outputStyle='text-par';
		}
		<BODY>
			<AREA_SEC>
				DESCR='when the type reference is not resolved'
				MATCHING_ET='#CUSTOM'
				BREAK_PARENT_BLOCK='when-executed'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								FORMULA='contextElement.value.toQName().toXMLName (rootElement)'
								FMT={
									text.style='cs2';
								}
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				DESCR='when the reference is resolved to a documented type'
				MATCHING_ETS={'xs:complexType';'xs:simpleType'}
				BREAK_PARENT_BLOCK='when-executed'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								COND='! getAttrBooleanValue ("abstract")'
								FORMULA='toXMLName (
  getParam("$elementTypeQName").toQName(),
  Array (rootElement, contextElement)
)'
								FMT={
									text.style='cs2';
								}
								<DOC_HLINK>
									TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("Link Title") : ""'
									HKEYS={
										'contextElement.id';
										'Array ("local", "detail", "xml-source-location")';
										'Array (rootElement.id, NoKey(), NoKey())';
									}
								</DOC_HLINK>
							</DATA_CTRL>
							<DATA_CTRL>
								COND='getAttrBooleanValue ("abstract")'
								FORMULA='toXMLName (
  getParam("$elementTypeQName").toQName(),
  Array (rootElement, contextElement)
)'
								FMT={
									text.style='cs2';
									text.font.style.italic='true';
								}
								<DOC_HLINK>
									TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("Link Title") : ""'
									HKEYS={
										'contextElement.id';
										'Array ("local", "detail", "xml-source-location")';
										'Array (rootElement.id, NoKey(), NoKey())';
									}
								</DOC_HLINK>
							</DATA_CTRL>
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
									ctrl.size.width='154.5';
									text.style='cs5';
									txtfl.delimiter.type='none';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
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
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				DESCR='when type is anonymous'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='anonymous'
								<DOC_HLINK>
									HKEYS={
										'contextElement.id';
										'Array ("detail", "xml-source-location")';
									}
								</DOC_HLINK>
							</TEXT_CTRL>
							<DATA_CTRL>
								FORMULA='instanceOf ("xs:%simpleType") ? "simpleType" : "complexType"'
							</DATA_CTRL>
							<TEMPLATE_CALL_CTRL>
								TEMPLATE_FILE='../type/typeDerivationSummary.tpl'
							</TEMPLATE_CALL_CTRL>
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
									ctrl.size.width='154.5';
									text.style='cs5';
									txtfl.delimiter.type='none';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
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
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</FOLDER>
	<TEMPLATE_CALL>
		SS_NAME='Wildcard Info'
		MATCHING_ETS={'xs:any';'xs:anyAttribute'}
		TEMPLATE_FILE='../content/wildcard.tpl'
		PASSED_PARAMS={
			'$brackets','false';
		}
	</TEMPLATE_CALL>
</STOCK_SECTIONS>
CHECKSUM='uTMalOTjhjU0LEx2RqF8qviNR?G5TwTxi3enbDc6f54'
</DOCFLEX_TEMPLATE>