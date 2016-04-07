<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2009-05-05 04:55:37'
LAST_UPDATE='2014-07-05 20:02:50'
DESIGNER_TOOL='DocFlex SDK 1.x'
DESIGNER_LICENSE_TYPE='Filigris Works Team'
APP_ID='docflex-xml-xsddoc2'
APP_NAME='DocFlex/XML XSDDoc'
APP_VER='2.8.1'
APP_AUTHOR='Copyright © 2005-2014 Filigris Works, Leonid Rudy Softwareprodukte. All rights reserved.'
TEMPLATE_TYPE='DocumentTemplate'
DSM_TYPE_ID='xsddoc'
ROOT_ETS={'xs:%element';'xs:attributeGroup';'xs:complexType';'xs:group'}
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$contentModelKey';
		param.title='"content-model-attributes" map key';
		param.description='The key for "content-model-attributes" map to find all attributes associated with this schema component';
		param.type='Object';
		param.defaultValue.expr='contextElement.id';
	}
	PARAM={
		param.name='doc.comp.diagram.links';
		param.title='Hyperlinks';
		param.group='true';
	}
	PARAM={
		param.name='doc.comp.diagram.links.attribute.global';
		param.title='Global Attributes';
		param.type='enum';
		param.enum.values='global;local';
	}
	PARAM={
		param.name='doc.comp.diagram.links.element.local';
		param.title='Local Elements';
		param.type='enum';
		param.enum.values='global;local';
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
		param.name='integration';
		param.title='Integrations';
		param.title.style.bold='true';
		param.group='true';
	}
	PARAM={
		param.name='integration.XMLSpy';
		param.title='XMLSpy';
		param.type='boolean';
	}
	PARAM={
		param.name='integration.OxygenXML';
		param.title='Oxygen XML';
		param.type='boolean';
	}
</TEMPLATE_PARAMS>
<STYLES>
	CHAR_STYLE={
		style.name='Default Paragraph Font';
		style.id='cs1';
		style.default='true';
	}
	PAR_STYLE={
		style.name='Diagram Heading';
		style.id='s1';
		text.font.style.bold='true';
		text.color.foreground='#990000';
		par.bkgr.opaque='true';
		par.bkgr.color='#F5F5F5';
		par.border.style='solid';
		par.border.color='#999999';
		par.padding.left='2.5';
		par.padding.right='2.5';
		par.padding.top='2.5';
		par.padding.bottom='2.5';
	}
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs2';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s2';
		style.default='true';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs2';
}
<ROOT>
	<FOLDER>
		<BODY>
			<AREA_SEC>
				ON_OUTPUT_EXPR='setVar ("has-diagrams", true)'
				<AREA>
					<CTRL_GROUP>
						FMT={
							par.alignment='Center';
							par.margin.top='6.7';
							par.margin.bottom='6.7';
						}
						<CTRLS>
							<IMAGE_CTRL>
								IMAGE_TYPE='element-image'
								OUTPUT_DIR_EXPR='documentContext != mainContext ? output.dir : ""'
								OUTPUT_FILE_NAME_EXPR='documentContext != mainContext ?
  getAttrStringValue("name") : ""'
								FMT={
									image.option.allowRotation='true';
								}
								<DOC_HLINK>
									DESCR='case of any global component (except attribute)
--
try to link to its global documentation and, if not found, to its definition within the XML schema source'
									CONTEXT_ELEMENT_EXPR='imageMapElement'
									MATCHING_ETS={'xs:attributeGroup';'xs:complexType';'xs:element';'xs:group';'xs:simpleType'}
									ALT_HLINK
									TITLE_EXPR='getBooleanParam("show.linkTitle") ? callStockSection("Link Title") : ""'
									HKEYS={
										'contextElement.id';
										'Array ("detail", "xml-source-location")';
									}
								</DOC_HLINK>
								<DOC_HLINK>
									DESCR='case of local element'
									CONTEXT_ELEMENT_EXPR='imageMapElement'
									MATCHING_ET='xs:%localElement'
									ALT_HLINK
									TITLE_EXPR='getBooleanParam("show.linkTitle") ? callStockSection("Link Title") : ""'
									HKEYS={
										'keys = Vector (
  { 
    // if this local element is documented globally via a unifier,
    // use the ID of that unifier element

    el = findElementByKey ("globally-documented-local-elements",
                           contextElement.id);
    el != null ? el.id : contextElement.id
  },
  contextElement.id,
  contextElement.id,
  contextElement.id
);

