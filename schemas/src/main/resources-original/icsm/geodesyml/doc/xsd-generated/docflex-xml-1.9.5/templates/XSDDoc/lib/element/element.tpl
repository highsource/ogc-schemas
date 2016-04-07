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
ROOT_ET='xs:%element'
TITLE_EXPR='title = getStringParam("$title");

(parentTitle = getStringParam("docTitle")) != null
  ? title + " | " + parentTitle : title'
HTML_HEAD_EXPR='title = getStringParam("$title");

(parentTitle = getStringParam("docTitle")) != null
  ? title = title + " | " + parentTitle;

\'<script type="text/javascript">
    window.onload = function() {
        parent.document.title="\' + encodeJScriptString (title) + \'";
    }
</script>\''
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$mainXSD';
		param.type='GOMElement';
		param.defaultValue.expr='findElementByKey ("main-xsds", getXMLDocument().id)';
	}
	PARAM={
		param.name='$nsURI';
		param.title='Target Namespace URI';
		param.type='string';
		param.defaultValue.expr='schema = findAncestor ("xs:schema");

instanceOf ("xs:element") ? schema.getServiceAttr("targetNamespace") :
  (hasAttr("form") ? getAttrValue("form") :
    schema.getAttrStringValue ("elementFormDefault")) == "qualified" ?
      schema.getServiceAttr("targetNamespace") : "";';
		param.hidden='true';
	}
	PARAM={
		param.name='$xmlName';
		param.description='Displayed XML name (qualified or local) of the element';
		param.type='string';
		param.defaultValue.expr='name = getAttrStringValue("name");
nsURI = getStringParam("$nsURI");

instanceOf ("xs:%localElement") ? 
{
  form = hasAttr("form") ? getAttrValue ("form") :
     findAncestor ("xs:schema").getAttrValue ("elementFormDefault");

  (form != "qualified") ? name : toXMLName (nsURI, name)
} 
: toXMLName (nsURI, name)';
		param.fixed='true';
		param.hidden='true';
	}
	PARAM={
		param.name='$title';
		param.title='Component\'s doc title';
		param.type='string';
		param.defaultValue.expr='callStockSection("Title")';
	}
	PARAM={
		param.name='$usageCount';
		param.description='number of locations where this element is used (by reference)
or declared locally';
		param.type='integer';
		param.defaultValue.expr='countElementsByKey ("element-usage", contextElement.id)';
		param.fixed='true';
		param.hidden='true';
	}
	PARAM={
		param.name='$elementType';
		param.title='element type component';
		param.description='this is either global or anonymous type or null (when type cannot be resolved)';
		param.type='GOMElement';
		param.defaultValue.expr='findElementByKey ("element-types", contextElement.id)';
		param.fixed='true';
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
		param.fixed='true';
	}
	PARAM={
		param.name='$contentModelKey';
		param.title='map key for "content-model-attributes", "content-model-elements"';
		param.description='The key for "content-model-attributes" and "content-model-elements" maps to find items associated with this element';
		param.type='Object';
		param.defaultValue.expr='getElementParam("$elementType").id';
		param.fixed='true';
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
		param.fixed='true';
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
		param.fixed='true';
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
		param.fixed='true';
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
		param.fixed='true';
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
		param.fixed='true';
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
		param.fixed='true';
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
		param.fixed='true';
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
		param.fixed='true';
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
		param.fixed='true';
		param.hidden='true';
	}
	PARAM={
		param.name='docTitle';
		param.title='Documentation Title';
		param.type='string';
	}
	PARAM={
		param.name='doc.comp';
		param.title='Component Documentation';
		param.title.style.bold='true';
		param.group='true';
	}
	PARAM={
		param.name='doc.comp.profile';
		param.title='Component Profile';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.diagram';
		param.title='Diagram';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.xmlRep';
		param.title='XML Representation Summary';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.xmlRep.for.element';
		param.title='Generate For Elements';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.xmlRep.sorting';
		param.title='Sorting';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.simpleContent';
		param.title='Simple Content Detail';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.simpleContent.restrictions';
		param.title='Restrictions';
		param.group='true';
		param.group.defaultState='expanded';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.simpleContent.restrictions.annotation';
		param.title='Annotations';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.simpleContent.default';
		param.title='Default Value';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.simpleContent.fixed';
		param.title='Fixed Value';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.lists';
		param.title='Lists of Related Components';
		param.title.style.bold='true';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.lists.layout';
		param.title='List Layout';
		param.title.style.italic='true';
		param.type='enum';
		param.enum.values='flow;one_column;two_columns;optimal';
	}
	PARAM={
		param.name='doc.comp.lists.contentElements';
		param.title='Content Elements';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.lists.containingElements';
		param.title='Containing Elements';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.lists.substitutableElements';
		param.title='Substitutable Elements';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.lists.substitutingElements';
		param.title='Substituting Elements';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.lists.childrenBySubst';
		param.title='Children By Substitutions';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.lists.parentsBySubst';
		param.title='Parents By Substitutions';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.usage';
		param.title='Usage / Definition Locations';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.usage.for.element.global';
		param.title='Global Elements';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.usage.for.element.local';
		param.title='Local Elements';
		param.title.style.italic='true';
		param.type='enum';
		param.enum.values='always;multiple;never';
	}
	PARAM={
		param.name='doc.comp.usage.layout';
		param.title='List Layout';
		param.title.style.italic='true';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='flow;one_column;two_columns;optimal';
		param.defaultValue='optimal';
	}
	PARAM={
		param.name='doc.comp.annotation';
		param.title='Annotation';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.annotation.for.element';
		param.title='Elements';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.type';
		param.title='Type Detail';
		param.title.style.bold='true';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.type.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='doc.comp.type.for.element.type';
		param.title='Elements With Types';
		param.title.style.italic='true';
		param.type='enum';
		param.enum.values='anonymous;any;none';
	}
	PARAM={
		param.name='doc.comp.type.deriv.tree';
		param.title='Type Derivation Tree';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.type.annotation';
		param.title='Annotation';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.type.deriv.simpleContent';
		param.title='Simple Content Derivation';
		param.group='true';
		param.type='enum';
		param.enum.values='local;full;none';
	}
	PARAM={
		param.name='doc.comp.type.deriv.simpleContent.facets';
		param.title='Facets';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.type.deriv.simpleContent.annotations';
		param.title='Annotations';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.xml';
		param.title='XML Source';
		param.title.style.bold='true';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.xml.box';
		param.title='Enclose in Box';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.xml.remove.anns';
		param.title='Remove Annotations';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.attributes';
		param.title='Attribute Detail';
		param.title.style.bold='true';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.attributes.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='doc.comp.attributes.for.element';
		param.title='Elements';
		param.title.style.italic='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.contentElements';
		param.title='Content Element Detail';
		param.title.style.bold='true';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.contentElements.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='doc.comp.contentElements.for.element';
		param.title='Elements';
		param.title.style.italic='true';
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
		param.name='show.localElementExt';
		param.title='Local Element Extensions';
		param.type='enum';
		param.enum.values='always;repeating;never';
	}
	PARAM={
		param.name='show.about';
		param.title='About (footer)';
		param.type='enum';
		param.enum.values='full;short;none';
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
		style.name='Annotation';
		style.id='cs1';
	}
	CHAR_STYLE={
		style.name='Default Paragraph Font';
		style.id='cs2';
		style.default='true';
	}
	PAR_STYLE={
		style.name='Heading 2';
		style.id='s1';
		text.font.name='Verdana';
		text.font.size='13';
		text.font.style.bold='true';
		text.color.foreground='#4477AA';
		par.bkgr.opaque='true';
		par.bkgr.color='#EEEEEE';
		par.border.style='solid';
		par.border.color='#4477AA';
		par.margin.top='0';
		par.margin.bottom='6.7';
		par.padding.left='4.2';
		par.padding.right='4.2';
		par.padding.top='2.5';
		par.padding.bottom='2.5';
		par.page.keepWithNext='true';
	}
	PAR_STYLE={
		style.name='Heading 3';
		style.id='s2';
		text.font.size='12';
		text.font.style.bold='true';
		par.bkgr.opaque='true';
		par.bkgr.color='#CCCCFF';
		par.border.style='solid';
		par.border.color='#666666';
		par.margin.top='11.7';
		par.margin.bottom='8.3';
		par.padding.left='1.7';
		par.padding.right='1.7';
		par.padding.top='1.7';
		par.padding.bottom='1.7';
		par.page.keepWithNext='true';
	}
	PAR_STYLE={
		style.name='Heading 4';
		style.id='s3';
		text.font.size='10';
		text.font.style.bold='true';
		par.bkgr.opaque='true';
		par.bkgr.color='#EEEEFF';
		par.border.style='solid';
		par.border.color='#666666';
		par.margin.top='10';
		par.margin.bottom='8.3';
		par.padding.left='1.7';
		par.padding.right='1.7';
		par.padding.top='1.7';
		par.padding.bottom='1.7';
		par.page.keepWithNext='true';
	}
	PAR_STYLE={
		style.name='Heading 5';
		style.id='s4';
		text.font.name='Arial';
		text.font.size='9';
		text.font.style.bold='true';
		par.margin.top='8.3';
		par.margin.bottom='6.7';
		par.page.keepWithNext='true';
	}
	CHAR_STYLE={
		style.name='Heading Note';
		style.id='cs3';
		text.font.name='Arial';
		text.font.size='8';
		text.font.style.bold='false';
	}
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs4';
		text.font.style.bold='false';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	PAR_STYLE={
		style.name='List Heading 1';
		style.id='s5';
		text.font.name='Arial';
		text.font.size='10';
		text.font.style.bold='true';
		par.margin.top='10';
		par.margin.bottom='6.7';
		par.page.keepWithNext='true';
	}
	PAR_STYLE={
		style.name='List Heading 2';
		style.id='s6';
		text.font.name='Arial';
		text.font.size='9';
		text.font.style.bold='true';
		par.margin.bottom='6.7';
		par.page.keepWithNext='true';
	}
	CHAR_STYLE={
		style.name='Mono';
		style.id='cs5';
		text.font.name='Courier New';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Mono (Small)';
		style.id='cs6';
		text.font.name='Courier New';
		text.font.size='8';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s7';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Page Header Font';
		style.id='cs7';
		text.font.name='Arial';
		text.font.style.italic='true';
	}
	CHAR_STYLE={
		style.name='Page Reference';
		style.id='cs8';
		text.font.name='Courier New';
		text.font.size='8';
	}
	PAR_STYLE={
		style.name='Property Title';
		style.id='s8';
		text.font.size='8';
		text.font.style.bold='true';
		par.lineHeight='11';
		par.margin.right='5.8';
	}
	PAR_STYLE={
		style.name='Property Value';
		style.id='s9';
		text.font.name='Verdana';
		text.font.size='8';
		par.lineHeight='11';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs4';
}
<HTARGET>
	HKEYS={
		'contextElement.id';
		'"detail"';
	}
