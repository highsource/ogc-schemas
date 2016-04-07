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
ROOT_ETS={'xs:%element';'xs:attributeGroup';'xs:complexType'}
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$mainXML';
		param.type='GOMElement';
	}
	PARAM={
		param.name='$title';
		param.title='Title of the compoment being documented';
		param.type='string';
	}
	PARAM={
		param.name='$contentModelKey';
		param.title='"xsd-content-model-attributes" map key';
		param.description='The key for "xsd-content-model-attributes" map to find all attributes associated with this schema component';
		param.type='Object';
		param.defaultValue.expr='contextElement.id';
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
		param.name='$allCount';
		param.title='number of all definitions';
		param.type='integer';
		param.defaultValue.expr='getIntParam("$attributeCount") +
getIntParam("$attributeWildcardCount") +
getIntParam("$ownAttributeProhibitionCount")';
		param.fixed='true';
	}
	PARAM={
		param.name='$ownCount';
		param.title='number of all definitions specified in this component';
		param.type='integer';
		param.defaultValue.expr='getIntParam("$ownAttributeCount") +
getIntParam("$ownAttributeWildcardCount") +
getIntParam("$ownAttributeProhibitionCount")';
		param.fixed='true';
	}
	PARAM={
		param.name='$resourceOutputDir';
		param.title='documentation resources directory';
		param.type='string';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes';
		param.title='Attribute Detail';
		param.title.style.bold='true';
		param.group='true';
		param.group.defaultState='expanded';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.include';
		param.title='Include';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.include.inherited';
		param.title='Inherited';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.include.local';
		param.title='Local';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.include.references';
		param.title='References';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.include.wildcard';
		param.title='Wildcard';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.include.prohibitions';
		param.title='Prohibitions';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.profile';
		param.title='Profile';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.profile.form';
		param.title='Form';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
		param.defaultValue='non_default';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.profile.type';
		param.title='Type';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.profile.use';
		param.title='Usage';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.profile.default';
		param.title='Default Value';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.profile.fixed';
		param.title='Fixed Value';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.profile.defined';
		param.title='Definition Location';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.annotation';
		param.title='Annotation';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.value';
		param.title='Attribute Value';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.value.model';
		param.title='Datatype Model';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.value.restrictions';
		param.title='Restrictions';
		param.group='true';
		param.group.defaultState='expanded';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.value.restrictions.annotation';
		param.title='Annotations';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.value.default';
		param.title='Default Value';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.value.fixed';
		param.title='Fixed Value';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.type';
		param.title='Type Detail';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.type.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.type.for.attr';
		param.title='Attributes';
		param.title.style.italic='true';
		param.type='enum';
		param.enum.values='local;any';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.type.for.typeDecl';
		param.title='Type Declarations';
		param.title.style.italic='true';
		param.type='enum';
		param.enum.values='anonymous;any';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.type.annotation';
		param.title='Annotation';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.type.deriv.tree';
		param.title='Type Derivation Tree';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.type.deriv.simpleContent';
		param.title='Simple Content Derivation';
		param.group='true';
		param.group.defaultState='expanded';
		param.type='enum';
		param.enum.values='local;full;none';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.type.deriv.simpleContent.facets';
		param.title='Facets';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.type.deriv.simpleContent.annotations';
		param.title='Annotations';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.xml';
		param.title='XML Source';
		param.title.style.bold='true';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.xml.box';
		param.title='Enclose in Box';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.xml.remove.xsd.anns';
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
	}
</TEMPLATE_PARAMS>
<STYLES>
	CHAR_STYLE={
		style.name='Annotation Smaller';
		style.id='cs1';
		text.font.name='Arial';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Annotation Smallest';
		style.id='cs2';
		text.font.name='Arial';
		text.font.size='8';
	}
	CHAR_STYLE={
		style.name='Code';
		style.id='cs3';
		text.font.name='Courier New';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Code Smaller';
		style.id='cs4';
		text.font.name='Courier New';
		text.font.size='8';
	}
	CHAR_STYLE={
		style.name='Code Smallest';
		style.id='cs5';
		text.font.name='Courier New';
		text.font.size='7';
	}
	CHAR_STYLE={
		style.name='Default Paragraph Font';
		style.id='cs6';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Derivation Tree Smaller';
		style.id='cs7';
		text.font.size='9';
	}
	PAR_STYLE={
		style.name='Detail Heading 1';
		style.id='s1';
		text.font.size='12';
		text.font.style.bold='true';
	}
	PAR_STYLE={
		style.name='Detail Heading 4';
		style.id='s2';
		text.font.name='Arial';
		text.font.size='9';
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
		style.id='cs8';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s3';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Note Font';
		style.id='cs9';
		text.font.name='Arial';
		text.font.size='8';
		text.font.style.bold='false';
	}
	CHAR_STYLE={
		style.name='Page Number Small';
		style.id='cs10';
		text.font.name='Courier New';
		text.font.size='8';
	}
	PAR_STYLE={
		style.name='Property Title';
		style.id='s4';
		text.font.size='8';
		text.font.style.bold='true';
		par.lineHeight='11';
		par.margin.right='5.8';
	}
	PAR_STYLE={
		style.name='Property Value';
		style.id='s5';
		text.font.name='Verdana';
		text.font.size='8';
		par.lineHeight='11';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs8';
}
<ROOT>
	<ELEMENT_ITER>
		STEP_EXPR='// schema component where the attribute was defined

