<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2005-05-03 12:32:00'
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
ROOT_ETS={'xs:%complexType';'xs:group'}
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$mainXML';
		param.type='GOMElement';
	}
	PARAM={
		param.name='$owner';
		param.description='The schema component for which this complex content model is generated.

When the model is generated for the referenced global element, the component passed in this parameter should be this very global element, not the reference to it.';
		param.type='GOMElement';
	}
	PARAM={
		param.name='$xmlContext';
		param.description='Specifies an element that determines the preferable XML document context (i.e. the position on the XML document\'s tree) against which the namespace prefix/URI binding will be resolved';
		param.type='GOMElement';
		param.defaultValue.expr='getElementParam("$owner")';
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
	<FOLDER>
		MATCHING_ET='xs:%complexType'
		BREAK_PARENT_BLOCK='when-executed'
		FMT={
			sec.outputStyle='text-par';
		}
		<BODY>
			<AREA_SEC>
				CONTEXT_ELEMENT_EXPR='el = (el = findChild("xs:complexContent")) != null && el.hasAttr ("mixed")
     ? el : contextElement;

el.getAttrBooleanValue("mixed") ? el : null'
				MATCHING_ETS={'xs:%complexType';'xs:complexContent'}
				BREAK_PARENT_BLOCK='when-executed'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='{text}'
								<DOC_HLINK>
									TITLE_EXPR='getBooleanParam("show.linkTitle") ? "character data" : ""'
									HKEYS={
										'contextElement.id';
										'"xml-source-location"';
									}
								</DOC_HLINK>
							</TEXT_CTRL>
							<DELIMITER>
								FMT={
									txtfl.delimiter.type='text';
									txtfl.delimiter.text=' × ';
								}
							</DELIMITER>
							<SS_CALL_CTRL>
								SS_NAME='complexType'
								PASSED_ELEMENT_EXPR='sectionBlock.contextElement'
								PASSED_ELEMENT_MATCHING_ET='xs:%complexType'
								PARAMS_EXPR='Array("mixed_context")'
							</SS_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<SS_CALL_CTRL>
								SS_NAME='complexType'
							</SS_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</FOLDER>
	<SS_CALL>
		MATCHING_ET='xs:group'
		SS_NAME='group'
		FMT={
			sec.outputStyle='text-par';
		}
	</SS_CALL>
</ROOT>
<STOCK_SECTIONS>
	<ELEMENT_ITER>
		SS_NAME='all'
		MATCHING_ET='xs:%all'
		TARGET_ET='xs:element%xs:narrowMaxMin'
		SCOPE='simple-location-rules'
		RULES={
			'* -> xs:element%xs:narrowMaxMin';
		}
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='text';
			txtfl.delimiter.text=' × ';
		}
		<BODY>
			<SS_CALL>
				SS_NAME='element'
			</SS_CALL>
		</BODY>
		<HEADER>
			<AREA_SEC>
				COND='getAttrIntValue("minOccurs") == 0'
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
				COND='getAttrIntValue("minOccurs") == 0'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT=')?'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</FOOTER>
	</ELEMENT_ITER>
	<FOLDER>
		SS_NAME='any'
		MATCHING_ET='xs:any'
		FMT={
			sec.outputStyle='text-par';
		}
		<BODY>
			<AREA_SEC>
				COND='checkStockSectionOutput ("Occurrence Operator")'
				BREAK_PARENT_BLOCK='when-executed'
				<AREA>
					<CTRL_GROUP>
						FMT={
							txtfl.delimiter.type='none';
						}
						<CTRLS>
							<TEXT_CTRL>
								COND='stockSection.param == "occurrence_context"'
								TEXT='('
							</TEXT_CTRL>
							<TEXT_CTRL>
								TEXT='{any}'
								<DOC_HLINK>
									DESCR='try to link to the wildcard\'s details, first, within the documentation of the current component (for which this content model representation is generated);
