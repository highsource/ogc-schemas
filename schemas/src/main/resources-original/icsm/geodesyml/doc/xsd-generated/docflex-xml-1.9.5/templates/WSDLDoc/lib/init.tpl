<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2005-06-12 08:57:00'
LAST_UPDATE='2014-07-05 20:02:57'
DESIGNER_TOOL='DocFlex SDK 1.x'
DESIGNER_LICENSE_TYPE='Filigris Works Team'
APP_ID='docflex-xml-wsdldoc'
APP_NAME='DocFlex/XML WSDLDoc'
APP_VER='1.0.b'
APP_AUTHOR='Copyright © 2014 Filigris Works, Leonid Rudy Softwareprodukte. All rights reserved.'
FEATURE_TYPE='pro'
TEMPLATE_TYPE='ProcedureTemplate'
DSM_TYPE_ID='wsdldoc'
ROOT_ET='#DOCUMENTS'
<TEMPLATE_PARAMS>
	PARAM={
		param.name='gen.doc';
		param.title='Generate Details';
		param.title.style.bold='true';
		param.group='true';
	}
	PARAM={
		param.name='gen.doc.for';
		param.title='For';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='gen.doc.for.files';
		param.title='Files';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='gen.doc.for.files.initial';
		param.title='Initial';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='gen.doc.for.files.referenced';
		param.title='Referenced';
		param.title.style.italic='true';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='gen.doc.for.files.referenced.wsdl';
		param.title='WSDL';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='gen.doc.for.files.referenced.xsd';
		param.title='XSD';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='gen.doc.for.files.include';
		param.title='Include';
		param.title.style.italic='true';
		param.type='string';
		param.trimSpaces='true';
		param.collapseSpaces='true';
		param.noEmptyString='true';
		param.list='true';
	}
	PARAM={
		param.name='gen.doc.for.files.exclude';
		param.title='Exclude';
		param.title.style.italic='true';
		param.type='string';
		param.trimSpaces='true';
		param.collapseSpaces='true';
		param.noEmptyString='true';
		param.list='true';
	}
	PARAM={
		param.name='gen.doc.for.embeddedSchemas';
		param.title='Embedded Schemas';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='gen.doc.xsd.comp';
		param.title='XSD Components';
		param.title.style.bold='true';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='gen.doc.xsd.comp.element';
		param.title='Elements';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='gen.doc.xsd.comp.element.local';
		param.title='Local Elements';
		param.group='true';
		param.type='enum';
		param.enum.values='all;complexType;none';
	}
	PARAM={
		param.name='gen.doc.xsd.comp.element.local.unifyByType';
		param.title='Unify By Type';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='gen.doc.xsd.comp.element.names';
		param.title='Names';
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
		DESCR='Load all referenced schemas.

Additionally, the following hash-maps are created (see tab: Processing | Init Expression): \'main-xmls\', \'referenced-schema\', \'schema-references\', \'redefined-component\', \'redefining-components\'.

main-xmls
---------
Maps each WSDL/XSD document (the one returned by getXMLDocument() function) to the list of all main WSDL/XSD, from which the given WSDL/XSD is referenced directly or indirectly. The hash-key is the WSDL/XSD document\'s ID. The result is the enumeration of all main WSDL/XSD documents (i.e. #DOCUMENT elements) the given WSDL/XSD is referenced from directly or indirectly.

Here is some terminology used in further explanations:

(*) "XML document" (or simply "XML") is an instance of WSDL/XSD file loaded in memory for processing.

(*) XML "A" is said to reference XML "B" directly, when one of <wsdl:import>, <xs:import>, <xs:include>, <xs:redefine> elements contained in A references to B.

(*) XML "A" is said to reference XML "X" indirectly, when there are some intermediate XMLs "B", "C", ..., which subsequently reference directly each other staring from A up to X.

Main XMLs are those WSDL/XSD files, which are initially specified for documenting and which are not referenced from other WSDL/XSDs. When several initial WSDL/XSD files reference each other cyclically, only one of them will be chosen as the main XML.

Determining which initial WSDL/XSDs are the main ones allows resolving a problem that arises when the same global components (identified by the same full name: {local name; namespace URI}) are defined multiple times in several WSDL/XSD files.

Assuming that all WSDL/XSD files specified for documenting are correct, the only possible interpretation of repeating global components must be that they belong to different WSDL/XSD projects being documented together. Any WSDL/XSD project must contain a certain main WSDL/XSD file, from which all other WSDL/XSD files belonging to the project are referenced. Any global component, whose full name is repeating, must belong to a distinct WSDL/XSD project and, therefore, can be referenced from only one main WSDL/XSD.

Effectively, main XMLs divide documentation into separate domains: Any reference to a global component (defined by component type/QName) must be resolved only to the component belonging to the same domain as the reference itself. That is, the WSDL/XSD containing the reference and the WSDL/XSD containing the component must have the same main XML referencing to both.

Notes:
(*) Any main XML is also the "main XML" for itself.
(*) Certain WSDL/XSD files may be used (e.g. imported) in different WSDL/XSD projects. Such WSDL/XSD files will be referenced from several main XMLs at once.

referenced-schema
-----------------
Maps each <xs:import>/<xs:include>/<xs:redefine> element to the actual schema it references. The hash-key is the ID of the referencing element. The result element is <xs:schema>.

schema-references
-----------------
Maps each schema to all <xs:import>/<xs:include>/<xs:redefine> elements referencing to it. The hash-key is the <xs:schema> element\'s id; the result is the enumeration of all elements referencing to that schema.

redefined-component
-------------------
Maps each redefining component (the one specified within <xs:redefine> element) to the original component it redefines. The hash-key is the redefining component\'s element id; the result is the element of the redefined component.

redefining-components
---------------------
Maps each original redefined component to all the components redefining it (those specified within <xs:redefine> elements). The hash-key is the original component\'s element id; the result is the enumeration of redefining component elements.

Note: Actually, the presence of multiple components redefining the same original component would points to an erroneous situation. That would mean that the same subschema has been redefined in several locations with the same target namespace. This may happen when two different main schemas are being documented in a single documentation and both of them redefine the same subschema however in different ways. The current XSDDoc implementation treats all initial schemas as if they are imported from a single root XML schema. Therefore, such multiple redefinitions may cause wrong processing and produce incorrect documentation.'
		INIT_EXPR='// create result element maps
createElementMaps (Array (
  "main-xmls",
  "referenced-schema",
  "schema-references",
  "redefined-component",
  "redefining-components"
));

/* Create auxiliary element maps: 
\'xml-info\', \'referenced-xml-infos\', \'parent-xml-info\', \'master-xml-infos\',
\'referenced-xmls\'

xml-info
-------------
Provides the extended information about each WSDL/XSD document in the context of
a given main XML (i.e. WSDL/XSD).

The same XSD file may be used differently in different main XMLs (e.g.
it may be included under different target namespaces or some components
defined in it may be redefined differently outside it).
Every such a usage spawns a different actual XML schema that must be documented
separately. That schema is representd by the XSD document -- an instance of
the XSD file loaded in memory for processing.

In the context of the same main XML, an WSDL/XSD document is always identified
by a pair: {WSDL/XSD file URL; target namespace URI}.
That is the hash-key for "xml-info" map.
The associated value is \'xmlInfo\' element (which is a #CUSTOM element,
whose attributes are descibed below).
The \'xmlInfo\' element represents the WSDL/XSD document and provides extended
info about it. However, it is maintained separately, because, in the case of
XML schema files (XSD), the actual XSD documents are loaded (or reloaded) later.
This depends on whether the XSD document is complete or not, which can be known
only at the last step. That goal is to have the separate XSD documents
as few as possible!

Here are the attributes of the \'xmlInfo\' element:

"xmlURL"
   The file\'s URL

"type"
   Indicates whether it is WSDL or XSD file. Possible values: "wsdl", "xsd"

"targetNS"
   The target namespace URI assigned to the XML schema or WSDL definitions in the file.
   Since the same XSD file may be included several times (using <xs:include>
   or <xs:redefine> elements) under different target namespaces
   (so-called "chameleon design"), every inclusion with a separate target
   namespace will be represented by a different xmlInfo.

"isMain"
   Indicates this is a main XML.

"complete"
   Indicates whether the given WSDL/XSD document is complete.

   WSDL/XSD document is complete when all component references contained
   both in it and in all WSDL/XSD documents directly/indirectly referenced
   from it are resolved to the components defined either in this WSDL/XSD itself
   or in any WSDL/XSD directly/indirectly referenced from it.

   A complete XSD (identified by {xmlURL; targetNS} pair) can be documented only
   once for the whole documentation (even though it may be used in different
   main WSDL/XSDs). That\'s because all component cross-references in that XSD will
   be always the same, independent on the context where the given XSD document
   is used.

   An incomplete XSD will have links to the components defined outside both it
   and XSDs referenced from it. Such an XSD document must be documented
   separately per each complete WSDL/XSD, where it is used.

   Notes:
   (*) The same XSD file in one context may spawn a complete XSD document
       and incomplete XSD in another context. 
   (*) Any main WSDL/XSD is complete by definition.

The "xml-info" map is filled anew for each main WSDL/XSD being processed.

referenced-xml-infos
--------------------
Used to find all WSDL/XSD documents referenced from a given WSDL/XSD document.

The hash is the ID of the \'xmlInfo\' element representing the XSD document.
the value is the enumeratin of \'xmlInfo\' elements representing the referenced
XSD documents.

This element map is filled anew for each mainXSD being processed.

parent-xml-info
---------------
Used to find in which WSDL/XSD document a given global component is defined.
That is the location of its actual definition (e.g. when a component is redefined,
that will be the place of its last redefinition).

The hash-key is
  { component kind; component QName }
here \'component kind\' may be one of the following:
"element", "attribute", "type", "group", "attributeGroup".

The mapped value is the xmlInfo representing the XSD document containing the 
component\'s actual definition.

This element map is filled anew for each mainXSD being processed.

master-xml-infos
----------------
Used to determine completeness of some XSD documents.
This map provides all WSDL/XSDs, which a given incomplete XSD is dependent on.

When an XSD A references some XSD B and B is incomplete, this doesn\'t imply
that A must be incomplete too, because A may contain definitions of all
those components, the references to which make B incomplete.
This map allows you to check that.

The hash-key is the ID of the \'xmlInfo\' element representing
the incomplete XSD document.

The mapped value is the enumeration of \'xmlInfo\' elements representing
all XSD documents, which the given XSD is dependent on. That means those
XSDs contain definitions of some gobal components that are referenced from that
incomplete XSD itself or any XSDs directly/indirectly referenced from it.

This element map is filled anew for each mainXSD being processed.

referenced-xmls
---------------
This map collects how actual XSD document reference each other.
It is used to fill the result "main-xmls" map.

The hash key is XSD document\'s ID.
The mapped value is the enumeration of all XSD documents directly/indirectly
referenced from the given XSD document.
*/

createElementMaps (Array (
  "xml-info",
  "referenced-xml-infos",
  "parent-xml-info",
  "master-xml-infos",
  "referenced-xmls",
  "embedded-schemas"
));

initialXMLs = findChildren ("#DOCUMENT").toVector();

// preload all WSDL/XSD files referenced from the initial XMLs
// and find which initial XMLs are referenced from others.

iterate (
  initialXMLs.toEnum(),  // iterate by initial XMLs
  @(GOMElement) document,
  FlexQuery ({
    // if the given initial XML has been found that it is referenced
    // from some other, no processing is needed

    ! document.getAttrBooleanValue ("referenced") ?
    {
      clearElementMap ("embedded-schemas");
      document.callStockSection ("Scan Referenced XMLs 1");

      /* If the "referenced" attribute is set \'true\',
       it means that this XML is referenced cyclically from itself
       (that is from one of the XMLs referenced from it).
       Such a referencing doesn\'t count.
      */
      document.setAttr ("referenced", false);
    }
  })
);

// from the initial XMLs extract the main ones.

mainXMLs = Vector();

iterate (
  initialXMLs.toEnum(),
  @(GOMElement) document,
  FlexQuery ({
    (definitions = document.findChild ("wsdl:definitions")) != null ?
    {
      definitions.setServiceAttr ("initial", true);

      ! document.getAttrBooleanValue ("referenced") ?
      {
        mainXMLs.addElement (document);

        document.setAttr ("isMain", true);
        document.setAttr ("type", "wsdl");
      }
    } 
    :
    (schema = document.findChild ("xs:schema")) != null ?
    {
      schema.setServiceAttr ("initial", true);

      ! document.getAttrBooleanValue ("referenced") ?
      {
        mainXMLs.addElement (document);

        document.setAttr ("isMain", true);
        document.setAttr ("type", "xsd");

        targetNS = schema.getAttrStringValue ("targetNamespace");
        schema.setServiceAttr ("targetNamespace", targetNS);

        document.markXMLDocument (targetNS);
      }
    }
  })
);

// now, process each mainXML

iterate (
  mainXMLs.toEnum(),
  @(GOMElement) mainXML,
  FlexQuery ({

    // clear all element maps to be filled for each mainXML seperately
    clearElementMap ("xml-info");
    clearElementMap ("referenced-xml-infos");
    clearElementMap ("parent-xml-info");
    clearElementMap ("master-xml-infos");

    /* make sure that \'xmlInfo\' for the mainXML is allocated */

    // the mainXML\'s file URL
    xmlURL = mainXML.getAttrStringValue("xmlURI").toURL();

    targetNS = mainXML.hasAttrValue ("type", "wsdl")
                ? mainXML.findChild("wsdl:definitions").getAttrValue("targetNamespace")
                : mainXML.findChild("xs:schema").getServiceAttr("targetNamespace");
                 
    xmlInfoKey = HashKey (xmlURL, targetNS);

    ((xmlInfo = findElementByKey ("xml-info", xmlInfoKey)) == null) ?
    {
      xmlInfo = CustomElement();
      xmlInfo.setAttr ("type", mainXML.getAttrValue ("type"));
      xmlInfo.setAttr ("isMain", true);
      xmlInfo.setAttr ("xmlURL", xmlURL);
      xmlInfo.setAttr ("targetNS", targetNS);

      putElementByKey ("xml-info", xmlInfoKey, xmlInfo);
    };

    /* Fill maps: \'xml-info\', \'referenced-xml-infos\', \'parent-xml-info\'
     That is collect:
       - which XSD documents are used in the given main WSDL/XSD
       - how XSD documents reference from each other
       - where every global component is defined
    */
    mainXML.callStockSection ("Scan Referenced XMLs 2", xmlInfo);

    // the mainXSD must be complete by definition
    xmlInfo.setAttr ("complete", true);

    /* Determine completeness of all referenced schemas.
     The effect of this stock-section call will be setting
     the "complete" attribute in all \'xmlInfo\' elements representing
     all referenced XSDs. The "master-xml-infos" map is used during
     this and filled in the process.
    */
    mainXML.callStockSection ("Check XML Completeness", xmlInfo);

    /* Reload all incomplete referenced XSDs.

     Each XML document (represented by an #DOCUMENT element) may be associated
     with a certain key. When a file is loaded, the associated key may be
     specified as a parameter. If the same file has been already loaded
     into some document in the association with the same key, that document
     will be returned. Otherwise, the file will be reloaded into a new document.

     All complete XSDs are loaded with the key: { targetNS }.
     Incomplete XSDs are loaded with the key: { targetNS, lastCompleteXSD.id }

     That insures that complete XSDs will be the same by all mainXSDs,
     where they are used.

     The following element maps are also updated: 
       \'referenced-xmls\', \'referenced-schema\', \'schema-references\',
       \'redefined-component\', \'redefining-components\'
    */
    mainXML.callStockSection ("Reload Referenced XMLs", mainXML);

    // update "main-xmls" map with all XSD documents referenced from this mainXSD
    putElementByKeys (
      "main-xmls",
      getElementIds (findElementsByKey ("referenced-xmls", mainXML.id)),
      mainXML
    );

    // each main XML is "the main XML" for itself
    putElementByKey ("main-xmls", mainXML.id, mainXML);
  })
);

// remove all temporary element maps

removeElementMap ("xml-info");
removeElementMap ("referenced-xml-infos");
removeElementMap ("parent-xml-info");
removeElementMap ("master-xml-infos");
removeElementMap ("referenced-xmls");
removeElementMap ("embedded-schemas");'
	</FOLDER>
	<FOLDER>
		DESCR='prepare hash-maps (element-maps)'
		<BODY>
			<FOLDER>
				DESCR='\'documented-wsdl-files\', \'documented-schemas\':

documented-wsdl-files
---------------------
Used to test if a given WSDL file is included in the documentation (that is, its definitions should be documented). The WSDL file is represented by its root <wsdl:definitions> element.

The hash-key is the <wsdl:definitions> element\'s unique ID (see \'GOMElement.id\' property). The value stored by the key is the <wsdl:definitions> element.

For example, the following call test if a WSDL is included in the documentation:

  checkElementsByKey ("documented-wsdl-files", definitions.id)

The following will test if a WSDL file containing the definition represented by the current generator context element is to be documented:

  checkElementsByKey ("documented-wsdl-files", findAncestor("wsdl:definitions").id)

documented-schemas
------------------
Used to test if a given XML schema is included in the documentation (that is, its components should be documented). This accounts for both the XSD files and XML schemas embedded in WSDL. XML schema is represented by the corresponding <xs:schema> element.

The hash-key is the schema element\'s unique ID (see \'GOMElement.id\' property). The value stored by the key is the schema element.

For example, the following call test if a schema is included in the documentation:

  checkElementsByKey ("documented-schemas", schema.id)

The following will test if a schema containing the component represented by the current generator context element is to be documented:

  checkElementsByKey ("documented-schemas", findAncestor("xs:schema").id)'
				INIT_EXPR='createElementMaps (Array (
  "documented-wsdl-files",
  "documented-schemas"
));

