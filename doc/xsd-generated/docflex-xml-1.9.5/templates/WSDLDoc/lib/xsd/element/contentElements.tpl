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
ROOT_ETS={'xs:%element';'xs:complexType';'xs:group'}
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
		param.title='map key for "xsd-content-model-elements"';
		param.description='The key for "xsd-content-model-elements" maps to find items associated with this component';
		param.type='Object';
		param.defaultValue.expr='contextElement.id';
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
		param.name='$allCount';
		param.title='number of all definitions';
		param.type='integer';
		param.defaultValue.expr='getIntParam("$elementCount") +
getIntParam("$elementWildcardCount")';
		param.fixed='true';
	}
	PARAM={
		param.name='$ownCount';
		param.title='number of all definitions specified in this component';
		param.type='integer';
		param.defaultValue.expr='getIntParam("$ownElementCount") +
getIntParam("$ownElementWildcardCount")';
		param.fixed='true';
	}
	PARAM={
		param.name='$resourceOutputDir';
		param.title='documentation resources directory';
		param.type='string';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements';
		param.title='Content Element Detail';
		param.title.style.bold='true';
		param.group='true';
		param.group.defaultState='expanded';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.include';
		param.title='Include';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.include.local';
		param.title='Local';
		param.title.style.italic='true';
		param.type='enum';
		param.enum.values='all;simpleType;none';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.include.references';
		param.title='References';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.include.wildcards';
		param.title='Wildcards';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.include.inherited';
		param.title='Inherited';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.profile';
		param.title='Profile';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.profile.form';
		param.title='Form';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.defaultValue='non_default';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.profile.type';
		param.title='Type';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.profile.abstract';
		param.title='Abstract';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.profile.block';
		param.title='Block';
		param.group='true';
		param.type='enum';
		param.enum.values='any;non_default;none';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.profile.block.value';
		param.title='Value';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.profile.block.meaning';
		param.title='Meaning';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.profile.final';
		param.title='Final';
		param.group='true';
		param.type='enum';
		param.enum.values='any;non_default;none';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.profile.final.value';
		param.title='Value';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.profile.final.meaning';
		param.title='Meaning';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.profile.subst';
		param.title='Subst.Gr';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.profile.subst.heads';
		param.title='List of group heads';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.profile.subst.members';
		param.title='List of group members';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.profile.default';
		param.title='Default Value';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.profile.fixed';
		param.title='Fixed Value';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.profile.nillable';
		param.title='Nillable';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.profile.defined';
		param.title='Definition Location';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.xmlRep';
		param.title='XML Representation Summary';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.xmlRep.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.xmlRep.for.element';
		param.title='Elements';
		param.title.style.italic='true';
		param.type='enum';
		param.enum.values='local;any';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.xmlRep.for.type';
		param.title='With Types';
		param.title.style.italic='true';
		param.type='enum';
		param.enum.values='complexType;simpleType;any';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.xmlRep.heading';
		param.title='Show Heading';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.xmlRep.sorting';
		param.title='Sorting';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.annotation';
		param.title='Annotation';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.simpleContent';
		param.title='Simple Content';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.simpleContent.model';
		param.title='Datatype Model';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.simpleContent.restrictions';
		param.title='Restrictions';
		param.group='true';
		param.group.defaultState='expanded';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.simpleContent.restrictions.annotation';
		param.title='Annotations';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.simpleContent.default';
		param.title='Default Value';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.simpleContent.fixed';
		param.title='Fixed Value';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.type';
		param.title='Type Detail';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.type.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.type.for.element';
		param.title='Elements';
		param.title.style.italic='true';
		param.type='enum';
		param.enum.values='local;any';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.type.for.type';
		param.title='Types';
		param.title.style.italic='true';
		param.type='enum';
		param.enum.values='simpleType;any';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.type.for.typeDecl';
		param.title='Type Declarations';
		param.title.style.italic='true';
		param.type='enum';
		param.enum.values='anonymous;any';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.type.annotation';
		param.title='Annotation';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.type.deriv.tree';
		param.title='Type Derivation Tree';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.type.deriv.simpleContent';
		param.title='Simple Content Derivation';
		param.group='true';
		param.type='enum';
		param.enum.values='local;full;none';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.type.deriv.simpleContent.facets';
		param.title='Facets';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.type.deriv.simpleContent.annotations';
		param.title='Annotations';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.xml';
		param.title='XML Source';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.xml.box';
		param.title='Enclose in Box';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.xml.remove.xsd.anns';
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
	CHAR_STYLE={
		style.name='Property Note';
		style.id='cs11';
		text.font.name='Tahoma';
		text.font.size='8';
		text.font.style.italic='true';
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
	CHAR_STYLE={
		style.name='XML Rep Smaller';
		style.id='cs12';
		text.font.size='8';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs8';
}
<ROOT>
	<ELEMENT_ITER>
		STEP_EXPR='// schema component where the element/wildcard was defined

setVar (
  "definitionLocation",
  findPredecessorByType("xs:%element|xs:complexType|xs:group")
)'
		TARGET_ETS={'xs:%element';'xs:any'}
		SCOPE='custom'
		ELEMENT_ENUM_EXPR='// which local elements are documented here
local = getStringParam("doc.xsd.comp.contentElements.include.local");

findElementsByKey (
  "xsd-content-model-elements",

  // the key to find all items associated with this component
  getParam("$contentModelKey"),

  // filter according template parameters
  BooleanQuery ({
    // otherwise, when this is a local element, reference or wildcard, check if such
    // a kind is requested to be printed
    (getAttrValue("name") != null ?  // case of local element
       local == "all" || local == "simpleType" && ! (

         // test if the element\'s type is complex one
         // (when the type is undefined, it is considered simple)

         findElementByKey ("xsd-element-types", contextElement.id).instanceOf("xs:%complexType")
       )
     :
     getAttrValue("ref") != null ? getBooleanParam("doc.xsd.comp.contentElements.include.references")
     :
     instanceOf ("xs:any") && getBooleanParam("doc.xsd.comp.contentElements.include.wildcards")
    )
    &&
    // at last, if inherited definitions should be excluded, test if this one is
    // specified in the current component (passed as the template\'s root element)

    (getBooleanParam("doc.xsd.comp.contentElements.include.inherited") ||
     findPredecessorByType("xs:%element|xs:complexType|xs:group").id == rootElement.id)
  })
)'
		SORTING='by-expr'
		SORTING_KEY={expr='instanceOf("xs:any") ? callStockSection("Any Element")
: (refQName = getAttrQNameValue("ref")) != null ? 
      toXMLName (refQName, Array (rootElement, contextElement))
  : callStockSection("Component Name")',ascending}
		SORTING_COND='getBooleanParam("doc.xsd.comp.contentElements.sorting")'
		FMT={
			table.sizing='Relative';
		}
		<HTARGET>
			HKEYS={
				'contextElement.id';
				'"content-element-detail"';
			}
		</HTARGET>
		<BODY>
			<FOLDER>
				DESCR='when the element is defined locally'
				COND='getAttrValue("name") != ""'
				MATCHING_ET='xs:%element'
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
						'"content-element-def"';
					}
				</HTARGET>
				<BODY>
					<AREA_SEC>
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
										FILE='../../images/element.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											image.alignment='bottom';
											image.padding.right='3.3';
										}
									</IMAGE_CTRL>
									<DATA_CTRL>
										FORMULA='name = getAttrStringValue("name");
schema = findAncestor ("xs:schema");

form = hasAttr("form") ? getAttrValue("form") : 
          schema.getAttrValue ("elementFormDefault");

(form == "qualified")
  ? toXMLName (schema.getServiceAttr("targetNamespace").toString(), name,
               Array (rootElement, contextElement))
  : name'
										FMT={
											ctrl.size.width='289.5';
											ctrl.size.height='17.3';
											text.style='cs3';
										}
										<DOC_HLINK>
											DESCR='first, try to reach the element\'s global documentation (if exists)'
											CONTEXT_ELEMENT_EXPR='// if this local element is documented globally,
// switch to the unifier via which it is documented
// (the unifier may be this element itself)

findElementByKey (
  "xsd-globally-documented-local-elements", contextElement.id
)'
											MATCHING_ET='xs:%element'
											TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("Link Title") : ""'
											HKEYS={
												'contextElement.id';
												'"detail"';
											}
										</DOC_HLINK>
										<DOC_HLINK>
											DESCR='otherwise, try to link to the definition location of this element in the XML schema source'
											TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("Link Title") : ""'
											HKEYS={
												'contextElement.id';
												'"xml-source-location"';
											}
										</DOC_HLINK>
									</DATA_CTRL>
									<PANEL>
										COND='output.format.supportsPageRefs
&&
getBooleanParam("fmt.page.refs")'
										CONTEXT_ELEMENT_EXPR='// if this local element is documented globally via a unifier,
// switch to that unifier

el = findElementByKey (
  "xsd-globally-documented-local-elements",
  contextElement.id
);

// if non-null returned, the element is documented globally and
// the necessary hypertarget exists; otherwise check other hypertargets
// (this, in effect, works as another enabling condition)

el != null ? el :
  findHyperTarget (
    Array (
      contextElement.id, "xml-source-location"
    )
  ) != null ? contextElement : null'
										MATCHING_ET='xs:%element'
										FMT={
											ctrl.size.width='164.3';
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
															DESCR='first, try to reach the element\'s global documentation (if exists);
otherwise, try to link to the definition location of this element in the XML schema source'
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
					<SS_CALL>
						SS_NAME='Element (local)'
						PARAMS_EXPR='Array (getVar ("definitionLocation"))'
						FMT={
							sec.indent.block='true';
						}
					</SS_CALL>
				</BODY>
			</FOLDER>
			<FOLDER>
				DESCR='otherwise, when this is a reference to a global element'
				COND='sectionBlock.execSecNone && getAttrValue("ref") != null'
				MATCHING_ET='xs:%element'
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
						'"content-element-def"';
					}
				</HTARGET>
				<BODY>
					<AREA_SEC>
						DESCR='when the reference is resolved into a documented element'
						CONTEXT_ELEMENT_EXPR='findElementByKey (
  "xsd-global-elements",
  getAttrQNameValue("ref"),
  BooleanQuery (checkElementByKey (
    "main-xmls",
    getXMLDocument().id,
    getElementParam("$mainXML")
  ))
)'
						MATCHING_ET='xs:element'
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
										FILE='../../images/element.png'
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
											ctrl.size.width='165.8';
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
						DESCR='otherwise, the referenced global element is not within documentation scope'
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
										FILE='../../images/element.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											image.alignment='bottom';
											image.padding.right='3.3';
										}
									</IMAGE_CTRL>
									<DATA_CTRL>
										FORMULA='toXMLName (getAttrQNameValue("ref"), Array (rootElement, contextElement))'
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
						SS_NAME='Element (reference)'
						PARAMS_EXPR='Array (getVar ("definitionLocation"))'
						FMT={
							sec.indent.block='true';
						}
					</SS_CALL>
				</BODY>
			</FOLDER>
			<FOLDER>
				DESCR='otherwise, if this is an element wildcard'
				COND='sectionBlock.execSecNone'
				MATCHING_ET='xs:any'
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
						'"content-element-wildcard"';
					}
				</HTARGET>
				<HTARGET>
					COND='getElementVar ("definitionLocation").id == rootElement.id'
					HKEYS={
						'rootElement.id';
						'"content-element-wildcard-def"';
					}
				</HTARGET>
				<BODY>
					<AREA_SEC>
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
										FILE='../../images/element.png'
										OUTPUT_DIR_EXPR='getStringParam("$resourceOutputDir")'
										FMT={
											image.alignment='bottom';
											image.padding.right='3.3';
										}
									</IMAGE_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='Any Element'
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
						SS_NAME='Element (wildcard)'
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
												TEXT='Content Element Detail'
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
		SS_NAME='Any Element'
		DESCR='prints the representation of the element wildcard'
		MATCHING_ET='xs:any'
		TEMPLATE_FILE='../content/wildcard.tpl'
	</TEMPLATE_CALL>
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
		SS_NAME='Element (local)'
		DESCR='params[0]: schema component where this element is defined'
		MATCHING_ET='xs:%element'
		INIT_EXPR='elementType = findElementByKey ("xsd-element-types", contextElement.id);