setVar (
  "definitionLocation",
  findPredecessorByType("xs:%element|xs:complexType|xs:attributeGroup")
)'
		TARGET_ETS={'xs:%attribute';'xs:anyAttribute'}
		SCOPE='custom'
		ELEMENT_ENUM_EXPR='findElementsByKey (
  "xsd-content-model-attributes",

  // the key to find all items associated with this component
  getParam("$contentModelKey"),

  // filter according template parameters
  BooleanQuery ({
    // if this is an attribute prohibition
    getAttrValue("use") == "prohibited" ?
      // check if it\'s requested to be printed
      getBooleanParam("doc.xsd.comp.attributes.include.prohibitions") &&
      // only prohibitions specified in this component are relevant!
      findPredecessorByType("xs:%element|xs:complexType|xs:attributeGroup").id == rootElement.id
    :
    // otherwise, when this is a local attribute, reference or wildcard, check if such
    // a kind is requested to be printed
    (getAttrValue("name") != null ? getBooleanParam("doc.xsd.comp.attributes.include.local") :
     getAttrValue("ref") != null ? getBooleanParam("doc.xsd.comp.attributes.include.references") :
     instanceOf ("xs:anyAttribute") && getBooleanParam("doc.xsd.comp.attributes.include.wildcard"))
    &&
    // at last, if inherited definitions should be excluded, test if this one is
    // specified in the current component (passed as the template\'s root element)
    (getBooleanParam("doc.xsd.comp.attributes.include.inherited") ||
     findPredecessorByType("xs:%element|xs:complexType|xs:attributeGroup").id == rootElement.id)
  })
)'
		SORTING='by-expr'
		SORTING_KEY={expr='instanceOf("xs:anyAttribute")
  ? callStockSection("Any Attribute")
  : hasAttr("name")
    ? callStockSection("Attribute Name") 
    : getAttrQNameValue("ref").toXMLName (Array (rootElement, contextElement))',ascending}
		SORTING_COND='getBooleanParam("doc.xsd.comp.attributes.sorting")'
		FMT={
			table.sizing='Relative';
		}
		<HTARGET>
			HKEYS={
				'contextElement.id';
				'"attribute-detail"';
			}
		</HTARGET>
		<BODY>
			<FOLDER>
				DESCR='when this is a prohibited attribute'
				COND='getAttrValue("use") == "prohibited"'
				MATCHING_ET='xs:%attribute'
				<HTARGET>
					COND='getElementVar ("definitionLocation").id == rootElement.id'
					HKEYS={
						'contextElement.id';
						'"def"';
					}
				</HTARGET>
				<HTARGET>
					HKEYS={
						'rootElement.id';
						'"attribute-prohibition"';
					}
				</HTARGET>
				<BODY>
					<AREA_SEC>
						DESCR='when the attribute name is specified'
						COND='getAttrValue("name") != ""'
						MATCHING_ET='xs:%attribute'
						<AREA>
							<CTRL_GROUP>
								FMT={
									trow.cell.align.vert='Top';
									txtfl.delimiter.type='none';
									par.margin.bottom='5';
									par.page.keepWithNext='true';
								}
								<CTRLS>
									<IMAGE_CTRL>
										IMAGE_TYPE='file-image'
										FILE='../../images/attribute.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											image.alignment='bottom';
											image.padding.right='3.3';
										}
									</IMAGE_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='Attribute Name'
										FMT={
											text.style='cs3';
											text.decor.strikethrough='true';
										}
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						DESCR='when a reference is specified, which can be resolved into a documented global attribute'
						COND='sectionBlock.execSecNone'
						CONTEXT_ELEMENT_EXPR='findElementByKey (
  "xsd-global-attributes", getAttrQNameValue("ref"),
  BooleanQuery (
    checkElementByKey (
      "main-xmls",
      getXMLDocument().id,
      getElementParam("$mainXML")
    )
  )
)'
						MATCHING_ET='xs:%attribute'
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='none';
									par.margin.bottom='5';
									par.page.keepWithNext='true';
								}
								<CTRLS>
									<IMAGE_CTRL>
										IMAGE_TYPE='file-image'
										FILE='../../images/attribute.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											image.alignment='bottom';
											image.padding.right='3.3';
										}
									</IMAGE_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='Component Name'
										FMT={
											text.style='cs3';
											text.decor.strikethrough='true';
										}
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
											ctrl.size.width='159';
											ctrl.size.height='38.3';
											text.style='cs10';
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
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						DESCR='otherwise, unresolved referenced'
						COND='sectionBlock.execSecNone'
						<AREA>
							<CTRL_GROUP>
								FMT={
									trow.cell.align.vert='Top';
									txtfl.delimiter.type='none';
									par.margin.bottom='5';
									par.page.keepWithNext='true';
								}
								<CTRLS>
									<IMAGE_CTRL>
										IMAGE_TYPE='file-image'
										FILE='../../images/attribute.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											image.alignment='bottom';
											image.padding.right='3.3';
										}
									</IMAGE_CTRL>
									<DATA_CTRL>
										FORMULA='getAttrQNameValue("ref").toXMLName (Array (rootElement, contextElement))'
										FMT={
											text.style='cs3';
											text.decor.strikethrough='true';
											par.margin.left='0.8';
											par.margin.right='0.8';
										}
									</DATA_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<SS_CALL>
						SS_NAME='Attribute (prohibition)'
						PARAMS_EXPR='Array (getVar ("definitionLocation"))'
						FMT={
							sec.indent.block='true';
						}
					</SS_CALL>
				</BODY>
			</FOLDER>
			<FOLDER>
				DESCR='otherwise, when the attribute is defined locally'
				COND='sectionBlock.execSecNone && getAttrValue("name") != ""'
				MATCHING_ET='xs:%attribute'
				<HTARGET>
					HKEYS={
						'contextElement.id';
						'"local"';
						'rootElement.id';
					}
				</HTARGET>
				<HTARGET>
					COND='getElementVar ("definitionLocation").id == rootElement.id'
					HKEYS={
						'contextElement.id';
						'"def"';
					}
				</HTARGET>
				<HTARGET>
					COND='getElementVar ("definitionLocation").id == rootElement.id'
					HKEYS={
						'rootElement.id';
						'"attribute-def"';
					}
				</HTARGET>
				<BODY>
					<AREA_SEC>
						MATCHING_ET='xs:%attribute'
						<AREA>
							<CTRL_GROUP>
								FMT={
									trow.cell.align.vert='Top';
									txtfl.delimiter.type='none';
									par.margin.bottom='5';
									par.page.keepWithNext='true';
								}
								<CTRLS>
									<IMAGE_CTRL>
										IMAGE_TYPE='file-image'
										FILE='../../images/attribute.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											image.alignment='bottom';
											image.padding.right='3.3';
										}
									</IMAGE_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='Attribute Name'
										FMT={
											text.style='cs3';
										}
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<SS_CALL>
						SS_NAME='Attribute (local)'
						PARAMS_EXPR='Array (getVar ("definitionLocation"))'
						FMT={
							sec.indent.block='true';
						}
					</SS_CALL>
				</BODY>
			</FOLDER>
			<FOLDER>
				DESCR='otherwise, when this is a reference to a global attribute'
				COND='sectionBlock.execSecNone && getAttrValue("ref") != null'
				MATCHING_ET='xs:%attribute'
				<HTARGET>
					HKEYS={
						'contextElement.id';
						'"local"';
						'rootElement.id';
					}
				</HTARGET>
				<HTARGET>
					COND='getElementVar ("definitionLocation").id == rootElement.id'
					HKEYS={
						'contextElement.id';
						'"def"';
					}
				</HTARGET>
				<HTARGET>
					COND='getElementVar ("definitionLocation").id == rootElement.id'
					HKEYS={
						'rootElement.id';
						'"attribute-def"';
					}
				</HTARGET>
				<BODY>
					<AREA_SEC>
						DESCR='when the reference is resolved into a documented global attribute'
						CONTEXT_ELEMENT_EXPR='findElementByKey (
  "xsd-global-attributes", getAttrQNameValue("ref"),
  BooleanQuery (
    checkElementByKey (
      "main-xmls",
      getXMLDocument().id,
      getElementParam("$mainXML")
    )
  )
)'
						MATCHING_ET='xs:%attribute'
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='none';
									par.margin.bottom='5';
									par.page.keepWithNext='true';
								}
								<CTRLS>
									<IMAGE_CTRL>
										IMAGE_TYPE='file-image'
										FILE='../../images/attribute.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											image.alignment='bottom';
											image.padding.right='3.3';
										}
									</IMAGE_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='Component Name'
										FMT={
											text.style='cs3';
										}
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
											ctrl.size.width='162';
											ctrl.size.height='38.3';
											text.style='cs10';
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
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						DESCR='otherwise, the referenced global attribute is not within documentation scope'
						COND='sectionBlock.execSecNone'
						<AREA>
							<CTRL_GROUP>
								FMT={
									trow.cell.align.vert='Top';
									txtfl.delimiter.type='none';
									par.margin.bottom='5';
									par.page.keepWithNext='true';
								}
								<CTRLS>
									<IMAGE_CTRL>
										IMAGE_TYPE='file-image'
										FILE='../../images/attribute.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											image.alignment='bottom';
											image.padding.right='3.3';
										}
									</IMAGE_CTRL>
									<DATA_CTRL>
										FORMULA='getAttrQNameValue("ref").toXMLName (Array (rootElement, contextElement))'
										FMT={
											text.style='cs3';
											par.margin.left='0.8';
											par.margin.right='0.8';
										}
									</DATA_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<SS_CALL>
						SS_NAME='Attribute (reference)'
						PARAMS_EXPR='Array (getVar ("definitionLocation"))'
						FMT={
							sec.indent.block='true';
						}
					</SS_CALL>
				</BODY>
			</FOLDER>
			<FOLDER>
				DESCR='otherwise, if this is an attribute wildcard'
				COND='sectionBlock.execSecNone'
				MATCHING_ET='xs:anyAttribute'
				<HTARGET>
					HKEYS={
						'contextElement.id';
						'"local"';
						'rootElement.id';
					}
				</HTARGET>
				<HTARGET>
					COND='getElementVar ("definitionLocation").id == rootElement.id'
					HKEYS={
						'contextElement.id';
						'"def"';
					}
				</HTARGET>
				<HTARGET>
					HKEYS={
						'rootElement.id';
						'"attribute-wildcard"';
					}
				</HTARGET>
				<HTARGET>
					COND='getElementVar ("definitionLocation").id == rootElement.id'
					HKEYS={
						'rootElement.id';
						'"attribute-wildcard-def"';
					}
				</HTARGET>
				<BODY>
					<AREA_SEC>
						MATCHING_ET='xs:anyAttribute'
						<AREA>
							<CTRL_GROUP>
								FMT={
									trow.cell.align.vert='Top';
									txtfl.delimiter.type='none';
									par.margin.bottom='5';
									par.page.keepWithNext='true';
								}
								<CTRLS>
									<IMAGE_CTRL>
										IMAGE_TYPE='file-image'
										FILE='../../images/attribute.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											image.alignment='bottom';
											image.padding.right='3.3';
										}
									</IMAGE_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='Any Attribute'
										FMT={
											text.style='cs4';
											text.font.style.italic='true';
										}
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<SS_CALL>
						SS_NAME='Attribute (wildcard)'
						PARAMS_EXPR='Array (getVar ("definitionLocation"))'
						FMT={
							sec.indent.block='true';
						}
					</SS_CALL>
				</BODY>
			</FOLDER>
			<AREA_SEC>
				COND='! iterator.isLastItem'
				<AREA>
					<HR>
						FMT={
							rule.style='dashed';
							rule.color='#B2B2B2';
							par.margin.top='10';
							par.margin.bottom='6.7';
						}
					</HR>
				</AREA>
			</AREA_SEC>
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
												TEXT='Attribute Detail'
											</TEXT_CTRL>
											<DELIMITER>
												FMT={
													text.style='cs3';
													text.font.style.bold='false';
												}
											</DELIMITER>
											<SS_CALL_CTRL>
												SS_NAME='scope'
												FMT={
													text.style='cs9';
													text.font.style.bold='false';
												}
											</SS_CALL_CTRL>
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
	</ELEMENT_ITER>