includeReferencedWSDL = getBooleanParam("gen.doc.for.files.referenced") &&
                        getBooleanParam("gen.doc.for.files.referenced.wsdl");

includeReferencedXSD  = getBooleanParam("gen.doc.for.files.referenced") &&
                        getBooleanParam("gen.doc.for.files.referenced.xsd");

includeFiles = getArrayParam("gen.doc.for.files.include");
excludeFiles = getArrayParam("gen.doc.for.files.exclude");

// iterate by WSDL files to be documented
iterate (
  findElementsByLPath (

    // the location path for all WSDL documents
    "#DOCUMENT / wsdl:definitions",

    // filter WSDLs to be documented
    BooleanQuery ({
      fileName = getXMLDocument().getAttrValue("xmlName");

      (hasServiceAttr ("initial") &&
       getBooleanParam("gen.doc.for.files.initial")
       ||
       hasServiceAttr ("imported") && includeReferencedWSDL
       ||     
       includeFiles.contains (fileName)
      )
      &&
      ! excludeFiles.contains (fileName)
    })
  ),
  @(GOMElement) definitions,
  FlexQuery ({
    putElementByKey ("documented-wsdl-files", definitions.id, definitions);

    getBooleanParam("gen.doc.for.embeddedSchemas") ?
    {
      putElementsByKeys (
        "documented-schemas",
        definitions.findElementsByLPath ("wsdl:types / xs:schema"),
        FlexQuery (contextElement.id)
      );
    }
  })
);

putElementsByKeys (
  "documented-schemas",
  findElementsByLPath (

    // the location path for all XSD documents
    "#DOCUMENT / xs:schema",

    // filter schemas to be documented
    BooleanQuery ({
      fileName = getXMLDocument().getAttrValue("xmlName");

      (hasServiceAttr ("initial") &&
       getBooleanParam("gen.doc.for.files.initial")
       ||
       (hasServiceAttr ("imported") ||
        hasServiceAttr ("included") ||
        hasServiceAttr ("redefined"))
       &&
       includeReferencedXSD
       ||
       includeFiles.contains (fileName)
      )
      &&
      ! excludeFiles.contains (fileName)
    })
  ),
  FlexQuery (contextElement.id)
)'
			</FOLDER>
			<ELEMENT_ITER>
				DESCR='\'namespaces\', \'wsdl-services\', \'wsdl-bindings\', \'wsdl-portTypes\', \'wsdl-messages\', \'xsd-global-elements\', \'xsd-types\', \'xsd-groups\', \'xsd-attributeGroups\', \'xsd-global-attributes\':

namespaces
----------
Maps a namespace URI to all WSDL files (i.e. <wsdl:definitions> elements) and all XML schemas (i.e. <xs:schema> elements) to be documented, which target the given namespace. For no namespace (i.e. empty URI string), the hash-map also returns all local XSD-element components which have namespace-unqualified form and are defined in any other schemas (to be documented and whose target namespace is specified). Overall, the keys of \'namespaces\' hash-map represent all namespaces involved (i.e. targeted by XML schemas and components to be documented).

xsd-global-elements
xsd-global-attributes
---------------------
These hash-maps are used to quickly find a global element/attribute by its full XML name: { namespaceURI, name }. The hash key is QName (namespaceURI, name)

xsd-types
xsd-groups
xsd-attributeGroups
-------------------
These hash-maps are used to find a corresponding schema component by its full XML name: { namespaceURI, name } plus the value of "redefined" service attribute (see "Load Subschemas" stock-section | "process <xs:redefine>" folder section). The hash key is \'HashKey (QName (namespaceURI, name), getServiceAttr ("redefined"))\', when the component has a "redefined" service attribute and \'QName (namespaceURI, name)\' otherwise.'
				INIT_EXPR='createElementMaps (Array (
  "namespaces",
  "wsdl-services",
  "wsdl-bindings",
  "wsdl-portTypes",
  "wsdl-messages",
  "xsd-global-elements",
  "xsd-types",
  "xsd-groups",
  "xsd-attributeGroups",
  "xsd-global-attributes"
));'
				TARGET_ETS={'wsdl:definitions';'xs:schema'}
				SCOPE='advanced-location-rules'
				RULES={
					'* -> #DOCUMENT/wsdl:definitions';
					'* -> #DOCUMENT/xs:schema';
					'wsdl:definitions -> wsdl:types/xs:schema',recursive;
				}
				<BODY>
					<FOLDER>
						DESCR='update \'namespaces\', \'xsd-global-elements\', \'xsd-types\', \'xsd-groups\', \'xsd-attributeGroups\', \'xsd-global-attributes\''
						MATCHING_ET='xs:schema'
						INIT_EXPR='// \'contextElement\' points to the current xs:schema !

targetNamespace = getServiceAttr("targetNamespace").toString();
elementFormDefault = getAttrValue ("elementFormDefault");

//-- update \'namespaces\' element-map

checkElementsByKey ("documented-schemas", contextElement.id) ?
{
  putElementByKey ("namespaces", targetNamespace, contextElement);

  (targetNamespace != "") ?
  {
    putElementsByKey (
      "namespaces",
      "",
      findElementsByLPath (
        "descendant::xs:%localElement",
        BooleanQuery (
          ! hasAttr ("ref")
          &&
          (hasAttr("form") ? getAttrValue("form") : elementFormDefault) != "qualified"
        )
      )
    )
  }
};

// the key query used for global elements and attributes
keyQuery1 = FlexQuery (QName (targetNamespace, getAttrStringValue("name")));

// the key query used for simple/complex types and element/attribute groups
keyQuery2 = FlexQuery ({
  qName = QName (targetNamespace, getAttrStringValue("name"));
  hasServiceAttr ("redefined") ? HashKey (qName, getServiceAttr ("redefined")) : qName
});

//-- update \'xsd-global-elements\' element-map
putElementsByKeys ("xsd-global-elements", findChildren ("xs:element"), keyQuery1);

//-- update \'xsd-types\' element-map
putElementsByKeys ("xsd-types", findElementsByLPath ("descendant::(xs:simpleType | xs:complexType)"), keyQuery2);

//-- update \'xsd-groups\' element-map
putElementsByKeys ("xsd-groups", findElementsByLPath ("descendant::xs:group"), keyQuery2);

//-- update \'xsd-attributeGroups\' element-map
putElementsByKeys ("xsd-attributeGroups", findElementsByLPath ("descendant::xs:attributeGroup"), keyQuery2);

//-- update \'xsd-global-attributes\' element-map
putElementsByKeys ("xsd-global-attributes", findChildren ("xs:attribute"), keyQuery1);'
						BREAK_PARENT_BLOCK='when-executed'
					</FOLDER>
					<FOLDER>
						DESCR='update \'namespaces\', \'wsdl-services\', \'wsdl-bindings\', \'wsdl-portTypes\', \'wsdl-messages\''
						MATCHING_ET='wsdl:definitions'
						INIT_EXPR='// \'contextElement\' points to the current wsdl:definitions !

targetNamespace = getAttrStringValue ("targetNamespace");

//-- update \'namespaces\' element-map
checkElementsByKey ("documented-wsdl-files", contextElement.id) ?
  putElementByKey ("namespaces", targetNamespace, contextElement);

// the element key query used for element-maps below
keyQuery = FlexQuery (QName (targetNamespace, getAttrStringValue("name")));

//-- update \'wsdl-services\' element-map
putElementsByKeys ("wsdl-services", findChildren ("wsdl:service"), keyQuery);

//-- update \'wsdl-bindings\' element-map
putElementsByKeys ("wsdl-bindings", findChildren ("wsdl:binding"), keyQuery);

//-- update \'wsdl-portTypes\' element-map
putElementsByKeys ("wsdl-portTypes", findChildren ("wsdl:portType"), keyQuery);

//-- update \'wsdl-messages\' element-map
putElementsByKeys ("wsdl-messages", findChildren ("wsdl:message"), keyQuery);'
					</FOLDER>
				</BODY>
			</ELEMENT_ITER>
			<FOLDER>
				DESCR='\'xsd-globally-documented-local-elements\'
--
tracks all globally documented local elements. This hashmap is used to test if a local element is documented globally (i.e. via some global Element Documentation dedicated to it) and find out how.

Every globally documented local element component is presented in the hashmap via the component\'s unique ID (see \'GOMElement.id\' property), which serves as hash-key. What exactly is associated with that key depends on the following.

A group of local element components that share the same {namespace; local name; global type} may be documented as a single entity called "unified local element". That entity is described with a single global Element Documentation, which effectively documents all such local elements at once. However, that unified documentation is associated with (and mainly generated by) the only element component selected arbitrary from the group. That element, called "unifier", is used to represent the whole group of the unified elements elsewhere (in various other hashmaps, hyperlink keys, etc.)

So, the values (elements) stored in \'xsd-globally-documented-local-elements\' map fall into three categories:

(1) If the mapped element component is not a member of a unified element group, it is mapped to itself. In that case:

    findElementByKey(\'xsd-globally-documented-local-elements\', element.id) == element.id

(2) If the mapped element component is a member of a unified element group, but not its unifier, it is mapped to the unifier element of that group. In that case:

    findElementByKey(\'xsd-globally-documented-local-elements\', element.id) != element.id

(3) If the mapped element component is the unifier of some unified element group, it is mapped to the enumeration of all members of that group. At that, the first element of the enumeration is the unifier itself:

    findElementsByKey (
      \'xsd-globally-documented-local-elements\', element.id
    ).next().toElement().id == element.id

or

    findElementByKey(\'xsd-globally-documented-local-elements\', element.id) == element.id'
				INIT_EXPR='createElementMap ("xsd-globally-documented-local-elements");

! getBooleanParam("gen.doc.xsd.comp") ||
! getBooleanParam("gen.doc.xsd.comp.element") ||
  hasParamValue("gen.doc.xsd.comp.element.local", "none") ? return null;

// which local elements are documented globally
local = getStringParam("gen.doc.xsd.comp.element.local");

// allowed element names
names = getArrayParam("gen.doc.xsd.comp.element.names");

getBooleanParam("gen.doc.xsd.comp.element.local.unifyByType") ?
{
  elementsWithType = Vector();  // local elements with global types

  iterate (
    findChildren ("#DOCUMENT"),
    @(GOMElement) document,
    FlexQuery ({

      mainXML = findElementByKey ("main-xmls", document.id);

      //-- add only local elements with anonymous type

      putElementsByKeys (
        "xsd-globally-documented-local-elements",
        document.findElementsByLRules (
          Array (
            LocationRule (
              \'* -> wsdl:definitions / wsdl:types / xs:schema\',
              false
            ),
            LocationRule (
              \'* -> xs:schema\',
              false
            ),
            LocationRule (
              \'xs:schema [checkElementsByKey ("documented-schemas", contextElement.id)] ->
               descendant::xs:%localElement\',
              true
            )
          ),
          "xs:%localElement",
          BooleanQuery (
            getAttrValue("ref") == null
            &&
            getAttrValue("type") == null
            &&
            (
              // which local elements are documented?
              local == "complexType" ? hasChild("xs:complexType") : local == "all"
            )
            &&
            (
              // filter by name
              names.isEmpty() || names.contains (getAttrValue("name"))
            )
          )
        ),
        FlexQuery (contextElement.id)  // hash key
      );

      //-- collect local elements with global types

      elementsWithType.addElements (
        document.findElementsByLRules (
          Array (
            LocationRule (
              \'* -> wsdl:definitions / wsdl:types / xs:schema\',
              false
            ),
            LocationRule (
              \'* -> xs:schema\',
              false
            ),
            LocationRule (
              \'xs:schema [checkElementsByKey ("documented-schemas", contextElement.id)] ->
               descendant::xs:%localElement\',
              true
            )
          ),
          "xs:%localElement",
          BooleanQuery (
            getAttrValue("type") != null
            &&
            (
              // which local elements are documented?
              local == "complexType" ?
              {
                checkElementsByKey ("xsd-types", getAttrQNameValue("type"),
                  BooleanQuery (
                    instanceOf("xs:complexType")
                    &&
                    checkElementByKey ("main-xmls", getXMLDocument().id, mainXML)
                  )
                )
              }
              : local == "all"
            )
            &&
            (
              // filter by name
              names.isEmpty() || names.contains (getAttrValue("name"))
            )
          )
        )
      )
    })
  );

  //-- now, put all local elements with global types in the map

  // sort elements by {name, type}

  elementsWithType.sortVector (
    @(GOMElement) el,
    FlexQuery ({  // generate sorting key

      schema = el.findAncestor ("xs:schema");

      form = el.hasAttr("form") ? el.getAttrValue("form")
                                : schema.getAttrValue ("elementFormDefault");

      typeQName = el.getAttrQNameValue("type");

      mainXML = findElementByKey ("main-xmls", el.getXMLDocument().id);

      type = findElementByKey ("xsd-types", typeQName, BooleanQuery (
               checkElementByKey ("main-xmls", getXMLDocument().id, mainXML)
             ));

      // sorting key
      Array (
        form == "qualified" ? schema.getServiceAttr("targetNamespace") : "",
        el.getAttrValue("name"),
        typeQName,
        type != null ? type.getXMLDocument().getAttrValue("xmlURI") : null
      )
    })
  );

  // group elements by {name, type}

  groups = groupEnum (
    elementsWithType.toEnum(),
    @(GOMElement) el,
    FlexQuery ({  // generate grouping key

      schema = el.findAncestor ("xs:schema");
      form = el.hasAttr("form") ? el.getAttrValue("form")
                                : schema.getAttrValue ("elementFormDefault");

      typeQName = el.getAttrQNameValue("type");

      mainXML = findElementByKey ("main-xmls", el.getXMLDocument().id);

      type = findElementByKey ("xsd-types", typeQName, BooleanQuery (
               checkElementByKey ("main-xmls", getXMLDocument().id, mainXML)
             ));

      // grouping key
      HashKey (
        form == "qualified" ? schema.getServiceAttr("targetNamespace") : "",
        el.getAttrValue("name"),
        typeQName,
        type != null ? type.getXMLDocument().getAttrValue("xmlURI") : null
      )
    })
  );

  // iterate by groups
  iterate (
    groups,
    @(Vector) groupElements,
    FlexQuery ({

      // use the first element in the group as a unifier
      unifierElement = groupElements.elementAt(0).toElement();

      putElementByKeys (
        "xsd-globally-documented-local-elements",
        getElementIds (groupElements.toEnum()),
        unifierElement
      );

      putElementsByKey (
        "xsd-globally-documented-local-elements",
        unifierElement.id,
        groupElements.toEnum()
      )
    })
  )

} : {
  // no unifying by type

  iterate (
    findChildren ("#DOCUMENT"),
    @(GOMElement) document,
    FlexQuery ({

      mainXML = findElementByKey ("main-xmls", document.id);

      // put in the map all local elements

      putElementsByKeys (
        "xsd-globally-documented-local-elements",

        document.findElementsByLRules (
          Array (
            LocationRule (
              \'* -> wsdl:definitions / wsdl:types / xs:schema\',
              false
            ),
            LocationRule (
              \'* -> xs:schema\',
              false
            ),
            LocationRule (
              \'xs:schema [checkElementsByKey ("documented-schemas", contextElement.id)] ->
               descendant::xs:%localElement\',
              true
            )
          ),
          "xs:%localElement",
          BooleanQuery (
            getAttrValue("ref") == null
            &&
            (
              // which local elements are documented?
              local == "complexType" ?
                ((typeQName = getAttrQNameValue("type")) != null) ?
                {
                  checkElementsByKey ("xsd-types", typeQName,
                    BooleanQuery (
                      instanceOf("xs:complexType")
                      &&
                      checkElementByKey ("main-xmls", getXMLDocument().id, mainXML)
                    )
                  )
                }
                : hasChild("xs:complexType")
              :
              local == "all"
            )
            &&
            (
              // filter by name
              names.isEmpty() || names.contains (getAttrValue("name"))
            )
          )
        ),
        FlexQuery (contextElement.id)  // hash key
      )
    })
  )
}'
			</FOLDER>
			<FOLDER>
				DESCR='\'xsd-local-elements\'
--
the hash-map to find local element components by the specified full XML name:
{ namespaceURI, name }.

The hash key is QName (namespaceURI, name)

It is possible that multiple element components in the schema may share the same name. In that case, several such components may be stored in the hash-map by the same { namespaceURI, name } key according to the following rules:

(1) For local elements documented globally, only their representatives (the unifiers) are stored in the map;

(2) The local elements not documented globally are all stored in the map.'
				INIT_EXPR='prepareElementMap (
  "xsd-local-elements",

  // obtain elements to put in the map
  findElementsByLPath (

    // the location path for all local element components
    "#DOCUMENT / wsdl:definitions / wsdl:types / xs:schema / descendant::xs:%localElement |
     #DOCUMENT / xs:schema / descendant::xs:%localElement",

    BooleanQuery (
      getAttrValue("ref") == null
      &&
      {
        // remain only elements that are either not globally documented at all
        // or globaly documented themselves (not via a unifier)

        el = findElementByKey ("xsd-globally-documented-local-elements", contextElement.id);
        el == null || el.id == contextElement.id
      }
    )
  ),

  // generating hash key
  FlexQuery ({
    schema = findPredecessorByType ("xs:schema");

    form = hasAttr("form") ? getAttrValue("form")
             : schema.getAttrValue ("elementFormDefault");

    QName (
      form == "qualified" ? schema.getServiceAttr("targetNamespace").toString() : "",
      getAttrStringValue("name")
    )
  })
)'
			</FOLDER>
			<FOLDER>
				DESCR='\'xsd-element-types\'
--
the hash-map to find the type of a given element;
this also takes into account the type which the element may inherit from the substitution group head to which this element is affiliated.

The hash-key is the element component\'s unique id (see \'GOMElement.id\' property). The mapped element is the type component (either global or local anonymous one).

When the element\'s type cannot be resolved to any type component in the loaded XSD files, such a type is presented in the map by a custom element whose value is the QName object created by the type\'s qualified name: 
CustomElement (QName (typeQualifiedName))'
				INIT_EXPR='createElementMap("xsd-element-types");

// iterate by all XSD documents
iterate (
  findChildren ("#DOCUMENT"),
  @(GOMElement) document,
  FlexQuery ({

    mainXML = findElementByKey ("main-xmls", document.id);
    mainXMLFilter = BooleanQuery (checkElementByKey ("main-xmls", getXMLDocument().id, mainXML));

    putElementsByKeys (
      "xsd-element-types",  // element map ID

      // iterated (source) elements: all element components (except references)

      document.findElementsByLPath (
        "wsdl:definitions / wsdl:types / xs:schema / descendant::xs:%element |
         xs:schema / descendant::xs:%element",

        BooleanQuery (getAttrValue("ref") == null)
      ),

      FlexQuery (contextElement.id),  // the hash key

      FlexQuery (  // associate with the key: element\'s type component (or a stub for it)

        // when the \'type\' attribute is specified

        ((typeQName = getAttrQNameValue ("type")) != null) ?
        {
          ((elementType = findElementByKey ("xsd-types", typeQName, mainXMLFilter)) != null) ?
             elementType : CustomElement (typeQName)

        } : {
          // otherwise, look for the locally defined anonymous type

          ((elementType = findChild ("xs:complexType | xs:simpleType")) != null) ? elementType :
          { 
            // If no type is explicitly specified, check if there is a substitution group affiliation
            // (or the same for the found group\'s head element and so on) where the element type is specified.
            // If a head with the type is found, use this type for the given element.

            (getAttrValue("substitutionGroup") != null) ?
            {
              (headElement = findElementByLRules (
                Array (
                  LocationRule (\'* -> {
                      findElementsByKey (
                        "xsd-global-elements", getAttrQNameValue("substitutionGroup"), mainXMLFilter
                      )
                    }::*\',
                    true
                  )
                ),
                "xs:element",
                BooleanQuery (
                  getAttrValue("type") != null || hasChild ("xs:complexType | xs:simpleType")
                )
              )) != null ?
              {
                ((headTypeQName = headElement.getAttrQNameValue ("type")) != null) ?
                {
                  ((elementType = findElementByKey ("xsd-types", headTypeQName, mainXMLFilter)) == null) ?
                  {
                    // the head element does have type, however, it cannot be resolved to any type component
                    elementType = CustomElement (typeQName);
                  }
                } : {
                  // if the head element has no \'type\' attribute, use its anonymous type
                  elementType = headElement.findChild ("xs:complexType | xs:simpleType");
                }
              }
            };

            // if no type is specified at all, assume \'xs:anyType\'

            (elementType != null) ?
              elementType : CustomElement (QName (getNamespaceURI ("xs"), "anyType"))
          }
        }
      )
    )
  })
)'
			</FOLDER>
			<FOLDER>
				DESCR='\'xsd-element-usage\'
--
the hash-map to find all usage locations of a given element, which are:

(*) For a global element:
- all local components with the reference to that element;
- all global elements with \'substitutionGroup\' attribute pointing to that element (this is resolved in the next section)

(*) For a local element documented globally (the unifier component):
all local element components which this element represents (including itself)

(*) For a local element not documented globally:
this very local element component

The hash-key is the the element component unique ID (see \'GOMElement.id\' property).
For local elements documented globally via a unifier element the unifier\'s component ID should be used.'
				INIT_EXPR='createElementMap("xsd-element-usage");

// iterate by all XSD documents
iterate (
  findChildren ("#DOCUMENT"),
  @(GOMElement) document,
  FlexQuery ({

    mainXML = findElementByKey ("main-xmls", document.id);
    mainXMLFilter = BooleanQuery (checkElementByKey ("main-xmls", getXMLDocument().id, mainXML));

    //-- usage in XML schemas

    putElementsByKeys (
      "xsd-element-usage",  // element map ID

      // iterated elements: all local element components including references
      // (they will be put in the map)

      document.findElementsByLPath (
        "wsdl:definitions / wsdl:types / xs:schema / descendant::xs:%localElement |
         xs:schema / descendant::xs:%localElement"
      ),

      FlexQuery (  // the hash key

        // the element for which the key should be generated is currently 
        // the generator\'s context element

        // in case there\'s a reference to a global element

        (elementQName = getAttrQNameValue("ref")) != null ? {

          findElementByKey ("xsd-global-elements", elementQName, mainXMLFilter).id 

        } : {

          // if the local element is documented globally, return its unifier\'s id

          el = findElementByKey ("xsd-globally-documented-local-elements", contextElement.id);
          el != null ? el.id : contextElement.id
        }
      )
    );

    //-- usage in WSDL

    putElementsByKeys (
      "xsd-element-usage",  // element map ID

      // iterated by all message parts with element references

      document.findElementsByLPath (
        \'wsdl:definitions / wsdl:message / wsdl:part [hasAttr ("element")]\'
      ),

      FlexQuery (  // the hash key

        // the element for which the key should be generated is currently 
        // the generator\'s context element

        findElementByKey ("xsd-global-elements", getAttrQNameValue("element"), mainXMLFilter).id 
      )
    )
  })
)'
			</FOLDER>
			<FOLDER>
				DESCR='\'xsd-substitution-group-affiliates\', \'xsd-substitution-group-members\', \'xsd-substitution-group-heads\':

xsd-substitution-group-affiliates
---------------------------------
Allows finding all elements affiliated to a given substitution group head element. The hash-key is the element GOMElement.id. The affiliated elements are those whose \'substitutionGroup\' attribute is specified either with the given element or with another element affiliated to it. The affiliated element is not necessary a member of the same substitution group (headed by the given element). The actual membership may be blocked by \'block\' attributes. (However, the affiliated element may inherit its type from the head element.)

xsd-substitution-group-members
------------------------------
Allows finding all members of the substitution group headed by a given element. The hash-key is GOMElement.id of the given element. The substitution group members are all or a subset of its affiliated elements.

xsd-substitution-group-heads
----------------------------
Allows finding all substitution groups (i.e. their head elements) which a given element is member of. The hash-key is GOMElement.id of the given element.

.....................
This Element Iterator initially iterates by all global element components which have a specified \'substitutionGroup\' attribute. The element maps are initially created in "Processing | Init/Step/Finish | Init Expression" tab.'
				INIT_EXPR='createElementMaps (Array (
  "xsd-substitution-group-affiliates",
  "xsd-substitution-group-members",
  "xsd-substitution-group-heads"
));