</HTARGET>
<PAGE_HEADER>
	<AREA_SEC>
		FMT={
			text.style='cs7';
			table.cell.padding.both='0';
			table.border.style='none';
			table.border.bottom.style='solid';
		}
		<AREA>
			<CTRL_GROUP>
				FMT={
					par.border.bottom.style='solid';
				}
				<CTRLS>
					<TEXT_CTRL>
						TEXT='element'
					</TEXT_CTRL>
					<DATA_CTRL>
						FORMULA='\'<\' + getParam("$xmlName") + \'>\''
					</DATA_CTRL>
					<DELIMITER>
						FMT={
							txtfl.delimiter.type='text';
							txtfl.delimiter.text='\\u2002';
						}
					</DELIMITER>
					<DATA_CTRL>
						COND='instanceOf("xs:%localElement") &&
(
  hasParamValue("show.localElementExt", "always")
  ||
  hasParamValue("show.localElementExt", "repeating") &&
  {
    schema = findAncestor ("xs:schema");

    qName = QName (
      ((hasAttr("form") ? getAttrValue("form") :
          schema.getAttrValue ("elementFormDefault")) == "qualified" 
            ? schema.getServiceAttr("targetNamespace").toString() : ""),
      getAttrStringValue("name")
    );

    mainXSDFilter = BooleanQuery (checkElementByKey (
                      "main-xsds",
                      getXMLDocument().id,
                      getElementParam("$mainXSD")
                    ));

    countElementsByKey ("global-elements", qName, mainXSDFilter) +
    countElementsByKey ("local-elements", qName, mainXSDFilter) > 1
  }
)'
						FORMULA='callStockSection("localElementExt")'
						FMT={
							ctrl.option.text.trimSpaces='true';
						}
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
</PAGE_HEADER>
<ROOT>
	<AREA_SEC>
		FMT={
			par.style='s1';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<DATA_CTRL>
						FORMULA='getParam("$title")'
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<TEMPLATE_CALL>
		DESCR='Element Profile'
		COND='getBooleanParam("doc.comp.profile")'
		ON_OUTPUT_EXPR='thisContext.setVar ("has-profile", true)'
		TEMPLATE_FILE='elementProfile.tpl'
	</TEMPLATE_CALL>
	<FOLDER>
		DESCR='Diagram / Content Model'
		COLLAPSED
		FMT={
			sec.spacing.before='10';
			sec.spacing.after='10';
		}
		<BODY>
			<TEMPLATE_CALL>
				DESCR='Diagram'
				COND='getBooleanParam("doc.comp.diagram")'
				ON_OUTPUT_EXPR='thisContext.setVar ("has-diagram", true)'
				TEMPLATE_FILE='../component/diagram.tpl'
				<HTARGET>
					COND='output.type == "document"'
					HKEYS={
						'contextElement.id';
						'"component-diagram"';
					}
					NAME_EXPR='"content_model_diagram"'
				</HTARGET>
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				DESCR='XML Representation Summary'
				COND='getBooleanParam("doc.comp.xmlRep") &&
getBooleanParam("doc.comp.xmlRep.for.element")'
				ON_OUTPUT_EXPR='thisContext.setVar ("has-xml-rep-summary", true)'
				TEMPLATE_FILE='../component/xmlRep.tpl'
				PASSED_PARAMS={
					'$sorting','getBooleanParam("doc.comp.xmlRep.sorting")';
					'$abbreviateSimpleContent','getBooleanParam("doc.comp.simpleContent") &&
getBooleanParam("doc.comp.simpleContent.restrictions")';
				}
				<HTARGET>
					COND='output.type == "document"'
					HKEYS={
						'contextElement.id';
						'"xml-rep-summary"';
					}
					NAME_EXPR='"xml_rep_summary"'
				</HTARGET>
			</TEMPLATE_CALL>
		</BODY>
	</FOLDER>
	<FOLDER>
		DESCR='Simple Content Detail'
		COND='getBooleanParam("doc.comp.simpleContent") &&
{
  et = getElementParam("$elementType");
  et != null || et.hasChild("xs:simpleContent")
}'
		ON_OUTPUT_EXPR='thisContext.setVar ("has-simple-content-detail", true)'
		COLLAPSED
		FMT={
			sec.outputStyle='table';
			table.cell.padding.both='0';
			table.border.style='none';
			table.option.borderStylesInHTML='true';
		}
		<BODY>
			<ELEMENT_ITER>
				DESCR='Iterate By Actual Facets
--
The iterated elements are produced as the following:

1. First, all facet elements that are declared both in the context type and all its ancestor types (global and anonymous) are collected. (This will work, however, until a derivation by list or union is reached.) 

What\'s important is that how the facets will follow in the result sequence. The facets from the same restriction will appear in the same order as they were declared. The facets from different restrictions will appear according to the remoteness of their parent restrictions from the context type.

This everything is determined with the Location Rules (and their ordering) specified in "Processing | Iteration Scope" tab.

2. Once the initial sequence is produced, the filtering by key will be applied (see "Processing | Filtering | Filter By Key" tab). The purpose of the filtering is to remove those facets that are overridden in the descendant types.  There are two special cases:

(1) All <xs:enumeration> facets will be removed except the first (valid) one. That will be enough to obtain all valid enumeration facets from the <xs:restriction> parent of the left one. This is done in "facet.tpl" template (called to print a facet value).

(2) All <xs:pattern> facets will be left because they all are valid.

All those conditions are specified in the "Expression For Unique Key". In the case of <xs:pattern>, the key will be the element ID, which is always unique (therefore, no <xs:pattern> element will be removed.

The "Preference Condition" expression determines if a given element should replace the already passed element with the same key. That will be so when the expression returns true. We specify to return the value of the facet\'s \'fixed\' attribute. The \'fixed\' attribute overrides anything that might be specified about that facet in the descendant types. (However, actually, doing this is not allowed in XSD!)

3. In the "Processing | Sorting" tab we specify sorting the result facets according to the facet type names. This is done primarily to ensure that all "pattern" facets are printed together.'
				COND='getBooleanParam("doc.comp.simpleContent.restrictions")'
				CONTEXT_ELEMENT_EXPR='getElementParam("$elementType")'
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
    "types",
    hasServiceAttr ("redefined") ?
      HashKey (baseQName, getServiceAttr ("redefined")) : baseQName,
    BooleanQuery (checkElementByKey (
      "main-xsds",
      getXMLDocument().id,
      getElementParam("$mainXSD")
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
											ctrl.size.width='32.3';
											ctrl.size.height='17.3';
											tcell.align.vert='Top';
											par.style='s8';
										}
									</DATA_CTRL>
									<TEMPLATE_CALL_CTRL>
										TEMPLATE_FILE='../component/facet.tpl'
										PASSED_PARAMS={
											'$facet.annotation','getBooleanParam("doc.comp.simpleContent.restrictions.annotation")';
										}
										FMT={
											ctrl.size.width='467.3';
											ctrl.size.height='17.3';
											tcell.align.vert='Bottom';
											par.style='s9';
										}
									</TEMPLATE_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</ELEMENT_ITER>
			<AREA_SEC>
				COND='getBooleanParam("doc.comp.simpleContent.default")
&&
{
  defaultValue = getAttrValue("default");

  // When this element is a unifier representing > 1
  // local element components,
  // check if the value of \'default\' attribute is the same
  // at all locations.

  instanceOf("xs:%localElement")
  &&
  getIntParam("$usageCount") > 1
  &&
  countElementsByKey (
    "element-usage",
    contextElement.id,
    BooleanQuery (
      getAttrValue("default") == defaultValue
    )
  ) != getIntParam("$usageCount") ? {

    setVar ("variesByLocation", true);
    true

  } : {

    defaultValue != null ?
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
								TEXT='Default:'
								FMT={
									ctrl.size.width='33.8';
									ctrl.size.height='59.3';
									tcell.align.vert='Top';
									par.style='s8';
								}
							</TEXT_CTRL>
							<PANEL>
								FMT={
									ctrl.size.width='465.8';
									ctrl.size.height='59.3';
									par.style='s9';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<PANEL>
												COND='getBooleanVar ("variesByLocation")'
												FMT={
													ctrl.size.width='122.3';
													ctrl.size.height='38.3';
												}
												<AREA>
													<CTRL_GROUP>
														<CTRLS>
															<TEXT_CTRL>
																TEXT='???'
																FMT={
																	text.style='cs6';
																}
															</TEXT_CTRL>
															<TEXT_CTRL>
																TEXT='(varies by location)'
															</TEXT_CTRL>
														</CTRLS>
													</CTRL_GROUP>
												</AREA>
											</PANEL>
											<DATA_CTRL>
												COND='! getBooleanVar ("variesByLocation")'
												FORMULA='\'"\' + getAttrValue("default") + \'"\''
												FMT={
													text.style='cs6';
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
				COND='getBooleanParam("doc.comp.simpleContent.fixed")
&&
{
  fixedValue = getAttrValue("fixed");

  // When this element is a unifier representing > 1
  // local element components,
  // check if the value of \'fixed\' attribute is the same
  // at all locations.

  instanceOf("xs:%localElement")
  &&
  getIntParam("$usageCount") > 1
  &&
  countElementsByKey (
    "element-usage",
    contextElement.id,
    BooleanQuery (
      getAttrValue("fixed") == fixedValue
    )
  ) != getIntParam("$usageCount") ? {

    setVar ("variesByLocation", true);
    true

  } : {

    fixedValue != null ?
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
								TEXT='Fixed:'
								FMT={
									ctrl.size.width='33.8';
									ctrl.size.height='59.3';
									tcell.align.vert='Top';
									par.style='s8';
								}
							</TEXT_CTRL>
							<PANEL>
								FMT={
									ctrl.size.width='465.8';
									ctrl.size.height='59.3';
									par.style='s9';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<PANEL>
												COND='getBooleanVar ("variesByLocation")'
												FMT={
													ctrl.size.width='122.3';
													ctrl.size.height='38.3';
												}
												<AREA>
													<CTRL_GROUP>
														<CTRLS>
															<TEXT_CTRL>
																TEXT='???'
																FMT={
																	text.style='cs6';
																}
															</TEXT_CTRL>
															<TEXT_CTRL>
																TEXT='(varies by location)'
															</TEXT_CTRL>
														</CTRLS>
													</CTRL_GROUP>
												</AREA>
											</PANEL>
											<DATA_CTRL>
												COND='! getBooleanVar ("variesByLocation")'
												FORMULA='\'"\' + getAttrValue("fixed") + \'"\''
												FMT={
													text.style='cs6';
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
		</BODY>
		<HEADER>
			<AREA_SEC>
				COND='(thisContext.checkVar ("has-profile") ||
 thisContext.checkVar ("has-diagram"))
&&
! thisContext.checkVar ("has-xml-rep-summary")'
				FMT={
					sec.outputStyle='pars';
				}
				<AREA>
					<HR>
						FMT={
							par.margin.top='10';
							par.margin.bottom='10';
						}
					</HR>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				FMT={
					sec.outputStyle='pars';
					par.style='s4';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Simple Content Detail:'
								FMT={
									ctrl.size.width='499.5';
									ctrl.size.height='17.3';
								}
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
	<FOLDER>
		DESCR='Lists of Related Components'
		COND='getBooleanParam("doc.comp.lists")'
		COLLAPSED
		<BODY>
			<TEMPLATE_CALL>
				DESCR='List of Content Model Elements'
				COND='getBooleanParam("doc.comp.lists.contentElements") &&
getIntParam("$elementCount") > 0'
				TEMPLATE_FILE='contentElementList.tpl'
				PASSED_PARAMS={
					'$caption','"Content model elements"';
				}
			</TEMPLATE_CALL>
			<SS_CALL>
				DESCR='List of Containing Elements'
				COND='getBooleanParam("doc.comp.lists.containingElements") &&
{
  e = findElementsByKey ("containing-elements", contextElement.id);

  e.hasNext() ?
  {
    thisContext.setVar ("elements", e.toVector());
    true;
  } : false
}'
				SS_NAME='Element List'
				PARAMS_EXPR='Array (
  "Included in content model of elements",
  thisContext.getVar ("elements")
)'
			</SS_CALL>
			<SS_CALL>
				DESCR='List of elements this element may substitute for'
				COND='getBooleanParam("doc.comp.lists.substitutableElements")
&&
getAttrValue("substitutionGroup") != null &&
{
  e = findElementsByKey ("substitution-group-heads", contextElement.id);

  e.hasNext() ? 
  { 
    thisContext.setVar ("elements", e.toVector());
    true
  } : false
}'
				SS_NAME='Element List'
				PARAMS_EXPR='Array (
  "May substitute for elements",
  thisContext.getVar ("elements")
)'
				<HTARGET>
					HKEYS={
						'contextElement.id';
						'"substitution-group-heads"';
					}
				</HTARGET>
			</SS_CALL>
			<SS_CALL>
				DESCR='List of elements this element may be substituted with'
				COND='getBooleanParam("doc.comp.lists.substitutingElements")
&&
instanceOf("xs:element") &&
{
  e = findElementsByKey ("substitution-group-members", contextElement.id);

  e.hasNext() ? 
  { 
    thisContext.setVar ("elements", e.toVector());
    true
  } : false
}'
				SS_NAME='Element List'
				PARAMS_EXPR='Array (
  "May be substituted with elements",
  thisContext.getVar ("elements")
)'
				<HTARGET>
					HKEYS={
						'contextElement.id';
						'"substitution-group-members"';
					}
				</HTARGET>
			</SS_CALL>
			<SS_CALL>
				DESCR='List of possible children by substitutions'
				COND='getBooleanParam("doc.comp.lists.childrenBySubst") &&
{
  e = findElementsByKey ("children-by-substitutions", contextElement.id);

  e.hasNext() ? 
  { 
    thisContext.setVar ("elements", e.toVector());
    true
  } : false
}'
				SS_NAME='Element List'
				PARAMS_EXPR='Array (
  "May contain elements by substitutions",
  thisContext.getVar ("elements")
)'
			</SS_CALL>
			<SS_CALL>
				DESCR='List of possible parents by substitutions'
				COND='getBooleanParam("doc.comp.lists.parentsBySubst")
&&
getAttrValue("substitutionGroup") != null &&
{
  e = findElementsByKey ("parents-by-substitutions", contextElement.id);

  e.hasNext() ? 
  { 
    thisContext.setVar ("elements", e.toVector());
    true
  } : false
}'
				SS_NAME='Element List'
				PARAMS_EXPR='Array (
  "May be included in elements by substitutions",
  thisContext.getVar ("elements")
)'
			</SS_CALL>
		</BODY>
		<HEADER>
			<AREA_SEC>
				COND='thisContext.checkVar ("has-simple-content-detail")
||
(thisContext.checkVar ("has-profile") || thisContext.checkVar ("has-diagram"))
&&
! thisContext.checkVar ("has-xml-rep-summary")'
				FMT={
					sec.outputStyle='pars';
				}
				<AREA>
					<HR>
						FMT={
							par.margin.top='10';
							par.margin.bottom='10';
						}
					</HR>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
	<FOLDER>
		DESCR='Usage / Definition Locations'
		COND='getIntParam("$usageCount") > 0
&&
getBooleanParam("doc.comp.usage")'
		COLLAPSED
		<BODY>
			<FOLDER>
				DESCR='case of global element'
				COND='getBooleanParam("doc.comp.usage.for.element.global")'
				MATCHING_ET='xs:element'
				BREAK_PARENT_BLOCK='when-executed'
				FMT={
					sec.outputStyle='list';
					list.item.margin.top='8.3';
					list.item.margin.bottom='8.3';
				}
				<HTARGET>
					HKEYS={
						'contextElement.id';
						'"usage-locations"';
					}
				</HTARGET>
				<BODY>
					<SS_CALL>
						DESCR='within global complexTypes'
						COND='e = findElementsByKey (
  "element-usage",
  contextElement.id,
  // filter
  BooleanQuery (
    findPredecessorByType ("xs:%element|xs:complexType").instanceOf ("xs:complexType")
  )
);

e.hasNext() ?
{
  thisContext.setVar ("locations", e.toVector());
  true
} : false'
						SS_NAME='Usage/Definition Location List'
						PARAMS_EXPR='Array (
  "ref",
  "Within global complexTypes",
  thisContext.getVar ("locations"),
  getElementTypes ("xs:complexType")
)'
					</SS_CALL>
					<SS_CALL>
						COND='e = findElementsByKey (
  "element-usage",
  contextElement.id,
  // filter
  BooleanQuery (checkPredecessorByType("xs:%element"))
);

e.hasNext() ?
{
  thisContext.setVar ("locations", e.toVector());
  true
} : false'
						SS_NAME='Usage/Definition Location List (within elements)'
						PARAMS_EXPR='Array (
  "ref",
  thisContext.getVar ("locations")
)'
					</SS_CALL>
					<SS_CALL>
						DESCR='within groups'
						COND='e = findElementsByKey (
  "element-usage",
  contextElement.id,
  // filter
  BooleanQuery (
    findPredecessorByType("xs:%element|xs:group").instanceOf ("xs:group")
  )
);

e.hasNext() ?
{
  thisContext.setVar ("locations", e.toVector());
  true
} : false'
						SS_NAME='Usage/Definition Location List'
						PARAMS_EXPR='Array (
  "ref",
  "Within model groups",
  thisContext.getVar ("locations"),
  getElementTypes ("xs:group")
)'
					</SS_CALL>
					<FOLDER>
						DESCR='as head element of substitution group affiliations'
						COND='e = findElementsByKey (
  "element-usage",
  contextElement.id,
  // filter
  BooleanQuery (
    instanceOf ("xs:element") && hasAttr ("substitutionGroup")
  )
);

