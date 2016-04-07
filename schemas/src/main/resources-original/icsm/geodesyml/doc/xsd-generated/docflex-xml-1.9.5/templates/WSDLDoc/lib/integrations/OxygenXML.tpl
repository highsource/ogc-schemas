<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2012-03-13 08:13:44'
LAST_UPDATE='2014-07-05 20:02:57'
DESIGNER_TOOL='DocFlex SDK 1.x'
DESIGNER_LICENSE_TYPE='Filigris Works Team'
APP_ID='docflex-xml-wsdldoc'
APP_NAME='DocFlex/XML WSDLDoc'
APP_VER='1.0.b'
APP_AUTHOR='Copyright © 2005-2014 Filigris Works, Leonid Rudy Softwareprodukte. All rights reserved.'
FEATURE_TYPE='pro'
TEMPLATE_TYPE='ProcedureTemplate'
DSM_TYPE_ID='wsdldoc'
ROOT_ET='#DOCUMENTS'
INIT_EXPR='options = Map();

options.putByKey (
  "threadCountMax", 
  getBooleanParam("integration.OxygenXML.multithread") ?
    getParam("integration.OxygenXML.multithread.max") : "1"
);

options.putByKey ("diagram.format", getParam("integration.OxygenXML.diagram.format"));
options.putByKey ("diagram.annotations", getBooleanParam("integration.OxygenXML.diagram.annotations"));

oxygenStart (options)'
FINISH_EXPR='oxygenFinish()'
<TEMPLATE_PARAMS>
	PARAM={
		param.name='integration.OxygenXML.multithread';
		param.title='Multithread Processing';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='integration.OxygenXML.multithread.max';
		param.title='Max Number of Threads';
		param.type='string';
	}
	PARAM={
		param.name='integration.OxygenXML.diagram';
		param.title='Diagrams';
		param.group='true';
	}
	PARAM={
		param.name='integration.OxygenXML.diagram.format';
		param.title='Format';
		param.type='enum';
		param.enum.values='PNG;GIF;JPEG';
	}
	PARAM={
		param.name='integration.OxygenXML.diagram.annotations';
		param.title='Show Annotations';
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
	<ELEMENT_ITER>
		STEP_EXPR='oxygenCheckErrors();

oxygenFolder = makeUniquePath (
  output.docFilesDir + "OxygenXML",
  makeFileName (getXMLDocument().getAttrStringValue("xmlName")),
  ""
);
setVar ("oxygenFolder", oxygenFolder);'
		TARGET_ET='#DOCUMENT'
		SCOPE='advanced-location-rules'
		RULES={
			'* -> #DOCUMENT[hasAttr("isMain")
||
checkElementsByLPath (
  "wsdl:definitions/wsdl:types/xs:schema"
)]';
		}
		<BODY>
			<SS_CALL>
				DESCR='case of XSD file'
				CONTEXT_ELEMENT_EXPR='findChild ("xs:schema")'
				MATCHING_ET='xs:schema'
				BREAK_PARENT_BLOCK='when-executed'
				SS_NAME='Process Schema'
				PARAMS_EXPR='Array (
  getXMLDocument(),
  getXMLDocument().getAttrStringValue("xmlURI"),
  getXMLDocument().getAttrValue("xmlName"),
  getStringVar("oxygenFolder")
)'
			</SS_CALL>
			<FOLDER>
				DESCR='case of WSDL file'
				CONTEXT_ELEMENT_EXPR='findChild ("wsdl:definitions")'
				MATCHING_ET='wsdl:definitions'
				<BODY>
					<ELEMENT_ITER>
						DESCR='assign export file pathname to each embedded schema (see Processing | Init/Step/Finish | Step Expression tab); this must be done preliminary because some embedded schemas may import other embedded schemas (defined in the same WSDL) and therefore their new (exported) locations must be specified in the corresponding <xs:import> elements (this is done during the export in schemaSource.tpl template)'
						STEP_EXPR='schemaName = "schema" + 
  (hasServiceAttr ("embeddedSchemaNo") ? 
    getServiceAttr ("embeddedSchemaNo") : "");