// iterate by all XSD documents
iterate (
  findChildren ("#DOCUMENT"),
  @(GOMElement) document,
  FlexQuery ({

    mainXML = findElementByKey ("main-xmls", document.id);
    mainXMLFilter = BooleanQuery (checkElementByKey ("main-xmls", getXMLDocument().id, mainXML));

    // iterate by all global element components that have a specified \'substitutionGroup\' attribute

    iterate (
      document.findElementsByLPath (
        "wsdl:definitions / wsdl:types / xs:schema / xs:element |
         xs:schema / xs:element",
        BooleanQuery (hasAttr("substitutionGroup"))
      ),

      @(GOMElement) affiliate,

      FlexQuery ({

        // resolve the head element directly specified in the \'substitutionGroup\'
        // attribute of the affiliate

        directHead = findElementByKey (
                       "xsd-global-elements",
                       affiliate.getAttrQNameValue("substitutionGroup"),
                       mainXMLFilter
                     );

        // if the direct head cannot be resolved, no further processing needed
        (directHead == null) ? return null;

        // keep that the affiliate is one its usage locations
        putElementByKey ("xsd-element-usage", directHead.id, affiliate);

        // obtain the element type of the affiliate
        affiliateType = findElementByKey ("xsd-element-types", affiliate.id);

        // the affiliate\'s type derivation path
        affiliateTypeDerivPath = affiliateType.callStockSection ("Type Derivation Path", mainXML);

        // iterate by all head elements that the given affiliate is affiliated to
        iterate (
          directHead.findElementsByLRules (
            Array (
              LocationRule (\'* -> self::*\', false),
              LocationRule (\'* -> { 
                  findElementsByKey ("xsd-global-elements", 
                    getAttrQNameValue("substitutionGroup"), mainXMLFilter)
                }::xs:element\',
                true
              )
            ),
            "xs:element"
          ),
          @(GOMElement) head,
          FlexQuery ({

            // keep that relation in the corresponding map
            putElementByKey ("xsd-substitution-group-affiliates", head.id, affiliate);

            // now determine if the affiliate can be a member of the head\'s substitution group;
            // if it\'s abstract it definitely cannot

            ! affiliate.getAttrBooleanValue ("abstract") ?
            {
              // the actual \'block\' value of the head
              block = head.hasAttr ("block") ? head.getAttrValues ("block") :
                        head.findAncestor("xs:schema").getAttrValues ("blockDefault");

              // if substituations of the head element are not entirely blocked

              ! block.contains ("#all") && ! block.contains ("substitution") ?
              {
                // the type of the head element
                headType = findElementByKey ("xsd-element-types", head.id);

                // the derivation path of the head\'s type
                headTypeDerivPath = headType.callStockSection("Type Derivation Path", mainXML);

                // the affiliate\'s type must be either the same or derived from the head\'s type
                affiliateTypeDerivPath.startsWith (headTypeDerivPath) ?
                {
                  headTypeDerivPath.length() == 0  // the head\'s type is xs:anyType
                  ||
                  // the affiliate\'s type is the same as the head\'s type
                  (r = affiliateTypeDerivPath.substring (headTypeDerivPath.length())).length() == 0
                  ||
                  // otherwise, the affiliate\'s type is derived from the head\'s type;
                  // check that the derivation does not use the disallowed methods
                  r.startsWith ("/") && ! r.contains (
                  {
                    // collect disallowed derivation methods

                    disallowedDerivMethods = Vector();

                    // derivation by list is always disallowed
                    disallowedDerivMethods.addElement ("[list]");

                    // add blocked derivation methods
                    iterate (
                      block,
                      @(String) derivMethod,
                      FlexQuery (
                        disallowedDerivMethods.addElement ("[" + derivMethod + "]")
                      )
                    );

                    // return vector of the collected disallowed derivation methods
                    // (as the parameter for the function call)

                    disallowedDerivMethods
                  }) ? 
                  {
                    // the affiliate is allowed to be member of the head\'s group;
                    // update corresponding hash-maps

                    putElementByKey ("xsd-substitution-group-heads", affiliate.id, head);
                    putElementByKey ("xsd-substitution-group-members", head.id, affiliate);
                  }
                }
              }
            }
          })
        )
      })
    )
  })
)'
			</FOLDER>
			<FOLDER>
				DESCR='\'xsd-content-model-elements\' -- the hash-map to find all content model elements (including wildcards) for a given schema component, which may be one of the following: 

- complexType (global or anonymous) 
- element group (global)

The hash-key is the component\'s GOMElement.id'
				INIT_EXPR='createElementMap("xsd-content-model-elements");

// iterate by all XSD documents
iterate (
  findChildren ("#DOCUMENT"),
  @(GOMElement) document,
  FlexQuery ({

    mainXML = findElementByKey ("main-xmls", document.id);
    mainXMLFilter = BooleanQuery (checkElementByKey ("main-xmls", getXMLDocument().id, mainXML));

    putElementsByKeys (
      "xsd-content-model-elements",  // element map ID

      // iterated (source) elements: all schema components, for which we want
      // to hash the content model elements in the hash-map

      document.findElementsByLRules (
        Array (
          LocationRule (\'* -> wsdl:definitions / wsdl:types / xs:schema\', false),
          LocationRule (\'* -> xs:schema\', false),
          LocationRule (\'xs:schema -> descendant::xs:%complexType\', true),
          LocationRule (\'xs:schema -> xs:group\', true),
          LocationRule (\'xs:schema -> xs:redefine / xs:group\', true)
        ),
        "xs:%complexType | xs:group"
      ),
     
      FlexQuery (contextElement.id),  // the hash key

      FlexQuery (

        // elements to associate with the key:
        // produce an enumeration of the content model elements
        // for the current component (complexType or group)

        findElementsByLRules (

          // Location Rules to obtain the content model elements
          Array (
            LocationRule (
              \'xs:%complexType -> xs:complexContent / xs:extension / {
                  qName = getAttrQNameValue("base");
                  findElementsByKey (
                    "xsd-types",
                    hasServiceAttr ("redefined") ? HashKey (qName, getServiceAttr ("redefined")) : qName,
                    mainXMLFilter
                  )
              }::xs:complexType\',
              true
            ),
            LocationRule ("xs:%complexType -> xs:complexContent / (xs:extension | xs:restriction) / xs:%group", true),
            LocationRule ("xs:%complexType -> xs:%group", true),
            LocationRule ("xs:%group -> (xs:%element | xs:any | xs:%group)", true),
            LocationRule (
              \'xs:%groupRef -> {
                  qName = getAttrQNameValue("ref");
                  findElementsByKey (
                    "xsd-groups", 
                    hasServiceAttr ("redefined") ? HashKey (qName, getServiceAttr ("redefined")) : qName,
                    mainXMLFilter
                  )
              }::xs:group\',
              true
            )
          ),

          "xs:%element | xs:any"  // types of the result components (which constitute the content model)
        )
      )
    )
  })
)'
			</FOLDER>
			<FOLDER>
				DESCR='\'xsd-content-model-attributes\' -- the hash-map to find all attribute (including wildcards) components associated with a given schema complexType (global or anonymous) or attributeGroup (global).

The hash-key is the GOMElement.id of the schema component for which we want to find the attributes.'
				INIT_EXPR='createElementMap("xsd-content-model-attributes");

// iterate by all XSD documents
iterate (
  findChildren ("#DOCUMENT"),
  @(GOMElement) document,
  FlexQuery ({

    mainXML = findElementByKey ("main-xmls", document.id);
    mainXMLFilter = BooleanQuery (checkElementByKey ("main-xmls", getXMLDocument().id, mainXML));

    putElementsByKeys (
      "xsd-content-model-attributes",  // element map ID

      // iterated (source) elements: all schema components, for which we want
      // to hash the possible contained attributes

      document.findElementsByLRules (
        Array (
          LocationRule (\'* -> wsdl:definitions / wsdl:types / xs:schema\', false),
          LocationRule (\'* -> xs:schema\', false),
          LocationRule (\'xs:schema -> descendant::xs:%complexType\', true),
          LocationRule (\'xs:schema -> xs:attributeGroup\', true),
          LocationRule (\'xs:schema -> xs:redefine / xs:attributeGroup\', true)
        ),
        "xs:%complexType | xs:attributeGroup"
      ),
     
      FlexQuery (contextElement.id),  // the hash key

      // elements to associate with the key:
      // produce an enumeration of the content model possible attributes
      // for the current component (complexType or attributeGroup)

      FlexQuery ({

        // First, produce the enumeration of all atribute declarations.
        // The location rules are designed and intepreted so that the further an attribute 
        // is declared in the ancestor types chain the earlier it appears in the enumeration

        e = findElementsByLRules (

          // Location Rules to obtain possible attributes 
          Array (

            // the following two rules must be the first, because the attributes defined 
            // in ancestor complexTypes may be overridden in descendant ones

            LocationRule (
              \'xs:%complexType -> xs:complexContent / (xs:extension | xs:restriction) / {
                  qName = getAttrQNameValue("base");
                  findElementsByKey (
                    "xsd-types", 
                    hasServiceAttr ("redefined") ? HashKey (qName, getServiceAttr ("redefined")) : qName,
                    mainXMLFilter
                  )
              }::xs:complexType\',
              true
            ),
            LocationRule (
              \'xs:%complexType -> xs:simpleContent / (xs:extension | xs:restriction) / {
                  qName = getAttrQNameValue("base");
                  findElementsByKey (
                    "xsd-types", 
                    hasServiceAttr ("redefined") ? HashKey (qName, getServiceAttr ("redefined")) : qName,
                    mainXMLFilter
                  )
              }::xs:complexType\',
              true
            ),
            LocationRule (
              "xs:%complexType -> xs:complexContent / (xs:extension | xs:restriction) /
                 (xs:attribute%xs:attribute | xs:anyAttribute | xs:%attributeGroupRef)",
              true
            ),
            LocationRule (
              "xs:%complexType -> xs:simpleContent / (xs:extension | xs:restriction) /
                 (xs:attribute%xs:attribute | xs:anyAttribute | xs:%attributeGroupRef)",
              true
            ),
            LocationRule (
              "xs:%complexType -> (xs:attribute%xs:attribute | xs:anyAttribute | xs:%attributeGroupRef)",
              true
            ),
            LocationRule (
              "xs:attributeGroup -> (xs:attribute%xs:attribute | xs:anyAttribute | xs:%attributeGroupRef)",
              true
            ),
            LocationRule (
              \'xs:%attributeGroupRef -> {
                  qName = getAttrQNameValue("ref");
                  findElementsByKey (
                    "xsd-attributeGroups", 
                    hasServiceAttr ("redefined") ? HashKey (qName, getServiceAttr ("redefined")) : qName,
                    mainXMLFilter
                  )
              }::xs:attributeGroup\',
              true
            )
          ),

          // types of the result components 
          // (which constitute the attribute content model)

          "xs:%attribute | xs:anyAttribute",

          // attribute wildcards inherited by type restriction must be excluded
          BooleanQuery (
            ! (instanceOf ("xs:anyAttribute") &&
               checkPredecessorsByTypes ("xs:complexType", "xs:%restrictionType"))
          )
        );

        // Now, remove from the produced enumeration those declarations that refer
        // to the same attribute. The remaining ones will be those which appear the last.
        // This is what we need, because an attribute declaration taken from the last 
        // descendant type may override settings specified for the same attribute in 
        // the ancestor types

        e.filterElementsByKey (
          FlexQuery ({
            // in case of anyAttribute the null key ensures that only last declaration will remain

            instanceOf ("xs:anyAttribute") ? null : 
              ((attrQName = getAttrQNameValue("ref")) != null) ? attrQName : 
                QName ({
                    schema = findAncestor ("xs:schema");
                    (hasAttr("form") ? getAttrValue("form")
                                     : schema.getAttrValue ("attributeFormDefault")) == "qualified"
                      ? schema.getServiceAttr("targetNamespace").toString() : ""
                  },
                  getAttrStringValue("name")
                )
          }),
          // indicates that subsequent elements with the same key will replace the earlier ones
          BooleanQuery (true)
        )
      })
    )
  })
)'
			</FOLDER>
			<FOLDER>
				DESCR='\'xsd-containing-elements\', \'xsd-children-by-substitutions\', \'xsd-parents-by-substitutions\':

xsd-containing-elements
-----------------------
Used to find all elements whose content model includes a given element.

The hash-key is the element component unique ID (see \'GOMElement.id\' property).
For local elements documented globally via a unifier element the unifier\'s component ID should be used.

xsd-children-by-substitutions
-----------------------------
Used to find all known elements that may be included in the given element by substitutions (that is all members of the substitution groups whose head elements are declared in the content model of the given element component). The hash-key is GOMElement.id of the given element.

xsd-parents-by-substitutions
----------------------------
Used to find all known elements that may include the given element by substitutions. (In particular, these are all elements whose content models include the head element of a substitution group which the given element is member of.) The hash-key is GOMElement.id of the given element.'
				INIT_EXPR='createElementMaps (Array (
  "xsd-containing-elements",
  "xsd-children-by-substitutions",
  "xsd-parents-by-substitutions"
));

// iterate by all XSD documents
iterate (
  findChildren ("#DOCUMENT"),
  @(GOMElement) document,
  FlexQuery ({

    mainXML = findElementByKey ("main-xmls", document.id);
    mainXMLFilter = BooleanQuery (checkElementByKey ("main-xmls", getXMLDocument().id, mainXML));

    iterate (
      document.findElementsByLPath (

        "wsdl:definitions / wsdl:types / xs:schema / descendant::xs:%element |
         xs:schema / descendant::xs:%element",

        BooleanQuery (
          instanceOf("xs:element")
          ||
          ! hasAttr("ref")
          &&
          {
            // remain only those local elements that are either not globally documented at all
            // or globaly documented themselves (not via a unifier)

            el = findElementByKey ("xsd-globally-documented-local-elements", contextElement.id);
            el == null || el.id == contextElement.id
          }
        )
      ),

      @(GOMElement) containingElement,

      FlexQuery (
        iterate (
          containingElement.findElementsByLRules (
            Array (
              LocationRule (
                \'* -> {
                    findElementsByKey (
                      "xsd-content-model-elements",
                      findElementByKey ("xsd-element-types", contextElement.id).id
                    )
                }::*\',
                false
              ),
              LocationRule (
                \'xs:%localElement [getAttrValue("ref") != null] -> {
                    findElementsByKey ("xsd-global-elements", getAttrQNameValue("ref"), mainXMLFilter)
                }::xs:element\',
                true
              )
            ),
            "xs:%element",
            BooleanQuery (getAttrValue("ref") == null)
          ),
          @(GOMElement) element,
          FlexQuery (
            element.instanceOf ("xs:element") ?
            {
              putElementByKey ("xsd-containing-elements", element.id, containingElement);

              (! containingElement.getAttrBooleanValue ("abstract")) ?
              {
                putElementsByKey (
                  "xsd-children-by-substitutions",
                  containingElement.id,
                  findElementsByKey ("xsd-substitution-group-members", element.id)
                );

                putElementByKeys (
                  "xsd-parents-by-substitutions",
                  getElementIds (findElementsByKey ("xsd-substitution-group-members", element.id)),
                  containingElement
                )
              }
            } : {
              // if the local element is documented globally, use its unifier\'s id as the key

              el = findElementByKey ("xsd-globally-documented-local-elements", element.id);
              key = (el != null) ? el.id : element.id;

              putElementByKey ("xsd-containing-elements", key, containingElement)
            }
          )
        )
      )
    )
  })
)'
			</FOLDER>
			<FOLDER>
				DESCR='\'xsd-type-usage\'
--
allows finding for a given global type (complex or simple) all XSD locations where it is used. This includes:

- all element and attribute components where it is specified in \'type\' attribute
- all extension and restriction elements where the type is specified in \'base\' attribute
- all <xs:list> elements where the type is specified in \'itemType\' attribute
- all <xs:union> elements where the type is specified in \'memberTypes\' attribute

The hash-key is the type\'s GOMElement.id (a unique ID of the DSM element representing the global type).'
				INIT_EXPR='createElementMap("xsd-type-usage");

// iterate by all XSD documents
iterate (
  findChildren ("#DOCUMENT"),
  @(GOMElement) document,
  FlexQuery ({

    mainXML = findElementByKey ("main-xmls", document.id);
    mainXMLFilter = BooleanQuery (checkElementByKey ("main-xmls", getXMLDocument().id, mainXML));

    //-- usage in XML schemas

    putElementsByKeys (
      "xsd-type-usage",  // element map ID

      // iterated (source) elements:
      // all relevant components where types are used
      // (they will be put in the map)

      document.findElementsByLRules (

        // collect XSD components where types may be involved
        Array (
          LocationRule (
            \'* -> wsdl:definitions / wsdl:types / xs:schema\',
            false
          ),
          LocationRule (
            \'* -> xs:schema\',
            false
          ),
          LocationRule (
            \'xs:schema -> descendant::(xs:%element | xs:%attribute | xs:%extensionType |
                                       xs:%restrictionType | xs:restriction | xs:list | xs:union)\',
            true
          )
        ),

        "xs:%element | xs:%attribute | xs:%extensionType |
         xs:%restrictionType | xs:restriction | xs:list | xs:union",

        BooleanQuery (
          // filter out attribute components with the prohibited use
          instanceOf ("xs:%attribute") ? getAttrValue ("use") != "prohibited"
          :
          // for local elements, remain only those that are either not globally documented at all
          // or globaly documented themselves (not via a unifier)

          instanceOf ("xs:%localElement") && getAttrValue("ref") == null ? 
          {
            el = findElementByKey ("xsd-globally-documented-local-elements", contextElement.id);
            el == null || el.id == contextElement.id
          }
          : true
        )
      ),

      FlexQuery (  // the hash keys (for the current type usage location)

        // direct type of an element or attribute
        instanceOf ("xs:%element | xs:%attribute") ?
          findElementByKey ("xsd-types", getAttrQNameValue("type"), mainXMLFilter).id
        :
        // extension or restriction base
        instanceOf ("xs:%extensionType | xs:%restrictionType | xs:restriction") ? 
        {
          qName = getAttrQNameValue("base");
          findElementByKey (
            "xsd-types", 
            hasServiceAttr ("redefined") ? HashKey (qName, getServiceAttr ("redefined")) : qName,
            mainXMLFilter
          ).id
        }
        :
        // list item
        instanceOf ("xs:list") ?
          findElementByKey ("xsd-types", getAttrQNameValue("itemType"), mainXMLFilter).id
        :
        // union members
        instanceOf ("xs:union") ?
          getElementIds (
            findElementsByKeys ("xsd-types", getAttrQNameValues("memberTypes"), mainXMLFilter)
          )
        :
        null  // neither of the above
      )
    );

    //-- usage in WSDL

    putElementsByKeys (
      "xsd-type-usage",  // element map ID

      // iterated by all message parts with type references

      document.findElementsByLPath (
        \'wsdl:definitions / wsdl:message / wsdl:part [hasAttr ("type")]\'
      ),

      FlexQuery (  // the hash key

        // the element for which the key should be generated is currently 
        // the generator\'s context element

        findElementByKey ("xsd-types", getAttrQNameValue("type"), mainXMLFilter).id 
      )
    )
  })
)'
			</FOLDER>
			<FOLDER>
				DESCR='\'xsd-group-usage\', \'xsd-attributeGroup-usage\', \'xsd-attribute-usage\':

xsd-group-usage
---------------
Allows finding all local <xs:group> elements where a given global element group is specified by reference. The hash-key is the group\'s GOMElement.id (a unique ID of the DSM element representing the group)

xsd-attributeGroup-usage
------------------------
Allows finding all local <xs:attributeGroup> elements where a given global attribute group is specified by reference. The hash-key is the attribute group\'s GOMElement.id

xsd-attribute-usage
-------------------
Allows finding all local <xs:attribute> elements where a given global attribute is specified by reference. The hash-key is the attribute\'s GOMElement.id'
				INIT_EXPR='createElementMaps (Array (
  "xsd-group-usage",
  "xsd-attributeGroup-usage",
  "xsd-attribute-usage"
));