e.hasNext() ?
{
  v = e.toVector();

  v.sortVector (
     @(GOMElement) el,
     FlexQuery (el.callStockSection ("Component Name"))
  );

  thisContext.setVar ("locations", v);
  true;

} : false'
						COLLAPSED
						<BODY>
							<ELEMENT_ITER>
								DESCR='print the list as comma-delimited text flow'
								COND='hasParamValue("doc.comp.usage.layout", "flow")
||
hasParamValue("doc.comp.usage.layout", "optimal")
||
thisContext.getVar ("locations").toVector().size() == 1'
								BREAK_PARENT_BLOCK='when-executed'
								TARGET_ET='xs:%element'
								SCOPE='custom'
								ELEMENT_ENUM_EXPR='thisContext.getVar ("locations").toEnum()'
								FMT={
									sec.outputStyle='list';
									txtfl.delimiter.type='text';
									txtfl.delimiter.text=', ';
									list.type='delimited';
								}
								<BODY>
									<AREA_SEC>
										<AREA>
											<CTRL_GROUP>
												FMT={
													txtfl.delimiter.type='nbsp';
												}
												<CTRLS>
													<SS_CALL_CTRL>
														SS_NAME='Component Name'
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
															text.style='cs8';
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
							</ELEMENT_ITER>
							<ELEMENT_ITER>
								DESCR='print one-column list'
								COND='hasParamValue("doc.comp.usage.layout", "one_column")'
								BREAK_PARENT_BLOCK='when-executed'
								TARGET_ET='xs:%element'
								SCOPE='custom'
								ELEMENT_ENUM_EXPR='thisContext.getVar ("locations").toEnum()'
								FMT={
									txtfl.delimiter.type='text';
									txtfl.delimiter.text=', ';
									list.type='delimited';
								}
								<BODY>
									<AREA_SEC>
										<AREA>
											<CTRL_GROUP>
												FMT={
													txtfl.delimiter.type='space';
												}
												<CTRLS>
													<SS_CALL_CTRL>
														SS_NAME='Component Name'
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
															text.style='cs8';
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
													<DELIMITER>
														FMT={
															txtfl.delimiter.type='none';
														}
													</DELIMITER>
													<TEXT_CTRL>
														COND='! iterator.isLastItem'
														TEXT=','
													</TEXT_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</AREA_SEC>
								</BODY>
							</ELEMENT_ITER>
							<FOLDER>
								DESCR='otherwise, print two-column list'
								<BODY>
									<AREA_SEC>
										FMT={
											sec.outputStyle='table';
											table.cell.padding.both='0';
											table.border.style='none';
										}
										<AREA>
											<CTRL_GROUP>
												FMT={
													trow.cell.align.vert='Top';
												}
												<CTRLS>
													<SS_CALL_CTRL>
														SS_NAME='Element List Column'
														PARAMS_EXPR='v = thisContext.getVar ("locations").toVector();