setServiceAttr ("schemaName", schemaName);

setServiceAttr (
  "schemaLocation",
  getStringVar("oxygenFolder") + \'/\' +  schemaName + ".xsd"
)'
						TARGET_ET='xs:schema'
						SCOPE='advanced-location-rules'
						RULES={
							'* -> wsdl:types/xs:schema';
						}
					</ELEMENT_ITER>
					<ELEMENT_ITER>
						DESCR='export each embedded schema to a separate file; all embedded schemas must be exported before processing anything by OxygenXML because some embedded schemas may reference (import) others'
						TARGET_ET='xs:schema'
						SCOPE='advanced-location-rules'
						RULES={
							'* -> wsdl:types/xs:schema';
						}
						<BODY>
							<TEMPLATE_CALL>
								TEMPLATE_FILE='../xsd/schema/schemaSource.tpl'
								OUTPUT_TYPE='document'
								OUTPUT_DIR_EXPR='getStringVar("oxygenFolder")'
								FILE_NAME_EXPR='getServiceAttr("schemaName") + ".xsd"'
								PLAIN_TEXT_FILE
							</TEMPLATE_CALL>
						</BODY>
					</ELEMENT_ITER>
					<ELEMENT_ITER>
						DESCR='process each embedded schema by OxygenXML'
						TARGET_ET='xs:schema'
						SCOPE='advanced-location-rules'
						RULES={
							'* -> wsdl:types/xs:schema';
						}
						<BODY>
							<SS_CALL>
								SS_NAME='Process Schema'
								PARAMS_EXPR='Array (
  getXMLDocument(),
  getServiceAttr ("schemaLocation"),
  getServiceAttr("schemaName") + ".xsd",
  getStringVar("oxygenFolder") + \'/\' + getServiceAttr("schemaName")
)'
							</SS_CALL>
						</BODY>
					</ELEMENT_ITER>
				</BODY>
			</FOLDER>
		</BODY>
	</ELEMENT_ITER>
</ROOT>
<STOCK_SECTIONS>
	<FOLDER>
		SS_NAME='Add Components'
		DESCR='params[0]: master XML document;
params[1]: schemaInfo'
		MATCHING_ET='xs:schema'
		<BODY>
			<ELEMENT_ITER>
				DESCR='iterate by global attributes'
				STEP_EXPR='el = CustomElement();

el.setAttr ("schemaInfo", stockSection.params [1]);

el.setAttr ("id", contextElement.id);
el.setAttr ("type", "attribute");
el.setAttr ("name", getAttrValue("name"));
el.setAttr ("path", callStockSection ("Qualified Name"));
el.setAttr ("pathRootType", "attribute");

thisContext.getVar ("components").toVector().addElement (el)'
				TARGET_ET='xs:attribute'
				SCOPE='simple-location-rules'
				RULES={
					'* -> xs:attribute';
				}
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='iterate by global elements'
				STEP_EXPR='el = CustomElement();

el.setAttr ("schemaInfo", stockSection.params [1]);

el.setAttr ("id", contextElement.id);
el.setAttr ("type", "element");
el.setAttr ("name", getAttrValue("name"));
el.setAttr ("path", callStockSection ("Qualified Name"));
el.setAttr ("pathRootType", "element");

thisContext.getVar ("components").toVector().addElement (el)
'
				TARGET_ET='xs:element'
				SCOPE='simple-location-rules'
				RULES={
					'* -> xs:element';
				}
				<BODY>
					<SS_CALL>
						SS_NAME='Add Local Element & Attributes'
						PARAMS_EXPR='Array (
  stockSection.params[0], // master XML document
  stockSection.params[1], // schemaInfo

  // parentPath
  callStockSection ("Qualified Name"),

  "element"  // pathRootType
)'
					</SS_CALL>
				</BODY>
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='iterate by groups'
				STEP_EXPR='el = CustomElement();

el.setAttr ("schemaInfo", stockSection.params [1]);