if not found, link to such details in the documentation of its parent component (where this element reference is defined);
finally, if not found still, try to link to the location in the XML schema source, where this wildcard is defined'
									TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("Wildcard Link Title") : ""'
									HKEYS={
										'contextElement.id';
										'Array ("local", "def", "xml-source-location")';
										'Array (getElementParam("$owner").id, NoKey())';
									}
								</DOC_HLINK>
							</TEXT_CTRL>
							<SS_CALL_CTRL>
								SS_NAME='Occurrence Operator'
							</SS_CALL_CTRL>
							<TEXT_CTRL>
								COND='stockSection.param == "occurrence_context"'
								TEXT=')'
							</TEXT_CTRL>
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
								TEXT='{any}'
								<DOC_HLINK>
									DESCR='try to link to the wildcard\'s details, first, within the documentation of the current component (for which this content model representation is generated);
if not found, link to such details in the documentation of its parent component (where this element reference is defined);
finally, if not found still, try to link to the location in the XML schema source, where this wildcard is defined'
									TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("Wildcard Link Title") : ""'
									HKEYS={
										'contextElement.id';
										'Array ("local", "def", "xml-source-location")';
										'Array (getElementParam("$owner").id, NoKey())';
									}
								</DOC_HLINK>
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</FOLDER>
	<FOLDER>
		SS_NAME='choice'
		MATCHING_ETS={'xs:choice';'xs:choice%xs:simpleExplicitGroup'}
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='text';
			txtfl.delimiter.text=' | ';
		}
		<BODY>
			<ELEMENT_ITER>
				COND='checkStockSectionOutput ("Occurrence Operator")'
				BREAK_PARENT_BLOCK='when-executed'
				TARGET_ETS={'xs:%element';'xs:%group';'xs:any'}
				SCOPE='simple-location-rules'
				RULES={
					'* -> (xs:%element|xs:%group|xs:any)';
				}
				<BODY>
					<SS_CALL>
						MATCHING_ET='xs:any'
						BREAK_PARENT_BLOCK='when-executed'
						SS_NAME='any'
						PARAMS_EXPR='Array (iterator.numItems > 1 ? 
  "choice_context" : "occurrence_context")'
					</SS_CALL>
					<SS_CALL>
						MATCHING_ET='xs:%element'
						BREAK_PARENT_BLOCK='when-executed'
						SS_NAME='element'
					</SS_CALL>
					<SS_CALL>
						MATCHING_ET='xs:%groupRef'
						BREAK_PARENT_BLOCK='when-executed'
						SS_NAME='groupRef'
						PARAMS_EXPR='Array (iterator.numItems > 1 ? 
  "choice_context" : "occurrence_context")'
					</SS_CALL>
					<SS_CALL>
						MATCHING_ET='xs:choice'
						BREAK_PARENT_BLOCK='when-executed'
						SS_NAME='choice'
						PARAMS_EXPR='Array (iterator.numItems > 1 ? 
  "choice_context" : "occurrence_context")'
					</SS_CALL>
					<SS_CALL>
						MATCHING_ET='xs:sequence'
						SS_NAME='sequence'
						PARAMS_EXPR='Array (iterator.numItems > 1 ? 
  "choice_context" : "occurrence_context")'
					</SS_CALL>
				</BODY>
				<HEADER>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='none';
								}
								<CTRLS>
									<TEXT_CTRL>
										COND='stockSection.param == "occurrence_context"'
										TEXT='('
									</TEXT_CTRL>
									<TEXT_CTRL>
										COND='iterator.numItems > 1'
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
								FMT={
									txtfl.delimiter.type='none';
								}
								<CTRLS>
									<TEXT_CTRL>
										COND='iterator.numItems > 1'
										TEXT=')'
									</TEXT_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='Occurrence Operator'
									</SS_CALL_CTRL>
									<TEXT_CTRL>
										COND='stockSection.param == "occurrence_context"'
										TEXT=')'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</FOOTER>
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				TARGET_ETS={'xs:%element';'xs:%group';'xs:any'}
				SCOPE='simple-location-rules'
				RULES={
					'* -> (xs:%element|xs:%group|xs:any)';
				}
				<BODY>
					<SS_CALL>
						MATCHING_ET='xs:any'
						BREAK_PARENT_BLOCK='when-executed'
						SS_NAME='any'
						PARAMS_EXPR='iterator.numItems > 1 ? 
  Array ("choice_context") : stockSection.params'
					</SS_CALL>
					<SS_CALL>
						MATCHING_ET='xs:%element'
						BREAK_PARENT_BLOCK='when-executed'
						SS_NAME='element'
					</SS_CALL>
					<SS_CALL>
						MATCHING_ET='xs:%groupRef'
						BREAK_PARENT_BLOCK='when-executed'
						SS_NAME='groupRef'
						PARAMS_EXPR='iterator.numItems > 1 ? 
  Array ("choice_context") : stockSection.params'
					</SS_CALL>
					<SS_CALL>
						MATCHING_ET='xs:choice'
						BREAK_PARENT_BLOCK='when-executed'
						SS_NAME='choice'
						PARAMS_EXPR='iterator.numItems > 1 ? 
  Array ("choice_context") : stockSection.params'
					</SS_CALL>
					<SS_CALL>
						MATCHING_ET='xs:sequence'
						SS_NAME='sequence'
						PARAMS_EXPR='iterator.numItems > 1 ? 
  Array ("choice_context") : stockSection.params'
					</SS_CALL>
				</BODY>
				<HEADER>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										COND='iterator.numItems > 1 &&