</ROOT>
<STOCK_SECTIONS>
	<TEMPLATE_CALL>
		SS_NAME='annotation'
		MATCHING_ET='xs:%annotated'
		TEMPLATE_FILE='../ann/annotation.tpl'
	</TEMPLATE_CALL>
	<TEMPLATE_CALL>
		SS_NAME='Any Attribute'
		DESCR='print the representation of the attribute wildcard'
		MATCHING_ET='xs:anyAttribute'
		TEMPLATE_FILE='../content/wildcard.tpl'
	</TEMPLATE_CALL>
	<FOLDER>
		SS_NAME='Attribute (local)'
		DESCR='params[0]: the schema component where this attribute is defined'
		MATCHING_ET='xs:%attribute'
		INIT_EXPR='typeQName = getAttrQNameValue("type");

type = (typeQName != null) ?
         findElementByKey ("xsd-types", typeQName,
           BooleanQuery (checkElementByKey (
             "main-xmls",
             getXMLDocument().id,
             getElementParam("$mainXML")
           ))
         )
       : findChild("xs:simpleType");

stockSection.setVar ("attrTypeQName", typeQName);
stockSection.setVar ("attrType", type);'
		<BODY>
			<FOLDER>
				DESCR='PROFILE'
				COND='getBooleanParam("doc.xsd.comp.attributes.profile")'
				FMT={
					sec.outputStyle='table';
					table.cell.padding.both='0';
					table.border.style='none';
					table.option.borderStylesInHTML='true';
				}
				<BODY>
					<AREA_SEC>
						COND='! hasParamValue("doc.xsd.comp.attributes.profile.form", "none")