N = v.size();

Array (
  v.subVector (0, (N + 1) / 2),
  N == 1
)'
														FMT={
															ctrl.size.width='208.5';
															ctrl.size.height='17.3';
														}
													</SS_CALL_CTRL>
													<SS_CALL_CTRL>
														SS_NAME='Element List Column'
														PARAMS_EXPR='v = thisContext.getVar ("locations").toVector();

Array (
  v.subVector ((v.size() + 1) / 2),
  true
)'
														FMT={
															ctrl.size.width='273';
															ctrl.size.height='17.3';
															tcell.padding.extra.left='10';
														}
													</SS_CALL_CTRL>
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
									par.style='s6';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='As head element of substitution group affiliations'
											</TEXT_CTRL>
											<DATA_CTRL>
												FORMULA='"(" + thisContext.getVar ("locations").toVector().size() + ")"'
											</DATA_CTRL>
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
							</AREA_SEC>
						</HEADER>
					</FOLDER>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							par.style='s3';
						}
						<AREA>
							<CTRL_GROUP>
								FMT={
									trow.bkgr.color='#CCCCFF';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Known Usage Locations'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
			</FOLDER>
			<FOLDER>
				DESCR='case of local element'
				COND='hasParamValue("doc.comp.usage.for.element.local", "always")
||
hasParamValue("doc.comp.usage.for.element.local", "multiple")
&&
getIntParam("$usageCount") > 1'
				MATCHING_ET='xs:%localElement'
				FMT={
					sec.outputStyle='list';
					list.item.margin.top='8.3';
					list.item.margin.bottom='8.3';
				}
				<HTARGET>
					HKEYS={
						'contextElement.id';
						'"def-locations"';
					}
				</HTARGET>
				<BODY>
					<SS_CALL>
						DESCR='within global complexTypes'
						COND='e = findElementsByKey (
  "element-usage",
  contextElement.id,
  // filter
  BooleanQuery (
    findPredecessorByType ("xs:%element|xs:complexType").instanceOf("xs:complexType")
  )
);

e.hasNext() ?
{
  thisContext.setVar ("locations", e.toVector());
  true
} : false'
						SS_NAME='Usage/Definition Location List'
						PARAMS_EXPR='Array (
  "def",
  "Within global complexTypes",
  thisContext.getVar ("locations"),
  getElementTypes ("xs:complexType")
)'
					</SS_CALL>
					<SS_CALL>
						COND='e = findElementsByKey (
  "element-usage",
  contextElement.id,
  // filter
  BooleanQuery (checkPredecessorByType("xs:%element"))
);

e.hasNext() ?
{
  thisContext.setVar ("locations", e.toVector());
  true
} : false'
						SS_NAME='Usage/Definition Location List (within elements)'
						PARAMS_EXPR='Array (
  "def",
  thisContext.getVar ("locations")
)'
					</SS_CALL>
					<SS_CALL>
						DESCR='within groups'
						COND='e = findElementsByKey (
  "element-usage",
  contextElement.id,
  // filter
  BooleanQuery (
    findPredecessorByType("xs:%element|xs:group").instanceOf ("xs:group")
  )
);

e.hasNext() ?
{
  thisContext.setVar ("locations", e.toVector());
  true
} : false'
						SS_NAME='Usage/Definition Location List'
						PARAMS_EXPR='Array (
  "def",
  "Within model groups",
  thisContext.getVar ("locations"),
  getElementTypes ("xs:group")
)'
					</SS_CALL>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							par.style='s3';
						}
						<AREA>
							<CTRL_GROUP>
								FMT={
									trow.bkgr.color='#CCCCFF';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Definition Locations'
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
		DESCR='Annotation'
		COND='getBooleanParam("doc.comp.annotation") &&
getBooleanParam("doc.comp.annotation.for.element")'
		COLLAPSED
		<BODY>
			<FOLDER>
				DESCR='case of global element or local element defined in the only location
-
print the only annotation'
				COND='instanceOf("xs:element") || getIntParam("$usageCount") == 1'
				BREAK_PARENT_BLOCK='when-executed'
				<BODY>
					<SS_CALL>
						SS_NAME='annotation'
						FMT={
							text.style='cs1';
						}
					</SS_CALL>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							par.style='s3';
						}
						<AREA>
							<CTRL_GROUP>
								FMT={
									trow.bkgr.color='#CCCCFF';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Annotation'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
			</FOLDER>
			<ELEMENT_ITER>
				DESCR='case of a unifier representing > 1 local element components
--
print all annotations by definition locations'
				OUTPUT_CHECKER_EXPR='checkElementsByKey (
  "element-usage",
  contextElement.id,
  BooleanQuery (checkStockSectionOutput ("annotation"))
) ? 1 : -1'
				FINISH_EXPR='removeElementMap ("local-annotations")'
				COLLAPSED
				TARGET_ET='#CUSTOM'
				SCOPE='custom'
				ELEMENT_ENUM_EXPR='prepareElementMap (
  "local-annotations",
  findElementsByKey ("element-usage", contextElement.id),
  FlexQuery ({
    ann = callStockSection ("annotation");
    (ann != "") ? ann : null
  })
);