hasParamValue("doc.comp.diagram.links.element.local", "local")
 ? keys.moveElement(0,2).toArray() : keys.toArray()';
										'keys = Vector (
  "detail",
  "local",
  "def",
  "xml-source-location"
);

hasParamValue("doc.comp.diagram.links.element.local", "local")
 ? keys.moveElement(0,2).toArray() : keys.toArray()
';
										'keys = Vector (
  NoKey(),
  rootElement.id,
  NoKey(),
  NoKey()
);

hasParamValue("doc.comp.diagram.links.element.local", "local")
 ? keys.moveElement(0,2).toArray() : keys.toArray()';
									}
								</DOC_HLINK>
								<DOC_HLINK>
									DESCR='case of local attribute'
									CONTEXT_ELEMENT_EXPR='imageMapElement'
									MATCHING_ET='xs:attribute%xs:attribute'
									ALT_HLINK
									TITLE_EXPR='getBooleanParam("show.linkTitle") ? callStockSection("Link Title") : ""'
									HKEYS={
										'contextElement.id';
										'Array (
  "local",
  "def",
  "xml-source-location"
)
';
										'Array (rootElement.id, NoKey())
';
									}
								</DOC_HLINK>
								<DOC_HLINK>
									DESCR='case of global attribute'
									CONTEXT_ELEMENT_EXPR='imageMapElement'
									MATCHING_ET='xs:attribute'
									ALT_HLINK
									TITLE_EXPR='getBooleanParam("show.linkTitle") ? callStockSection("Link Title") : ""'
									HKEYS={
										'attrQName = QName (
  findAncestor ("xs:schema").getServiceAttr("targetNamespace").toString(),
  getAttrStringValue("name")
);

refElement = findElementByKey (
  "content-model-attributes",
  getParam("$contentModelKey"),
  BooleanQuery (getAttrQNameValue ("ref") == attrQName)
);

keys = Vector (
  contextElement.id,
  refElement.id,
  refElement.id,
  contextElement.id
);

hasParamValue("doc.comp.diagram.links.attribute.global", "local")
 ? keys.moveElement(0,2).toArray() : keys.toArray()';
										'keys = Vector (
  "detail",
  "local",
  "def",
  "xml-source-location"
);

hasParamValue("doc.comp.diagram.links.attribute.global", "local")
 ? keys.moveElement(0,2).toArray() : keys.toArray()
';
										'keys = Vector (
  NoKey(),
  rootElement.id,
  NoKey(),
  NoKey()
);

hasParamValue("doc.comp.diagram.links.attribute.global", "local")
 ? keys.moveElement(0,2).toArray() : keys.toArray()
';
									}
								</DOC_HLINK>
							</IMAGE_CTRL>
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
						FMT={
							trow.bkgr.color='#CCCCFF';
						}
						<CTRLS>
							<TEXT_CTRL>
								COND='getBooleanParam("integration.XMLSpy")'
								TEXT='Content Model Diagram'
							</TEXT_CTRL>
							<TEXT_CTRL>
								COND='getBooleanParam("integration.OxygenXML")'
								TEXT='Component Diagram'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
</ROOT>
<STOCK_SECTIONS>
	<TEMPLATE_CALL>
		SS_NAME='Link Title'
		TEMPLATE_FILE='componentLinkTitle.tpl'
	</TEMPLATE_CALL>
</STOCK_SECTIONS>
CHECKSUM='LSTdR7E6+Rg5IvUqVwJTqJ1ZkbvVMuL9+ZChcOOu29A'
</DOCFLEX_TEMPLATE>