elementTypeQName = elementType.instanceOf("#CUSTOM") ?
{
  elementType.value.toQName()
} : {
  name = elementType.getAttrStringValue("name");
  schema = elementType.findAncestor ("xs:schema");
  nsURI = schema.getServiceAttr("targetNamespace").toString();

  QName (nsURI, name, Enum (rootElement, elementType))
};

stockSection.setVar ("elementTypeQName", elementTypeQName);
stockSection.setVar ("elementType", elementType);

// calculate preliminary whether to generate "XML Representation Summary"
// and store the boolean result in the "genXMLRep" variable;
// this is used in two places: to enable XMLRep section itself and
// to disable "Simple Content Representation" when XMLRep is present

stockSection.setVar (
  "genXMLRep",
  getBooleanParam("doc.xsd.comp.contentElements.xmlRep") && 
  (hasParamValue("doc.xsd.comp.contentElements.xmlRep.for.type", "any") ||
  {
    elementType.instanceOf("xs:%complexType") 
      ? hasParamValue("doc.xsd.comp.contentElements.xmlRep.for.type", "complexType")
      : hasParamValue("doc.xsd.comp.contentElements.xmlRep.for.type", "simpleType")
  })
)'
		<BODY>
			<FOLDER>
				DESCR='PROFILE'
				COND='getBooleanParam("doc.xsd.comp.contentElements.profile")'
				FMT={
					sec.outputStyle='table';
					table.cell.padding.both='0';
					table.border.style='none';
					table.option.borderStylesInHTML='true';
				}
				<BODY>
					<AREA_SEC>
						COND='! hasParamValue("doc.xsd.comp.contentElements.profile.form", "none")