(stockSection.param != "choice_context" && stockSection.param != "")'
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
								FMT={
									txtfl.delimiter.type='none';
								}
								<CTRLS>
									<TEXT_CTRL>
										COND='iterator.numItems > 1 &&
(stockSection.param != "choice_context" && stockSection.param != "")'
										TEXT=')'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</FOOTER>
			</ELEMENT_ITER>
		</BODY>
	</FOLDER>
	<FOLDER>
		SS_NAME='complexContent'
		MATCHING_ET='xs:complexContent'
		FMT={
			sec.outputStyle='text-par';
		}
		<BODY>
			<ELEMENT_ITER>
				DESCR='DERIVATION BY EXTENSION
--
if content model is defined both by the base type and by the locally defined particle,
then treat the whole thing as a sequence'
				TARGET_ET='xs:extension%xs:extensionType'
				SCOPE='simple-location-rules'
				RULES={
					'* -> xs:extension%xs:extensionType';
				}
				FMT={
					txtfl.delimiter.type='text';
					txtfl.delimiter.text=', ';
				}
				<BODY>
					<SS_CALL>
						SS_NAME='complexType'
						PASSED_ELEMENT_EXPR='baseQName = getAttrQNameValue("base");

findElementByKey (
  "xsd-types",
  hasServiceAttr ("redefined") ?
    HashKey (baseQName, getServiceAttr ("redefined")) : baseQName,
  BooleanQuery (
    checkElementByKey (
      "main-xmls",
      getXMLDocument().id,
      getElementParam("$mainXML")
    )
  )
)'
						PASSED_ELEMENT_MATCHING_ET='xs:%complexType'
						PARAMS_EXPR='checkStockSectionOutput ("contentParticle") ?
  Array ("sequence_context") : stockSection.params'
					</SS_CALL>
					<SS_CALL>
						SS_NAME='contentParticle'
						PARAMS_EXPR='sectionBlock.outputSecNone ?
  stockSection.params : Array ("sequence_context")'
					</SS_CALL>
				</BODY>
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='DERIVATION BY RESTRICTION'
				TARGET_ET='xs:restriction%xs:complexRestrictionType'
				SCOPE='simple-location-rules'
				RULES={
					'* -> xs:restriction%xs:complexRestrictionType';
				}
				<BODY>
					<SS_CALL>
						SS_NAME='contentParticle'
						PARAMS_EXPR='stockSection.params'
					</SS_CALL>
				</BODY>
			</ELEMENT_ITER>
		</BODY>
	</FOLDER>
	<FOLDER>
		SS_NAME='complexType'
		MATCHING_ET='xs:%complexType'
		OUTPUT_CHECKER_EXPR='checkElementsByKey (
  "xsd-content-model-elements", contextElement.id
) ? 1 : -1'
		FMT={
			sec.outputStyle='text-par';
		}
		<BODY>
			<SS_CALL>
				SS_NAME='complexContent'
				PASSED_ELEMENT_EXPR='findChild("xs:complexContent")'
				PASSED_ELEMENT_MATCHING_ET='xs:complexContent'
				PARAMS_EXPR='stockSection.params'
			</SS_CALL>
			<SS_CALL>
				SS_NAME='contentParticle'
				PARAMS_EXPR='stockSection.params'
			</SS_CALL>
		</BODY>
	</FOLDER>
	<ELEMENT_ITER>
		SS_NAME='contentParticle'
		MATCHING_ETS={'xs:%complexType';'xs:extension%xs:extensionType';'xs:restriction%xs:complexRestrictionType'}
		TARGET_ET='xs:%group'
		SCOPE='simple-location-rules'
		RULES={
			'* -> xs:%group';
		}
		<BODY>
			<SS_CALL>
				MATCHING_ET='xs:%groupRef'
				BREAK_PARENT_BLOCK='when-executed'
				SS_NAME='groupRef'
				PARAMS_EXPR='stockSection.params'
			</SS_CALL>
			<SS_CALL>
				MATCHING_ET='xs:%all'
				BREAK_PARENT_BLOCK='when-executed'
				SS_NAME='all'
				PARAMS_EXPR='stockSection.params'
			</SS_CALL>
			<SS_CALL>
				MATCHING_ET='xs:choice'
				BREAK_PARENT_BLOCK='when-executed'
				SS_NAME='choice'
				PARAMS_EXPR='stockSection.params'
			</SS_CALL>
			<SS_CALL>
				MATCHING_ET='xs:sequence'
				SS_NAME='sequence'
				PARAMS_EXPR='stockSection.params'
			</SS_CALL>
		</BODY>
	</ELEMENT_ITER>
	<FOLDER>
		SS_NAME='element'
		MATCHING_ET='xs:%localElement'
		FMT={
			sec.outputStyle='text-par';
		}
		<BODY>
			<AREA_SEC>
				DESCR='when this is a reference to global element'
				COND='getAttrValue("ref") != null'
				INIT_EXPR='stockSection.setVar (
  "globalElement", 
  findElementByKey (
    "xsd-global-elements", getAttrQNameValue("ref"),
    BooleanQuery (
      checkElementByKey (
        "main-xmls",
        getXMLDocument().id,
        getElementParam("$mainXML")
      )
    )
  )
)'
				BREAK_PARENT_BLOCK='when-executed'
				<AREA>
					<CTRL_GROUP>
						FMT={
							txtfl.delimiter.type='none';
						}
						<CTRLS>
							<DATA_CTRL>
								COND='! stockSection.getElementVar (
  "globalElement"
).getAttrBooleanValue("abstract")'
								FORMULA='toXMLName (
  getAttrQNameValue("ref"),
  Array (getElementParam("$xmlContext"), contextElement)
)'
								<DOC_HLINK>
									DESCR='try to link to the details about this element reference within the documentation of the current component (for which this content model representation is generated);
