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
ROOT_ET='xs:%element'
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$mainXSD';
		param.type='GOMElement';
		param.defaultValue.expr='findElementByKey ("main-xsds", getXMLDocument().id)';
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
		param.title='number of usage/definition locations';
		param.description='number of locations where this element is used (by reference)
or declared locally';
		param.type='integer';
		param.defaultValue.expr='countElementsByKey (
  "element-usage", contextElement.id
)';
		param.hidden='true';
	}
	PARAM={
		param.name='$elementType';
		param.title='element type component';
		param.description='this is either global or anonymous type or null (when type cannot be resolved)';
		param.type='GOMElement';
		param.defaultValue.expr='findElementByKey ("element-types", contextElement.id)';
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
		param.title='map key for "content-model-attributes", "content-model-elements"';
		param.description='The key for "content-model-attributes" and "content-model-elements" maps to find items associated with this element';
		param.type='Object';
		param.defaultValue.expr='getElementParam("$elementType").id';
	}
	PARAM={
		param.name='$attributeCount';
		param.title='number of all attributes';
		param.description='total number of attributes declared for this component';
		param.type='integer';
		param.defaultValue.expr='countElementsByKey (
  "content-model-attributes", 
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
  "content-model-attributes", 
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
  "content-model-attributes", 
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
  "content-model-attributes", 
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
  "content-model-attributes", 
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
		param.name='doc.comp.profile.subst.members';
		param.title='Members';
		param.featureType='pro';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.profile.subst.heads';
		param.title='Heads';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
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
		param.featureType='pro';
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
	CHAR_STYLE={
		style.name='Property Note';
		style.id='cs5';
		text.font.name='Tahoma';
		text.font.size='8';
		text.font.style.italic='true';
	}
	PAR_STYLE={
		style.name='Property Title';
		style.id='s2';
		text.font.size='8';
		text.font.style.bold='true';
		par.margin.right='5.8';
		par.margin.top='0.3';
		par.margin.bottom='0.3';
	}
	PAR_STYLE={
		style.name='Property Value';
		style.id='s3';
		text.font.name='Verdana';
		text.font.size='8';
		par.margin.top='0.3';
		par.margin.bottom='0.3';
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
				COND='getBooleanParam("doc.comp.profile.type")'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Type:'
								FMT={
									ctrl.size.width='54.8';
									ctrl.size.height='60.8';
									tcell.align.vert='Top';
									par.style='s2';
								}
							</TEXT_CTRL>
							<PANEL>
								FMT={
									ctrl.size.width='444.8';
									ctrl.size.height='60.8';
									par.style='s3';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<SS_CALL_CTRL>
												SS_NAME='Type Info'
												PASSED_ELEMENT_EXPR='getElementParam("$elementType")'
												PASSED_ELEMENT_MATCHING_ETS={'#CUSTOM';'xs:%complexType';'xs:%simpleType'}
											</SS_CALL_CTRL>
											<PANEL>
												DESCR='when the type is inherited from the substitution group head element'
												COND='instanceOf ("xs:element") && getAttrValue("type") == null
&& ! hasChild ("xs:complexType | xs:simpleType")'
												CONTEXT_ELEMENT_EXPR='findElementByKey (
  "global-elements",
  getAttrQNameValue("substitutionGroup"),
  BooleanQuery (
    checkElementByKey (
      "main-xsds",
      getXMLDocument().id,
      getElementParam("$mainXSD")
    )
  )
)'
												MATCHING_ET='xs:element'
												FMT={
													ctrl.size.width='237.8';
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
																TEXT='inherited from'
															</TEXT_CTRL>
															<SS_CALL_CTRL>
																SS_NAME='Component Name'
																FMT={
																	text.style='cs3';
																}
															</SS_CALL_CTRL>
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
				COND='getBooleanParam("doc.comp.profile.content")'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Content:'
								FMT={
									ctrl.size.width='54.8';
									ctrl.size.height='137.3';
									tcell.align.vert='Top';
									par.style='s2';
								}
							</TEXT_CTRL>
							<PANEL>
								FMT={
									content.outputStyle='text-par';
									ctrl.size.width='444.8';
									ctrl.size.height='137.3';
									par.style='s3';
								}
								<AREA>
									<CTRL_GROUP>
										FMT={
											txtfl.delimiter.type='text';
											txtfl.delimiter.text=', ';
										}
										<CTRLS>
											<TEMPLATE_CALL_CTRL>
												TEMPLATE_FILE='../component/contentType.tpl'
											</TEMPLATE_CALL_CTRL>
											<PANEL>
												COND='getIntParam("$attributeCount") > 0'
												FMT={
													ctrl.size.width='201';
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
																	DESCR='try to link to wildcard\'s detail by this component;
otherwise, link to wildcard\'s details by its parent component (where the attribute is defined);
if not found still, link to the XML schema source location, where this wildcard is defined'
																	CONTEXT_ELEMENT_EXPR='findElementByKey (
  "content-model-attributes", 
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
			<FOLDER>
				DESCR='case of global element'
				MATCHING_ET='xs:element'
				<BODY>
					<AREA_SEC>
						COND='getBooleanParam("doc.comp.profile.abstract")
&&
getAttrBooleanValue("abstract")'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Abstract:'
										FMT={
											ctrl.size.width='54.8';
											ctrl.size.height='17.3';
											tcell.align.vert='Top';
											text.option.renderNLs='true';
											par.style='s2';
										}
									</TEXT_CTRL>
									<TEXT_CTRL>
										TEXT='(may not be used directly in instance XML documents)'
										FMT={
											ctrl.size.width='444.8';
											ctrl.size.height='17.3';
											text.style='cs5';
											par.style='s3';
										}
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						COND='! hasParamValue("doc.comp.profile.block", "none")
&&
(
  getAttrValue("block") != null
  ||
  hasParamValue("doc.comp.profile.block", "any") &&
    findAncestor("xs:schema").getAttrValue ("blockDefault") != null
)'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Block:'
										FMT={
											ctrl.size.width='54.8';
											ctrl.size.height='17.3';
											tcell.align.vert='Top';
											text.option.renderNLs='true';
											par.style='s2';
										}
									</TEXT_CTRL>
									<TEMPLATE_CALL_CTRL>
										TEMPLATE_FILE='elementBlockAttrInfo.tpl'
										PASSED_PARAMS={
											'$profile.block.value','getBooleanParam("doc.comp.profile.block.value")';
											'$profile.block.meaning','getBooleanParam("doc.comp.profile.block.meaning")';
										}
										FMT={
											content.outputStyle='text-par';
											ctrl.size.width='444.8';
											ctrl.size.height='17.3';
											par.style='s3';
										}
									</TEMPLATE_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						COND='! hasParamValue("doc.comp.profile.final", "none")
&&
instanceOf("xs:element") &&
(
  getAttrValue("final") != null
  ||
  hasParamValue("doc.comp.profile.final", "any") &&
    findAncestor("xs:schema").getAttrValue ("finalDefault") != null
)'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Final:'
										FMT={
											ctrl.size.width='54.8';
											ctrl.size.height='17.3';
											tcell.align.vert='Top';
											text.option.renderNLs='true';
											par.style='s2';
										}
									</TEXT_CTRL>
									<TEMPLATE_CALL_CTRL>
										TEMPLATE_FILE='elementFinalAttrInfo.tpl'
										PASSED_PARAMS={
											'$profile.final.value','getBooleanParam("doc.comp.profile.final.value")';
											'$profile.final.meaning','getBooleanParam("doc.comp.profile.final.meaning")';
										}
										FMT={
											content.outputStyle='text-par';
											ctrl.size.width='444.8';
											ctrl.size.height='17.3';
											par.style='s3';
										}
									</TEMPLATE_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						COND='getBooleanParam("doc.comp.profile.subst")
&&
(
  checkElementsByKey (
    "substitution-group-members", contextElement.id
  ) 
  ||
  getAttrValue("substitutionGroup") != ""
)'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Subst.Gr:'
										FMT={
											ctrl.size.width='54.8';
											ctrl.size.height='17.3';
											tcell.align.vert='Top';
											text.option.renderNLs='true';
											par.style='s2';
										}
									</TEXT_CTRL>
									<TEMPLATE_CALL_CTRL>
										TEMPLATE_FILE='substitutionGroupInfo.tpl'
										PASSED_PARAMS={
											'$list.members','getBooleanParam("doc.comp.profile.subst.members")';
											'$list.heads','getBooleanParam("doc.comp.profile.subst.heads")';
										}
										FMT={
											content.outputStyle='text-par';
											ctrl.size.width='444.8';
											ctrl.size.height='17.3';
											par.style='s3';
										}
									</TEMPLATE_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						COND='getBooleanParam("doc.comp.profile.nillable")
&&
getAttrBooleanValue("nillable")'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Nillable:'
										FMT={
											ctrl.size.width='54.8';
											ctrl.size.height='17.3';
											tcell.align.vert='Top';
											text.option.renderNLs='true';
											par.style='s2';
										}
									</TEXT_CTRL>
									<TEXT_CTRL>
										TEXT='(can be declared as nil using xsi:nil attribute in instance XML documents)'
										FMT={
											ctrl.size.width='444.8';
											ctrl.size.height='17.3';
											text.style='cs5';
										}
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						DESCR='in case of global element'
						COND='getBooleanParam("doc.comp.profile.defined")'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Defined:'
										FMT={
											ctrl.size.width='54.8';
											ctrl.size.height='120.8';
											tcell.align.vert='Top';
											par.style='s2';
										}
									</TEXT_CTRL>
									<PANEL>
										FMT={
											ctrl.size.width='444.8';
											ctrl.size.height='120.8';
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
															ctrl.size.width='157.5';
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
															ctrl.size.width='288.8';
															ctrl.size.height='59.3';
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
				</BODY>
			</FOLDER>
			<FOLDER>
				DESCR='case of local element'
				MATCHING_ET='xs:%localElement'
				<BODY>
					<AREA_SEC>
						COND='! hasParamValue("doc.comp.profile.block", "none")
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
    "element-usage",
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
    hasParamValue("doc.comp.profile.block", "any") &&
      findAncestor("xs:schema").getAttrValue ("blockDefault") != null ?
    {
      setVar ("variesByLocation", false);
      true;
    } : false
  }
}'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Block:'
										FMT={
											ctrl.size.width='54.8';
											ctrl.size.height='17.3';
											tcell.align.vert='Top';
											text.option.renderNLs='true';
											par.style='s2';
										}
									</TEXT_CTRL>
									<TEMPLATE_CALL_CTRL>
										TEMPLATE_FILE='elementBlockAttrInfo.tpl'
										PASSED_PARAMS={
											'$variesByLocation','getBooleanVar ("variesByLocation")';
											'$profile.block.value','getBooleanParam("doc.comp.profile.block.value")';
											'$profile.block.meaning','getBooleanParam("doc.comp.profile.block.meaning")';
										}
										FMT={
											content.outputStyle='text-par';
											ctrl.size.width='444.8';
											ctrl.size.height='17.3';
											par.style='s3';
										}
									</TEMPLATE_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						COND='getBooleanParam("doc.comp.profile.nillable")
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
    "element-usage",
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
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Nillable:'
										FMT={
											ctrl.size.width='54.8';
											ctrl.size.height='60.8';
											tcell.align.vert='Top';
											text.option.renderNLs='true';
											par.style='s2';
										}
									</TEXT_CTRL>
									<PANEL>
										FMT={
											ctrl.size.width='444.8';
											ctrl.size.height='60.8';
											par.style='s3';
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
																			text.style='cs3';
																		}
																	</TEXT_CTRL>
																	<TEXT_CTRL>
																		TEXT='(varies by location)'
																		FMT={
																			text.style='cs5';
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
					<AREA_SEC>
						DESCR='in case of local element'
						COND='getBooleanParam("doc.comp.profile.defined")'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Defined:'
										FMT={
											ctrl.size.width='54.8';
											ctrl.size.height='17.3';
											tcell.align.vert='Top';
											par.style='s2';
										}
									</TEXT_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='Defined Locally At'
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
				</BODY>
			</FOLDER>
			<AREA_SEC>
				COND='getBooleanParam("doc.comp.profile.includes") &&
{
 count = getIntParam("$ownAttributeCount") +
         getIntParam("$ownAttributeWildcardCount") +
         getIntParam("$ownElementCount") +
         getIntParam("$ownElementWildcardCount");

 count > 0 ||
 getIntParam("$ownAttributeProhibitionCount") > 0
 ? { setVar ("count", count); true } : false;
}'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Includes:'
								FMT={
									ctrl.size.width='54.8';
									ctrl.size.height='177.8';
									tcell.align.vert='Top';
									par.style='s2';
								}
							</TEXT_CTRL>
							<PANEL>
								FMT={
									ctrl.size.width='444.8';
									ctrl.size.height='177.8';
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
													ctrl.size.width='81';
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
				COND='getBooleanParam("doc.comp.profile.used")'
				MATCHING_ET='xs:element'
				<BODY>
					<AREA_SEC>
						COND='getIntParam("$usageCount") == 0'
						BREAK_PARENT_BLOCK='when-executed'
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
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Used:'
										FMT={
											ctrl.size.width='54.8';
											ctrl.size.height='39.8';
											tcell.align.vert='Top';
											par.style='s2';
										}
									</TEXT_CTRL>
									<PANEL>
										FMT={
											ctrl.size.width='444.8';
											ctrl.size.height='39.8';
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
						TARGET_ET='#DOCUMENT'
						SCOPE='advanced-location-rules'
						RULES={
							'* -> {findElementsByKey (
  "element-usage", contextElement.id
)}::xs:%element/{Enum (getXMLDocument())}::#DOCUMENT';
						}
						SORTING='by-attr'
						SORTING_KEY={lpath='@xmlName',ascending}
						FMT={
							txtfl.delimiter.type='text';
							txtfl.delimiter.text=', ';
						}
						<BODY>
							<AREA_SEC>
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<DATA_CTRL>
												ATTR='xmlName'
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
													text.style='cs3';
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
									text.style='cs4';
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
									ctrl.size.width='181.5';
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
									ctrl.size.width='183.8';
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
			</AREA_SEC>
		</BODY>
	</FOLDER>
	<TEMPLATE_CALL>
		SS_NAME='Link Title'
		TEMPLATE_FILE='../component/componentLinkTitle.tpl'
	</TEMPLATE_CALL>
	<TEMPLATE_CALL>
		SS_NAME='Schema Name'
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
									text.style='cs3';
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
									text.style='cs3';
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
									text.style='cs3';
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
									text.style='cs4';
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
									text.style='cs4';
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
		TEMPLATE_FILE='../component/wildcard.tpl'
		PASSED_PARAMS={
			'$brackets','false';
		}
	</TEMPLATE_CALL>
</STOCK_SECTIONS>
CHECKSUM='VGnGG4QsGQReMuYLbjyjmyjLafx0oeTdNYl6pJYZukY'
</DOCFLEX_TEMPLATE>