&&
(
  getAttrValue("form") != null
  ||
  hasParamValue("doc.xsd.comp.contentElements.profile.form", "any") &&
    findAncestor("xs:schema").getAttrValue ("elementFormDefault") != null
)'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Form:'
										FMT={
											ctrl.size.width='43.5';
											ctrl.size.height='38.3';
											tcell.align.vert='Top';
											par.style='s4';
										}
									</TEXT_CTRL>
									<PANEL>
										FMT={
											ctrl.size.width='456';
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
  form = findAncestor("xs:schema").getAttrValue ("elementFormDefault");

(form != "qualified") ? "unqualified" : form'
														FMT={
															ctrl.size.width='366';
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
						COND='getBooleanParam("doc.xsd.comp.contentElements.profile.type")'
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
										SS_NAME='Type Summary'
										PARAMS_EXPR='Array (
  stockSection.getElementVar("elementType"),
  stockSection.getVar("elementTypeQName")
)'
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
						COND='! hasParamValue("doc.xsd.comp.contentElements.profile.block", "none")
&&
(
  getAttrValue("block") != null
  ||
  hasParamValue("doc.xsd.comp.contentElements.profile.block", "any") &&
    findAncestor("xs:schema").getAttrValue ("blockDefault") != null
)'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Block:'
										FMT={
											ctrl.size.width='43.5';
											ctrl.size.height='17.3';
											tcell.align.vert='Top';
											text.option.renderNLs='true';
											par.style='s4';
										}
									</TEXT_CTRL>
									<TEMPLATE_CALL_CTRL>
										TEMPLATE_FILE='elementBlockAttrInfo.tpl'
										PASSED_PARAMS={
											'$profile.block.value','getBooleanParam("doc.xsd.comp.contentElements.profile.block.value")';
											'$profile.block.meaning','getBooleanParam("doc.xsd.comp.contentElements.profile.block.meaning")';
										}
										FMT={
											content.outputStyle='text-par';
											ctrl.size.width='456';
											ctrl.size.height='17.3';
											par.style='s5';
										}
									</TEMPLATE_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						COND='getBooleanParam("doc.xsd.comp.contentElements.profile.default") &&
hasAttr("default")'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Default:'
										FMT={
											ctrl.size.width='43.5';
											ctrl.size.height='17.3';
											tcell.align.vert='Top';
											par.style='s4';
										}
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='\'"\' + getAttrValue("default") +\'"\''
										FMT={
											ctrl.size.width='456';
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
						COND='getBooleanParam("doc.xsd.comp.contentElements.profile.fixed") &&
hasAttr("fixed")'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Fixed:'
										FMT={
											ctrl.size.width='43.5';
											ctrl.size.height='17.3';
											tcell.align.vert='Top';
											par.style='s4';
										}
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='\'"\' + getAttrValue("fixed") +\'"\''
										FMT={
											ctrl.size.width='456';
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
						COND='getBooleanParam("doc.xsd.comp.contentElements.profile.nillable") &&
getAttrBooleanValue("nillable")'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Nillable:'
										FMT={
											ctrl.size.width='43.5';
											ctrl.size.height='17.3';
											tcell.align.vert='Top';
											par.style='s4';
										}
									</TEXT_CTRL>
									<TEXT_CTRL>
										TEXT='(can be declared as nil using xsi:nil attribute in instance XML documents)'
										FMT={
											ctrl.size.width='456';
											ctrl.size.height='17.3';
											text.style='cs11';
											par.style='s5';
										}
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						COND='getBooleanParam("doc.xsd.comp.contentElements.profile.defined")'
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
											ctrl.size.width='43.5';
											ctrl.size.height='140.3';
											tcell.align.vert='Top';
											par.style='s4';
										}
									</TEXT_CTRL>
									<PANEL>
										FMT={
											ctrl.size.width='456';
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
														MATCHING_ETS={'xs:%element';'xs:complexType';'xs:group'}
														FMT={
															ctrl.size.width='348';
														}
														<AREA>
															<CTRL_GROUP>
																<CTRLS>
																	<PANEL>
																		COND='rootElement.id == contextElement.id'
																		FMT={
																			ctrl.size.width='67.5';
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
																		MATCHING_ET='xs:group'
																		TEXT='group'
																	</TEXT_CTRL>
																</CTRLS>
															</CTRL_GROUP>
														</AREA>
													</PANEL>
													<PANEL>
														COND='! getBooleanParam("doc.xsd.comp.contentElements.xml")
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
				COND='getBooleanParam("doc.xsd.comp.contentElements.annotation")'
				SS_NAME='annotation'
				FMT={
					sec.spacing.before='6.7';
					sec.spacing.after='6.7';
					text.style='cs1';
				}
			</SS_CALL>
			<FOLDER>
				DESCR='XML REPRESENTATION SUMMARY'
				COND='stockSection.getBooleanVar ("genXMLRep")'
				COLLAPSED
				FMT={
					sec.spacing.before='6.7';
					sec.spacing.after='6.7';
					text.style='cs12';
				}
				<BODY>
					<AREA_SEC>
						COND='output.format.name == "HTML"'
						BREAK_PARENT_BLOCK='when-executed'
						FMT={
							sec.outputStyle='table';
							table.cell.padding.both='0';
							table.border.style='none';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEMPLATE_CALL_CTRL>
										TEMPLATE_FILE='../content/xmlRep.tpl'
										PASSED_PARAMS={
											'$showHeading','getBooleanParam("doc.xsd.comp.contentElements.xmlRep.heading")';
											'$sorting','getBooleanParam("doc.xsd.comp.contentElements.xmlRep.sorting")';
											'$xmlName','callStockSection("Component Name")';
											'$abbreviateSimpleContent','true';
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
					<TEMPLATE_CALL>
						TEMPLATE_FILE='../content/xmlRep.tpl'
						PASSED_PARAMS={
							'$showHeading','getBooleanParam("doc.xsd.comp.contentElements.xmlRep.heading")';
							'$sorting','getBooleanParam("doc.xsd.comp.contentElements.xmlRep.sorting")';
							'$xmlName','callStockSection("Component Name")';
							'$abbreviateSimpleContent','true';
							'$xmlContext','rootElement';
						}
					</TEMPLATE_CALL>
				</BODY>
			</FOLDER>
			<FOLDER>
				DESCR='ELEMENT SIMPLE CONTENT'
				COND='getBooleanParam("doc.xsd.comp.contentElements.simpleContent")'
				COLLAPSED
				FMT={
					sec.spacing.before='6.7';
				}
				<BODY>
					<AREA_SEC>
						COND='getBooleanParam("doc.xsd.comp.contentElements.simpleContent.model")
&&
! stockSection.getBooleanVar ("genXMLRep")
&&
! isXSPredefinedType (
  stockSection.getQNameVar ("elementTypeQName")
)'
						CONTEXT_ELEMENT_EXPR='stockSection.getElementVar("elementType")'
						MATCHING_ETS={'xs:%complexType';'xs:%simpleType'}
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
											'$abbreviateEnum','getBooleanParam("doc.xsd.comp.contentElements.simpleContent.restrictions")';
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
								COND='getBooleanParam("doc.xsd.comp.contentElements.simpleContent.restrictions")'
								CONTEXT_ELEMENT_EXPR='stockSection.getElementVar("elementType")'
								MATCHING_ETS={'xs:%complexType';'xs:%simpleType'}
								TARGET_ET='xs:%facet'
								SCOPE='advanced-location-rules'
								RULES={
									'xs:%simpleType -> xs:restriction',recursive;
									'xs:%complexType -> xs:simpleContent/(xs:extension|xs:restriction)',recursive;
									'(xs:restriction|xs:restriction%xs:simpleRestrictionType) -> (xs:%facet|xs:simpleType)',recursive;
									'(xs:extension%xs:simpleExtensionType|xs:restriction|xs:restriction%xs:simpleRestrictionType) -> {baseQName = getAttrQNameValue("base");
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
}}::(xs:complexType|xs:simpleType)',recursive;
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

(name == name.toLowerCase()
  ? name.charAt(0).toUpperCase() + name.substring(1) 
  : name) + \':\''
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
															'$facet.annotation','getBooleanParam("doc.xsd.comp.contentElements.simpleContent.restrictions.annotation")';
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
getBooleanParam("doc.xsd.comp.contentElements.simpleContent.default")'
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='Default:'
												FMT={
													ctrl.size.width='43.5';
													ctrl.size.height='17.3';
													tcell.align.vert='Top';
													par.style='s4';
												}
											</TEXT_CTRL>
											<DATA_CTRL>
												FORMULA='\'"\' + getAttrValue("default") +\'"\''
												FMT={
													ctrl.size.width='456';
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
getBooleanParam("doc.xsd.comp.contentElements.simpleContent.fixed")'
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='Fixed:'
												FMT={
													ctrl.size.width='43.5';
													ctrl.size.height='17.3';
													tcell.align.vert='Top';
													par.style='s4';
												}
											</TEXT_CTRL>
											<DATA_CTRL>
												FORMULA='\'"\' + getAttrValue("fixed") +\'"\''
												FMT={
													ctrl.size.width='456';
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
										TEXT='Simple Content'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
			</FOLDER>
			<SS_CALL>
				DESCR='TYPE DETAIL (case of anonymous type)'
				COND='getBooleanParam("doc.xsd.comp.contentElements.type")
&&
(hasParamValue("doc.xsd.comp.contentElements.type.for.type", "any") ||
 stockSection.getElementVar("elementType").instanceOf("xs:%localSimpleType"))'
				CONTEXT_ELEMENT_EXPR='stockSection.getElementVar("elementType")'
				MATCHING_ETS={'xs:%localComplexType';'xs:%localSimpleType'}
				SS_NAME='Type Detail'
			</SS_CALL>
			<SS_CALL>
				DESCR='XML SOURCE'
				COND='getBooleanParam("doc.xsd.comp.contentElements.xml")'
				SS_NAME='XML Source'
			</SS_CALL>
			<SS_CALL>
				DESCR='TYPE DETAIL (case of referenced global type)'
				COND='getBooleanParam("doc.xsd.comp.contentElements.type") &&
hasParamValue("doc.xsd.comp.contentElements.type.for.typeDecl", "any") &&
{
  type = stockSection.getElementVar("elementType");

  type.instanceOf("xs:simpleType") 
    ? ! isXSPredefinedType(stockSection.getQNameVar("elementTypeQName"))
    : hasParamValue("doc.xsd.comp.contentElements.type.for.type", "any")
}'
				CONTEXT_ELEMENT_EXPR='stockSection.getElementVar("elementType")'
				MATCHING_ETS={'xs:complexType';'xs:simpleType'}
				SS_NAME='Type Detail'
				PARAMS_EXPR='Array (stockSection.getVar("elementTypeQName"))'
			</SS_CALL>
		</BODY>
	</FOLDER>
	<FOLDER>
		SS_NAME='Element (reference)'
		DESCR='params[0]: schema component where this element is defined'
		MATCHING_ET='xs:%element'
		INIT_EXPR='// referenced global element

globalElement = findElementByKey (
  "xsd-global-elements", getAttrQNameValue("ref"),
  BooleanQuery (
    checkElementByKey (
      "main-xmls", getXMLDocument().id, getElementParam("$mainXML")
    )
  )
);

stockSection.setVar ("globalElement", globalElement);

// element type

elementType = findElementByKey ("xsd-element-types", globalElement.id);

elementTypeQName = elementType.instanceOf("#CUSTOM") ?
{
  elementType.value.toQName()
} : {
  name = elementType.getAttrStringValue("name");
  schema = elementType.findAncestor ("xs:schema");
  nsURI = schema.getServiceAttr("targetNamespace").toString();

  QName (nsURI, name, Enum (rootElement, elementType))
};

stockSection.setVar ("elementTypeQName", elementTypeQName);
stockSection.setVar ("elementType", elementType);

// calculate preliminary whether to generate "XML Representation Summary"
// and store the boolean result in the "genXMLRep" variable;
// this is used in two places: to enable XMLRep section itself and
// to disable "Simple Content Representation" when XMLRep is present

stockSection.setVar (
  "genXMLRep",
  getBooleanParam("doc.xsd.comp.contentElements.xmlRep") && 
  (hasParamValue("doc.xsd.comp.contentElements.xmlRep.for.type", "any") ||
  {
    elementType.instanceOf("xs:%complexType") 
      ? hasParamValue("doc.xsd.comp.contentElements.xmlRep.for.type", "complexType")
      : hasParamValue("doc.xsd.comp.contentElements.xmlRep.for.type", "simpleType")
  })
)'
		<BODY>
			<FOLDER>
				DESCR='PROFILE -- switch to the global element declaration'
				COND='getBooleanParam("doc.xsd.comp.contentElements.profile")'
				CONTEXT_ELEMENT_EXPR='stockSection.getElementVar("globalElement")'
				MATCHING_ET='xs:element'
				FMT={
					sec.outputStyle='table';
					table.cell.padding.both='0';
					table.border.style='none';
				}
				<BODY>
					<AREA_SEC>
						COND='hasParamValue("doc.xsd.comp.contentElements.profile.form", "any")'
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
						COND='getBooleanParam("doc.xsd.comp.contentElements.profile.type")'
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
										SS_NAME='Type Summary'
										PARAMS_EXPR='Array (
  stockSection.getElementVar("elementType"),
  stockSection.getVar("elementTypeQName")
)'
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
						COND='getBooleanParam("doc.xsd.comp.contentElements.profile.abstract")
&&
getAttrBooleanValue("abstract")'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Abstract:'
										FMT={
											ctrl.size.width='43.5';
											ctrl.size.height='17.3';
											tcell.align.vert='Top';
											par.style='s4';
										}
									</TEXT_CTRL>
									<TEXT_CTRL>
										TEXT='(may not be used directly in instance XML documents)'
										FMT={
											ctrl.size.width='456';
											ctrl.size.height='17.3';
											text.style='cs11';
											par.style='s5';
										}
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						COND='! hasParamValue("doc.xsd.comp.contentElements.profile.block", "none")
&&
(
  getAttrValue("block") != null
  ||
  hasParamValue("doc.xsd.comp.contentElements.profile.block", "any") &&
    findAncestor("xs:schema").getAttrValue ("blockDefault") != null
)'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Block:'
										FMT={
											ctrl.size.width='43.5';
											ctrl.size.height='17.3';
											tcell.align.vert='Top';
											text.option.renderNLs='true';
											par.style='s4';
										}
									</TEXT_CTRL>
									<TEMPLATE_CALL_CTRL>
										TEMPLATE_FILE='elementBlockAttrInfo.tpl'
										PASSED_PARAMS={
											'$profile.block.value','getBooleanParam("doc.xsd.comp.contentElements.profile.block.value")';
											'$profile.block.meaning','getBooleanParam("doc.xsd.comp.contentElements.profile.block.meaning")';
										}
										FMT={
											content.outputStyle='text-par';
											ctrl.size.width='456';
											ctrl.size.height='17.3';
											par.style='s5';
										}
									</TEMPLATE_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						COND='! hasParamValue("doc.xsd.comp.contentElements.profile.final", "none")
&& 
(
  getAttrValue("final") != null
  ||
  hasParamValue("doc.xsd.comp.contentElements.profile.final", "any") &&
    findAncestor("xs:schema").getAttrValue ("finalDefault") != null
)'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Final:'
										FMT={
											ctrl.size.width='43.5';
											ctrl.size.height='17.3';
											tcell.align.vert='Top';
											text.option.renderNLs='true';
											par.style='s4';
										}
									</TEXT_CTRL>
									<TEMPLATE_CALL_CTRL>
										TEMPLATE_FILE='elementFinalAttrInfo.tpl'
										PASSED_PARAMS={
											'$profile.final.value','getBooleanParam("doc.xsd.comp.contentElements.profile.final.value")';
											'$profile.final.meaning','getBooleanParam("doc.xsd.comp.contentElements.profile.final.meaning")';
										}
										FMT={
											content.outputStyle='text-par';
											ctrl.size.width='456';
											ctrl.size.height='17.3';
											par.style='s5';
										}
									</TEMPLATE_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						COND='getBooleanParam("doc.xsd.comp.contentElements.profile.subst")
&& 
{
  memberCount = countElementsByKey (
    "xsd-substitution-group-members",
    contextElement.id
  );

  memberCount > 0 ? {
    setVar ("memberCount", memberCount);
    true
  } : false
}'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Subst.Gr:'
										FMT={
											ctrl.size.width='43.5';
											ctrl.size.height='17.3';
											tcell.align.vert='Top';
											par.style='s4';
										}
									</TEXT_CTRL>
									<TEMPLATE_CALL_CTRL>
										TEMPLATE_FILE='substitutionGroupInfo.tpl'
										PASSED_PARAMS={
											'$list.heads','getBooleanParam("doc.xsd.comp.contentElements.profile.subst.heads")';
											'$list.members','getBooleanParam("doc.xsd.comp.contentElements.profile.subst.members")';
										}
										FMT={
											content.outputStyle='text-par';
											ctrl.size.width='456';
											ctrl.size.height='17.3';
											par.style='s5';
										}
									</TEMPLATE_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						COND='getBooleanParam("doc.xsd.comp.contentElements.profile.default")

// see also "Context Element" tab'
						CONTEXT_ELEMENT_EXPR='hasAttr("default") ? contextElement :
{
  globalElement = stockSection.getElementVar("globalElement");
  globalElement.hasAttr("default") ? globalElement : null
}'
						MATCHING_ET='xs:element'
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
						COND='getBooleanParam("doc.xsd.comp.contentElements.profile.fixed")

// see also "Context Element" tab'
						CONTEXT_ELEMENT_EXPR='globalElement = stockSection.getElementVar("globalElement");

globalElement.hasAttr("fixed") ? globalElement
  : hasAttr("fixed") ? contextElement : null'
						MATCHING_ET='xs:element'
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
										FORMULA='\'"\' + getAttrStringValue("fixed") +\'"\''
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
						COND='getBooleanParam("doc.xsd.comp.contentElements.profile.nillable") &&
getAttrBooleanValue("nillable")'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Nillable:'
										FMT={
											ctrl.size.width='43.5';
											ctrl.size.height='17.3';
											tcell.align.vert='Top';
											par.style='s4';
										}
									</TEXT_CTRL>
									<TEXT_CTRL>
										TEXT='(can be declared as nil using xsi:nil attribute in instance XML documents)'
										FMT={
											ctrl.size.width='456';
											ctrl.size.height='17.3';
											text.style='cs11';
											par.style='s5';
										}
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						COND='getBooleanParam("doc.xsd.comp.contentElements.profile.defined")'
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
														MATCHING_ETS={'xs:%element';'xs:complexType';'xs:group'}
														FMT={
															ctrl.size.width='348';
															ctrl.size.height='59.3';
														}
														<AREA>
															<CTRL_GROUP>
																<CTRLS>
																	<PANEL>
																		COND='rootElement.id == contextElement.id'
																		FMT={
																			ctrl.size.width='67.5';
																			ctrl.size.height='38.3';
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
																		MATCHING_ET='xs:group'
																		TEXT='group'
																	</TEXT_CTRL>
																</CTRLS>
															</CTRL_GROUP>
														</AREA>
													</PANEL>
													<PANEL>
														COND='! getBooleanParam("doc.xsd.comp.contentElements.xml")
&&
findHyperTarget (
  Array (contextElement.id, "xml-source-location")
) != null'
														FMT={
															ctrl.size.width='288';
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
				COND='getBooleanParam("doc.xsd.comp.contentElements.annotation")'
				SS_NAME='annotation'
				FMT={
					sec.spacing.before='6.7';
					sec.spacing.after='6.7';
					text.style='cs1';
				}
			</SS_CALL>
			<FOLDER>
				DESCR='XML REPRESENTATION SUMMARY'
				COND='stockSection.getBooleanVar ("genXMLRep")'
				CONTEXT_ELEMENT_EXPR='stockSection.getElementVar("globalElement")'
				MATCHING_ET='xs:element'
				COLLAPSED
				FMT={
					sec.spacing.before='6.7';
					sec.spacing.after='6.7';
					text.style='cs12';
				}
				<BODY>
					<AREA_SEC>
						COND='output.format.name == "HTML"'
						BREAK_PARENT_BLOCK='when-executed'
						FMT={
							sec.outputStyle='table';
							table.cell.padding.both='0';
							table.border.style='none';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEMPLATE_CALL_CTRL>
										TEMPLATE_FILE='../content/xmlRep.tpl'
										PASSED_PARAMS={
											'$showHeading','getBooleanParam("doc.xsd.comp.contentElements.xmlRep.heading")';
											'$sorting','getBooleanParam("doc.xsd.comp.contentElements.xmlRep.sorting")';
											'$xmlName','callStockSection("Component Name")';
											'$abbreviateSimpleContent','true';
											'$referenceComp','stockSection.contextElement';
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
					<TEMPLATE_CALL>
						TEMPLATE_FILE='../content/xmlRep.tpl'
						PASSED_PARAMS={
							'$showHeading','getBooleanParam("doc.xsd.comp.contentElements.xmlRep.heading")';
							'$sorting','getBooleanParam("doc.xsd.comp.contentElements.xmlRep.sorting")';
							'$xmlName','callStockSection("Component Name")';
							'$abbreviateSimpleContent','true';
							'$referenceComp','stockSection.contextElement';
							'$xmlContext','rootElement';
						}
					</TEMPLATE_CALL>
				</BODY>
			</FOLDER>
			<FOLDER>
				DESCR='ELEMENT SIMPLE CONTENT'
				COND='getBooleanParam("doc.xsd.comp.contentElements.simpleContent")'
				COLLAPSED
				FMT={
					sec.spacing.before='6.7';
				}
				<BODY>
					<AREA_SEC>
						COND='getBooleanParam("doc.xsd.comp.contentElements.simpleContent.model")
&&
! stockSection.getBooleanVar ("genXMLRep")
&&
! isXSPredefinedType (
  stockSection.getQNameVar ("elementTypeQName")
)'
						CONTEXT_ELEMENT_EXPR='stockSection.getElementVar("elementType")'
						MATCHING_ETS={'xs:%complexType';'xs:%simpleType'}
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
											'$abbreviateEnum','getBooleanParam("doc.xsd.comp.contentElements.simpleContent.restrictions")';
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
See details in "Element (local)" stock-section | "ELEMENT SIMPLE CONTENT" | "Iterate By Actual Facets"'
								COND='getBooleanParam("doc.xsd.comp.contentElements.simpleContent.restrictions")'
								CONTEXT_ELEMENT_EXPR='stockSection.getElementVar("elementType")'
								MATCHING_ETS={'xs:%complexType';'xs:%simpleType'}
								TARGET_ET='xs:%facet'
								SCOPE='advanced-location-rules'
								RULES={
									'xs:%simpleType -> xs:restriction',recursive;
									'xs:%complexType -> xs:simpleContent/(xs:extension|xs:restriction)',recursive;
									'(xs:restriction|xs:restriction%xs:simpleRestrictionType) -> (xs:%facet|xs:simpleType)',recursive;
									'(xs:extension%xs:simpleExtensionType|xs:restriction|xs:restriction%xs:simpleRestrictionType) -> {baseQName = getAttrQNameValue("base");
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
}}::(xs:complexType|xs:simpleType)',recursive;
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

(name == name.toLowerCase()
  ? name.charAt(0).toUpperCase() + name.substring(1) 
  : name) + \':\''
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
															'$facet.annotation','getBooleanParam("doc.xsd.comp.contentElements.simpleContent.restrictions.annotation")';
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
								COND='getBooleanParam("doc.xsd.comp.contentElements.simpleContent.default")

// see also "Context Element" tab'
								CONTEXT_ELEMENT_EXPR='hasAttr("default") ? contextElement :
{
  globalElement = stockSection.getElementVar("globalElement");
  globalElement.hasAttr("default") ? globalElement : null
}'
								MATCHING_ET='xs:element'
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='Default:'
												FMT={
													ctrl.size.width='43.5';
													ctrl.size.height='17.3';
													tcell.align.vert='Top';
													par.style='s4';
												}
											</TEXT_CTRL>
											<DATA_CTRL>
												FORMULA='\'"\' + getAttrValue("default") +\'"\''
												FMT={
													ctrl.size.width='456';
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
								COND='getBooleanParam("doc.xsd.comp.contentElements.simpleContent.fixed")

// see also "Context Element" tab'
								CONTEXT_ELEMENT_EXPR='globalElement = stockSection.getElementVar("globalElement");

globalElement.hasAttr("fixed") ? globalElement
  : hasAttr("fixed") ? contextElement : null'
								MATCHING_ET='xs:element'
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='Fixed:'
												FMT={
													ctrl.size.width='43.5';
													ctrl.size.height='17.3';
													tcell.align.vert='Top';
													par.style='s4';
												}
											</TEXT_CTRL>
											<DATA_CTRL>
												FORMULA='\'"\' + getAttrValue("fixed") +\'"\''
												FMT={
													ctrl.size.width='456';
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
										TEXT='Simple Content'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
			</FOLDER>
			<SS_CALL>
				DESCR='XML SOURCE'
				COND='getBooleanParam("doc.xsd.comp.contentElements.xml")'
				SS_NAME='XML Source'
			</SS_CALL>
			<SS_CALL>
				DESCR='TYPE DETAIL'
				COND='getBooleanParam("doc.xsd.comp.contentElements.type") &&
hasParamValue("doc.xsd.comp.contentElements.type.for.element", "any") &&
{
  type = stockSection.getElementVar("elementType");

  type.instanceOf("xs:simpleType") ?
    hasParamValue("doc.xsd.comp.contentElements.type.for.typeDecl", "any") &&
    ! isXSPredefinedType(stockSection.getQNameVar("elementTypeQName"))
  :
  type.instanceOf("xs:%localComplexType") ?
    hasParamValue("doc.xsd.comp.contentElements.type.for.type", "any")
  :
  type.instanceOf("xs:complexType") ?
    hasParamValue("doc.xsd.comp.contentElements.type.for.type", "any") &&
    hasParamValue("doc.xsd.comp.contentElements.type.for.typeDecl", "any")
  :
  true
}'
				CONTEXT_ELEMENT_EXPR='stockSection.getElementVar("elementType")'
				MATCHING_ETS={'xs:%complexType';'xs:%simpleType'}
				SS_NAME='Type Detail'
				PARAMS_EXPR='Array (stockSection.getVar("elementTypeQName"))'
			</SS_CALL>
		</BODY>
	</FOLDER>
	<FOLDER>
		SS_NAME='Element (wildcard)'
		DESCR='params[0]: schema component where this element is defined'
		MATCHING_ET='xs:%wildcard'
		<BODY>
			<FOLDER>
				DESCR='PROFILE'
				COND='getBooleanParam("doc.xsd.comp.contentElements.profile")'
				FMT={
					sec.outputStyle='table';
					table.cell.padding.both='0';
					table.border.style='none';
					table.option.borderStylesInHTML='true';
				}
				<BODY>
					<AREA_SEC>
						COND='getBooleanParam("doc.xsd.comp.contentElements.profile.defined")'
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
														TEXT='within'
													</TEXT_CTRL>
													<PANEL>
														CONTEXT_ELEMENT_EXPR='stockSection.param.toElement()'
														MATCHING_ETS={'xs:%element';'xs:complexType';'xs:group'}
														FMT={
															ctrl.size.width='350.3';
															ctrl.size.height='59.3';
														}
														<AREA>
															<CTRL_GROUP>
																<CTRLS>
																	<PANEL>
																		COND='rootElement.id == contextElement.id'
																		FMT={
																			ctrl.size.width='67.5';
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
																		MATCHING_ET='xs:group'
																		TEXT='group'
																	</TEXT_CTRL>
																</CTRLS>
															</CTRL_GROUP>
														</AREA>
													</PANEL>
													<PANEL>
														COND='! getBooleanParam("doc.xsd.comp.contentElements.xml")
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
				COND='getBooleanParam("doc.xsd.comp.contentElements.annotation")'
				SS_NAME='annotation'
				FMT={
					sec.spacing.before='6.7';
					sec.spacing.after='6.7';
					text.style='cs1';
				}
			</SS_CALL>
			<SS_CALL>
				DESCR='XML SOURCE'
				COND='getBooleanParam("doc.xsd.comp.contentElements.xml")'
				SS_NAME='XML Source'
			</SS_CALL>
		</BODY>
	</FOLDER>
	<TEMPLATE_CALL>
		SS_NAME='Link Title'
		TEMPLATE_FILE='../component/componentLinkTitle.tpl'
	</TEMPLATE_CALL>
	<FOLDER>
		SS_NAME='scope'
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='space';
		}
		<BODY>
			<AREA_SEC>
				DESCR='when inherited content elements are included'
				COND='getBooleanParam("doc.xsd.comp.contentElements.include.inherited")'
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
									ctrl.size.width='294.8';
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
												COND='hasParamValue("doc.xsd.comp.contentElements.include.local", "all")
&&
findElementByType (
  iterator.items,
  "xs:%element",
  BooleanQuery (getAttrValue("name") != "")
) != null'
												TEXT='local elements'
											</TEXT_CTRL>
											<TEXT_CTRL>
												COND='hasParamValue("doc.xsd.comp.contentElements.include.local", "simpleType")
&&
findElementByType (
  iterator.items,
  "xs:%element",
  BooleanQuery (getAttrValue("name") != "")
) != null'
												TEXT='local elements with simple type'
											</TEXT_CTRL>
											<TEXT_CTRL>
												COND='getBooleanParam("doc.xsd.comp.contentElements.include.references")
&&
findElementByType (
  iterator.items,
  "xs:%element",
  BooleanQuery (getAttrValue("ref") != "")
) != null'
												TEXT='references'
											</TEXT_CTRL>
											<TEXT_CTRL>
												COND='getBooleanParam("doc.xsd.comp.contentElements.include.wildcards")
&&
findElementByType (iterator.items, "xs:any") != null'
												TEXT='wildcards'
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
									ctrl.size.width='296.3';
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
												COND='hasParamValue("doc.xsd.comp.contentElements.include.local", "all")
&&
findElementByType (
  iterator.items,
  "xs:%element",
  BooleanQuery (getAttrValue("name") != "")
) != null'
												TEXT='local elements'
											</TEXT_CTRL>
											<TEXT_CTRL>
												COND='hasParamValue("doc.xsd.comp.contentElements.include.local", "simpleType")
&&
findElementByType (
  iterator.items,
  "xs:%element",
  BooleanQuery (getAttrValue("name") != "")
) != null'
												TEXT='local elements with simple type'
											</TEXT_CTRL>
											<TEXT_CTRL>
												COND='getBooleanParam("doc.xsd.comp.contentElements.include.references")
&&
findElementByType (
  iterator.items,
  "xs:%element",
  BooleanQuery (getAttrValue("ref") != "")
) != null'
												TEXT='references'
											</TEXT_CTRL>
											<TEXT_CTRL>
												COND='getBooleanParam("doc.xsd.comp.contentElements.include.wildcards")
&&
findElementByType (iterator.items, "xs:any") != null'
												TEXT='wildcards'
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
		MATCHING_ETS={'xs:%complexType';'xs:%simpleType'}
		<HTARGET>
			HKEYS={
				'contextElement.id';
				'"local"';
				'stockSections[1].contextElement.id';
				'rootElement.id';
			}
		</HTARGET>
		<BODY>
			<AREA_SEC>
				COND='getBooleanParam("doc.xsd.comp.contentElements.type.deriv.tree")'
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
									'$xmlSourceLink','instanceOf("xs:simpleType | xs:complexType") ||
! getBooleanParam("doc.xsd.comp.contentElements.xml")';
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
				COND='getBooleanParam("doc.xsd.comp.contentElements.type.annotation")'
				SS_NAME='annotation'
				FMT={
					sec.spacing.before='6.7';
					sec.spacing.after='5';
					text.style='cs2';
				}
			</SS_CALL>
			<TEMPLATE_CALL>
				COND='! hasParamValue("doc.xsd.comp.contentElements.type.deriv.simpleContent", "none")'
				TEMPLATE_FILE='../content/simpleContentDerivation.tpl'
				PASSED_PARAMS={
					'$deriv.simpleContent','getStringParam("doc.xsd.comp.contentElements.type.deriv.simpleContent")';
					'$deriv.simpleContent.facets','getBooleanParam("doc.xsd.comp.contentElements.type.deriv.simpleContent.facets")';
					'$deriv.simpleContent.annotations','getBooleanParam("doc.xsd.comp.contentElements.type.deriv.simpleContent.annotations")';
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
								MATCHING_ETS={'xs:%localComplexType';'xs:%localSimpleType'}
								TEXT='Anonymous'
							</TEXT_CTRL>
							<TEXT_CTRL>
								MATCHING_ET='xs:%simpleType'
								TEXT='simpleType'
							</TEXT_CTRL>
							<TEXT_CTRL>
								MATCHING_ET='xs:%complexType'
								TEXT='complexType'
							</TEXT_CTRL>
							<DATA_CTRL>
								MATCHING_ETS={'xs:complexType';'xs:simpleType'}
								FORMULA='\'"\' + stockSection.param + \'"\''
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
	<FOLDER>
		SS_NAME='Type Summary'
		DESCR='passed context element must be the element component declaration (not a reference to it);

params[0]:  the type element;
params[1]:  the type QName'
		MATCHING_ET='xs:%element'
		FMT={
			sec.outputStyle='text-par';
		}
		<BODY>
			<FOLDER>
				DESCR='switch to the element type -- when the element type is known'
				CONTEXT_ELEMENT_EXPR='stockSection.params[0].toElement()'
				MATCHING_ETS={'xs:%complexType';'xs:%simpleType'}
				BREAK_PARENT_BLOCK='when-executed'
				<BODY>
					<AREA_SEC>
						DESCR='in case of the global type (specified in \'type\' attribute); see "Component | Context Element" tab'
						MATCHING_ETS={'xs:complexType';'xs:simpleType'}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<DATA_CTRL>
										COND='! getAttrBooleanValue ("abstract")'
										FORMULA='toXMLName (
  stockSection.params[1].toQName(),
  Array (rootElement, contextElement)
)'
										FMT={
											text.style='cs4';
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
									<DATA_CTRL>
										COND='getAttrBooleanValue ("abstract")'
										FORMULA='toXMLName (
  stockSection.params[1].toQName(),
  Array (rootElement, contextElement)
)'
										FMT={
											text.style='cs4';
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
						COND='sectionBlock.execSecNone'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='anonymous'
										<DOC_HLINK>
											HKEYS={
												'contextElement.id';
												'"local"';
												'stockSections[1].contextElement.id';
												'rootElement.id';
											}
										</DOC_HLINK>
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
(
  findHyperTarget (Array (
    contextElement.id,
    "local",
    stockSections[1].contextElement.id,
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
																'stockSections[1].contextElement.id';
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
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<DELIMITER>
										FMT={
											txtfl.delimiter.type='text';
											txtfl.delimiter.text=', ';
										}
									</DELIMITER>
									<TEMPLATE_CALL_CTRL>
										CONTEXT_ELEMENT_EXPR='stockSection.contextElement'
										MATCHING_ET='xs:%element'
										TEMPLATE_FILE='../content/contentType.tpl'
										PASSED_PARAMS={
											'$allowNote','false';
										}
									</TEMPLATE_CALL_CTRL>
									<TEXT_CTRL>
										TEXT='content'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</FOLDER>
			<AREA_SEC>
				DESCR='when there is a type name specified in the \'type\' attribute'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								FORMULA='toXMLName (
  stockSection.params[1].toQName(),
  Array (rootElement, contextElement)
)'
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
							<DATA_CTRL>
								FORMULA='typeQName = stockSection.params[1].toQName();

(isXSPredefinedType (typeQName) ?

  typeQName.localName == "anyType" ? "any" : 
    hasAttrValue("fixed", "") ? "empty" : "predefined, simple"

: "unknown") + " content"'
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</FOLDER>
	<FOLDER>
		SS_NAME='XML Source'
		<BODY>
			<AREA_SEC>
				COND='getBooleanParam("doc.xsd.comp.contentElements.xml.box")'
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
									'$remove.xsd.anns','getBooleanParam("doc.xsd.comp.contentElements.xml.remove.xsd.anns")';
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
					'$remove.xsd.anns','getBooleanParam("doc.xsd.comp.contentElements.xml.remove.xsd.anns")';
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
									'$remove.xsd.anns','getBooleanParam("doc.xsd.comp.contentElements.xml.remove.xsd.anns")';
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
CHECKSUM='7OLEC358?jsLbH+DlsiseOYX+xJEGxxBH3z5kwKoBSw'
</DOCFLEX_TEMPLATE>