if not found, link to such details in the documentation of its parent component (where this element reference is defined);
if not found still, link to the element global documentation;
finally, try to link to the location in the XML schema source, where the element reference is defined'
									TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection (
    stockSection.getElementVar("globalElement"),
    "Element Link Title"
  )
: ""'
									HKEYS={
										'Array (
  contextElement.id,
  contextElement.id,
  stockSection.getElementVar("globalElement").id,
  contextElement.id
)';
										'Array (
  "local",
  "def",
  "detail",
  "xml-source-location"
)';
										'Array (getElementParam("$owner").id, NoKey())';
									}
								</DOC_HLINK>
							</DATA_CTRL>
							<DATA_CTRL>
								COND='stockSection.getElementVar (
  "globalElement"
).getAttrBooleanValue("abstract")'
								FORMULA='toXMLName (
  getAttrQNameValue("ref"),
  Array (getElementParam("$xmlContext"), contextElement)
)'
								FMT={
									text.font.style.italic='true';
								}
								<DOC_HLINK>
									DESCR='try to link to the details about this element reference within the documentation of the current component (for which this content model representation is generated);
if not found, link to such details in the documentation of its parent component (where this element reference is defined);
if not found still, link to the element global documentation;
finally, try to link to the location in the XML schema source, where the element reference is defined'
									TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection (
    stockSection.getElementVar("globalElement"),
    "Element Link Title"
  )