&&
(
  getAttrValue("form") != null
  ||
  hasParamValue("doc.xsd.comp.attributes.profile.form", "any") &&
    findAncestor("xs:schema").getAttrValue ("attributeFormDefault") != null
)'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Form:'
										FMT={
											ctrl.size.width='45';
											ctrl.size.height='38.3';
											tcell.align.vert='Top';
											par.style='s4';
										}
									</TEXT_CTRL>
									<PANEL>
										FMT={
											ctrl.size.width='454.5';
											ctrl.size.height='38.3';
											par.style='s5';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='namespace'
													</TEXT_CTRL>
													<DELIMITER>
														FMT={
															txtfl.delimiter.type='text';
															txtfl.delimiter.text='-';
														}
													</DELIMITER>
													<DATA_CTRL>
														FORMULA='(form = getAttrValue("form")) == null ?
  form = findAncestor("xs:schema").getAttrValue ("attributeFormDefault");

(form != "qualified") ? "unqualified" : form'
														FMT={
															ctrl.size.width='372';
															ctrl.size.height='17.3';
														}
													</DATA_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						COND='getBooleanParam("doc.xsd.comp.attributes.profile.type")'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Type:'
										FMT={
											ctrl.size.width='43.5';
											ctrl.size.height='17.3';
											tcell.align.vert='Top';
											par.style='s4';
										}
									</TEXT_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='Attribute Type'
										PARAMS_EXPR='Array (stockSection.getElementVar("attrType"))'
										FMT={
											ctrl.size.width='456';
											ctrl.size.height='17.3';
											par.style='s5';
										}
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						COND='getBooleanParam("doc.xsd.comp.attributes.profile.use") &&
hasAttr("use")'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Use:'
										FMT={
											ctrl.size.width='45';
											ctrl.size.height='17.3';
											tcell.align.vert='Top';
											par.style='s4';
										}
									</TEXT_CTRL>
									<DATA_CTRL>
										ATTR='use'
										FMT={
											ctrl.size.width='454.5';
											ctrl.size.height='17.3';
											par.style='s5';
										}
									</DATA_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						COND='getBooleanParam("doc.xsd.comp.attributes.profile.default") &&
hasAttr("default")'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Default:'
										FMT={
											ctrl.size.width='45';
											ctrl.size.height='17.3';
											tcell.align.vert='Top';
											par.style='s4';
										}
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='\'"\' + getAttrValue("default") +\'"\''
										FMT={
											ctrl.size.width='454.5';
											ctrl.size.height='17.3';
											text.style='cs4';
											par.style='s5';
										}
									</DATA_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						COND='getBooleanParam("doc.xsd.comp.attributes.profile.fixed") &&
hasAttr("fixed")'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Fixed:'
										FMT={
											ctrl.size.width='45';
											ctrl.size.height='17.3';
											tcell.align.vert='Top';
											par.style='s4';
										}
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='\'"\' + getAttrValue("fixed") +\'"\''
										FMT={
											ctrl.size.width='454.5';
											ctrl.size.height='17.3';
											text.style='cs4';
											par.style='s5';
										}
									</DATA_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						COND='getBooleanParam("doc.xsd.comp.attributes.profile.defined")'
						FMT={
							table.sizing='Relative';
							table.autofit='false';
							table.cell.padding.both='4.2';
							table.bkgr.color='#F5F5F5';
							table.border.style='solid';
							table.border.color='#999999';
							table.option.borderStylesInHTML='true';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Defined:'
										FMT={
											ctrl.size.width='44.3';
											ctrl.size.height='140.3';
											tcell.align.vert='Top';
											par.style='s4';
										}
									</TEXT_CTRL>
									<PANEL>
										FMT={
											ctrl.size.width='455.3';
											ctrl.size.height='140.3';
											par.style='s5';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='locally'
														<DOC_HLINK>
															COND='stockSection.param.toElement().id != rootElement.id'
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
														CONTEXT_ELEMENT_EXPR='stockSection.param.toElement()'
														MATCHING_ETS={'xs:%element';'xs:attributeGroup';'xs:complexType'}
														FMT={
															ctrl.size.width='366.8';
														}
														<AREA>
															<CTRL_GROUP>
																<CTRLS>
																	<PANEL>
																		COND='rootElement.id == contextElement.id'
																		FMT={
																			ctrl.size.width='66.8';
																			txtfl.delimiter.type='none';
																		}
																		<AREA>
																			<CTRL_GROUP>
																				<CTRLS>
																					<TEXT_CTRL>
																						TEXT='('
																					</TEXT_CTRL>
																					<TEXT_CTRL>
																						TEXT='this'
																						<DOC_HLINK>
																							HKEYS={
																								'contextElement.id';
																								'"detail"';
																							}
																						</DOC_HLINK>
																					</TEXT_CTRL>
																					<TEXT_CTRL>
																						TEXT=')'
																					</TEXT_CTRL>
																				</CTRLS>
																			</CTRL_GROUP>
																		</AREA>
																	</PANEL>
																	<SS_CALL_CTRL>
																		SS_NAME='Component Name'
																		FMT={
																			text.style='cs4';
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
																		MATCHING_ET='xs:attributeGroup'
																		TEXT='attributeGroup'
																	</TEXT_CTRL>
																</CTRLS>
															</CTRL_GROUP>
														</AREA>
													</PANEL>
													<PANEL>
														COND='! getBooleanParam("doc.xsd.comp.attributes.xml")
&&
findHyperTarget (
  Array (contextElement.id, "xml-source-location")
) != null'
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
																				'"xml-source-location"';
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
																							text.style='cs10';
																						}
																					</TEXT_CTRL>
																					<DATA_CTRL>
																						DOCFIELD='page-htarget'
																						FMT={
																							ctrl.option.noHLinkFmt='true';
																							text.style='cs10';
																							text.hlink.fmt='none';
																						}
																						<DOC_HLINK>
																							HKEYS={
																								'contextElement.id';
																								'"xml-source-location"';
																							}
																						</DOC_HLINK>
																					</DATA_CTRL>
																					<TEXT_CTRL>
																						TEXT=']'
																						FMT={
																							text.style='cs10';
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
			<SS_CALL>
				DESCR='ANNOTATION'
				COND='getBooleanParam("doc.xsd.comp.attributes.annotation")'
				SS_NAME='annotation'
				FMT={
					sec.spacing.before='6.7';
					sec.spacing.after='6.7';
					text.style='cs1';
				}
			</SS_CALL>
			<FOLDER>
				DESCR='ATTRIBUTE VALUE'
				COND='getBooleanParam("doc.xsd.comp.attributes.value")'
				COLLAPSED
				FMT={
					sec.spacing.before='6.7';
				}
				<BODY>
					<AREA_SEC>
						COND='getBooleanParam("doc.xsd.comp.attributes.value.model")
&&
! isXSPredefinedType (
  stockSection.getQNameVar("attrTypeQName")
)'
						CONTEXT_ELEMENT_EXPR='stockSection.getElementVar("attrType")'
						MATCHING_ET='xs:%simpleType'
						FMT={
							sec.outputStyle='table';
							sec.spacing.before='6.7';
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
										TEMPLATE_FILE='../content/simpleContentRep.tpl'
										PASSED_PARAMS={
											'$abbreviateEnum','getBooleanParam("doc.xsd.comp.attributes.value.restrictions")';
											'$xmlContext','rootElement';
										}
										FMT={
											ctrl.size.width='499.5';
											ctrl.size.height='17.3';
											text.style='cs4';
										}
									</TEMPLATE_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<FOLDER>
						DESCR='table layout'
						FMT={
							sec.outputStyle='table';
							sec.spacing.before='3.3';
							table.cell.padding.both='0';
							table.border.style='none';
							table.option.borderStylesInHTML='true';
						}
						<BODY>
							<ELEMENT_ITER>
								DESCR='Iterate By Actual Facets
--
The iterated elements are produced as the following:

1. First, all facet elements that are declared both in the context simpleType and all its ancestor types (global and anonymous) are collected. (This will work, however, until a derivation by list or union is reached.) 

What\'s important is that how the factes will follow in the result sequence. Those facets from the same restriction will follow as they were declared. The facets from different restrictions will follow according to the remoteness of their parent restrictions from the context simpleType.

This everything is determined by the Location Rules (as well as their ordering) specified in "Processing | Iteration Scope" tab.

2. Once the initial sequence is produced, the filtering by key will be applied (see "Processing | Filtering | Filter By Key" tab). The purpose of the filtering is to remove those facets that are overridden in the descendant types.  There are two special cases:

(1) All <xs:enumeration> facets will be removed except the first (valid) one. That will be enough to obtain all valid enumeration facets from the <xs:restriction> parent of the left one. This is done in "facet.tpl" template (called to print a facet value).

(2) All <xs:pattern> facets will be left because they all are valid.

All those conditions are specified in the "Expression For Unique Key". In the case of <xs:pattern>, the key will be the element ID, which is always unique (therefore, no <xs:pattern> element will be removed.

The "Preference Condition" expression determines if a given element should replace the already passed element with the same key. That will be so when the expression returns true. We specify to return the value of the facet\'s \'fixed\' attribute. The \'fixed\' attribute overrides anything that might be specified about that facet in the descendant types. (However, actually, doing this is not allowed in XSD!)

3. In the "Processing | Sorting" tab we specify sorting the result facets according to the facet type names. This is done primarily to ensure that all "pattern" facets are printed together.'
								COND='getBooleanParam("doc.xsd.comp.attributes.value.restrictions")
&&
! isXSPredefinedType (
  stockSection.getQNameVar("attrTypeQName")
)'
								CONTEXT_ELEMENT_EXPR='stockSection.getElementVar("attrType")'
								MATCHING_ET='xs:%simpleType'
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
      "main-xmls", getXMLDocument().id, getElementParam("$mainXML")
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
									sec.spacing.before='3.3';
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
															ctrl.size.width='43.5';
															ctrl.size.height='17.3';
															tcell.align.vert='Top';
															par.style='s4';
														}
													</DATA_CTRL>
													<TEMPLATE_CALL_CTRL>
														TEMPLATE_FILE='../content/facet.tpl'
														PASSED_PARAMS={
															'$facet.annotation','getBooleanParam("doc.xsd.comp.attributes.value.restrictions.annotation")';
														}
														FMT={
															ctrl.size.width='456';
															ctrl.size.height='17.3';
															tcell.align.vert='Bottom';
														}
													</TEMPLATE_CALL_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</AREA_SEC>
								</BODY>
							</ELEMENT_ITER>
							<AREA_SEC>
								COND='hasAttr("default") &&
getBooleanParam("doc.xsd.comp.attributes.value.default")'
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='Default:'
												FMT={
													ctrl.size.width='45';
													ctrl.size.height='17.3';
													tcell.align.vert='Top';
													par.style='s4';
												}
											</TEXT_CTRL>
											<DATA_CTRL>
												FORMULA='\'"\' + getAttrValue("default") +\'"\''
												FMT={
													ctrl.size.width='454.5';
													ctrl.size.height='17.3';
													text.style='cs4';
													par.style='s5';
												}
											</DATA_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
							<AREA_SEC>
								COND='hasAttr("fixed") &&
getBooleanParam("doc.xsd.comp.attributes.value.fixed")'
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='Fixed:'
												FMT={
													ctrl.size.width='45';
													ctrl.size.height='17.3';
													tcell.align.vert='Top';
													par.style='s4';
												}
											</TEXT_CTRL>
											<DATA_CTRL>
												FORMULA='\'"\' + getAttrValue("fixed") +\'"\''
												FMT={
													ctrl.size.width='454.5';
													ctrl.size.height='17.3';
													text.style='cs4';
													par.style='s5';
												}
											</DATA_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</BODY>
					</FOLDER>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							sec.outputStyle='pars';
							par.style='s2';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Attribute Value'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
			</FOLDER>
			<SS_CALL>
				DESCR='TYPE DETAIL (case of anonymous type)'
				COND='getBooleanParam("doc.xsd.comp.attributes.type")'
				CONTEXT_ELEMENT_EXPR='stockSection.getElementVar("attrType")'
				MATCHING_ET='xs:%localSimpleType'
				SS_NAME='Type Detail'
			</SS_CALL>
			<SS_CALL>
				DESCR='XML SOURCE'
				COND='getBooleanParam("doc.xsd.comp.attributes.xml")'
				SS_NAME='XML Source'
			</SS_CALL>
			<SS_CALL>
				DESCR='TYPE DETAIL (case of referenced global type)'
				COND='getBooleanParam("doc.xsd.comp.attributes.type") &&
hasParamValue("doc.xsd.comp.attributes.type.for.typeDecl", "any") &&
{
  type = stockSection.getElementVar("attrType");

  type.instanceOf("xs:simpleType") &&
    ! isXSPredefinedType(stockSection.getQNameVar("attrTypeQName"))
}'
				CONTEXT_ELEMENT_EXPR='stockSection.getElementVar("attrType")'
				MATCHING_ET='xs:simpleType'
				SS_NAME='Type Detail'
				PARAMS_EXPR='Array (stockSection.getVar("attrTypeQName"))'
			</SS_CALL>
		</BODY>
	</FOLDER>
	<FOLDER>
		SS_NAME='Attribute (prohibition)'
		MATCHING_ET='xs:%attribute'
		<BODY>
			<FOLDER>
				DESCR='PROFILE'
				COND='getBooleanParam("doc.xsd.comp.attributes.profile")'
				FMT={
					sec.outputStyle='table';
					table.cell.padding.both='0';
					table.border.style='none';
				}
				<BODY>
					<AREA_SEC>
						COND='hasAttr("use")'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Use:'
										FMT={
											ctrl.size.width='45';
											ctrl.size.height='17.3';
											tcell.align.vert='Top';
											par.style='s4';
										}
									</TEXT_CTRL>
									<DATA_CTRL>
										ATTR='use'
										FMT={
											ctrl.size.width='454.5';
											ctrl.size.height='17.3';
											par.style='s5';
										}
									</DATA_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</FOLDER>
			<SS_CALL>
				DESCR='ANNOTATION'
				COND='getBooleanParam("doc.xsd.comp.attributes.annotation")'
				SS_NAME='annotation'
				FMT={
					sec.spacing.before='6.7';
					sec.spacing.after='6.7';
					text.style='cs1';
				}
			</SS_CALL>
			<SS_CALL>
				DESCR='XML SOURCE (local)'
				COND='getBooleanParam("doc.xsd.comp.attributes.xml")'
				SS_NAME='XML Source'
			</SS_CALL>
		</BODY>
	</FOLDER>
	<FOLDER>
		SS_NAME='Attribute (reference)'
		DESCR='params[0]: the schema component where this attribute is defined'
		MATCHING_ET='xs:%attribute'
		INIT_EXPR='// referenced global attribute

globalAttr = findElementByKey (
  "xsd-global-attributes", getAttrQNameValue("ref"),
  BooleanQuery (
    checkElementByKey (
      "main-xmls",
      getXMLDocument().id,
      getElementParam("$mainXML")
    )
  )
);

stockSection.setVar ("globalAttr", globalAttr);

// attribute type

typeQName = globalAttr.getAttrQNameValue("type");

type = (typeQName != null) ?
         findElementByKey ("xsd-types", typeQName,
           BooleanQuery (checkElementByKey (
             "main-xmls",
             getXMLDocument().id,
             getElementParam("$mainXML")
           ))
         ) 
       : globalAttr.findChild("xs:simpleType");

stockSection.setVar ("attrTypeQName", typeQName);
stockSection.setVar ("attrType", type);'
		<BODY>
			<FOLDER>
				DESCR='PROFILE'
				COND='getBooleanParam("doc.xsd.comp.attributes.profile")'
				FMT={
					sec.outputStyle='table';
					table.cell.padding.both='0';
					table.border.style='none';
				}
				<BODY>
					<AREA_SEC>
						COND='hasParamValue("doc.xsd.comp.attributes.profile.form", "any")'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Form:'
										FMT={
											ctrl.size.width='43.5';
											ctrl.size.height='17.3';
											tcell.align.vert='Top';
											par.style='s4';
										}
									</TEXT_CTRL>
									<TEXT_CTRL>
										TEXT='namespace-qualified'
										FMT={
											ctrl.size.width='456';
											ctrl.size.height='17.3';
											par.style='s5';
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
										TEXT='Type:'
										FMT={
											ctrl.size.width='43.5';
											ctrl.size.height='17.3';
											tcell.align.vert='Top';
											par.style='s4';
										}
									</TEXT_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='Attribute Type'
										PASSED_ELEMENT_EXPR='stockSection.getElementVar("globalAttr")'
										PASSED_ELEMENT_MATCHING_ET='xs:attribute'
										PARAMS_EXPR='Array (stockSection.getElementVar("attrType"))'
										ALT_FORMULA='"???"'
										FMT={
											ctrl.size.width='456';
											ctrl.size.height='17.3';
											par.style='s5';
										}
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						COND='hasAttr("use")'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Use:'
										FMT={
											ctrl.size.width='45';
											ctrl.size.height='17.3';
											tcell.align.vert='Top';
											par.style='s4';
										}
									</TEXT_CTRL>
									<DATA_CTRL>
										ATTR='use'
										FMT={
											ctrl.size.width='454.5';
											ctrl.size.height='17.3';
											par.style='s5';
										}
									</DATA_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						DESCR='See "Processing | Context Element" tab'
						COND='getBooleanParam("doc.xsd.comp.attributes.profile.default")

// see also "Context Element" tab'
						CONTEXT_ELEMENT_EXPR='hasAttr("default") ? contextElement :
{
  globalAttr = stockSection.getElementVar("globalAttr");
  globalAttr.hasAttr("default") ? globalAttr : null
}'
						MATCHING_ET='xs:%attribute'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Default:'
										FMT={
											ctrl.size.width='45';
											ctrl.size.height='17.3';
											tcell.align.vert='Top';
											par.style='s4';
										}
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='\'"\' + getAttrValue("default") +\'"\''
										FMT={
											ctrl.size.width='454.5';
											ctrl.size.height='17.3';
											text.style='cs4';
											par.style='s5';
										}
									</DATA_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						DESCR='See "Processing | Context Element" tab'
						COND='getBooleanParam("doc.xsd.comp.attributes.profile.fixed")

// see also "Context Element" tab'
						CONTEXT_ELEMENT_EXPR='globalAttr = stockSection.getElementVar("globalAttr");
globalAttr.hasAttr("fixed") ? globalAttr
  : hasAttr("fixed") ? contextElement : null'
						MATCHING_ET='xs:%attribute'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Fixed:'
										FMT={
											ctrl.size.width='45';
											ctrl.size.height='17.3';
											tcell.align.vert='Top';
											par.style='s4';
										}
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='\'"\' + getAttrValue("fixed") +\'"\''
										FMT={
											ctrl.size.width='454.5';
											ctrl.size.height='17.3';
											text.style='cs4';
											par.style='s5';
										}
									</DATA_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						COND='getBooleanParam("doc.xsd.comp.attributes.profile.defined")'
						FMT={
							table.sizing='Relative';
							table.autofit='false';
							table.cell.padding.both='4.2';
							table.bkgr.color='#F5F5F5';
							table.border.style='solid';
							table.border.color='#999999';
							table.option.borderStylesInHTML='true';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Defined:'
										FMT={
											ctrl.size.width='44.3';
											ctrl.size.height='140.3';
											tcell.align.vert='Top';
											par.style='s4';
										}
									</TEXT_CTRL>
									<PANEL>
										FMT={
											ctrl.size.width='455.3';
											ctrl.size.height='140.3';
											par.style='s5';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='by reference'
														<DOC_HLINK>
															COND='stockSection.param.toElement().id != rootElement.id'
															HKEYS={
																'stockSection.contextElement.id';
																'"def"';
															}
														</DOC_HLINK>
													</TEXT_CTRL>
													<TEXT_CTRL>
														TEXT='within'
													</TEXT_CTRL>
													<PANEL>
														CONTEXT_ELEMENT_EXPR='stockSection.param.toElement()'
														MATCHING_ETS={'xs:%element';'xs:attributeGroup';'xs:complexType'}
														FMT={
															ctrl.size.width='352.5';
															ctrl.size.height='59.3';
														}
														<AREA>
															<CTRL_GROUP>
																<CTRLS>
																	<PANEL>
																		COND='rootElement.id == contextElement.id'
																		FMT={
																			ctrl.size.width='66.8';
																			txtfl.delimiter.type='none';
																		}
																		<AREA>
																			<CTRL_GROUP>
																				<CTRLS>
																					<TEXT_CTRL>
																						TEXT='('
																					</TEXT_CTRL>
																					<TEXT_CTRL>
																						TEXT='this'
																						<DOC_HLINK>
																							HKEYS={
																								'contextElement.id';
																								'"detail"';
																							}
																						</DOC_HLINK>
																					</TEXT_CTRL>
																					<TEXT_CTRL>
																						TEXT=')'
																					</TEXT_CTRL>
																				</CTRLS>
																			</CTRL_GROUP>
																		</AREA>
																	</PANEL>
																	<SS_CALL_CTRL>
																		SS_NAME='Component Name'
																		FMT={
																			ctrl.size.width='118.5';
																			ctrl.size.height='17.3';
																			text.style='cs4';
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
																		MATCHING_ET='xs:attributeGroup'
																		TEXT='attributeGroup'
																	</TEXT_CTRL>
																</CTRLS>
															</CTRL_GROUP>
														</AREA>
													</PANEL>
													<PANEL>
														COND='! getBooleanParam("doc.xsd.comp.attributes.xml")
&&
findHyperTarget (
  Array (contextElement.id, "xml-source-location")
) != null'
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
																				'"xml-source-location"';
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
																							text.style='cs10';
																						}
																					</TEXT_CTRL>
																					<DATA_CTRL>
																						DOCFIELD='page-htarget'
																						FMT={
																							ctrl.option.noHLinkFmt='true';
																							text.style='cs10';
																							text.hlink.fmt='none';
																						}
																						<DOC_HLINK>
																							HKEYS={
																								'contextElement.id';
																								'"xml-source-location"';
																							}
																						</DOC_HLINK>
																					</DATA_CTRL>
																					<TEXT_CTRL>
																						TEXT=']'
																						FMT={
																							text.style='cs10';
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
			<SS_CALL>
				DESCR='ANNOTATION'
				COND='getBooleanParam("doc.xsd.comp.attributes.annotation")'
				SS_NAME='annotation'
				FMT={
					sec.spacing.before='6.7';
					sec.spacing.after='6.7';
					text.style='cs1';
				}
			</SS_CALL>
			<FOLDER>
				DESCR='ATTRIBUTE VALUE'
				COND='getBooleanParam("doc.xsd.comp.attributes.value")'
				COLLAPSED
				FMT={
					sec.spacing.before='6.7';
				}
				<BODY>
					<AREA_SEC>
						COND='getBooleanParam("doc.xsd.comp.attributes.value.model")
&&
! isXSPredefinedType (
  stockSection.getQNameVar("attrTypeQName")
)'
						CONTEXT_ELEMENT_EXPR='stockSection.getElementVar("attrType")'
						MATCHING_ET='xs:%simpleType'
						FMT={
							sec.outputStyle='table';
							sec.spacing.before='6.7';
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
										TEMPLATE_FILE='../content/simpleContentRep.tpl'
										PASSED_PARAMS={
											'$abbreviateEnum','getBooleanParam("doc.xsd.comp.attributes.value.restrictions")';
											'$xmlContext','rootElement';
										}
										FMT={
											ctrl.size.width='499.5';
											ctrl.size.height='17.3';
											text.style='cs4';
										}
									</TEMPLATE_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<FOLDER>
						DESCR='table layout'
						FMT={
							sec.outputStyle='table';
							sec.spacing.before='3.3';
							table.cell.padding.both='0';
							table.border.style='none';
							table.option.borderStylesInHTML='true';
						}
						<BODY>
							<ELEMENT_ITER>
								DESCR='Iterate By Actual Facets
--
See details in "Attribute (local)" stock-section | "POSSIBLE VALUE" | "Iterate By Actual Facets"'
								COND='getBooleanParam("doc.xsd.comp.attributes.value.restrictions")
&&
! isXSPredefinedType (
  stockSection.getQNameVar("attrTypeQName")
)'
								CONTEXT_ELEMENT_EXPR='stockSection.getElementVar("attrType")'
								MATCHING_ET='xs:%simpleType'
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
      "main-xmls", getXMLDocument().id, getElementParam("$mainXML")
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
									sec.spacing.before='3.3';
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
															ctrl.size.width='43.5';
															ctrl.size.height='17.3';
															tcell.align.vert='Top';
															par.style='s4';
														}
													</DATA_CTRL>
													<TEMPLATE_CALL_CTRL>
														TEMPLATE_FILE='../content/facet.tpl'
														PASSED_PARAMS={
															'$facet.annotation','getBooleanParam("doc.xsd.comp.attributes.value.restrictions.annotation")';
														}
														FMT={
															ctrl.size.width='456';
															ctrl.size.height='17.3';
															tcell.align.vert='Bottom';
														}
													</TEMPLATE_CALL_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</AREA_SEC>
								</BODY>
							</ELEMENT_ITER>
							<AREA_SEC>
								DESCR='See "Processing | Context Element" tab'
								COND='getBooleanParam("doc.xsd.comp.attributes.value.default")

// see also "Context Element" tab'
								CONTEXT_ELEMENT_EXPR='hasAttr("default") ? contextElement :
{
  globalAttr = stockSection.getElementVar("globalAttr");
  globalAttr.hasAttr("default") ? globalAttr : null
}'
								MATCHING_ET='xs:%attribute'
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='Default:'
												FMT={
													ctrl.size.width='45';
													ctrl.size.height='17.3';
													tcell.align.vert='Top';
													par.style='s4';
												}
											</TEXT_CTRL>
											<DATA_CTRL>
												FORMULA='\'"\' + getAttrValue("default") +\'"\''
												FMT={
													ctrl.size.width='454.5';
													ctrl.size.height='17.3';
													text.style='cs4';
													par.style='s5';
												}
											</DATA_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
							<AREA_SEC>
								DESCR='See "Processing | Context Element" tab'
								COND='getBooleanParam("doc.xsd.comp.attributes.value.fixed")

// see also "Context Element" tab'
								CONTEXT_ELEMENT_EXPR='globalAttr = stockSection.getElementVar("globalAttr");

globalAttr.hasAttr("fixed") ? globalAttr
  : hasAttr("fixed") ? contextElement : null'
								MATCHING_ET='xs:%attribute'
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='Fixed:'
												FMT={
													ctrl.size.width='45';
													ctrl.size.height='17.3';
													tcell.align.vert='Top';
													par.style='s4';
												}
											</TEXT_CTRL>
											<DATA_CTRL>
												FORMULA='\'"\' + getAttrValue("fixed") +\'"\''
												FMT={
													ctrl.size.width='454.5';
													ctrl.size.height='17.3';
													text.style='cs4';
													par.style='s5';
												}
											</DATA_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</BODY>
					</FOLDER>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							sec.outputStyle='pars';
							par.style='s2';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Attribute Value'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
			</FOLDER>
			<SS_CALL>
				DESCR='XML SOURCE (local)'
				COND='getBooleanParam("doc.xsd.comp.attributes.xml")'
				SS_NAME='XML Source'
			</SS_CALL>
			<SS_CALL>
				DESCR='TYPE DETAIL'
				COND='getBooleanParam("doc.xsd.comp.attributes.type") &&
hasParamValue("doc.xsd.comp.attributes.type.for.attr", "any") &&
{
  type = stockSection.getElementVar("attrType");

  type.instanceOf("xs:simpleType") ?
    hasParamValue("doc.xsd.comp.attributes.type.for.typeDecl", "any") &&
    ! isXSPredefinedType(stockSection.getQNameVar("attrTypeQName"))
  : true
}'
				CONTEXT_ELEMENT_EXPR='stockSection.getElementVar("attrType")'
				MATCHING_ET='xs:%simpleType'
				SS_NAME='Type Detail'
				PARAMS_EXPR='Array (stockSection.getVar("attrTypeQName"))'
			</SS_CALL>
		</BODY>
	</FOLDER>
	<FOLDER>
		SS_NAME='Attribute (wildcard)'
		DESCR='parameter is the schema component where this attribute is defined'
		MATCHING_ET='xs:anyAttribute'
		<BODY>
			<FOLDER>
				COND='getBooleanParam("doc.xsd.comp.attributes.profile")'
				FMT={
					sec.outputStyle='table';
					table.cell.padding.both='0';
					table.border.style='none';
					table.option.borderStylesInHTML='true';
				}
				<BODY>
					<AREA_SEC>
						COND='getBooleanParam("doc.xsd.comp.attributes.profile.defined")'
						FMT={
							table.sizing='Relative';
							table.autofit='false';
							table.cell.padding.both='4.2';
							table.bkgr.color='#F5F5F5';
							table.border.style='solid';
							table.border.color='#999999';
							table.option.borderStylesInHTML='true';
						}
						<AREA>
							<CTRL_GROUP>
								FMT={
									trow.cell.align.vert='Top';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Defined:'
										FMT={
											ctrl.size.width='44.3';
											ctrl.size.height='140.3';
											par.style='s4';
										}
									</TEXT_CTRL>
									<PANEL>
										FMT={
											ctrl.size.width='455.3';
											ctrl.size.height='140.3';
											par.style='s5';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='within'
													</TEXT_CTRL>
													<PANEL>
														CONTEXT_ELEMENT_EXPR='stockSection.param.toElement()'
														MATCHING_ETS={'xs:%element';'xs:attributeGroup';'xs:complexType'}
														FMT={
															ctrl.size.width='371.3';
														}
														<AREA>
															<CTRL_GROUP>
																<CTRLS>
																	<PANEL>
																		COND='rootElement.id == contextElement.id'
																		FMT={
																			ctrl.size.width='66.8';
																			txtfl.delimiter.type='none';
																		}
																		<AREA>
																			<CTRL_GROUP>
																				<CTRLS>
																					<TEXT_CTRL>
																						TEXT='('
																					</TEXT_CTRL>
																					<TEXT_CTRL>
																						TEXT='this'
																						<DOC_HLINK>
																							HKEYS={
																								'contextElement.id';
																								'"detail"';
																							}
																						</DOC_HLINK>
																					</TEXT_CTRL>
																					<TEXT_CTRL>
																						TEXT=')'
																					</TEXT_CTRL>
																				</CTRLS>
																			</CTRL_GROUP>
																		</AREA>
																	</PANEL>
																	<SS_CALL_CTRL>
																		SS_NAME='Component Name'
																		FMT={
																			text.style='cs4';
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
																		MATCHING_ET='xs:attributeGroup'
																		TEXT='attributeGroup'
																	</TEXT_CTRL>
																</CTRLS>
															</CTRL_GROUP>
														</AREA>
													</PANEL>
													<PANEL>
														COND='! getBooleanParam("doc.xsd.comp.attributes.xml")
&&
findHyperTarget (
  Array (contextElement.id, "xml-source-location")
) != null'
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
																				'"xml-source-location"';
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
																							text.style='cs10';
																						}
																					</TEXT_CTRL>
																					<DATA_CTRL>
																						DOCFIELD='page-htarget'
																						FMT={
																							ctrl.option.noHLinkFmt='true';
																							text.style='cs10';
																							text.hlink.fmt='none';
																						}
																						<DOC_HLINK>
																							HKEYS={
																								'contextElement.id';
																								'"xml-source-location"';
																							}
																						</DOC_HLINK>
																					</DATA_CTRL>
																					<TEXT_CTRL>
																						TEXT=']'
																						FMT={
																							text.style='cs10';
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
			<SS_CALL>
				DESCR='ANNOTATION'
				COND='getBooleanParam("doc.xsd.comp.attributes.annotation")'
				SS_NAME='annotation'
				FMT={
					sec.spacing.before='6.7';
					sec.spacing.after='6.7';
					text.style='cs1';
				}
			</SS_CALL>
			<SS_CALL>
				DESCR='XML SOURCE'
				COND='getBooleanParam("doc.xsd.comp.attributes.xml")'
				SS_NAME='XML Source'
			</SS_CALL>
		</BODY>
	</FOLDER>
	<AREA_SEC>
		SS_NAME='Attribute Name'
		MATCHING_ET='xs:%attribute'
		FMT={
			par.option.nowrap='true';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<DATA_CTRL>
						FORMULA='name = getAttrStringValue("name");
schema = findAncestor ("xs:schema");

form = hasAttr("form") ? getAttrValue("form") : 
          schema.getAttrValue ("attributeFormDefault");

form == "qualified" 
  ? toXMLName (
      schema.getServiceAttr("targetNamespace").toString(), 
      name,
      Array (rootElement, contextElement)
    )
  : name
'
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<FOLDER>
		SS_NAME='Attribute Type'
		DESCR='context element must be the attribute declaration (not a reference to it);
params[0]: the attribute type element'
		MATCHING_ET='xs:%attribute'
		<BODY>
			<FOLDER>
				DESCR='when the attribute type is known'
				CONTEXT_ELEMENT_EXPR='stockSection.param.toElement()'
				MATCHING_ETS={'xs:%complexType';'xs:%simpleType'}
				BREAK_PARENT_BLOCK='when-executed'
				<BODY>
					<AREA_SEC>
						DESCR='in case of the global type (specified in \'type\' attribute); see "Component | Context Element" tab'
						MATCHING_ET='xs:simpleType'
						BREAK_PARENT_BLOCK='when-executed'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<SS_CALL_CTRL>
										COND='rootElement.id != contextElement.id'
										SS_NAME='Component Name'
										FMT={
											text.style='cs4';
										}
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
											ctrl.size.width='154.5';
											text.style='cs10';
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
						DESCR='otherwise, this is the case of an anonymous type'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='anonymous'
										<DOC_HLINK>
											HKEYS={
												'contextElement.id';
												'Array ("local", "detail", "xml-source-location")';
												'Array (rootElement.id, NoKey(), NoKey())';
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
(
  findHyperTarget (Array (
    contextElement.id,
    "local",
    rootElement.id
  )) != null
  ||
  findHyperTarget (Array (
    contextElement.id,
    Array ("detail", "xml-source-location")
  )) != null
)'
										FMT={
											ctrl.size.width='154.5';
											text.style='cs10';
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
																'"local"';
																'rootElement.id';
															}
														</DOC_HLINK>
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
			<FOLDER>
				DESCR='otherwise, the attribute type is unknown'
				<BODY>
					<AREA_SEC>
						DESCR='when there is a type name specified in the \'type\' attribute'
						COND='getAttrStringValue("type") != ""'
						BREAK_PARENT_BLOCK='when-executed'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<DATA_CTRL>
										FORMULA='getAttrQNameValue("type").toXMLName (
  Array (rootElement, contextElement))'
										FMT={
											text.style='cs4';
										}
									</DATA_CTRL>
									<DELIMITER>
										FMT={
											txtfl.delimiter.type='text';
											txtfl.delimiter.text=', ';
										}
									</DELIMITER>
									<TEXT_CTRL>
										COND='isXSPredefinedType (getAttrQNameValue("type"))'
										TEXT='predefined'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						DESCR='otherwise, no type specified at all -- assume \'xs:anySimpleType\''
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<DATA_CTRL>
										FORMULA='toXMLName (
  getNamespaceURI("xs"), "anySimpleType",
  rootElement
)'
										FMT={
											text.style='cs4';
										}
									</DATA_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</FOLDER>
		</BODY>
	</FOLDER>
	<TEMPLATE_CALL>
		SS_NAME='Component Name'
		DESCR='prints the XML (qualified or local) name of any global schema component or local element (passed as the stock-section context element)'
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
		SS_NAME='scope'
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='space';
		}
		<BODY>
			<AREA_SEC>
				DESCR='when inherited attributes are included'
				COND='getBooleanParam("doc.xsd.comp.attributes.include.inherited")'
				BREAK_PARENT_BLOCK='when-executed'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='('
							</TEXT_CTRL>
							<DELIMITER>
								FMT={
									txtfl.delimiter.type='none';
								}
							</DELIMITER>
							<TEXT_CTRL>
								COND='iterator.numItems == getIntParam("$allCount")'
								TEXT='all declarations'
							</TEXT_CTRL>
							<PANEL>
								COND='iterator.numItems != getIntParam("$allCount")'
								FMT={
									ctrl.size.width='223.5';
									ctrl.size.height='38.3';
								}
								<AREA>
									<CTRL_GROUP>
										FMT={
											txtfl.delimiter.type='text';
											txtfl.delimiter.text=', ';
										}
										<CTRLS>
											<TEXT_CTRL>
												COND='getBooleanParam("doc.xsd.comp.attributes.include.local")
&&
findElementByType (
  iterator.items,
  "xs:%attribute",
  BooleanQuery (getAttrValue("name") != "")
) != null'
												TEXT='local attributes'
											</TEXT_CTRL>
											<TEXT_CTRL>
												COND='getBooleanParam("doc.xsd.comp.attributes.include.references")
&&
findElementByType (
  iterator.items,
  "xs:%attribute",
  BooleanQuery (getAttrValue("ref") != "")
) != null'
												TEXT='references'
											</TEXT_CTRL>
											<TEXT_CTRL>
												COND='getBooleanParam("doc.xsd.comp.attributes.include.wildcard")
&&
findElementByType (iterator.items, "xs:anyAttribute") != null'
												TEXT='wildcard'
											</TEXT_CTRL>
											<TEXT_CTRL>
												COND='getBooleanParam("doc.xsd.comp.attributes.include.prohibitions")
&&
findElementByType (
  iterator.items,
  "xs:%attribute",
  BooleanQuery (getAttrValue("use") == "prohibited")
) != null'
												TEXT='prohibitions'
											</TEXT_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
							<DELIMITER>
								FMT={
									txtfl.delimiter.type='text';
									txtfl.delimiter.text='; ';
								}
							</DELIMITER>
							<DATA_CTRL>
								FORMULA='iterator.numItems'
							</DATA_CTRL>
							<DELIMITER>
								FMT={
									txtfl.delimiter.type='text';
									txtfl.delimiter.text='/';
								}
							</DELIMITER>
							<DATA_CTRL>
								FORMULA='getIntParam("$allCount")'
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
			<AREA_SEC>
				DESCR='otherwise, specified in this component only'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='('
							</TEXT_CTRL>
							<DELIMITER>
								FMT={
									txtfl.delimiter.type='none';
								}
							</DELIMITER>
							<TEXT_CTRL>
								COND='iterator.numItems == getIntParam("$ownCount")'
								TEXT='all declarations'
							</TEXT_CTRL>
							<PANEL>
								COND='iterator.numItems != getIntParam("$ownCount")'
								FMT={
									ctrl.size.width='223.5';
									ctrl.size.height='38.3';
								}
								<AREA>
									<CTRL_GROUP>
										FMT={
											txtfl.delimiter.type='text';
											txtfl.delimiter.text=', ';
										}
										<CTRLS>
											<TEXT_CTRL>
												COND='getBooleanParam("doc.xsd.comp.attributes.include.local")
&&
findElementByType (
  iterator.items,
  "xs:%attribute",
  BooleanQuery (getAttrValue("name") != "")
) != null'
												TEXT='local attributes'
											</TEXT_CTRL>
											<TEXT_CTRL>
												COND='getBooleanParam("doc.xsd.comp.attributes.include.references")
&&
findElementByType (
  iterator.items,
  "xs:%attribute",
  BooleanQuery (getAttrValue("ref") != "")
) != null'
												TEXT='references'
											</TEXT_CTRL>
											<TEXT_CTRL>
												COND='getBooleanParam("doc.xsd.comp.attributes.include.wildcard")
&&
findElementByType (iterator.items, "xs:anyAttribute") != null'
												TEXT='wildcard'
											</TEXT_CTRL>
											<TEXT_CTRL>
												COND='getBooleanParam("doc.xsd.comp.attributes.include.prohibitions")
&&
findElementByType (
  iterator.items,
  "xs:%attribute",
  BooleanQuery (getAttrValue("use") == "prohibited")
) != null'
												TEXT='prohibitions'
											</TEXT_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
							<DELIMITER>
								FMT={
									txtfl.delimiter.type='text';
									txtfl.delimiter.text='; ';
								}
							</DELIMITER>
							<TEXT_CTRL>
								TEXT='defined within'
							</TEXT_CTRL>
							<TEXT_CTRL>
								TEXT='this'
								<DOC_HLINK>
									TITLE_EXPR='getBooleanParam("show.linkTitle") ? getStringParam("$title") : ""'
									HKEYS={
										'contextElement.id';
										'"detail"';
									}
								</DOC_HLINK>
							</TEXT_CTRL>
							<TEXT_CTRL>
								TEXT='component only'
							</TEXT_CTRL>
							<DELIMITER>
								FMT={
									txtfl.delimiter.type='text';
									txtfl.delimiter.text='; ';
								}
							</DELIMITER>
							<DATA_CTRL>
								FORMULA='iterator.numItems'
							</DATA_CTRL>
							<DELIMITER>
								FMT={
									txtfl.delimiter.type='text';
									txtfl.delimiter.text='/';
								}
							</DELIMITER>
							<DATA_CTRL>
								FORMULA='getIntParam("$allCount")'
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
		</BODY>
	</FOLDER>
	<FOLDER>
		SS_NAME='Type Detail'
		DESCR='params[0]: type QName in case of a global type'
		MATCHING_ET='xs:%simpleType'
		<HTARGET>
			HKEYS={
				'contextElement.id';
				'"local"';
				'rootElement.id';
			}
		</HTARGET>
		<BODY>
			<AREA_SEC>
				COND='getBooleanParam("doc.xsd.comp.attributes.type.deriv.tree")'
				FMT={
					sec.outputStyle='table';
					sec.spacing.before='6.7';
					sec.spacing.after='5';
					text.style='cs7';
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
								TEMPLATE_FILE='../type/typeDerivationTree.tpl'
								PASSED_PARAMS={
									'$detailLink','true';
									'$xmlSourceLink','instanceOf("xs:simpleType") ||
! getBooleanParam("doc.xsd.comp.attributes.xml")';
									'$xmlContext','rootElement';
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
			<SS_CALL>
				COND='getBooleanParam("doc.xsd.comp.attributes.type.annotation")'
				SS_NAME='annotation'
				FMT={
					sec.spacing.before='6.7';
					sec.spacing.after='5';
					text.style='cs2';
				}
			</SS_CALL>
			<TEMPLATE_CALL>
				COND='! hasParamValue("doc.xsd.comp.attributes.type.deriv.simpleContent", "none")'
				TEMPLATE_FILE='../content/simpleContentDerivation.tpl'
				PASSED_PARAMS={
					'$deriv.simpleContent','getStringParam("doc.xsd.comp.attributes.type.deriv.simpleContent")';
					'$deriv.simpleContent.facets','getBooleanParam("doc.xsd.comp.attributes.type.deriv.simpleContent.facets")';
					'$deriv.simpleContent.annotations','getBooleanParam("doc.xsd.comp.attributes.type.deriv.simpleContent.annotations")';
					'$xmlContext','rootElement';
				}
			</TEMPLATE_CALL>
		</BODY>
		<HEADER>
			<AREA_SEC>
				FMT={
					par.style='s2';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								MATCHING_ET='xs:%localSimpleType'
								TEXT='Anonymous'
							</TEXT_CTRL>
							<TEXT_CTRL>
								TEXT='simpleType'
							</TEXT_CTRL>
							<DATA_CTRL>
								MATCHING_ET='xs:simpleType'
								FORMULA='\'"\' + stockSection.param + \'"\''
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
	<FOLDER>
		SS_NAME='XML Source'
		<BODY>
			<AREA_SEC>
				COND='getBooleanParam("doc.xsd.comp.attributes.xml.box")'
				BREAK_PARENT_BLOCK='when-executed'
				FMT={
					sec.outputStyle='table';
					sec.spacing.before='6.7';
					sec.spacing.after='8.3';
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
									'$remove.xsd.anns','getBooleanParam("doc.xsd.comp.attributes.xml.remove.xsd.anns")';
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
					'$remove.xsd.anns','getBooleanParam("doc.xsd.comp.attributes.xml.remove.xsd.anns")';
				}
				FMT={
					sec.spacing.before='5';
					sec.spacing.after='8.3';
				}
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
							txtfl.delimiter.type='none';
						}
						<CTRLS>
							<TEXT_CTRL>
								TEXT='XML Source'
							</TEXT_CTRL>
							<DELIMITER>
								FMT={
									text.style='cs4';
									text.color.opaque='false';
								}
							</DELIMITER>
							<TEMPLATE_CALL_CTRL>
								TEMPLATE_FILE='../../xml/sourceNote.tpl'
								PASSED_PARAMS={
									'$remove.xsd.anns','getBooleanParam("doc.xsd.comp.attributes.xml.remove.xsd.anns")';
								}
								FMT={
									text.style='cs9';
									text.color.opaque='false';
								}
							</TEMPLATE_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
</STOCK_SECTIONS>
CHECKSUM='bPIP1ldNuDdCWaLcFiSnbIhPgmDFNxb24d4E7sf2v4Q'
</DOCFLEX_TEMPLATE>