// iterate by all XSD documents
iterate (
  findChildren ("#DOCUMENT"),
  @(GOMElement) document,
  FlexQuery ({

    mainXML = findElementByKey ("main-xmls", document.id);
    mainXMLFilter = BooleanQuery (checkElementByKey ("main-xmls", getXMLDocument().id, mainXML));

    putElementsByKeys (
      "xsd-group-usage",
      document.findElementsByLPath (
        "wsdl:definitions / wsdl:types / xs:schema / descendant::xs:%groupRef |
         xs:schema / descendant::xs:%groupRef"
      ),
      FlexQuery ({
        qName = getAttrQNameValue("ref");
        findElementByKey (
          "xsd-groups", 
          hasServiceAttr ("redefined") ? HashKey (qName, getServiceAttr ("redefined")) : qName,
          mainXMLFilter
        ).id
      }),
      FlexQuery (findPredecessorByType ("xs:%element | xs:complexType | xs:group"))
    );

    putElementsByKeys (
      "xsd-attributeGroup-usage",
      document.findElementsByLPath (
        "wsdl:definitions / wsdl:types / xs:schema / descendant::xs:%attributeGroupRef |
         xs:schema / descendant::xs:%attributeGroupRef"
      ),
      FlexQuery ({
        qName = getAttrQNameValue("ref");
        findElementByKey (
          "xsd-attributeGroups", 
          hasServiceAttr ("redefined") ? HashKey (qName, getServiceAttr ("redefined")) : qName,
          mainXMLFilter
        ).id
      }),
      FlexQuery (findPredecessorByType ("xs:%element|xs:complexType|xs:attributeGroup"))
    );

    putElementsByKeys (
      "xsd-attribute-usage",
      document.findElementsByLPath (
        "wsdl:definitions / wsdl:types / xs:schema / descendant::xs:%attribute |
         xs:schema / descendant::xs:%attribute"
      ),
      FlexQuery (
        findElementByKey ("xsd-global-attributes", getAttrQNameValue("ref"), mainXMLFilter).id
      )
    )
  })
)'
			</FOLDER>
			<FOLDER>
				DESCR='\'xsd-direct-subtypes\', \'xsd-indirect-subtypes\':

xsd-direct-subtypes
-------------------
Allows finding for a given global type all other global types whose definitions directly use it

- as an extension / restiction base
- as the itemType in a derivation by list
- as the memberType in a derivation by union

The hash-key is the type\'s GOMElement.id

xsd-indirect-subtypes
---------------------
Allows finding for a given global type all other global types whose definitions use any types derived from it. The hash-key is the type\'s GOMElement.id'
				INIT_EXPR='createElementMap("xsd-direct-subtypes");
createElementMap("xsd-indirect-subtypes");

// iterate by all XSD documents
iterate (
  findChildren ("#DOCUMENT"),
  @(GOMElement) document,
  FlexQuery ({

    mainXML = findElementByKey ("main-xmls", document.id);
    mainXMLFilter = BooleanQuery (checkElementByKey ("main-xmls", getXMLDocument().id, mainXML));

    rule1 = \'xs:complexType -> (xs:simpleContent | xs:complexContent) / (xs:extension | xs:restriction) / {
      qName = getAttrQNameValue("base");
      findElementsByKey (
        "xsd-types", 
        hasServiceAttr ("redefined") ? HashKey (qName, getServiceAttr ("redefined")) : qName,
        mainXMLFilter
      )
    }::(xs:complexType | xs:simpleType)\';

    rule2 = \'xs:simpleType -> descendant::xs:restriction / {
      qName = getAttrQNameValue("base");
      findElementsByKey (
        "xsd-types", 
        hasServiceAttr ("redefined") ? HashKey (qName, getServiceAttr ("redefined")) : qName,
        mainXMLFilter
      )
    }::xs:simpleType\';

    rule3 = \'xs:simpleType -> descendant::xs:list / {
      findElementsByKey ("xsd-types", getAttrQNameValue("itemType"), mainXMLFilter)
    }::xs:simpleType\';

    rule4 = \'xs:simpleType -> descendant::xs:union / {
      findElementsByKeys ("xsd-types", getAttrQNameValues("memberTypes"), mainXMLFilter)
    }::xs:simpleType\';

    // update map: \'xsd-direct-subtypes\'

    putElementsByKeys (
      "xsd-direct-subtypes",
      document.findElementsByLPath (
        "wsdl:definitions / wsdl:types / xs:schema / descendant::(xs:simpleType | xs:complexType) |
         xs:schema / descendant::(xs:simpleType | xs:complexType)"
      ),
      FlexQuery (  // generate keys
        getElementIds (findElementsByLRules (
          Array (
            LocationRule (rule1, false), 
            LocationRule (rule2, false),
            LocationRule (rule3, false),
            LocationRule (rule4, false)
          )
        ))
      )
    );

    // update map: \'xsd-indirect-subtypes\'

    putElementsByKeys (
      "xsd-indirect-subtypes",
      document.findElementsByLPath (
        "wsdl:definitions / wsdl:types / xs:schema / descendant::(xs:simpleType | xs:complexType) |
         xs:schema / descendant::(xs:simpleType | xs:complexType)"
      ),
      FlexQuery ({  // generate keys

        id = contextElement.id;

        getElementIds (findElementsByLRules (
          Array (
            LocationRule (rule1, true), 
            LocationRule (rule2, true),
            LocationRule (rule3, true),
            LocationRule (rule4, true)
          ),
          "",
          BooleanQuery (findPredecessorByType("xs:complexType|xs:simpleType").id != id)             
        ))
      })
    );
  })
)'
			</FOLDER>
			<FOLDER>
				DESCR='\'xsd-derived-elements\', \'xsd-derived-attributes\':

xsd-derived-elements
--------------------
Allows finding for a given global type all element components (both global and local ones) whose types are directly or indirectly derived from it. The hash-key is the type\'s GOMElement.id

xsd-derived-attributes
----------------------
Allows finding for a given global type all attribute components (both global and local ones) whose types are directly or indirectly derived from it. The hash-key is the type\'s GOMElement.id'
				INIT_EXPR='createElementMap("xsd-derived-elements");
createElementMap("xsd-derived-attributes");

iterate (
  findElementsByLPath (
    "#DOCUMENT / wsdl:definitions / wsdl:types / xs:schema / descendant::(xs:simpleType | xs:complexType) |
     #DOCUMENT / xs:schema / descendant::(xs:simpleType | xs:complexType)"
  ),
  @(GOMElement) type,
  FlexQuery ({
    typeId = type.id;

    iterate (
      Enum (
        type,
        findElementsByKey ("xsd-direct-subtypes", typeId),
        findElementsByKey ("xsd-indirect-subtypes", typeId)
      ),
      @(GOMElement) subtype,
      FlexQuery ({

        locations = findElementsByKey (
          "xsd-type-usage", 
          subtype.id,
          BooleanQuery (instanceOf (
            "xs:%element | xs:%attribute |
             xs:%extensionType | xs:%restrictionType |
             xs:list | xs:restriction | xs:union"
          ))
        );

        iterate (
          locations, 
          @(GOMElement) el,
          FlexQuery ({

            (! el.instanceOf ("xs:%element | xs:%attribute")) ?
              el = el.findPredecessorByType("xs:%element|xs:%attribute");

            el.instanceOf ("xs:%element") ?
            {
              putElementByKey ("xsd-derived-elements", typeId, el);

              el.instanceOf ("xs:element") &&
                checkElementsByKey ("xsd-substitution-group-affiliates", el.id) ?
              {
                iterate (
                  findElementsByKey ("xsd-substitution-group-affiliates", el.id), 
                  @(GOMElement) affiliate,
                  FlexQuery ({
                    affiliateType = findElementByKey ("xsd-element-types", affiliate.id);

                    affiliateType.id == typeId ?
                      putElementByKey ("xsd-derived-elements", typeId, affiliate);
                  })
                );
              }

            } : {
              el.instanceOf ("xs:%attribute") ?
                putElementByKey ("xsd-derived-attributes", typeId, el);
            }
          })
        )
      })
    )
  })
)'
			</FOLDER>
			<FOLDER>
				DESCR='\'wsdl-definition-usage\', \'wsdl-bound-operations\''
				INIT_EXPR='createElementMaps (Array (
  "wsdl-definition-usage",
  "wsdl-bound-operations"
));