el.setAttr ("id", contextElement.id);
el.setAttr ("type", "group");
el.setAttr ("name", getAttrValue("name"));
el.setAttr ("redefinition", getServiceAttr ("redefinition").toString());
el.setAttr ("path", callStockSection ("Qualified Name"));
el.setAttr ("pathRootType", "group");

thisContext.getVar ("components").toVector().addElement (el)
'
				TARGET_ET='xs:group'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> xs:group';
					'* -> xs:redefine/xs:group';
				}
				<BODY>
					<SS_CALL>
						SS_NAME='Add Local Element & Attributes'
						PARAMS_EXPR='Array (
  stockSection.params[0], // master XML document
  stockSection.params[1], // schemaInfo

  // parentPath
  callStockSection ("Qualified Name"),

  "group"  // pathRootType
)'
					</SS_CALL>
				</BODY>
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='iterate by complex types'
				STEP_EXPR='el = CustomElement();

el.setAttr ("schemaInfo", stockSection.params [1]);

el.setAttr ("id", contextElement.id);
el.setAttr ("type", "complexType");
el.setAttr ("name", getAttrValue("name"));
el.setAttr ("redefinition", getServiceAttr ("redefinition").toString());
el.setAttr ("path", callStockSection ("Qualified Name"));
el.setAttr ("pathRootType", "complexType");

thisContext.getVar ("components").toVector().addElement (el)'
				TARGET_ET='xs:complexType'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> xs:complexType';
					'* -> xs:redefine/xs:complexType';
				}
				<BODY>
					<SS_CALL>
						SS_NAME='Add Local Element & Attributes'
						PARAMS_EXPR='Array (
  stockSection.params[0], // master XML document
  stockSection.params[1], // schemaInfo

  // parentPath
  callStockSection ("Qualified Name"),

  "complexType"  // pathRootType
)'
					</SS_CALL>
				</BODY>
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='iterate by attribute groups'
				STEP_EXPR='el = CustomElement();

el.setAttr ("schemaInfo", stockSection.params [1]);

el.setAttr ("id", contextElement.id);
el.setAttr ("type", "attributeGroup");
el.setAttr ("name", getAttrValue("name"));
el.setAttr ("redefinition", getServiceAttr ("redefinition").toString());
el.setAttr ("path", callStockSection ("Qualified Name"));
el.setAttr ("pathRootType", "attributeGroup");

thisContext.getVar ("components").toVector().addElement (el)
'
				TARGET_ET='xs:attributeGroup'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> xs:attributeGroup';
					'* -> xs:redefine/xs:attributeGroup';
				}
				<BODY>
					<SS_CALL>
						SS_NAME='Add Local Element & Attributes'
						PARAMS_EXPR='Array (
  stockSection.params[0], // master XML document
  stockSection.params[1], // schemaInfo

  // parentPath
  callStockSection ("Qualified Name"),

  "attributeGroup"  // pathRootType
)'
					</SS_CALL>
				</BODY>
			</ELEMENT_ITER>
		</BODY>
	</FOLDER>
	<FOLDER>
		SS_NAME='Add Local Element & Attributes'
		DESCR='params[0]: master XML document
params[1]: schemaInfo
params[2]: parentPath
params[3]: pathRootType'
		MATCHING_ETS={'xs:%element';'xs:attributeGroup';'xs:complexType';'xs:group'}
		<BODY>
			<ELEMENT_ITER>
				DESCR='iterate by local attributes defined directly within this component (not within any nested elements)'
				STEP_EXPR='el = CustomElement();

el.setAttr ("schemaInfo", stockSection.params [1]);

el.setAttr ("id", contextElement.id);
el.setAttr ("type", "attribute");
el.setAttr ("name", getAttrValue("name"));

el.setAttr ("path", stockSection.params[2] + \'/\' + 
                    callStockSection ("Qualified Name"));

el.setAttr ("pathRootType", stockSection.params[3]);