: ""'
									HKEYS={
										'Array (
  contextElement.id,
  contextElement.id,
  stockSection.getElementVar("globalElement").id,
  contextElement.id
)';
										'Array (
  "local",
  "def",
  "detail",
  "xml-source-location"
)';
										'Array (getElementParam("$owner").id, NoKey())';
									}
								</DOC_HLINK>
							</DATA_CTRL>
							<SS_CALL_CTRL>
								SS_NAME='Occurrence Operator'
							</SS_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				DESCR='otherwise, this is a local element'
				<AREA>
					<CTRL_GROUP>
						FMT={
							txtfl.delimiter.type='none';
						}
						<CTRLS>
							<DATA_CTRL>
								FORMULA='name = getAttrStringValue("name");
schema = findAncestor ("xs:schema");

form = hasAttr("form") ? getAttrValue("form") :
         schema.getAttrValue ("elementFormDefault");

form == "qualified" ?
  toXMLName (
    schema.getServiceAttr("targetNamespace").toString(),
    name,
    Array (getElementParam("$xmlContext"), contextElement)
  )
: name'
								<DOC_HLINK>
									DESCR='try to link to the element\'s detail within the documentation of the current component (for which this content model representation is generated);
if not found, link to the element\'s detail in the documentation of its parent component (where this local element is defined)'
									TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("Element Link Title") : ""'
									HKEYS={
										'contextElement.id';
										'Array ("local", "def")';
										'Array (getElementParam("$owner").id, NoKey())';
									}
								</DOC_HLINK>
								<DOC_HLINK>
									DESCR='otherwise, link to the element\'s global documentation (if exists)'
									CONTEXT_ELEMENT_EXPR='// if this local element is documented globally,
// switch to the unifier via which it is documented
// (the unifier may be this element itself)

findElementByKey ("xsd-globally-documented-local-elements", contextElement.id)'
									MATCHING_ET='xs:%localElement'
									TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("Element Link Title") : ""'
									HKEYS={
										'contextElement.id';
										'"detail"';
									}
								</DOC_HLINK>
								<DOC_HLINK>
									DESCR='finally, link to the element\'s definition location within the XML schema source'
									TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("Element Link Title") : ""'
									HKEYS={
										'contextElement.id';
										'"xml-source-location"';
									}
								</DOC_HLINK>
							</DATA_CTRL>
							<SS_CALL_CTRL>
								SS_NAME='Occurrence Operator'
							</SS_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</FOLDER>
	<TEMPLATE_CALL>
		SS_NAME='Element Link Title'
		TEMPLATE_FILE='../component/componentLinkTitle.tpl'
		PASSED_PARAMS={
			'gen.doc.xsd.comp.element.local.unifyByType','false

/* since each local element in the content model has
 a determined meaning (and is defined only in a single
 location), reporting about unification by type
 may be confusing here */';
		}
	</TEMPLATE_CALL>
	<ELEMENT_ITER>
		SS_NAME='group'
		MATCHING_ET='xs:group'
		OUTPUT_CHECKER_EXPR='checkElementsByKey (
  "xsd-content-model-elements", contextElement.id
) ? 1 : -1'
		TARGET_ET='xs:%group'
		SCOPE='simple-location-rules'
		RULES={
			'* -> xs:%group';
		}
		<BODY>
			<SS_CALL>
				MATCHING_ET='xs:choice%xs:simpleExplicitGroup'
				BREAK_PARENT_BLOCK='when-executed'
				SS_NAME='choice'
				PARAMS_EXPR='stockSection.params'
			</SS_CALL>
			<SS_CALL>
				MATCHING_ET='xs:sequence%xs:simpleExplicitGroup'
				BREAK_PARENT_BLOCK='when-executed'
				SS_NAME='sequence'
				PARAMS_EXPR='stockSection.params'
			</SS_CALL>
			<SS_CALL>
				SS_NAME='all'
				PARAMS_EXPR='stockSection.params'
			</SS_CALL>
		</BODY>
	</ELEMENT_ITER>
	<FOLDER>
		SS_NAME='groupRef'
		MATCHING_ET='xs:%groupRef'
		FMT={
			sec.outputStyle='text-par';
		}
		<BODY>
			<FOLDER>
				COND='checkStockSectionOutput ("Occurrence Operator")'
				BREAK_PARENT_BLOCK='when-executed'
				<BODY>
					<SS_CALL>
						SS_NAME='group'
						PASSED_ELEMENT_EXPR='qName = getAttrQNameValue("ref");