// iterate by all XSD documents
iterate (
  findChildren ("#DOCUMENT"),
  @(GOMElement) document,
  FlexQuery ({
    (definitions = document.findChild ("wsdl:definitions")) != null ?
    {
      mainXML = findElementByKey ("main-xmls", document.id);
      mainXMLFilter = BooleanQuery (checkElementByKey ("main-xmls", getXMLDocument().id, mainXML));

      //-- definitions used within services / ports

      putElementsByKeys (
        "wsdl-definition-usage",
        definitions.findElementsByLPath ("wsdl:service / wsdl:port"),
        FlexQuery (
          findElementByKey ("wsdl-bindings", getAttrQNameValue("binding"), mainXMLFilter).id
        )
      );

      //-- definitions used within bindings

      iterate (
        definitions.findChildren ("wsdl:binding"),
        @(GOMElement) binding,
        FlexQuery ({

          (portType = findElementByKey ("wsdl-portTypes", binding.getAttrQNameValue("type"), mainXMLFilter)) != null ?
          {
            // usage of the portType by the binding
            putElementByKey ("wsdl-definition-usage", portType.id, binding);

            iterate (
              binding.findChildren ("wsdl:operation"),
              @(GOMElement) bindingOpr,
              FlexQuery ({

                // find the corresponding portType operation

                operationName = bindingOpr.getAttrValue("name");
                inputName     = bindingOpr.getValueByLPath("wsdl:input/@name");
                outputName    = bindingOpr.getValueByLPath("wsdl:output/@name");

                portTypeOpr = portType.findChild (
                  "wsdl:operation",
                  BooleanQuery (
                    hasAttrValue("name", operationName)
                    &&
                    (inputName == null || checkValueByLPath ("wsdl:input/@name", inputName))
                    &&
                    (outputName == null || checkValueByLPath ("wsdl:output/@name", outputName))
                  )
                );

                portTypeOpr != null ?
                {
                  putElementByKey ("wsdl-definition-usage", portTypeOpr.id, bindingOpr);
                  putElementByKey ("wsdl-bound-operations", bindingOpr.id, portTypeOpr);

                  (bindingOprInput = bindingOpr.findChild ("wsdl:input")) != null ?
                  {
                    inputName = bindingOprInput.getAttrValue ("name");

                    portTypeOprInput = portTypeOpr.findChild (
                      "wsdl:input",
                      BooleanQuery (inputName == null || hasAttrValue ("name", inputName))
                    );

                    portTypeOprInput != null ?
                      putElementByKey ("wsdl-bound-operations", bindingOprInput.id, portTypeOprInput);
                  };

                  (bindingOprOutput = bindingOpr.findChild ("wsdl:output")) != null ?
                  {
                    outputName = bindingOprOutput.getAttrValue ("name");

                    portTypeOprOutput = portTypeOpr.findChild (
                      "wsdl:output",
                      BooleanQuery (outputName == null || hasAttrValue ("name", outputName))
                    );

                    portTypeOprOutput != null ?
                      putElementByKey ("wsdl-bound-operations", bindingOprOutput.id, portTypeOprOutput);
                  };

                  iterate (
                    bindingOpr.findChildren ("wsdl:fault"),
                    @(GOMElement) bindingOprFault,
                    FlexQuery ({
                      faultName = bindingOprFault.getAttrValue ("name");

                      portTypeOprFault = portTypeOpr.findChild (
                        "wsdl:fault",
                        BooleanQuery (faultName == null || hasAttrValue ("name", faultName))
                      );

                      portTypeOprFault != null ?
                        putElementByKey ("wsdl-bound-operations", bindingOprFault.id, portTypeOprFault);
                    })
                  )
                };

                // usage of messages within extensibility elements

                putElementsByKeys (
                  "wsdl-definition-usage",
                  bindingOpr.findElementsByLRules (
                    Array (
                      LocationRule (
                        \'wsdl:operation%wsdl:tBindingOperation -> (wsdl:input | wsdl:output | wsdl:fault) / (soap:header | soap12:header)\',
                        false
                      ),
                      LocationRule (\'soap:header -> soap:headerfault\', true),
                      LocationRule (\'soap12:header -> soap12:headerfault\', true)
                    ),
                    "soap:header | soap:headerfault | soap12:header | soap12:headerfault"
                  ),
                  FlexQuery (
                    findElementByKey ("wsdl-messages", getAttrQNameValue("message"), mainXMLFilter).id
                  ),
                  FlexQuery (bindingOpr)
                );
              })
            )
          }
        })
      );

      //-- usage of messages within input/output/faults of operations in portTypes

      putElementsByKeys (
        "wsdl-definition-usage",
        definitions.findElementsByLPath ("wsdl:portType / wsdl:operation / (wsdl:input | wsdl:output | wsdl:fault)"),
        FlexQuery (
          findElementByKey ("wsdl-messages", getAttrQNameValue("message"), mainXMLFilter).id
        )
      );
    }
  })
)'
			</FOLDER>
		</BODY>
	</FOLDER>
</ROOT>
<STOCK_SECTIONS>
	<FOLDER>
		SS_NAME='Check XML Completeness'
		DESCR='Resolves the completeness of the given XSD document (passed in the context element) as well as of all XSD documents referenced from it (if their completeness has not been resolved yet). Actually, if the passed XSD document is found incomplete, the xmlInfo/@complete attribute of its \'xmlInfo\' (passed in the SS-parameter) will be set \'false\'. It must be set \'true\' initially, outside this SS-call.
--
params[0]: xmlInfo of the current XSD document (passed in the context element)'
		MATCHING_ET='#DOCUMENT'
		FMT={
			sec.outputStyle='text-par';
		}
		<BODY>
			<ELEMENT_ITER>
				DESCR='iterate by all WSDL/XSD references; if a referenced WSDL/XSD document has no \'complete\' attribute, this SS will be called for it to resolve its completeness;
see: Processing | Init/Step/Finish | Step Expression'
				STEP_EXPR='thisXMLInfo = (GOMElement) stockSection.param;

instanceOf ("xs:import") ?
{
  targetNS = getAttrStringValue("namespace");
  location = getAttrStringValue("schemaLocation");

  (location == "") ? location = targetNS;

} : {
  location = getAttrStringValue("schemaLocation");

  instanceOf ("xs:import") ?
  {
    targetNS = getAttrStringValue("namespace");

    (location == "" &&
     ! (thisXMLInfo.hasAttrValue ("type", "wsdl") &&
        checkElementsByKey ("referenced-schema", contextElement.id))) ?
    {
      location = targetNS;
    }
  } : {
    targetNS = thisXMLInfo.hasAttrValue ("type", "xsd")
                 ? thisXMLInfo.getAttrValue ("targetNS")
                 : findAncestor("xs:schema").getServiceAttr("targetNamespace")
  }
};

(location != "") ? 
{
  refURL = toURL (resolveURI (
    location,
    getXMLDocument().getAttrStringValue("xmlURI")
  ));

  refXMLInfoKey = HashKey (refURL, targetNS);

  ((refXMLInfo = findElementByKey ("xml-info", refXMLInfoKey)) != null) ?
  {
    ! refXMLInfo.hasAttr ("complete") ?
    {
      refXMLInfo.setAttr ("complete", true);

      callStockSection (
        findXMLDocument (refURL),
        "Check XML Completeness",
        refXMLInfo
      )
    };

    ! refXMLInfo.getAttrBooleanValue ("complete") &&
    ! thisXMLInfo.getAttrBooleanValue ("isMain") ?
    {
      iterate (
        findElementsByKey ("master-xml-infos", refXMLInfo.id),
        @(GOMElement) masterXMLInfo,
        FlexQuery ({
          masterXMLInfo != thisXMLInfo && 
          ! checkElementByKey ("referenced-xml-infos", thisXMLInfo.id, masterXMLInfo) ?
          {
            thisXMLInfo.setAttr ("complete", false);
            putElementByKey ("master-xml-infos", thisXMLInfo.id, masterXMLInfo);
          }
        })
      )
    }
  }
}'
				TARGET_ETS={'wsdl:import';'xs:import';'xs:include';'xs:redefine'}
				SCOPE='advanced-location-rules'
				RULES={
					'* -> wsdl:definitions/wsdl:import';
					'* -> wsdl:definitions/wsdl:types/xs:schema';
					'* -> xs:schema';
					'xs:schema -> (xs:import|xs:include|xs:redefine)',recursive;
				}
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='iterates by all global component references found in this XSD and determines if some of them lead outside this XSD or any XSD directly/indirectly referenced from it;
see: Processing | Init/Step/Finish | Step Expression'
				COND='thisXMLInfo = (GOMElement) stockSection.param;
! thisXMLInfo.getAttrBooleanValue ("isMain")'
				STEP_EXPR='thisXMLInfo = (GOMElement) stockSection.param;

compQName = null;

instanceOf ("xs:%localElement") ? 
{
  (compQName = getAttrQNameValue("ref")) != null ? { compKind = "element" }
  : (compQName = getAttrQNameValue("type")) != null ? { compKind = "type" }
} :
instanceOf ("xs:%attribute") ?
{
  (compQName = getAttrQNameValue("ref")) != null ? { compKind = "attribute" }
  : (compQName = getAttrQNameValue("type")) != null ? { compKind = "type" }
} :
instanceOf ("xs:%restrictionType | xs:%extensionType") ?
{
  (compQName = getAttrQNameValue("base")) != null ? { compKind = "type" }
} :
instanceOf ("xs:%groupRef") ? 
{ 
  (compQName = getAttrQNameValue("ref")) != null ? { compKind = "group" } 
} :
instanceOf ("xs:%attributeGroupRef") ?
{
  (compQName = getAttrQNameValue("ref")) != null ? { compKind = "attributeGroup" }
} :
instanceOf ("xs:list") ?
{
  (compQName = getAttrQNameValue("itemType")) != null ? { compKind = "type" }
} :
instanceOf ("xs:union") ?
{
  iterate (
    getAttrQNameValues ("memberTypes"),
    @(QName) typeQName,
    FlexQuery ({
      ! belongsToNS (typeQName, "xs") ?
      {
        parentXMLInfo = findLastElementByKey ("parent-xml-info", HashKey ("type", typeQName));

        parentXMLInfo != null && parentXMLInfo != thisXMLInfo && 
        ! checkElementByKey ("referenced-xml-infos", thisXMLInfo.id, parentXMLInfo) ?
        {
          thisXMLInfo.setAttr ("complete", false);
          putElementByKey ("master-xml-infos", thisXMLInfo.id, parentXMLInfo);
        }
      }
    })
  )
};

compQName != null && ! belongsToNS (compQName, "xs") ?
{
  parentXMLInfo = findLastElementByKey ("parent-xml-info", HashKey (compKind, compQName));

  parentXMLInfo != null && parentXMLInfo != thisXMLInfo && 
  ! checkElementByKey ("referenced-xml-infos", thisXMLInfo.id, parentXMLInfo) ?
  {
    thisXMLInfo.setAttr ("complete", false);
    putElementByKey ("master-xml-infos", thisXMLInfo.id, parentXMLInfo);
  }
}'
				TARGET_ETS={'xs:%attribute';'xs:%attributeGroupRef';'xs:%extensionType';'xs:%groupRef';'xs:%localElement';'xs:%restrictionType';'xs:list';'xs:union'}
				SCOPE='advanced-location-rules'
				RULES={
					'* -> wsdl:definitions/wsdl:types/xs:schema';
					'* -> xs:schema';
					'xs:schema -> descendant::(xs:%attribute|xs:%attributeGroupRef|xs:%extensionType|xs:%groupRef|xs:%localElement|xs:%restrictionType|xs:list|xs:union)',recursive;
				}
			</ELEMENT_ITER>
		</BODY>
	</FOLDER>
	<ELEMENT_ITER>
		SS_NAME='Reload Referenced XMLs'
		DESCR='This stock-section reloads all incomplete XSDs referenced from the given WSD/XSD document (passed in the context element). It also updates the following element maps: \'referenced-xmls\', \'referenced-schema\', \'schema-references\', \'redefined-component\', \'redefining-components\'
--
params[0]: lastCompleteXSD -- the last complete XSD document, passed to this stock-section on early recursive call. It is the nearest complete XSD, which the current XSD is referenced from. If the current XSD is complete one, this parameter is equal to it. If the current XSD is incomplete, it will be reloaded in a separate document according to lastCompleteXSD.id (as a part of the key)'
		MATCHING_ET='#DOCUMENT'
		TARGET_ETS={'wsdl:import';'xs:import';'xs:include';'xs:redefine'}
		SCOPE='advanced-location-rules'
		RULES={
			'* -> wsdl:definitions/wsdl:import';
			'* -> wsdl:definitions/wsdl:types/xs:schema';
			'* -> xs:schema';
			'xs:schema -> (xs:import|xs:include|xs:redefine)',recursive;
		}
		<BODY>
			<FOLDER>
				MATCHING_ET='wsdl:import'
				INIT_EXPR='targetNS = getAttrStringValue("namespace");

location = getAttrStringValue("location");
(location == "") ? location = targetNS;

(location != "") ? 
{
  refURL = toURL (resolveURI (
    location,
    getXMLDocument().getAttrStringValue("xmlURI")
  ));

  ((refXMLInfo = findElementByKey ("xml-info", HashKey (refURL, targetNS))) != null) ?
  {
    thisXML = stockSection.contextElement;
    lastCompleteXML = (GOMElement) stockSection.param;

    complete = refXMLInfo.getAttrBooleanValue ("complete");
    refXMLKey = complete ? targetNS : HashKey (targetNS, lastCompleteXML.id);

    (refXML = findXMLDocument (refURL, refXMLKey)) == null ?
    {
      refXML = loadXMLDocument (refURL, refXMLKey);
      ((definitions = refXML.findChild ("wsdl:definitions")) != null) ?
      {
        refXML.callStockSection (
          "Reload Referenced XMLs",
          complete ? refXML : lastCompleteXML
        );
      }
    } : {
      definitions = refXML.findChild ("wsdl:definitions");
    };

    definitions != null ?
    {
      definitions.setServiceAttr ("imported", true);

      putElementByKey ("referenced-schema", contextElement.id, definitions);
      putElementByKey ("schema-references", definitions.id, contextElement);

      putElementByKey ("referenced-xmls", thisXML.id, refXML);

      putElementsByKey (
        "referenced-xmls",
        thisXML.id,
        findElementsByKey ("referenced-xmls", refXML.id)
      )
    }
  }
}'
				BREAK_PARENT_BLOCK='when-executed'
			</FOLDER>
			<FOLDER>
				MATCHING_ET='xs:import'
				INIT_EXPR='targetNS = getAttrStringValue("namespace");

schemaLocation = getAttrStringValue("schemaLocation");

(schemaLocation == "" &&
 ! checkElementsByKey ("referenced-schema", contextElement.id)) ?
{
  schemaLocation = targetNS;
};

(schemaLocation != "") ? 
{
  refURL = toURL (resolveURI (
    schemaLocation,
    getXMLDocument().getAttrStringValue("xmlURI")
  ));

  ((refXMLInfo = findElementByKey ("xml-info", HashKey (refURL, targetNS))) != null) ?
  {
    thisXML = stockSection.contextElement;
    lastCompleteXML = (GOMElement) stockSection.param;

    complete = refXMLInfo.getAttrBooleanValue ("complete");
    refXSDKey = complete ? targetNS : HashKey (targetNS, lastCompleteXML.id);

    (refXSD = findXMLDocument (refURL, refXSDKey)) == null ?
    {
      refXSD = loadXMLDocument (refURL, refXSDKey);
      ((schema = refXSD.findChild ("xs:schema")) != null) ?
      {
        schema.setServiceAttr ("targetNamespace", targetNS);

        refXSD.callStockSection (
          "Reload Referenced XMLs",
          complete ? refXSD : lastCompleteXML
        );
      }
    } : {
      schema = refXSD.findChild ("xs:schema");
    };

    schema != null ?
    {
      schema.setServiceAttr ("imported", true);

      putElementByKey ("referenced-schema", contextElement.id, schema);
      putElementByKey ("schema-references", schema.id, contextElement);

      putElementByKey ("referenced-xmls", thisXML.id, refXSD);

      putElementsByKey (
        "referenced-xmls",
        thisXML.id,
        findElementsByKey ("referenced-xmls", refXSD.id)
      )
    }
  }
}'
				BREAK_PARENT_BLOCK='when-executed'
			</FOLDER>
			<FOLDER>
				MATCHING_ET='xs:include'
				INIT_EXPR='schemaLocation = getAttrStringValue("schemaLocation");

(schemaLocation != "") ? 
{
  loadingSchema = findAncestor ("xs:schema");
  targetNS = loadingSchema.getServiceAttr("targetNamespace").toString();

  refURL = toURL (resolveURI (
    schemaLocation,
    getXMLDocument().getAttrStringValue("xmlURI")
  ));

  ((refXMLInfo = findElementByKey ("xml-info", HashKey (refURL, targetNS))) != null) ?
  {
    thisXML = stockSection.contextElement;
    lastCompleteXML = (GOMElement) stockSection.param;

    complete = refXMLInfo.getAttrBooleanValue ("complete");
    refXSDKey = complete ? targetNS : HashKey (targetNS, lastCompleteXML.id);

    (refXSD = findXMLDocument (refURL, refXSDKey)) == null ?
    {
      refXSD = loadXMLDocument (refURL, refXSDKey);
      ((schema = refXSD.findChild ("xs:schema")) != null) ?
      {
        schema.setServiceAttr ("targetNamespace", targetNS);
        schema.adoptNSBinding ("", contextElement.dsmElement.defaultNS);

        refXSD.callStockSection (
          "Reload Referenced XMLs",
          complete ? refXSD : lastCompleteXML
        );
      }
    } : {
      schema = refXSD.findChild ("xs:schema");
    };

    schema != null ?
    {
      schema.setServiceAttr ("included", true);

      putElementByKey ("referenced-schema", contextElement.id, schema);
      putElementByKey ("schema-references", schema.id, contextElement);

      putElementByKey ("referenced-xmls", thisXML.id, refXSD);

      putElementsByKey (
        "referenced-xmls",
        thisXML.id,
        findElementsByKey ("referenced-xmls", refXSD.id)
      )
    }
  }
}'
				BREAK_PARENT_BLOCK='when-executed'
			</FOLDER>
			<FOLDER>
				DESCR='process <xs:redefine>
--
1. First load the redefined schema (see "Processing | init Expression" tab).
2. Then, load all subschemas referenced from it.

3. Further, iterate by all redefinitions of global types and element/attribute groups found within the <xs:redefine> element. For each redefinition do the following:

3.1. Find the corresponding (original) component in the redefined schema and assign to it a "redefined" service attribute with the value equal to \'redefine_count\', which is the total number of <xs:redefine> elements already processed.

3.2. When the component redefinition contains a reference to itself (that is to the original component), assign to that reference a "redefined" service attribute with the same \'redefine_count\' value.

These two steps ensure that the redefined component is referenced from the redifinition not just by the component qualified name (which is not unique now), but rather with { the qualified name; the value of "redefined" service attribute } pair, which will be unique and can be used as a key to find the corresponding DSM element representing the redefined (original) component. (See creation of \'xsd-types\', \'xsd-groups\', \'xsd-attributeGroups\' element maps in the main block.)

3.3. Assign to the component redefinition a "redefinition" service attribute as follows:

1). If the redefined component (the one found in the redefined schema) also has a "redefinition" service attribute that means it is a redefinition itself. In that case, take its "redefinition" attribute value (it must be already set). If it is 0, change it to 1, otherwise leave as is. Increase the result value by 1. That will be the "redefinition" attribute value of the new component redefinition.

2). If the redefined component (found in the redefined schema) is trully original one, assign 0 to the "redefinition" attribute of component redefinition.

This ensures the following. If some component is a redefinition, it always has a "redefinition" attribute. When its value is 0, this is the only redefinition of the original component. If the attribute value is > 0, it will indicate the redefinition number. The last redefinition will have the greatest value of the "redefinition" attribute.'
				COND='getAttrStringValue("schemaLocation") != ""'
				MATCHING_ET='xs:redefine'
				INIT_EXPR='schema = null;

schemaLocation = getAttrStringValue("schemaLocation");

loadingSchema = findAncestor ("xs:schema");
targetNS = loadingSchema.getServiceAttr("targetNamespace").toString();

refURL = toURL (resolveURI (
  schemaLocation,
  getXMLDocument().getAttrStringValue("xmlURI")
));

((refXMLInfo = findElementByKey ("xml-info", HashKey (refURL, targetNS))) != null) ?
{
  thisXML = stockSection.contextElement;
  lastCompleteXML = (GOMElement) stockSection.param;

  complete = refXMLInfo.getAttrBooleanValue ("complete");
  refXSDKey = complete ? targetNS : HashKey (targetNS, lastCompleteXML.id);

  (refXSD = findXMLDocument (refURL, refXSDKey)) == null ?
  {
    refXSD = loadXMLDocument (refURL, refXSDKey);
    ((schema = refXSD.findChild ("xs:schema")) != null) ?
    {
      schema.setServiceAttr ("targetNamespace", targetNS);
      schema.adoptNSBinding ("", contextElement.dsmElement.defaultNS);

      refXSD.callStockSection (
        "Reload Referenced XMLs",
        complete ? refXSD : lastCompleteXML
      )
    }
  } : {
    schema = refXSD.findChild ("xs:schema");
  };

  schema != null ?
  {
    schema.setServiceAttr ("redefined", true);

    putElementByKey ("referenced-schema", contextElement.id, schema);
    putElementByKey ("schema-references", schema.id, contextElement);

    putElementByKey ("referenced-xmls", thisXML.id, refXSD);

    putElementsByKey (
      "referenced-xmls",
      thisXML.id,
      findElementsByKey ("referenced-xmls", refXSD.id)
    )
  }
};

stockSection.setVar ("redefined_schema", schema);
! checkVar ("redefine_count") ? setVar ("redefine_count", 0);'
				FINISH_EXPR='incVar ("redefine_count", 1)'
				<BODY>
					<ELEMENT_ITER>
						DESCR='iterates by simpleType redefinitions within the <redefine> element'
						TARGET_ET='xs:simpleType'
						SCOPE='simple-location-rules'
						RULES={
							'* -> xs:simpleType';
						}
						<BODY>
							<ELEMENT_ITER>
								DESCR='process equally named simpleTypes within the redefined schema
(see tab: Processing | Init/Step/Finish | Step Expression)'
								CONTEXT_ELEMENT_EXPR='stockSection.getElementVar ("redefined_schema")'
								MATCHING_ET='xs:schema'
								STEP_EXPR='redefiningComp = sectionBlock.contextElement;

hasAttrValue("name", redefiningComp.getAttrStringValue("name")) ?
{
  setServiceAttr ("redefined", getVar ("redefine_count"));

  putElementByKey ("redefining-components", contextElement.id, redefiningComp);
  putElementByKey ("redefined-component", redefiningComp.id, contextElement);

  hasServiceAttr ("redefinition") ?
  {
    (redef_no = getServiceAttr ("redefinition").toInt()) == 0 ?
      setServiceAttr ("redefinition", (redef_no = 1));

    redefiningComp.setServiceAttr ("redefinition", redef_no + 1)
  } : {
    redefiningComp.setServiceAttr ("redefinition", 0)
  }
}'
								TARGET_ET='xs:simpleType'
								SCOPE='advanced-location-rules'
								RULES={
									'* -> xs:simpleType';
									'* -> xs:redefine/xs:simpleType';
								}
							</ELEMENT_ITER>
							<ELEMENT_ITER>
								DESCR='process self-references within the current redefinition'
								STEP_EXPR='redefiningComp = sectionBlock.contextElement;
schema = redefiningComp.findAncestor ("xs:schema");

qName = getAttrQNameValue("base");

(qName.localName == redefiningComp.getAttrStringValue("name") &&
 qName.namespaceURI == schema.getServiceAttr("targetNamespace")) 
? 
 setServiceAttr ("redefined", getVar ("redefine_count"));'
								TARGET_ET='xs:restriction'
								SCOPE='simple-location-rules'
								RULES={
									'* -> descendant::xs:restriction';
								}
							</ELEMENT_ITER>
						</BODY>
					</ELEMENT_ITER>
					<ELEMENT_ITER>
						DESCR='iterates by complexType redefinitions within <redefine> element'
						TARGET_ET='xs:complexType'
						SCOPE='simple-location-rules'
						RULES={
							'* -> xs:complexType';
						}
						<BODY>
							<ELEMENT_ITER>
								DESCR='process equally named complexTypes within the redefined schema
(see tab: Processing | Init/Step/Finish | Step Expression)'
								CONTEXT_ELEMENT_EXPR='stockSection.getElementVar ("redefined_schema")'
								MATCHING_ET='xs:schema'
								STEP_EXPR='redefiningComp = sectionBlock.contextElement;

hasAttrValue("name", redefiningComp.getAttrStringValue("name")) ?
{
  setServiceAttr ("redefined", getVar ("redefine_count"));

  putElementByKey ("redefining-components", contextElement.id, redefiningComp);
  putElementByKey ("redefined-component", redefiningComp.id, contextElement);

  hasServiceAttr ("redefinition") ?
  {
    (redef_no = getServiceAttr ("redefinition").toInt()) == 0 ?
      setServiceAttr ("redefinition", (redef_no = 1));

    redefiningComp.setServiceAttr ("redefinition", redef_no + 1)
  } : {
    redefiningComp.setServiceAttr ("redefinition", 0)
  }
}'
								TARGET_ET='xs:complexType'
								SCOPE='advanced-location-rules'
								RULES={
									'* -> xs:complexType';
									'* -> xs:redefine/xs:complexType';
								}
							</ELEMENT_ITER>
							<ELEMENT_ITER>
								DESCR='process self-references within the current redefinition'
								STEP_EXPR='redefiningComp = sectionBlock.contextElement;
schema = redefiningComp.findAncestor ("xs:schema");

qName = getAttrQNameValue("base");

(qName.localName == redefiningComp.getAttrStringValue("name") &&
 qName.namespaceURI == schema.getServiceAttr("targetNamespace"))
? 
 setServiceAttr ("redefined", getVar ("redefine_count"));'
								TARGET_ETS={'xs:extension%xs:extensionType';'xs:extension%xs:simpleExtensionType';'xs:restriction%xs:complexRestrictionType';'xs:restriction%xs:simpleRestrictionType'}
								SCOPE='simple-location-rules'
								RULES={
									'* -> descendant::(xs:extension%xs:extensionType|xs:extension%xs:simpleExtensionType|xs:restriction%xs:complexRestrictionType|xs:restriction%xs:simpleRestrictionType)';
								}
							</ELEMENT_ITER>
						</BODY>
					</ELEMENT_ITER>
					<ELEMENT_ITER>
						DESCR='iterates by group redefinitions within the <redefine> element'
						TARGET_ET='xs:group'
						SCOPE='simple-location-rules'
						RULES={
							'* -> xs:group';
						}
						<BODY>
							<ELEMENT_ITER>
								DESCR='process equally named groups within the redefined schema
(see tab: Processing | Init/Step/Finish | Step Expression)'
								CONTEXT_ELEMENT_EXPR='stockSection.getElementVar ("redefined_schema")'
								MATCHING_ET='xs:schema'
								STEP_EXPR='redefiningComp = sectionBlock.contextElement;

hasAttrValue("name", redefiningComp.getAttrStringValue("name")) ?
{
  setServiceAttr ("redefined", getVar ("redefine_count"));

  putElementByKey ("redefining-components", contextElement.id, redefiningComp);
  putElementByKey ("redefined-component", redefiningComp.id, contextElement);

  hasServiceAttr ("redefinition") ?
  {
    (redef_no = getServiceAttr ("redefinition").toInt()) == 0 ?
      setServiceAttr ("redefinition", (redef_no = 1));

    redefiningComp.setServiceAttr ("redefinition", redef_no + 1)
  } : {
    redefiningComp.setServiceAttr ("redefinition", 0)
  }
}'
								TARGET_ET='xs:group'
								SCOPE='advanced-location-rules'
								RULES={
									'* -> xs:group';
									'* -> xs:redefine/xs:group';
								}
							</ELEMENT_ITER>
							<ELEMENT_ITER>
								DESCR='process self-references within the current redefinition'
								STEP_EXPR='redefiningComp = sectionBlock.contextElement;
schema = redefiningComp.findAncestor ("xs:schema");

qName = getAttrQNameValue("ref");

(qName.localName == redefiningComp.getAttrStringValue("name") &&
 qName.namespaceURI == schema.getServiceAttr("targetNamespace"))
? 
 setServiceAttr ("redefined", getVar ("redefine_count"));
'
								TARGET_ET='xs:%groupRef'
								SCOPE='simple-location-rules'
								RULES={
									'* -> descendant::xs:%groupRef';
								}
							</ELEMENT_ITER>
						</BODY>
					</ELEMENT_ITER>
					<ELEMENT_ITER>
						DESCR='iterates by attributeGroup redefinitions within the <redefine> element'
						TARGET_ET='xs:attributeGroup'
						SCOPE='simple-location-rules'
						RULES={
							'* -> xs:attributeGroup';
						}
						<BODY>
							<ELEMENT_ITER>
								DESCR='process equally named attributeGroups within the redefined schema
(see tab: Processing | Init/Step/Finish | Step Expression)'
								CONTEXT_ELEMENT_EXPR='stockSection.getElementVar ("redefined_schema")'
								MATCHING_ET='xs:schema'
								STEP_EXPR='redefiningComp = sectionBlock.contextElement;

hasAttrValue("name", redefiningComp.getAttrStringValue("name")) ?
{
  setServiceAttr ("redefined", getVar ("redefine_count"));

  putElementByKey ("redefining-components", contextElement.id, redefiningComp);
  putElementByKey ("redefined-component", redefiningComp.id, contextElement);

  hasServiceAttr ("redefinition") ?
  {
    (redef_no = getServiceAttr ("redefinition").toInt()) == 0 ?
      setServiceAttr ("redefinition", (redef_no = 1));

    redefiningComp.setServiceAttr ("redefinition", redef_no + 1)
  } : {
    redefiningComp.setServiceAttr ("redefinition", 0)
  }
}'
								TARGET_ET='xs:attributeGroup'
								SCOPE='advanced-location-rules'
								RULES={
									'* -> xs:attributeGroup';
									'* -> xs:redefine/xs:attributeGroup';
								}
							</ELEMENT_ITER>
							<ELEMENT_ITER>
								DESCR='process self-references within the current redefintion'
								STEP_EXPR='redefiningComp = sectionBlock.contextElement;
schema = redefiningComp.findAncestor ("xs:schema");

qName = getAttrQNameValue("ref");

(qName.localName == redefiningComp.getAttrStringValue("name") &&
 qName.namespaceURI == schema.getServiceAttr("targetNamespace"))
? 
 setServiceAttr ("redefined", getVar ("redefine_count"));'
								TARGET_ET='xs:%attributeGroupRef'
								SCOPE='simple-location-rules'
								RULES={
									'* -> descendant::xs:%attributeGroupRef';
								}
							</ELEMENT_ITER>
						</BODY>
					</ELEMENT_ITER>
				</BODY>
			</FOLDER>
		</BODY>
	</ELEMENT_ITER>
	<FOLDER>
		SS_NAME='Scan Referenced XMLs 1'
		DESCR='Loads all WSDL/XSD files referenced from the current one (passed as the context element).
Sets "referenced" attribute of each loaded referenced WSDL/XSD document.
See: Processing | Init/Step/Finish | Step Expression'
		MATCHING_ET='#DOCUMENT'
		<BODY>
			<FOLDER>
				DESCR='case of WSDL file'
				CONTEXT_ELEMENT_EXPR='findChild ("wsdl:definitions")'
				MATCHING_ET='wsdl:definitions'
				BREAK_PARENT_BLOCK='when-executed'
				<BODY>
					<ELEMENT_ITER>
						DESCR='scan imported WSDLs'
						STEP_EXPR='location = getAttrStringValue("location");

(location == "") ? 
  location = getAttrStringValue ("namespace");

(location != "") ? 
{
  refURL = toURL (resolveURI (
    location,
    getXMLDocument().getAttrStringValue("xmlURI")
  ));

  (refXML = findXMLDocument (refURL)) == null ?
  {
    (refXML = loadXMLDocument (refURL)) == null ?
      return null;

    refXML.callStockSection ("Scan Referenced XMLs 1");
  };

  refXML.setAttr ("referenced", true);
}'
						TARGET_ET='wsdl:import'
						SCOPE='simple-location-rules'
						RULES={
							'* -> wsdl:import';
						}
					</ELEMENT_ITER>
					<ELEMENT_ITER>
						DESCR='scan embedded schemas'
						STEP_EXPR='setServiceAttr ("embedded", true);

iterator.numItems > 1 ?
  setServiceAttr ("embeddedSchemaNo", iterator.itemNo);

targetNS = getAttrStringValue ("targetNamespace");
setServiceAttr ("targetNamespace", targetNS);

putElementByKey ("embedded-schemas", targetNS, contextElement);
'
						TARGET_ET='xs:schema'
						SCOPE='advanced-location-rules'
						RULES={
							'* -> wsdl:types/xs:schema';
						}
					</ELEMENT_ITER>
					<ELEMENT_ITER>
						STEP_EXPR='schemaLocation = getAttrStringValue("schemaLocation");

(schemaLocation == "" && instanceOf ("xs:import")) ?
{
  targetNS = getAttrStringValue ("namespace");

  // try to find the imported schema among other shemas embedded in this WSDL
  // or those referenced from it

  ((embeddedSchema = findElementByKey ("embedded-schemas", targetNS)) != null) ?
  {
    putElementByKey ("referenced-schema", contextElement.id, embeddedSchema);
    putElementByKey ("schema-references", embeddedSchema.id, contextElement);
  }
  :
  schemaLocation = targetNS;
};

(schemaLocation != "") ? 
{
  refURL = toURL (resolveURI (
    schemaLocation,
    getXMLDocument().getAttrStringValue("xmlURI")
  ));

  (refXSD = findXMLDocument (refURL)) == null ?
  {
    (refXSD = loadXMLDocument (refURL)) == null ?
      return null;

    refXSD.callStockSection ("Scan Referenced XMLs 1");
  };

  refXSD.setAttr ("referenced", true);
}'
						TARGET_ETS={'xs:import';'xs:include';'xs:redefine'}
						SCOPE='advanced-location-rules'
						RULES={
							'* -> wsdl:types/xs:schema/(xs:import|xs:include|xs:redefine)';
						}
					</ELEMENT_ITER>
				</BODY>
			</FOLDER>
			<ELEMENT_ITER>
				DESCR='case of XSD file'
				STEP_EXPR='schemaLocation = getAttrStringValue("schemaLocation");

(schemaLocation == "" && instanceOf ("xs:import")) ? 
  schemaLocation = getAttrStringValue ("namespace");

(schemaLocation != "") ? 
{
  refURL = toURL (resolveURI (
    schemaLocation,
    getXMLDocument().getAttrStringValue("xmlURI")
  ));

  (refXSD = findXMLDocument (refURL)) == null ?
  {
    (refXSD = loadXMLDocument (refURL)) == null ?
      return null;

    refXSD.callStockSection ("Scan Referenced XMLs 1");
  };

  refXSD.setAttr ("referenced", true);
}'
				TARGET_ETS={'xs:import';'xs:include';'xs:redefine'}
				SCOPE='advanced-location-rules'
				RULES={
					'* -> xs:schema/(xs:import|xs:include|xs:redefine)';
				}
			</ELEMENT_ITER>
		</BODY>
	</FOLDER>
	<FOLDER>
		SS_NAME='Scan Referenced XMLs 2'
		DESCR='For the given XSD document (passed in the context element), collects:
- which XSD documents are referenced from it directly/indirectly
- the actual definition loaction of each global component (in both this XSD and 
referenced ones).
Updates the following element maps: \'xml-info\', \'parent-xml-info\', \'referenced-xml-infos\'
--
params[0]: xmlInfo of the current XSD document (passed in the context element)'
		MATCHING_ET='#DOCUMENT'
		<BODY>
			<ELEMENT_ITER>
				DESCR='process all WSDL references;
see: Processing | Init/Step/Finish | Step Expression'
				STEP_EXPR='thisXMLInfo = (GOMElement) stockSection.param;

targetNS = getAttrStringValue("namespace");
location = getAttrStringValue("location");

(location == "") ?
  location = targetNS;

(location != "") ? 
{
  refURL = toURL (resolveURI (
    location,
    getXMLDocument().getAttrStringValue("xmlURI")
  ));

  refXMLInfoKey = HashKey (refURL, targetNS);

  ((refXMLInfo = findElementByKey ("xml-info", refXMLInfoKey)) == null) ?
  {
    refXMLInfo = CustomElement();
    refXMLInfo.setAttr ("type", "wsdl");
    refXMLInfo.setAttr ("xmlURL", refURL);
    refXMLInfo.setAttr ("targetNS", targetNS);

    putElementByKey ("xml-info", refXMLInfoKey, refXMLInfo);

    callStockSection (
      findXMLDocument (refURL),
      "Scan Referenced XMLs 2",
      refXMLInfo
    )
  };

  putElementByKey ("referenced-xml-infos", thisXMLInfo.id, refXMLInfo);

  putElementsByKey (
    "referenced-xml-infos",
    thisXMLInfo.id,
    findElementsByKey ("referenced-xml-infos", refXMLInfo.id)
  );
}'
				TARGET_ET='wsdl:import'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> wsdl:definitions/wsdl:import';
				}
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='process all XSD references;
see: Processing | Init/Step/Finish | Step Expression'
				STEP_EXPR='thisXMLInfo = (GOMElement) stockSection.param;