thisContext.getVar ("components").toVector().addElement (el)'
				TARGET_ET='xs:attribute%xs:attribute'
				SCOPE='advanced-location-rules'
				RULES={
					'xs:%element -> xs:complexType';
					'xs:%complexType -> xs:complexContent/(xs:extension|xs:restriction)/{baseQName = getAttrQNameValue("base");
mainXSD = stockSection.params.toElement();

findElementsByKey (
  "xsd-types",
  hasServiceAttr ("redefined") ? 
    HashKey (baseQName, getServiceAttr ("redefined")) : baseQName,
  BooleanQuery (
    checkElementByKey ("main-xmls", getXMLDocument().id, mainXSD)
  )
)}::xs:complexType',recursive;
					'xs:%complexType -> xs:simpleContent/(xs:extension|xs:restriction)/{baseQName = getAttrQNameValue("base");
mainXSD = stockSection.params.toElement();

findElementsByKey (
  "xsd-types",
  hasServiceAttr ("redefined") ? 
    HashKey (baseQName, getServiceAttr ("redefined")) : baseQName,
  BooleanQuery (
    checkElementByKey ("main-xmls", getXMLDocument().id, mainXSD)
  )
)}::xs:complexType',recursive;
					'xs:%complexType -> xs:complexContent/(xs:extension|xs:restriction)/(xs:attribute|xs:attributeGroup)',recursive;
					'xs:%complexType -> xs:simpleContent/(xs:extension|xs:restriction)/(xs:attribute|xs:attributeGroup)',recursive;
					'xs:%complexType -> (xs:attribute|xs:attributeGroup)',recursive;
					'xs:attributeGroup -> (xs:attribute|xs:attributeGroup)',recursive;
					'xs:%attributeGroupRef -> {qName = getAttrQNameValue("ref");
mainXSD = stockSection.params.toElement();

findElementsByKey (
  "xsd-attributeGroups",
  hasServiceAttr ("redefined") ?
    HashKey (qName, getServiceAttr ("redefined")) : qName,
  BooleanQuery (
    checkElementByKey ("main-xmls", getXMLDocument().id, mainXSD)
  )
)}::xs:attributeGroup',recursive;
				}
				FILTER_BY_KEY='((attrQName = getAttrQNameValue("ref")) != null) ? attrQName : 
QName ({
   schema = findAncestor ("xs:schema");

   (hasAttr("form") ? getAttrValue("form") : 
                      schema.getAttrValue ("attributeFormDefault")) == "qualified"
     ? schema.getServiceAttr("targetNamespace").toString() : ""
  },
  getAttrStringValue("name")
)'
				FILTER_BY_KEY_COND='true'
				FILTER='hasAttr("name")
&&
findPredecessorByType (
  "xs:%element | xs:complexType | xs:attributeGroup"
).id == iterator.contextElement.id'
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='iterate by local elements defined directly within this component (not within any nested elements)'
				STEP_EXPR='el = CustomElement();

el.setAttr ("schemaInfo", stockSection.params [1]);

el.setAttr ("id", contextElement.id);
el.setAttr ("type", "element");
el.setAttr ("name", getAttrValue("name"));

el.setAttr ("path", stockSection.params[2] + \'/\' +
                    callStockSection ("Qualified Name"));

el.setAttr ("pathRootType", stockSection.params[3]);

thisContext.getVar ("components").toVector().addElement (el)
'
				TARGET_ET='xs:%element'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> descendant::xs:%element[! hasAttr("ref") &&
{
  el = findPredecessorByType ("xs:%localElement");
  el == null || el.id == stockSection.contextElement.id
}]';
				}
				<BODY>
					<SS_CALL>
						SS_NAME='Add Local Element & Attributes'
						PARAMS_EXPR='Array (
  stockSection.params[0], // master XML document
  stockSection.params[1], // schemaInfo

  // parentPath

  stockSection.params[2] + "/" +
  callStockSection ("Qualified Name"),

  stockSection.params[3]   // pathRootType
)'
					</SS_CALL>
				</BODY>
			</ELEMENT_ITER>
		</BODY>
	</FOLDER>
	<FOLDER>
		SS_NAME='Process Schema'
		DESCR='params[0]: master XML document