toCustomElements (getElementMapKeys ("local-annotations"))'
				<BODY>
					<ELEMENT_ITER>
						DESCR='iterate by all locations with the same (current) annotation'
						OUTPUT_CHECKER_EXPR='1 // the output always exists'
						TARGET_ET='xs:%element'
						SCOPE='custom'
						ELEMENT_ENUM_EXPR='findElementsByKey ("local-annotations", contextElement.value)'
						FMT={
							sec.outputStyle='list';
							list.type='delimited';
							list.margin.block='true';
						}
						<BODY>
							<AREA_SEC>
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='within'
											</TEXT_CTRL>
											<PANEL>
												CONTEXT_ELEMENT_EXPR='findPredecessorByType("xs:%element|xs:complexType|xs:group")'
												MATCHING_ETS={'xs:%element';'xs:complexType';'xs:group'}
												FMT={
													ctrl.size.width='296.3';
													ctrl.size.height='38.3';
												}
												<AREA>
													<CTRL_GROUP>
														<CTRLS>
															<SS_CALL_CTRL>
																SS_NAME='Component Name'
																FMT={
																	text.style='cs5';
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
												COND='! output.format.supportsPagination
&&
findHyperTarget (Array (
  contextElement.id,
  Array ("def", "xml-source-location")
)) != null'
												FMT={
													ctrl.size.width='69';
													txtfl.delimiter.type='none';
												}
												<AREA>
													<CTRL_GROUP>
														<CTRLS>
															<TEXT_CTRL>
																TEXT='['
															</TEXT_CTRL>
															<TEXT_CTRL>
																TEXT='def'
																<DOC_HLINK>
																	HKEYS={
																		'contextElement.id';
																		'Array ("def", "xml-source-location")';
																	}
																</DOC_HLINK>
															</TEXT_CTRL>
															<TEXT_CTRL>
																TEXT=']'
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
													ctrl.size.width='156.8';
													text.style='cs8';
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
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</BODY>
						<HEADER>
							<AREA_SEC>
								FMT={
									text.font.style.bold='true';
									par.style='s6';
									par.margin.top='6.7';
									par.margin.bottom='6.7';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												COND='iterator.numItems == 1'
												TEXT='Location:'
												FMT={
													text.font.style.bold='true';
												}
											</TEXT_CTRL>
											<PANEL>
												COND='iterator.numItems > 1'
												FMT={
													ctrl.size.width='224.3';
													ctrl.size.height='38.3';
												}
												<AREA>
													<CTRL_GROUP>
														<CTRLS>
															<TEXT_CTRL>
																TEXT='Locations'
																FMT={
																	text.font.style.bold='true';
																}
															</TEXT_CTRL>
															<DATA_CTRL>
																FORMULA='"(" + iterator.numItems + ")"'
															</DATA_CTRL>
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
					</ELEMENT_ITER>
					<AREA_SEC>
						FMT={
							text.font.style.bold='true';
							par.style='s6';
							par.margin.top='6.7';
							par.margin.bottom='6.7';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Annotation:'
										FMT={
											text.font.style.bold='true';
										}
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<SS_CALL>
						SS_NAME='annotation'
						PASSED_ELEMENT_EXPR='findElementByKey ("local-annotations", contextElement.value)'
						PASSED_ELEMENT_MATCHING_ET='xs:%element'
						FMT={
							sec.indent.block='true';
						}
					</SS_CALL>
					<AREA_SEC>
						COND='! iterator.isLastItem'
						FMT={
							sec.outputStyle='pars';
						}
						<AREA>
							<HR>
								FMT={
									par.margin.top='10';
									par.margin.bottom='10';
								}
							</HR>
						</AREA>
					</AREA_SEC>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							par.style='s3';
						}
						<AREA>
							<CTRL_GROUP>
								FMT={
									trow.bkgr.color='#CCCCFF';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Annotations'
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='"(" + iterator.numItems + ")"'
									</DATA_CTRL>
									<DELIMITER>
										FMT={
											text.style='cs6';
										}
									</DELIMITER>
									<TEXT_CTRL>
										TEXT='(by all definition locations)'
										FMT={
											text.style='cs3';
										}
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
			</ELEMENT_ITER>
		</BODY>
	</FOLDER>
	<FOLDER>
		DESCR='TYPE DETAIL'
		COND='getBooleanParam("doc.comp.type") && 
(
  hasParamValue("doc.comp.type.for.element.type", "anonymous") &&
  getParam("$elementTypeQName") == null
  ||
  hasParamValue("doc.comp.type.for.element.type", "any")
)'
		CONTEXT_ELEMENT_EXPR='getElementParam("$elementType")'
		MATCHING_ETS={'xs:%complexType';'xs:%simpleType'}
		COLLAPSED
		<BODY>
			<AREA_SEC>
				COND='getBooleanParam("doc.comp.type.deriv.tree")
&&
(instanceOf ("xs:%simpleType") ||
 getValueByLPath (
   "(xs:simpleContent | xs:complexContent) / (xs:extension | xs:restriction)/@base"
 ) != null)'
				FMT={
					sec.outputStyle='table';
					sec.spacing.before='8.3';
					sec.spacing.after='8.3';
					table.sizing='Relative';
					table.autofit='false';
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
									'$detailLink','instanceOf("xs:simpleType | xs:complexType")';
									'$xmlSourceLink','instanceOf("xs:simpleType | xs:complexType") ||
! getBooleanParam("doc.comp.xml")';
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
				COND='getBooleanParam("doc.comp.type.annotation")'
				TEMPLATE_FILE='../ann/annotation.tpl'
				PASSED_PARAMS={
					'$showHeading','true';
				}
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				DESCR='in case this type has a simple content, print details about its definition'
				COND='! hasParamValue("doc.comp.type.deriv.simpleContent", "none")'
				TEMPLATE_FILE='../component/simpleContentDerivation.tpl'
				PASSED_PARAMS={
					'$deriv.simpleContent','getStringParam("doc.comp.type.deriv.simpleContent")';
					'$deriv.simpleContent.facets','getBooleanParam("doc.comp.type.deriv.simpleContent.facets")';
					'$deriv.simpleContent.annotations','getBooleanParam("doc.comp.type.deriv.simpleContent.annotations")';
					'$xmlContext','rootElement';
				}
				FMT={
					sec.spacing.before='6.7';
				}
			</TEMPLATE_CALL>
		</BODY>
		<HEADER>
			<AREA_SEC>
				MATCHING_ETS={'xs:%localComplexType';'xs:%localSimpleType'}
				BREAK_PARENT_BLOCK='when-executed'
				FMT={
					par.style='s2';
				}
				<HTARGET>
					HKEYS={
						'contextElement.id';
						'"detail"';
					}
					NAME_EXPR='output.type == "document" ? "type_detail" : ""'
				</HTARGET>
				<AREA>
					<CTRL_GROUP>
						FMT={
							trow.bkgr.color='#CCCCFF';
						}
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Anonymous Type Detail'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				FMT={
					par.style='s2';
				}
				<HTARGET>
					HKEYS={
						'contextElement.id';
						'"local"';
						'rootElement.id';
					}
					NAME_EXPR='output.type == "document" ? "type_detail" : ""'
				</HTARGET>
				<AREA>
					<CTRL_GROUP>
						FMT={
							trow.bkgr.color='#CCCCFF';
						}
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
								FORMULA='\'"\' + getParam("$elementTypeQName") + \'"\''
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
	<FOLDER>
		DESCR='XML SOURCE -- only for a top-level element or a local element defined in single location'
		COND='getBooleanParam("doc.comp.xml")
&&
(instanceOf("xs:element") || getIntParam("$usageCount") == 1)'
		COLLAPSED
		<HTARGET>
			HKEYS={
				'contextElement.id';
				'"xml-source"';
			}
			NAME_EXPR='output.type == "document" ? "xml_source" : ""'
		</HTARGET>
		<BODY>
			<AREA_SEC>
				COND='getBooleanParam("doc.comp.xml.box")'
				BREAK_PARENT_BLOCK='when-executed'
				FMT={
					sec.outputStyle='table';
					table.sizing='Relative';
					table.autofit='false';
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
								TEMPLATE_FILE='../xml/nodeSource.tpl'
								PASSED_PARAMS={
									'$remove.anns','getBooleanParam("doc.comp.xml.remove.anns")';
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
				TEMPLATE_FILE='../xml/nodeSource.tpl'
				PASSED_PARAMS={
					'$remove.anns','getBooleanParam("doc.comp.xml.remove.anns")';
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
							trow.bkgr.color='#CCCCFF';
						}
						<CTRLS>
							<TEXT_CTRL>
								TEXT='XML Source'
							</TEXT_CTRL>
							<DELIMITER>
								FMT={
									text.style='cs5';
								}
							</DELIMITER>
							<TEMPLATE_CALL_CTRL>
								TEMPLATE_FILE='../xml/sourceNote.tpl'
								PASSED_PARAMS={
									'$remove.anns','getBooleanParam("doc.comp.xml.remove.anns")';
								}
								FMT={
									text.style='cs3';
								}
							</TEMPLATE_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
	<TEMPLATE_CALL>
		DESCR='ATTRIBUTE DETAIL'
		COND='getBooleanParam("doc.comp.attributes") &&
getBooleanParam("doc.comp.attributes.for.element")'
		TEMPLATE_FILE='../attribute/attributes.tpl'
	</TEMPLATE_CALL>
	<TEMPLATE_CALL>
		DESCR='CONTENT ELEMENT DETAIL'
		COND='getBooleanParam("doc.comp.contentElements") &&
getBooleanParam("doc.comp.contentElements.for.element")'
		TEMPLATE_FILE='contentElements.tpl'
	</TEMPLATE_CALL>
	<TEMPLATE_CALL>
		DESCR='Bottom Message'
		COND='output.type == "document" &&
! hasParamValue("show.about", "none")'
		TEMPLATE_FILE='../about.tpl'
	</TEMPLATE_CALL>
</ROOT>
<STOCK_SECTIONS>
	<TEMPLATE_CALL>
		SS_NAME='annotation'
		TEMPLATE_FILE='../ann/annotation.tpl'
	</TEMPLATE_CALL>
	<TEMPLATE_CALL>
		SS_NAME='Component Name'
		DESCR='prints the qualified name of any global schema component or local element (passed as the stock-section context element)'
		TEMPLATE_FILE='../component/componentName.tpl'
		PASSED_PARAMS={
			'$xmlContexts','Array (rootElement, contextElement)';
		}
		FMT={
			sec.outputStyle='text-par';
		}
	</TEMPLATE_CALL>
	<FOLDER>
		SS_NAME='Element List'
		DESCR='params[0]: list title; 
params[1]: vector of elements to list'
		INIT_EXPR='nameExt = null;

/* This variable accumulates the maximal normalized length of element display names.
 For an element, the normalized display name length is calculated
 as the number of characters of the element\'s main name plus
 (in the case of a local element with the name extension)
 the number of character of the local element name extension multiplied by 0.8
*/
nameLenMax = 0;

mainXSDFilter = BooleanQuery (checkElementByKey (
                  "main-xsds",
                  getXMLDocument().id,
                  getElementParam("$mainXSD")
                ));

v = stockSection.params[1].toVector();

v.sortVector (
   @(GOMElement) el,
   FlexQuery ({

     name = el.getAttrStringValue("name");
     schema = el.findAncestor ("xs:schema");
     targetNS = schema.getServiceAttr("targetNamespace").toString();

     el.instanceOf ("xs:element") ?
     {
       // case of global element

       displayName = toXMLName (targetNS, name, Array (rootElement, el));
       nameLen = displayName.length()

     } : {
       // case of local element

       form = el.hasAttr("form") ? el.getAttrValue("form")
                 : schema.getAttrValue ("elementFormDefault");

       displayName = (form == "qualified") ? 
          toXMLName (targetNS, name, Array (rootElement, el)) : name;

       nameLen = displayName.length();
         
       // if there is local element name extension

       (hasParamValue("show.localElementExt", "always")
        ||
        hasParamValue("show.localElementExt", "repeating") &&
        {
          qName = QName (form == "qualified" ? targetNS : "", name);

          countElementsByKey ("global-elements", qName, mainXSDFilter) +
          countElementsByKey ("local-elements", qName, mainXSDFilter) > 1
        }
       ) ? {
         nameExt = el.callStockSection ("localElementExt");
         displayName = displayName + nameExt;

         nameLen = nameLen + round (nameExt.length() * 0.8);
       }
     };

     nameLenMax < nameLen ? nameLenMax = nameLen;

     displayName
   })
);

stockSection.setVar ("elements", v);

/* The actual list layout:

 - If the list consist of the only element, the layout is \'flow\'
 - If the specified layout was \'optimal\', calculate the actual layout as follows:

   1). If there are no local element name extensions, use \'flow\' layout
   2). If maximal normalized length of element display names in the list exceeds 50,
       use \'one_column\' layout
   3). Otherwise, use \'two_columns\' layout

 - Otherwise, use the specified layout
*/

stockSection.setVar (
  "listLayout", 
  (v.size() == 1 ? "flow" :
     hasParamValue("doc.comp.lists.layout", "optimal") ?
       nameExt == null ? "flow" : nameLenMax > 50 ? "one_column" : "two_columns"
     : getStringParam("doc.comp.lists.layout"))
);'
		<BODY>
			<ELEMENT_ITER>
				DESCR='print the list as comma-delimited text'
				COND='stockSection.getVar ("listLayout") == "flow"'
				BREAK_PARENT_BLOCK='when-executed'
				TARGET_ET='xs:%element'
				SCOPE='custom'
				ELEMENT_ENUM_EXPR='stockSection.getVar("elements").toEnum()'
				FMT={
					sec.outputStyle='list';
					sec.indent.block='true';
					list.type='delimited';
				}
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='nbsp';
								}
								<CTRLS>
									<SS_CALL_CTRL>
										SS_NAME='Component Name'
									</SS_CALL_CTRL>
									<PANEL>
										COND='output.format.supportsPageRefs
&&
getBooleanParam("fmt.page.refs")
&&
findHyperTarget (Array (
  contextElement.id,
  Array ("detail", "def", "xml-source-location")
)) != null'
										FMT={
											ctrl.size.width='154.5';
											ctrl.size.height='38.3';
											text.style='cs8';
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
																'Array ("detail", "def", "xml-source-location")';
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
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='print one-column list'
				COND='stockSection.getVar ("listLayout") == "one_column"'
				BREAK_PARENT_BLOCK='when-executed'
				TARGET_ET='xs:%element'
				SCOPE='custom'
				ELEMENT_ENUM_EXPR='stockSection.getVar("elements").toEnum()'
				FMT={
					sec.indent.block='true';
				}
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='none';
								}
								<CTRLS>
									<SS_CALL_CTRL>
										SS_NAME='Component Name'
									</SS_CALL_CTRL>
									<PANEL>
										COND='output.format.supportsPageRefs
&&
getBooleanParam("fmt.page.refs")
&&
findHyperTarget (Array (
  contextElement.id,
  Array ("detail", "def", "xml-source-location")
)) != null'
										FMT={
											ctrl.size.width='159';
											ctrl.size.height='38.3';
											text.style='cs8';
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
																'Array ("detail", "def", "xml-source-location")';
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
									<TEXT_CTRL>
										COND='! iterator.isLastItem'
										TEXT=','
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</ELEMENT_ITER>
			<FOLDER>
				DESCR='otherwise, print two-column list'
				FMT={
					sec.indent.block='true';
				}
				<BODY>
					<AREA_SEC>
						FMT={
							sec.outputStyle='table';
							table.cell.padding.both='0';
							table.border.style='none';
						}
						<AREA>
							<CTRL_GROUP>
								FMT={
									trow.cell.align.vert='Top';
								}
								<CTRLS>
									<SS_CALL_CTRL>
										SS_NAME='Element List Column'
										PARAMS_EXPR='v = stockSection.getVar ("elements").toVector();
N = v.size();

Array (
  v.subVector (0, (N + 1) / 2),
  N == 1
)'
										FMT={
											ctrl.size.width='207';
											ctrl.size.height='17.3';
										}
									</SS_CALL_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='Element List Column'
										PARAMS_EXPR='v = stockSection.getVar ("elements").toVector();

Array (
  v.subVector ((v.size() + 1) / 2),
  true
)'
										FMT={
											ctrl.size.width='274.5';
											ctrl.size.height='17.3';
											tcell.padding.extra.left='10';
										}
									</SS_CALL_CTRL>
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
					par.style='s5';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								FORMULA='stockSection.param'
							</DATA_CTRL>
							<DATA_CTRL>
								FORMULA='"(" + stockSection.getVar ("elements").toVector().size() + ")"'
							</DATA_CTRL>
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
			</AREA_SEC>
		</HEADER>
	</FOLDER>
	<ELEMENT_ITER>
		SS_NAME='Element List Column'
		DESCR='params[0]: vector of column elements; 
params[1]: true if this is the last part of the whole list (to avoid printing comma after last item)'
		TARGET_ET='xs:%element'
		SCOPE='custom'
		ELEMENT_ENUM_EXPR='toEnum (stockSection.param)'
		FMT={
			sec.outputStyle='pars';
			list.style.type='none';
		}
		<BODY>
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
						FMT={
							txtfl.delimiter.type='none';
						}
						<CTRLS>
							<SS_CALL_CTRL>
								SS_NAME='Component Name'
							</SS_CALL_CTRL>
							<PANEL>
								COND='output.format.supportsPageRefs
&&
getBooleanParam("fmt.page.refs")
&&
findHyperTarget (Array (
  contextElement.id,
  Array ("detail", "def", "xml-source-location")
)) != null'
								FMT={
									ctrl.size.width='191.3';
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
													text.style='cs8';
												}
											</TEXT_CTRL>
											<DATA_CTRL>
												DOCFIELD='page-htarget'
												FMT={
													ctrl.option.noHLinkFmt='true';
													text.style='cs8';
													text.hlink.fmt='none';
												}
												<DOC_HLINK>
													HKEYS={
														'contextElement.id';
														'Array ("detail", "def", "xml-source-location")';
													}
												</DOC_HLINK>
											</DATA_CTRL>
											<TEXT_CTRL>
												TEXT=']'
												FMT={
													text.style='cs8';
												}
											</TEXT_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
							<TEXT_CTRL>
								COND='! iterator.isLastItem ||
! stockSection.params[1].toBoolean()'
								TEXT=','
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</ELEMENT_ITER>
	<TEMPLATE_CALL>
		SS_NAME='localElementExt'
		MATCHING_ET='xs:%localElement'
		TEMPLATE_FILE='localElementExt.tpl'
		PASSED_PARAMS={
			'$xmlContexts','Array (rootElement, contextElement)';
		}
	</TEMPLATE_CALL>
	<AREA_SEC>
		SS_NAME='Title'
		MATCHING_ET='xs:%element'
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						TEXT='element'
					</TEXT_CTRL>
					<DATA_CTRL>
						FORMULA='\'<\' + getParam("$xmlName") + \'>\''
					</DATA_CTRL>
					<PANEL>
						FMT={
							ctrl.size.width='256.5';
							ctrl.size.height='38.3';
						}
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
										MATCHING_ET='xs:element'
										TEXT='global'
									</TEXT_CTRL>
									<TEXT_CTRL>
										COND='getAttrBooleanValue("abstract")'
										MATCHING_ET='xs:element'
										TEXT='abstract'
									</TEXT_CTRL>
									<TEXT_CTRL>
										COND='instanceOf("xs:%localElement")
&&
countElementsByKey (
  "globally-documented-local-elements",
  contextElement.id
) > 1'
										TEXT='unified'
									</TEXT_CTRL>
									<TEXT_CTRL>
										MATCHING_ET='xs:%localElement'
										TEXT='local'
									</TEXT_CTRL>
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
					</PANEL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<FOLDER>
		SS_NAME='Usage/Definition Location List'
		DESCR='params[0]: list type: "ref" - usage locations, "def" - definition locations;
params[1]: list title;
params[2]: vector of components containing the locations to list;
params[3]: Element Types (array) matching the components containing the locations'
		INIT_EXPR='v = stockSection.params[2].toVector();

ets = (GOMElementType[]) stockSection.params[3];

v.sortVector (
   @(GOMElement) el,
   FlexQuery (el.findPredecessorByType(ets).callStockSection ("Component Name"))
);

stockSection.setVar ("locations", v);'
		<BODY>
			<ELEMENT_ITER>
				DESCR='print the list as comma-delimited text flow'
				COND='hasParamValue("doc.comp.usage.layout", "flow")
||
hasParamValue("doc.comp.usage.layout", "optimal")
||
stockSection.getVar ("locations").toVector().size() == 1'
				BREAK_PARENT_BLOCK='when-executed'
				TARGET_ET='xs:%element'
				SCOPE='custom'
				ELEMENT_ENUM_EXPR='stockSection.getVar ("locations").toEnum()'
				FMT={
					sec.outputStyle='list';
					txtfl.delimiter.type='text';
					txtfl.delimiter.text=', ';
					list.type='delimited';
				}
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='nbsp';
								}
								<CTRLS>
									<SS_CALL_CTRL>
										SS_NAME='Component Name'
										PASSED_ELEMENT_EXPR='findPredecessorByType (
  (GOMElementType[]) stockSection.params[3]
)'
										PASSED_ELEMENT_MATCHING_ET='<ANY>'
									</SS_CALL_CTRL>
									<PANEL>
										COND='! output.format.supportsPagination
&&
findHyperTarget (Array (
  contextElement.id,
  Array ("def", "xml-source-location")
)) != null'
										FMT={
											ctrl.size.width='125.3';
											ctrl.size.height='38.3';
											txtfl.delimiter.type='none';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='['
													</TEXT_CTRL>
													<DATA_CTRL>
														FORMULA='stockSection.param'
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
										COND='output.format.supportsPageRefs
&&
getBooleanParam("fmt.page.refs")
&&
findHyperTarget (Array (
  contextElement.id,
  Array ("def", "xml-source-location")
)) != null'
										FMT={
											ctrl.size.width='145.5';
											ctrl.size.height='38.3';
											text.style='cs8';
											txtfl.delimiter.type='none';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='['
														FMT={
															text.style='cs6';
														}
													</TEXT_CTRL>
													<DATA_CTRL>
														DOCFIELD='page-htarget'
														FMT={
															ctrl.option.noHLinkFmt='true';
															text.style='cs6';
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
				</BODY>
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='print one-column list'
				COND='hasParamValue("doc.comp.usage.layout", "one_column")'
				BREAK_PARENT_BLOCK='when-executed'
				TARGET_ET='xs:%element'
				SCOPE='custom'
				ELEMENT_ENUM_EXPR='stockSection.getVar ("locations").toEnum()'
				FMT={
					txtfl.delimiter.type='text';
					txtfl.delimiter.text=', ';
					list.type='delimited';
				}
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='space';
								}
								<CTRLS>
									<SS_CALL_CTRL>
										SS_NAME='Component Name'
										PASSED_ELEMENT_EXPR='findPredecessorByType (
  (GOMElementType[]) stockSection.params[3]
)'
										PASSED_ELEMENT_MATCHING_ET='<ANY>'
									</SS_CALL_CTRL>
									<PANEL>
										COND='! output.format.supportsPagination
&&
findHyperTarget (Array (
  contextElement.id,
  Array ("def", "xml-source-location")
)) != null'
										FMT={
											ctrl.size.width='126.8';
											ctrl.size.height='38.3';
											txtfl.delimiter.type='none';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='['
													</TEXT_CTRL>
													<DATA_CTRL>
														FORMULA='stockSection.param'
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
										COND='output.format.supportsPageRefs
&&
getBooleanParam("fmt.page.refs")
&&
findHyperTarget (Array (
  contextElement.id,
  Array ("def", "xml-source-location")
)) != null'
										FMT={
											ctrl.size.width='144';
											ctrl.size.height='38.3';
											text.style='cs8';
											txtfl.delimiter.type='none';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='['
														FMT={
															text.style='cs6';
														}
													</TEXT_CTRL>
													<DATA_CTRL>
														DOCFIELD='page-htarget'
														FMT={
															ctrl.option.noHLinkFmt='true';
															text.style='cs6';
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
														FMT={
															text.style='cs6';
														}
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
										COND='! iterator.isLastItem'
										TEXT=','
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</ELEMENT_ITER>
			<FOLDER>
				DESCR='otherwise, print two-column list'
				<BODY>
					<AREA_SEC>
						FMT={
							sec.outputStyle='table';
							table.cell.padding.both='0';
							table.border.style='none';
						}
						<AREA>
							<CTRL_GROUP>
								FMT={
									trow.cell.align.vert='Top';
								}
								<CTRLS>
									<SS_CALL_CTRL>
										SS_NAME='Usage/Definition Location List Column'
										PARAMS_EXPR='v = stockSection.getVar ("locations").toVector();
N = v.size();

Array (
  stockSection.param,
  v.subVector (0, (N + 1) / 2),
  N == 1,
  stockSection.params[3]
)'
										FMT={
											ctrl.size.width='216';
											ctrl.size.height='17.3';
										}
									</SS_CALL_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='Usage/Definition Location List Column'
										PARAMS_EXPR='v = stockSection.getVar ("locations").toVector();

Array (
  stockSection.param,
  v.subVector ((v.size() + 1) / 2),
  true,
  stockSection.params[3]
)'
										FMT={
											ctrl.size.width='283.5';
											ctrl.size.height='17.3';
											tcell.padding.extra.left='10';
										}
									</SS_CALL_CTRL>
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
					par.style='s6';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								FORMULA='stockSection.params[1]'
							</DATA_CTRL>
							<DATA_CTRL>
								FORMULA='"(" + stockSection.getVar ("locations").toVector().size() + ")"'
							</DATA_CTRL>
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
			</AREA_SEC>
		</HEADER>
	</FOLDER>
	<FOLDER>
		SS_NAME='Usage/Definition Location List (within elements)'
		DESCR='params[0]: list type: "ref" - usage locations, "def" - definition locations;
params[1]: vector of components containing the locations to list'
		INIT_EXPR='nameExt = null;

/* This variable accumulates the maximal normalized length of element display names.
 For an element, the normalized display name length is calculated
 as the number of characters of the element\'s main name plus
 (in the case of a local element with the name extension)
 the number of character of the local element name extension multiplied by 0.8
*/
nameLenMax = 0;

mainXSDFilter = BooleanQuery (checkElementByKey (
                  "main-xsds",
                  getXMLDocument().id,
                  getElementParam("$mainXSD")
                ));

v = stockSection.params[1].toVector();

v.sortVector (
   @(GOMElement) loc,
   FlexQuery ({

     el = loc.findPredecessorByType("xs:%element");

     name = el.getAttrStringValue("name");
     schema = el.findAncestor ("xs:schema");
     targetNS = schema.getServiceAttr("targetNamespace").toString();

     el.instanceOf ("xs:element") ?
     {
       // case of global element

       displayName = toXMLName (targetNS, name, Array (rootElement, el));
       nameLen = displayName.length()

     } : {
       // case of local element

       form = el.hasAttr("form") ? el.getAttrValue("form")
                 : schema.getAttrValue ("elementFormDefault");

       displayName = (form == "qualified") ?
         toXMLName (targetNS, name, Array (rootElement, el)) : name;

       nameLen = displayName.length();
         
       // if there is local element name extension

       (hasParamValue("show.localElementExt", "always")
        ||
        hasParamValue("show.localElementExt", "repeating") &&
        {
          qName = QName (form == "qualified" ? targetNS : "", name);

          countElementsByKey ("global-elements", qName, mainXSDFilter) +
          countElementsByKey ("local-elements", qName, mainXSDFilter) > 1
        }
       ) ? {
         nameExt = el.callStockSection ("localElementExt");
         displayName = displayName + nameExt;

         nameLen = nameLen + round (nameExt.length() * 0.8);
       }
     };

     nameLenMax < nameLen ? nameLenMax = nameLen;

     displayName
   })
);

stockSection.setVar ("locations", v);

/* The actual list layout:

 - If the list consist of the only element, the layout is \'flow\'
 - If the specified layout was \'optimal\', calculate the actual layout as follows:

   1). If there are no local element name extensions, use \'flow\' layout
   2). If maximal normalized length of element display names in the list exceeds 45,
       use \'one_column\' layout
   3). Otherwise, use \'two_columns\' layout

 - Otherwise, use the specified layout
*/

stockSection.setVar (
  "listLayout", 
  (v.size() == 1 ? "flow" :
     hasParamValue("doc.comp.usage.layout", "optimal") ?
       nameExt == null ? "flow" : nameLenMax > 50 ? "one_column" : "two_columns"
     : getStringParam("doc.comp.usage.layout"))
);'
		<BODY>
			<ELEMENT_ITER>
				DESCR='print the list as comma-delimited text flow'
				COND='stockSection.getVar ("listLayout") == "flow"'
				BREAK_PARENT_BLOCK='when-executed'
				TARGET_ET='xs:%element'
				SCOPE='custom'
				ELEMENT_ENUM_EXPR='stockSection.getVar ("locations").toEnum()'
				FMT={
					sec.outputStyle='list';
					txtfl.delimiter.type='text';
					txtfl.delimiter.text=', ';
					list.type='delimited';
				}
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='nbsp';
								}
								<CTRLS>
									<SS_CALL_CTRL>
										SS_NAME='Component Name'
										PASSED_ELEMENT_EXPR='findPredecessorByType("xs:%element")'
										PASSED_ELEMENT_MATCHING_ET='xs:%element'
									</SS_CALL_CTRL>
									<PANEL>
										COND='! output.format.supportsPagination
&&
findHyperTarget (Array (
  contextElement.id,
  Array ("def", "xml-source-location")
)) != null'
										FMT={
											ctrl.size.width='123';
											ctrl.size.height='38.3';
											txtfl.delimiter.type='none';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='['
													</TEXT_CTRL>
													<DATA_CTRL>
														FORMULA='stockSection.param'
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
										COND='output.format.supportsPageRefs
&&
getBooleanParam("fmt.page.refs")
&&
findHyperTarget (Array (
  contextElement.id,
  Array ("def", "xml-source-location")
)) != null'
										FMT={
											ctrl.size.width='149.3';
											ctrl.size.height='38.3';
											text.style='cs8';
											txtfl.delimiter.type='none';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='['
														FMT={
															text.style='cs6';
														}
													</TEXT_CTRL>
													<DATA_CTRL>
														DOCFIELD='page-htarget'
														FMT={
															ctrl.option.noHLinkFmt='true';
															text.style='cs6';
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
				</BODY>
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='print one-column list'
				COND='stockSection.getVar ("listLayout") == "one_column"'
				BREAK_PARENT_BLOCK='when-executed'
				TARGET_ET='xs:%element'
				SCOPE='custom'
				ELEMENT_ENUM_EXPR='stockSection.getVar ("locations").toEnum()'
				FMT={
					txtfl.delimiter.type='text';
					txtfl.delimiter.text=', ';
					list.type='delimited';
				}
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='space';
								}
								<CTRLS>
									<SS_CALL_CTRL>
										SS_NAME='Component Name'
										PASSED_ELEMENT_EXPR='findPredecessorByType("xs:%element")'
										PASSED_ELEMENT_MATCHING_ET='xs:%element'
									</SS_CALL_CTRL>
									<PANEL>
										COND='! output.format.supportsPagination
&&
findHyperTarget (Array (
  contextElement.id,
  Array ("def", "xml-source-location")
)) != null'
										FMT={
											ctrl.size.width='124.5';
											ctrl.size.height='38.3';
											txtfl.delimiter.type='none';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='['
													</TEXT_CTRL>
													<DATA_CTRL>
														FORMULA='stockSection.param'
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
										COND='output.format.supportsPageRefs
&&
getBooleanParam("fmt.page.refs")
&&
findHyperTarget (Array (
  contextElement.id,
  Array ("def", "xml-source-location")
)) != null'
										FMT={
											ctrl.size.width='147.8';
											ctrl.size.height='38.3';
											text.style='cs8';
											txtfl.delimiter.type='none';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='['
														FMT={
															text.style='cs6';
														}
													</TEXT_CTRL>
													<DATA_CTRL>
														DOCFIELD='page-htarget'
														FMT={
															ctrl.option.noHLinkFmt='true';
															text.style='cs6';
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
														FMT={
															text.style='cs6';
														}
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
										COND='! iterator.isLastItem'
										TEXT=','
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</ELEMENT_ITER>
			<FOLDER>
				DESCR='otherwise, print two-column list'
				<BODY>
					<AREA_SEC>
						FMT={
							sec.outputStyle='table';
							table.cell.padding.both='0';
							table.border.style='none';
						}
						<AREA>
							<CTRL_GROUP>
								FMT={
									trow.cell.align.vert='Top';
								}
								<CTRLS>
									<SS_CALL_CTRL>
										SS_NAME='Usage/Definition Location List Column'
										PARAMS_EXPR='v = stockSection.getVar ("locations").toVector();
N = v.size();

Array (
  stockSection.param,
  v.subVector (0, (N + 1) / 2),
  N == 1,
  getElementTypes ("xs:%element")
)'
										FMT={
											ctrl.size.width='232.5';
											ctrl.size.height='17.3';
										}
									</SS_CALL_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='Usage/Definition Location List Column'
										PARAMS_EXPR='v = stockSection.getVar ("locations").toVector();

Array (
  stockSection.param,
  v.subVector ((v.size() + 1) / 2),
  true,
  getElementTypes ("xs:%element")
)'
										FMT={
											ctrl.size.width='267';
											ctrl.size.height='17.3';
											tcell.padding.extra.left='10';
										}
									</SS_CALL_CTRL>
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
					par.style='s6';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Within anonymous complexTypes of elements'
							</TEXT_CTRL>
							<DATA_CTRL>
								FORMULA='"(" + stockSection.getVar ("locations").toVector().size() + ")"'
							</DATA_CTRL>
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
			</AREA_SEC>
		</HEADER>
	</FOLDER>
	<ELEMENT_ITER>
		SS_NAME='Usage/Definition Location List Column'
		DESCR='params[0]: list type: "ref" - usage locations, "def" - definition locations;
params[1]: vector of element reference components; 
params[2]: true if this is the last part of the whole list (to avoid printing comma after last item);
params[3]: the Element Types (array) matching the component containing the location'
		TARGET_ET='xs:%element'
		SCOPE='custom'
		ELEMENT_ENUM_EXPR='toEnum (stockSection.params [1])'
		FMT={
			sec.outputStyle='pars';
			list.style.type='none';
		}
		<BODY>
			<AREA_SEC>
				FMT={
					txtfl.delimiter.type='none';
				}
				<AREA>
					<CTRL_GROUP>
						FMT={
							txtfl.delimiter.type='nbsp';
						}
						<CTRLS>
							<SS_CALL_CTRL>
								SS_NAME='Component Name'
								PASSED_ELEMENT_EXPR='findPredecessorByType (
  (GOMElementType[]) stockSection.params[3]
)'
								PASSED_ELEMENT_MATCHING_ET='<ANY>'
							</SS_CALL_CTRL>
							<PANEL>
								COND='! output.format.supportsPagination
&&
findHyperTarget (Array (
  contextElement.id,
  Array ("def", "xml-source-location")
)) != null'
								FMT={
									ctrl.size.width='127.5';
									ctrl.size.height='38.3';
									txtfl.delimiter.type='none';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='['
											</TEXT_CTRL>
											<DATA_CTRL>
												FORMULA='stockSection.param'
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
								COND='output.format.supportsPageRefs
&&
getBooleanParam("fmt.page.refs")
&&
findHyperTarget (Array (
  contextElement.id,
  Array ("def", "xml-source-location")
)) != null'
								FMT={
									ctrl.size.width='156';
									text.style='cs8';
									txtfl.delimiter.type='none';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='['
												FMT={
													text.style='cs6';
												}
											</TEXT_CTRL>
											<DATA_CTRL>
												DOCFIELD='page-htarget'
												FMT={
													ctrl.option.noHLinkFmt='true';
													text.style='cs6';
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
												FMT={
													text.style='cs6';
												}
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
								COND='! iterator.isLastItem ||
! stockSection.params[2].toBoolean()'
								TEXT=','
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</ELEMENT_ITER>
</STOCK_SECTIONS>
CHECKSUM='C6tvYvFcmOD2yDZ?+SaDqtNvG6mwVbqdQeGc1Yik0+A'
</DOCFLEX_TEMPLATE>