schemaLocation = getAttrStringValue("schemaLocation");

instanceOf ("xs:import") ?
{
  targetNS = getAttrStringValue("namespace");

  (schemaLocation == "" &&
   ! (thisXMLInfo.hasAttrValue ("type", "wsdl") &&
      checkElementsByKey ("referenced-schema", contextElement.id))) ?
  {
    schemaLocation = targetNS;
  }
} : {
  targetNS = thisXMLInfo.hasAttrValue ("type", "xsd")
               ? thisXMLInfo.getAttrValue ("targetNS")
               : findAncestor("xs:schema").getServiceAttr("targetNamespace");
};

(schemaLocation != "") ? 
{
  refURL = toURL (resolveURI (
    schemaLocation,
    getXMLDocument().getAttrStringValue("xmlURI")
  ));

  refXMLInfoKey = HashKey (refURL, targetNS);

  ((refXMLInfo = findElementByKey ("xml-info", refXMLInfoKey)) == null) ?
  {
    refXMLInfo = CustomElement();
    refXMLInfo.setAttr ("type", "xsd");
    refXMLInfo.setAttr ("xmlURL", refURL);
    refXMLInfo.setAttr ("targetNS", targetNS);

    putElementByKey ("xml-info", refXMLInfoKey, refXMLInfo);

    callStockSection (
      findXMLDocument (refURL),
      "Scan Referenced XMLs 2",
      refXMLInfo
    )
  };

  putElementByKey ("referenced-xml-infos", thisXMLInfo.id, refXMLInfo);

  putElementsByKey (
    "referenced-xml-infos",
    thisXMLInfo.id,
    findElementsByKey ("referenced-xml-infos", refXMLInfo.id)
  );
}'
				TARGET_ETS={'xs:import';'xs:include';'xs:redefine'}
				SCOPE='advanced-location-rules'
				RULES={
					'* -> wsdl:definitions/wsdl:types/xs:schema';
					'* -> xs:schema';
					'xs:schema -> (xs:import|xs:include|xs:redefine)',recursive;
				}
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='collect definitions of global components (update \'parent-xml-info\' map);
see: Processing | Init/Step/Finish | Step Expression'
				STEP_EXPR='thisXMLInfo = (GOMElement) stockSection.param;
