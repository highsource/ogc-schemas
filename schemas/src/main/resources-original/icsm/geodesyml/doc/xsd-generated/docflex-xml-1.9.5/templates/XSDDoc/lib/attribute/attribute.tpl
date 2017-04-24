<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2010-10-10 01:49:51'
LAST_UPDATE='2014-07-05 20:02:50'
DESIGNER_TOOL='DocFlex SDK 1.x'
DESIGNER_LICENSE_TYPE='Filigris Works Team'
APP_ID='docflex-xml-xsddoc2'
APP_NAME='DocFlex/XML XSDDoc'
APP_VER='2.8.1'
APP_AUTHOR='Copyright © 2005-2014 Filigris Works, Leonid Rudy Softwareprodukte. All rights reserved.'
TEMPLATE_TYPE='DocumentTemplate'
DSM_TYPE_ID='xsddoc'
ROOT_ET='xs:attribute'
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
		param.defaultValue.expr='findAncestor("xs:schema").getServiceAttr("targetNamespace")';
		param.hidden='true';
	}
	PARAM={
		param.name='$qName';
		param.description='QName object representing the attribute qualified name. (Since this template is supposed to document only global attributes, their names are always qualified).
<p>
See Expr. Assistant | XML Functions | <code>QName()</code> function.';
		param.type='Object';
		param.defaultValue.expr='QName (
  getStringParam("$nsURI"),
  getAttrStringValue("name")
)';
		param.fixed='true';
	}
	PARAM={
		param.name='$title';
		param.title='Component\'s doc title';
		param.type='string';
		param.defaultValue.expr='\'attribute "\' + getParam("$xmlName") + \'"\'';
	}
	PARAM={
		param.name='$xmlName';
		param.description='Displayed XML name (qualified or local) of the attribute';
		param.type='string';
		param.defaultValue.expr='toXMLName (getStringParam("$nsURI"), getAttrStringValue("name"))';
		param.fixed='true';
		param.hidden='true';
	}
	PARAM={
		param.name='$usageCount';
		param.description='number of locations where this global attribute is used';
		param.type='integer';
		param.defaultValue.expr='countElementsByKey ("attribute-usage", contextElement.id)';
		param.fixed='true';
		param.hidden='true';
	}
	PARAM={
		param.name='$attrTypeQName';
		param.title='attribute type qualified name';
		param.description='for an anonymous this will be null';
		param.type='Object';
		param.defaultValue.expr='getAttrQNameValue("type")';
		param.fixed='true';
	}
	PARAM={
		param.name='$attrType';
		param.title='attribute type component';
		param.description='this is either global or anonymous type or null (when type cannot be resolved)';
		param.type='Object';
		param.defaultValue.expr='(typeQName = getParam("$attrTypeQName")) != null ?
  findElementByKey (
    "types",
    typeQName,
    BooleanQuery (checkElementByKey (
      "main-xsds",
      getXMLDocument().id,
      getElementParam("$mainXSD")
    ))
  )
: findChild("xs:simpleType")';
		param.fixed='true';
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
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='doc.comp.profile';
		param.title='Component Profile';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.xmlRep';
		param.title='XML Representation Summary';
		param.group='true';
		param.group.defaultState='expanded';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.xmlRep.for.attribute';
		param.title='Generate For Global Attributes';
		param.title.style.italic='true';
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
		param.name='doc.comp.usage';
		param.title='Usage / Definition Locations';
		param.group='true';
		param.group.defaultState='expanded';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.usage.for.attribute';
		param.title='Global Attributes';
		param.title.style.italic='true';
		param.type='boolean';
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
		param.group.defaultState='expanded';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.annotation.for.attribute';
		param.title='Global Attributes';
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
		param.name='doc.comp.type.for.attribute.type';
		param.title='Attributes With Types';
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
		param.defaultValue='true';
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
		param.defaultValue='true';
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
		par.margin.bottom='7.5';
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
		par.margin.top='10';
		par.margin.bottom='8.3';
		par.padding.left='2.1';
		par.padding.right='2.1';
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
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	PAR_STYLE={
		style.name='List Heading 2';
		style.id='s5';
		text.font.name='Arial';
		text.font.size='9';
		text.font.style.bold='true';
		par.margin.bottom='6.7';
	}
	CHAR_STYLE={
		style.name='Mono';
		style.id='cs5';
		text.font.name='Courier New';
		text.font.size='9';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s6';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Page Header Font';
		style.id='cs6';
		text.font.name='Arial';
		text.font.style.italic='true';
	}
	CHAR_STYLE={
		style.name='Page Reference';
		style.id='cs7';
		text.font.name='Courier New';
		text.font.size='8';
	}
	PAR_STYLE={
		style.name='Property Title';
		style.id='s7';
		text.font.size='8';
		text.font.style.bold='true';
		par.lineHeight='11';
		par.margin.right='5.8';
	}
	PAR_STYLE={
		style.name='Property Value';
		style.id='s8';
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
			text.style='cs6';
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
					<DATA_CTRL>
						FORMULA='getParam("$title")'
						FMT={
							text.font.style.italic='true';
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
		DESCR='Attribute Profile'
		COND='getBooleanParam("doc.comp.profile")'
		ON_OUTPUT_EXPR='thisContext.setVar ("has-profile", true)'
		TEMPLATE_FILE='attributeProfile.tpl'
	</TEMPLATE_CALL>
	<TEMPLATE_CALL>
		DESCR='XML Representation Summary'
		COND='getBooleanParam("doc.comp.xmlRep") &&
getBooleanParam("doc.comp.xmlRep.for.attribute")'
		ON_OUTPUT_EXPR='thisContext.setVar ("has-xml-rep-summary", true)'
		TEMPLATE_FILE='../component/xmlRep.tpl'
		PASSED_PARAMS={
			'$abbreviateAttrValue','getBooleanParam("doc.comp.simpleContent") &&
getBooleanParam("doc.comp.simpleContent.restrictions")';
		}
		FMT={
			sec.spacing.before='10';
			sec.spacing.after='10';
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
	<FOLDER>
		DESCR='Attribute Value Detail'
		COND='getBooleanParam("doc.comp.simpleContent")'
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

1. First, all facet elements are collected that are declared both in the context type and all its ancestor types both global and anonymous. (This will work, however, until a derivation by list or union is reached.) 

What\'s important is that how the facets will follow in the result sequence. The facets from the same restriction will appear in the same order as they were declared. The facets from different restrictions will appear according to the remoteness of their parent restrictions from the context type.

This everything is determined with the Location Rules (and their ordering) specified in "Processing | Iteration Scope" tab.

2. Once the initial sequence is produced, the filtering by key will be applied (see "Processing | Filtering | Filter By Key" tab). The purpose of the filtering is to remove those facets that are overridden in the descendant types.  There are two special cases:

(1) All <xs:enumeration> facets will be removed except the first (valid) one. That will be enough to obtain all valid enumeration facets from the <xs:restriction> parent of the left one. This is done in "facet.tpl" template (called to print a facet value).

(2) All <xs:pattern> facets will be left because they all are valid.

All those conditions are specified in the "Expression For Unique Key". In the case of <xs:pattern>, the key will be the element ID, which is always unique (therefore, no <xs:pattern> element will be removed.

The "Preference Condition" expression determines if a given element should replace the already passed element with the same key. That will be so when the expression returns true. We specify to return the value of the facet\'s \'fixed\' attribute. The \'fixed\' attribute overrides anything that might be specified about that facet in the descendant types. (However, actually, doing this is not allowed in XSD!)

3. In the "Processing | Sorting" tab we specify sorting the result facets according to the facet type names. This is done primarily to ensure that all "pattern" facets are printed together.'
				COND='getBooleanParam("doc.comp.simpleContent.restrictions")'
				CONTEXT_ELEMENT_EXPR='getParam("$attrType").toElement()'
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
    "types",
    hasServiceAttr ("redefined") ?
      HashKey (baseQName, getServiceAttr ("redefined")) : baseQName,
    BooleanQuery (checkElementByKey (
      "main-xsds", getXMLDocument().id, getElementParam("$mainXSD")
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
											par.style='s7';
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
											par.style='s8';
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
getBooleanParam("doc.comp.simpleContent.default")'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Default:'
								FMT={
									ctrl.size.width='36';
									ctrl.size.height='17.3';
									tcell.align.vert='Top';
									par.style='s7';
								}
							</TEXT_CTRL>
							<DATA_CTRL>
								FORMULA='\'"\' + getAttrValue("default") +\'"\''
								FMT={
									ctrl.size.width='463.5';
									ctrl.size.height='17.3';
									par.style='s8';
								}
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				COND='hasAttr("fixed") &&
getBooleanParam("doc.comp.simpleContent.fixed")'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Fixed:'
								FMT={
									ctrl.size.width='36';
									ctrl.size.height='17.3';
									tcell.align.vert='Top';
									par.style='s7';
								}
							</TEXT_CTRL>
							<DATA_CTRL>
								FORMULA='\'"\' + getAttrValue("fixed") +\'"\''
								FMT={
									ctrl.size.width='463.5';
									ctrl.size.height='17.3';
									par.style='s8';
								}
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
		<HEADER>
			<AREA_SEC>
				COND='thisContext.checkVar ("has-profile")
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
								TEXT='Attribute Value Detail:'
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
		DESCR='Usage Locations'
		COND='getBooleanParam("doc.comp.usage") &&
getBooleanParam("doc.comp.usage.for.attribute")
&&
getIntParam("$usageCount") > 0'
		COLLAPSED
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
				DESCR='in attributeGroups'
				COND='e = findElementsByKey (
  "attribute-usage",
  contextElement.id,
  // filter
  BooleanQuery (
    findPredecessorByType ("xs:%element|xs:attributeGroup").instanceOf ("xs:attributeGroup")
  )
);

e.hasNext() ?
{
  v = e.toVector();

  v.sortVector (
     @(GOMElement) el,
     FlexQuery (el.findPredecessorByType("xs:attributeGroup").callStockSection ("Component Name"))
  );

  thisContext.setVar ("locations", v);
  true;

} : false'
				SS_NAME='Usage Location List'
				PARAMS_EXPR='Array (
  "In definitions of attributeGroups",
  getParam("doc.comp.usage.layout"),
  thisContext.getVar ("locations"),
  getElementTypes ("xs:attributeGroup")
)'
			</SS_CALL>
			<SS_CALL>
				DESCR='in global complexTypes'
				COND='e = findElementsByKey (
  "attribute-usage",
  contextElement.id,
  // filter
  BooleanQuery (
    findPredecessorByType ("xs:%element|xs:complexType").instanceOf ("xs:complexType")
  )
);

e.hasNext() ?
{
  v = e.toVector();

  v.sortVector (
     @(GOMElement) el,
     FlexQuery (el.findPredecessorByType("xs:complexType").callStockSection ("Component Name"))
  );

  thisContext.setVar ("locations", v);
  true;

} : false'
				SS_NAME='Usage Location List'
				PARAMS_EXPR='Array (
  "In definitions of global complexTypes",
  getParam("doc.comp.usage.layout"),
  thisContext.getVar ("locations"),
  getElementTypes ("xs:complexType")
)'
			</SS_CALL>
			<SS_CALL>
				DESCR='in anonymous complexTypes of elements'
				COND='e = findElementsByKey (
  "attribute-usage",
  contextElement.id,
  // filter
  BooleanQuery (checkPredecessorByType("xs:%element"))
);

e.hasNext() ? {

  nameExt = null;

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

  v = e.toVector();

  // sort locations according to the containing element\'s name
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

        displayName = toXMLName (targetNS, name, rootElement);
        nameLen = displayName.length()

      } : {
        // case of local element

        form = el.hasAttr("form") ? el.getAttrValue("form")
                  : schema.getAttrValue ("elementFormDefault");

        displayName = (form == "qualified") ? toXMLName (targetNS, name, rootElement) : name;

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

  thisContext.setVar ("locations", v); 

  /* The actual list layout:

   - If the list consist of the only element, the layout is \'flow\'
   - If the specified layout was \'optimal\', calculate the actual layout as follows:

     1). If there are no local element name extensions, use \'flow\' layout
     2). If maximal normalized length of element display names in the list exceeds 50,
         use \'one_column\' layout
     3). Otherwise, use \'two_columns\' layout

   - Otherwise, use the specified layout
  */

  thisContext.setVar (
    "listLayout", 
    (v.size() == 1 ? "flow" :
       hasParamValue("doc.comp.usage.layout", "optimal") ?
         nameExt == null ? "flow" : nameLenMax > 50 ? "one_column" : "two_columns"
       : getStringParam("doc.comp.usage.layout"))
  );

  true;

} : false'
				SS_NAME='Usage Location List'
				PARAMS_EXPR='Array (
  "In definitions of anonymous complexTypes of elements",
  thisContext.getVar ("listLayout"),
  thisContext.getVar ("locations"),
  getElementTypes ("xs:%element")
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
								TEXT='Known Usage Locations'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
	<FOLDER>
		DESCR='Annotation'
		COND='getBooleanParam("doc.comp.annotation") &&
getBooleanParam("doc.comp.annotation.for.attribute")'
		COLLAPSED
		<BODY>
			<TEMPLATE_CALL>
				TEMPLATE_FILE='../ann/annotation.tpl'
				FMT={
					text.style='cs1';
				}
			</TEMPLATE_CALL>
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
	<FOLDER>
		DESCR='TYPE DETAIL'
		COND='getBooleanParam("doc.comp.type") && 
(
  hasParamValue("doc.comp.type.for.attribute.type", "anonymous") &&
  getParam("$attrTypeQName") == null
  ||
  hasParamValue("doc.comp.type.for.attribute.type", "any")
)'
		CONTEXT_ELEMENT_EXPR='getParam("$attrType").toElement()'
		MATCHING_ET='xs:%simpleType'
		COLLAPSED
		<BODY>
			<AREA_SEC>
				COND='getBooleanParam("doc.comp.type.deriv.tree")'
				FMT={
					sec.outputStyle='table';
					sec.spacing.before='8.3';
					sec.spacing.after='8.3';
					table.sizing='Relative';
					table.autofit='false';
					table.cell.padding.both='4.2';
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
									'$detailLink','instanceOf("xs:simpleType")';
									'$xmlSourceLink','instanceOf("xs:simpleType") ||
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
				DESCR='type definition info'
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
				MATCHING_ET='xs:%localSimpleType'
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
								TEXT='simpleType'
							</TEXT_CTRL>
							<DATA_CTRL>
								FORMULA='\'"\' + getParam("$attrTypeQName") + \'"\''
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
	<FOLDER>
		DESCR='XML SOURCE'
		COND='getBooleanParam("doc.comp.xml")'
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
		DESCR='Bottom Message'
		COND='output.type == "document" &&
! hasParamValue("show.about", "none")'
		TEMPLATE_FILE='../about.tpl'
	</TEMPLATE_CALL>
</ROOT>
<STOCK_SECTIONS>
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
	<TEMPLATE_CALL>
		SS_NAME='localElementExt'
		MATCHING_ET='xs:%localElement'
		TEMPLATE_FILE='../element/localElementExt.tpl'
		PASSED_PARAMS={
			'$xmlContexts','Array (rootElement, contextElement)';
		}
		PASSED_ROOT_ELEMENT_EXPR='// the element passed to localElementExt.tpl template 
// must be either globaly documented directly (not via a unifier)
// or not globally documented at all

el = findElementByKey (
  "globally-documented-local-elements",
  contextElement.id
);

el != null ? el : contextElement'
	</TEMPLATE_CALL>
	<FOLDER>
		SS_NAME='Usage Location List'
		DESCR='params[0]: list title; 
params[1]: list layout;
params[2]: vector of attribute reference components;
params[3]: the Element Types (array) matching the component containing the location'
		<BODY>
			<ELEMENT_ITER>
				DESCR='print the list as comma-delimited text flow'
				COND='stockSection.params[1] == "flow"
||
stockSection.params[1] == "optimal"
||
stockSection.params[2].toVector().size() == 1'
				BREAK_PARENT_BLOCK='when-executed'
				TARGET_ET='xs:%attribute'
				SCOPE='custom'
				ELEMENT_ENUM_EXPR='stockSection.params[2].toEnum()'
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
														TEXT='ref'
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
											ctrl.size.width='156';
											text.style='cs7';
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
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='print one-column list'
				COND='stockSection.params[1] == "flow"
||
stockSection.params[1] == "optimal"
||
stockSection.params[2].toVector().size() == 1'
				BREAK_PARENT_BLOCK='when-executed'
				TARGET_ET='xs:%attribute'
				SCOPE='custom'
				ELEMENT_ENUM_EXPR='stockSection.params[2].toEnum()'
				FMT={
					txtfl.delimiter.type='text';
					txtfl.delimiter.text=', ';
					list.type='delimited';
				}
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
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
														TEXT='ref'
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
											ctrl.size.width='147';
											ctrl.size.height='38.3';
											text.style='cs7';
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
										SS_NAME='Usage Location List Column'
										PARAMS_EXPR='v = stockSection.params[2].toVector();
N = v.size();

Array (
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
										SS_NAME='Usage Location List Column'
										PARAMS_EXPR='v = stockSection.params[2].toVector();

Array (
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
					par.style='s5';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								FORMULA='stockSection.param'
							</DATA_CTRL>
							<DATA_CTRL>
								FORMULA='"(" + stockSection.params[2].toVector().size() + ")"'
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
		SS_NAME='Usage Location List Column'
		DESCR='params[0]: vector of attribute reference components; 
params[1]: true if this is the last part of the whole list (to avoid printing comma after last item);
params[2]: the Element Types (array) matching the component containing the location'
		TARGET_ET='xs:%attribute'
		SCOPE='custom'
		ELEMENT_ENUM_EXPR='toEnum (stockSection.param)'
		FMT={
			sec.outputStyle='pars';
			par.option.nowrap='true';
			list.style.type='none';
		}
		<BODY>
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<SS_CALL_CTRL>
								SS_NAME='Component Name'
								PASSED_ELEMENT_EXPR='findPredecessorByType (
  (GOMElementType[]) stockSection.params[2]
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
												TEXT='ref'
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
									ctrl.size.width='156';
									text.style='cs7';
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
							<DELIMITER>
								FMT={
									txtfl.delimiter.type='none';
								}
							</DELIMITER>
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
</STOCK_SECTIONS>
CHECKSUM='SRBncU6huABtfjKeA5o4FOU8tiDfaYY+vxS09DR9F8I'
</DOCFLEX_TEMPLATE>