findElementByKey (
  "xsd-groups",
  hasServiceAttr ("redefined") ?
    HashKey (qName, getServiceAttr ("redefined")) : qName,
  BooleanQuery (
    checkElementByKey (
      "main-xmls",
      getXMLDocument().id,
      getElementParam("$mainXML")
    )
  )
)'
						PASSED_ELEMENT_MATCHING_ET='xs:group'
						PARAMS_EXPR='Array ("occurrence_context")'
					</SS_CALL>
				</BODY>
				<HEADER>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										COND='stockSection.param == "occurrence_context"'
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
								FMT={
									txtfl.delimiter.type='none';
								}
								<CTRLS>
									<SS_CALL_CTRL>
										SS_NAME='Occurrence Operator'
									</SS_CALL_CTRL>
									<TEXT_CTRL>
										COND='stockSection.param == "occurrence_context"'
										TEXT=')'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</FOOTER>
			</FOLDER>
			<FOLDER>
				<BODY>
					<SS_CALL>
						SS_NAME='group'
						PASSED_ELEMENT_EXPR='qName = getAttrQNameValue("ref");

findElementByKey (
  "xsd-groups",
  hasServiceAttr ("redefined") ?
    HashKey (qName, getServiceAttr ("redefined")) : qName,
  BooleanQuery (
    checkElementByKey (
      "main-xmls",
      getXMLDocument().id,
      getElementParam("$mainXML")
    )
  )
)'
						PASSED_ELEMENT_MATCHING_ET='xs:group'
						PARAMS_EXPR='stockSection.params'
					</SS_CALL>
				</BODY>
			</FOLDER>
		</BODY>
	</FOLDER>
	<FOLDER>
		SS_NAME='Occurrence Operator'
		COND='(hasAttr("minOccurs") || hasAttr("maxOccurs")) &&
(getAttrIntValue("minOccurs") != 1 || getAttrIntValue("maxOccurs") != 1)'
		MATCHING_ETS={'xs:%group';'xs:%localElement';'xs:any'}
		<BODY>
			<AREA_SEC>
				BREAK_PARENT_BLOCK='when-output'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								COND='getAttrIntValue("minOccurs") == 0 &&
getAttrIntValue("maxOccurs") == 1'
								TEXT='?'
							</TEXT_CTRL>
							<TEXT_CTRL>
								COND='getAttrIntValue("minOccurs") == 1 &&
getAttrStringValue("maxOccurs") == "unbounded"'
								TEXT='+'
							</TEXT_CTRL>
							<TEXT_CTRL>
								COND='getAttrIntValue("minOccurs") == 0 &&
getAttrStringValue("maxOccurs") == "unbounded"'
								TEXT='*'
							</TEXT_CTRL>
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
								TEXT='['
							</TEXT_CTRL>
							<DATA_CTRL>
								ATTR='minOccurs'
							</DATA_CTRL>
							<TEXT_CTRL>
								TEXT='..'
							</TEXT_CTRL>
							<DATA_CTRL>
								FORMULA='(maxOccurs = getAttrStringValue("maxOccurs")) == "unbounded" ? 