targetNS = thisXMLInfo.getAttrStringValue ("targetNS");

compKey = HashKey (
  instanceOf ("xs:element") ? "element"
  : instanceOf ("xs:complexType | xs:simpleType") ? "type"
    : instanceOf ("xs:group") ? "group"
      : instanceOf ("xs:attribute") ? "attribute"
        : instanceOf ("xs:attributeGroup") ? "attributeGroup" : "",

  QName (targetNS, getAttrStringValue("name"))
);

putElementByKey ("parent-xml-info", compKey, thisXMLInfo);'
				TARGET_ETS={'xs:attribute';'xs:attributeGroup';'xs:complexType';'xs:element';'xs:group';'xs:simpleType'}
				SCOPE='advanced-location-rules'
				RULES={
					'* -> wsdl:definitions/wsdl:types/xs:schema';
					'* -> xs:schema';
					'xs:schema -> (xs:attribute|xs:attributeGroup|xs:complexType|xs:element|xs:group|xs:redefine|xs:simpleType)',recursive;
					'xs:redefine -> (xs:attributeGroup|xs:complexType|xs:group|xs:simpleType)',recursive;
				}
			</ELEMENT_ITER>
		</BODY>
	</FOLDER>
	<ELEMENT_ITER>
		SS_NAME='Type Derivation Path'
		DESCR='params[0]: master XML'
		TARGET_ETS={'#CUSTOM';'xs:%complexType';'xs:%simpleType'}
		SCOPE='advanced-location-rules'
		RULES={
			'(#CUSTOM|xs:%complexType|xs:%simpleType) -> .';
			'xs:%complexType -> {(base = getValueByLPath ("(xs:simpleContent|xs:complexContent) / (xs:restriction|xs:extension)/@base")) != null ?
{ 
  typeQName = toQName (base);
  mainXML = stockSection.param.toElement();

  type = findElementByKey ("xsd-types", typeQName, BooleanQuery (
           checkElementByKey ("main-xmls", getXMLDocument().id, mainXML))
         );

  Enum (type != null ? type : CustomElement (typeQName))
}}::(#CUSTOM|xs:complexType|xs:simpleType)',recursive;
			'xs:%simpleType -> (xs:list|xs:restriction|xs:union)',recursive;
			'xs:restriction -> xs:simpleType',recursive;
			'xs:restriction -> {(typeQName = getAttrQNameValue("base")) != null ? 
{
  mainXML = stockSection.param.toElement();

  type = findElementByKey ("xsd-types", typeQName, BooleanQuery (
           checkElementByKey ("main-xmls", getXMLDocument().id, mainXML))
         );

  Enum (type != null ? type : CustomElement (typeQName))
}}::(#CUSTOM|xs:simpleType)',recursive;
			'xs:list -> {(typeQName = getAttrQNameValue("itemType")) != null ? 
{ 
  mainXML = stockSection.param.toElement();

  type = findElementByKey ("xsd-types", typeQName, BooleanQuery (
           checkElementByKey ("main-xmls", getXMLDocument().id, mainXML))
         );

  Enum (type != null ? type : CustomElement (typeQName))
}}::(#CUSTOM|xs:simpleType)',recursive;
			'xs:list -> xs:simpleType',recursive;
		}
		FILTER='instanceOf("xs:%localSimpleType") ?
  contextElement == iterator.contextElement 
: 
! (instanceOf("#CUSTOM") &&
  contextElement.value.toQName().isXSPredefinedType("anyType"))'
		SORTING='reversed'
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='none';
		}
		<BODY>
			<AREA_SEC>
				MATCHING_ET='#CUSTOM'
				BREAK_PARENT_BLOCK='when-executed'
				<AREA>
					<CTRL_GROUP>
						FMT={
							txtfl.delimiter.type='none';
						}
						<CTRLS>
							<DATA_CTRL>
								FORMULA='contextElement.value.toQName().fullName'
							</DATA_CTRL>
							<DELIMITER>
								FMT={
									txtfl.delimiter.type='text';
									txtfl.delimiter.text='/';
								}
							</DELIMITER>
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
							<SS_CALL_CTRL>
								SS_NAME='Type Derivation Step'
							</SS_CALL_CTRL>
							<DATA_CTRL>
								FORMULA='instanceOf("xs:simpleType | xs:complexType") ?
{
  nsURI = findAncestor ("xs:schema").getServiceAttr("targetNamespace");
  localName = getAttrStringValue("name");

  (nsURI != "") ? "{" + nsURI + "}:" + localName : localName

} : "<anonymousType>";'
								FMT={
									ctrl.size.width='328.5';
									ctrl.size.height='17.3';
								}
							</DATA_CTRL>
							<DELIMITER>
								FMT={
									txtfl.delimiter.type='text';
									txtfl.delimiter.text='/';
								}
							</DELIMITER>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</ELEMENT_ITER>
	<FOLDER>
		SS_NAME='Type Derivation Step'
		MATCHING_ETS={'xs:%complexType';'xs:%simpleType'}
		FMT={
			sec.outputStyle='text-par';
		}
		<BODY>
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
										TEXT='[restriction]'
									</TEXT_CTRL>
									<TEXT_CTRL>
										COND='hasChild ("xs:extension")'
										TEXT='[extension]'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</FOLDER>
			<FOLDER>
				MATCHING_ET='xs:%simpleType'
				<BODY>
					<AREA_SEC>
						CONTEXT_ELEMENT_EXPR='findChild ("xs:restriction")'
						MATCHING_ET='xs:restriction'
						BREAK_PARENT_BLOCK='when-executed'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='[restriction]'
									</TEXT_CTRL>
									<SS_CALL_CTRL>
										COND='getAttrValue("base") == null'
										SS_NAME='Type Derivation Step'
										PASSED_ELEMENT_EXPR='findChild("xs:simpleType")'
										PASSED_ELEMENT_MATCHING_ET='xs:%localSimpleType'
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						CONTEXT_ELEMENT_EXPR='findChild ("xs:list")'
						MATCHING_ET='xs:list'
						BREAK_PARENT_BLOCK='when-executed'
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='none';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='[list]'
									</TEXT_CTRL>
									<SS_CALL_CTRL>
										COND='getAttrValue("itemType") == null'
										SS_NAME='Type Derivation Step'
										PASSED_ELEMENT_EXPR='findChild("xs:simpleType")'
										PASSED_ELEMENT_MATCHING_ET='xs:%localSimpleType'
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						COND='hasChild ("xs:union")'
						MATCHING_ET='xs:union'
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='none';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='[union]'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</FOLDER>
		</BODY>
	</FOLDER>
</STOCK_SECTIONS>
CHECKSUM='n1WFlFYXUNawGPGvNw+1o6YE0OarjJpwY3LX5I0CUao'
</DOCFLEX_TEMPLATE>