params[1]: XML schema source file URI
params[2]: XML schema source file name (e.g. \'schema.xsd\')
params[3]: folder for OxygenXML files'
		MATCHING_ET='xs:schema'
		INIT_EXPR='schemaInfo = CustomElement();

schemaInfo.setAttr ("file", stockSection.params [1]);
schemaInfo.setAttr ("name", stockSection.params [2]);
schemaInfo.setAttr ("namespace", getAttrValue("targetNamespace"));

stockSection.setVar ("schemaInfo", schemaInfo);

thisContext.setVar ("components", Vector());'
		FINISH_EXPR='oxygenProcessXSD (
  stockSection.params [1].toString(), // XML schema source file URI
  stockSection.params [3].toString(), // folder for OxygenXML files
  thisContext.getVar ("components").toVector()
)'
		<BODY>
			<SS_CALL>
				SS_NAME='Add Components'
				PARAMS_EXPR='Array (
  stockSection.param,
  stockSection.getVar ("schemaInfo")
)'
			</SS_CALL>
			<ELEMENT_ITER>
				DESCR='iterate by all referenced schemas'
				STEP_EXPR='schemaInfo = CustomElement();

schemaInfo.setAttr ("file", getXMLDocument().getAttrValue("xmlURI"));
schemaInfo.setAttr ("name", getXMLDocument().getAttrValue("xmlName"));
schemaInfo.setAttr ("namespace", getAttrValue("targetNamespace"));

stockSection.setVar ("schemaInfo", schemaInfo);'
				TARGET_ET='xs:schema'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> (xs:import|xs:include|xs:redefine)/{findElementsByKey ("referenced-schema", contextElement.id)}::xs:schema[// exclude second processing of the initial schema passed to this stock-section
// (which may occur when it is also imported from some of those schemas imported by it)

contextElement.id != stockSection.contextElement.id]',recursive;
				}
				<BODY>
					<SS_CALL>
						SS_NAME='Add Components'
						PARAMS_EXPR='Array (
  stockSection.param,
  stockSection.getVar ("schemaInfo")
)'
					</SS_CALL>
				</BODY>
			</ELEMENT_ITER>
		</BODY>
	</FOLDER>
	<FOLDER>
		SS_NAME='Qualified Name'
		<BODY>
			<AREA_SEC>
				DESCR='case of global component'
				MATCHING_ETS={'xs:attribute';'xs:attributeGroup';'xs:complexType';'xs:element';'xs:group';'xs:simpleType'}
				BREAK_PARENT_BLOCK='when-executed'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								FORMULA='name = getAttrStringValue("name");
targetNS = findAncestor ("xs:schema").getServiceAttr("targetNamespace").toString();

/* when component\'s target namespace is the same as the default namespace
 at the component definition location, OxygenXML doesn\'t use namespace prefix
 in the component qualified name (even when there is a separate prefix binding
 for that namespace at that location) */

targetNS != contextElement.dsmElement.defaultNS ?
  toXMLName ("qualified", targetNS, name) : name'
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				DESCR='case of local element'
				MATCHING_ET='xs:%localElement'
				BREAK_PARENT_BLOCK='when-executed'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								FORMULA='name = getAttrStringValue("name");
schema = findAncestor ("xs:schema");
targetNS = schema.getServiceAttr("targetNamespace").toString();

(hasAttr("form") ? getAttrValue("form") : 
   schema.getAttrValue ("elementFormDefault")) == "qualified" &&
   targetNS != contextElement.dsmElement.defaultNS
? 
  toXMLName ("qualified", targetNS, name)
: name'
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				DESCR='case of local attribute'
				MATCHING_ET='xs:%attribute'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								FORMULA='name = getAttrStringValue("name");
schema = findAncestor ("xs:schema");
targetNS = schema.getServiceAttr("targetNamespace").toString();

(hasAttr("form") ? getAttrValue("form") : 
   schema.getAttrValue ("attributeFormDefault")) == "qualified"
   &&
   targetNS != contextElement.dsmElement.defaultNS
?
  toXMLName ("qualified", targetNS, name)
: name'
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</FOLDER>
</STOCK_SECTIONS>
CHECKSUM='V0RvAB?2msqh+Lp3IsomOc87?CNa1QPCfla1CdWulOY'
</DOCFLEX_TEMPLATE>