"*" : maxOccurs'
							</DATA_CTRL>
							<TEXT_CTRL>
								TEXT=']'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</FOLDER>
	<FOLDER>
		SS_NAME='sequence'
		MATCHING_ETS={'xs:sequence';'xs:sequence%xs:simpleExplicitGroup'}
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='text';
			txtfl.delimiter.text=', ';
		}
		<BODY>
			<ELEMENT_ITER>
				COND='checkStockSectionOutput ("Occurrence Operator")'
				BREAK_PARENT_BLOCK='when-executed'
				TARGET_ETS={'xs:%element';'xs:%group';'xs:any'}
				SCOPE='simple-location-rules'
				RULES={
					'* -> (xs:%element|xs:%group|xs:any)';
				}
				<BODY>
					<SS_CALL>
						MATCHING_ET='xs:any'
						BREAK_PARENT_BLOCK='when-executed'
						SS_NAME='any'
						PARAMS_EXPR='Array (iterator.numItems > 1 ? 
  "sequence_context" : "occurrence_context")'
					</SS_CALL>
					<SS_CALL>
						MATCHING_ET='xs:%element'
						BREAK_PARENT_BLOCK='when-executed'
						SS_NAME='element'
					</SS_CALL>
					<SS_CALL>
						MATCHING_ET='xs:%groupRef'
						BREAK_PARENT_BLOCK='when-executed'
						SS_NAME='groupRef'
						PARAMS_EXPR='Array (iterator.numItems > 1 ? 
  "sequence_context" : "occurrence_context")'
					</SS_CALL>
					<SS_CALL>
						MATCHING_ET='xs:choice'
						BREAK_PARENT_BLOCK='when-executed'
						SS_NAME='choice'
						PARAMS_EXPR='Array (iterator.numItems > 1 ? 
  "sequence_context" : "occurrence_context")'
					</SS_CALL>
					<SS_CALL>
						MATCHING_ET='xs:sequence'
						SS_NAME='sequence'
						PARAMS_EXPR='Array (iterator.numItems > 1 ? 
  "sequence_context" : "occurrence_context")'
					</SS_CALL>
				</BODY>
				<HEADER>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='none';
								}
								<CTRLS>
									<TEXT_CTRL>
										COND='stockSection.param == "occurrence_context"'
										TEXT='('
									</TEXT_CTRL>
									<TEXT_CTRL>
										COND='iterator.numItems > 1'
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
								FMT={
									txtfl.delimiter.type='none';
								}
								<CTRLS>
									<TEXT_CTRL>
										COND='iterator.numItems > 1'
										TEXT=')'
									</TEXT_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='Occurrence Operator'
									</SS_CALL_CTRL>
									<TEXT_CTRL>
										COND='stockSection.param == "occurrence_context"'
										TEXT=')'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</FOOTER>
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				TARGET_ETS={'xs:%element';'xs:%group';'xs:any'}
				SCOPE='simple-location-rules'
				RULES={
					'* -> (xs:%element|xs:%group|xs:any)';
				}
				<BODY>
					<SS_CALL>
						MATCHING_ET='xs:any'
						BREAK_PARENT_BLOCK='when-executed'
						SS_NAME='any'
						PARAMS_EXPR='iterator.numItems > 1 ? 
  Array ("sequence_context") : stockSection.params'
					</SS_CALL>
					<SS_CALL>
						MATCHING_ET='xs:%element'
						BREAK_PARENT_BLOCK='when-executed'
						SS_NAME='element'
					</SS_CALL>
					<SS_CALL>
						MATCHING_ET='xs:%groupRef'
						BREAK_PARENT_BLOCK='when-executed'
						SS_NAME='groupRef'
						PARAMS_EXPR='iterator.numItems > 1 ? 
  Array ("sequence_context") : stockSection.params'
					</SS_CALL>
					<SS_CALL>
						MATCHING_ET='xs:choice'
						BREAK_PARENT_BLOCK='when-executed'
						SS_NAME='choice'
						PARAMS_EXPR='iterator.numItems > 1 ? 
  Array ("sequence_context") : stockSection.params'
					</SS_CALL>
					<SS_CALL>
						MATCHING_ET='xs:sequence'
						SS_NAME='sequence'
						PARAMS_EXPR='iterator.numItems > 1 ? 
  Array ("sequence_context") : stockSection.params'
					</SS_CALL>
				</BODY>
				<HEADER>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										COND='iterator.numItems > 1 && 
(stockSection.param != "sequence_context" && stockSection.param != "")'
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
								FMT={
									txtfl.delimiter.type='none';
								}
								<CTRLS>
									<TEXT_CTRL>
										COND='iterator.numItems > 1 &&
(stockSection.param != "sequence_context" && stockSection.param != "")'
										TEXT=')'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</FOOTER>
			</ELEMENT_ITER>
		</BODY>
	</FOLDER>
	<TEMPLATE_CALL>
		SS_NAME='Wildcard Link Title'
		TEMPLATE_FILE='wildcard.tpl'
	</TEMPLATE_CALL>
</STOCK_SECTIONS>
CHECKSUM='P2LTFokrV3alt8HRkuGDHIhxnIHz103l88XjG11?LOU'
</DOCFLEX_TEMPLATE>