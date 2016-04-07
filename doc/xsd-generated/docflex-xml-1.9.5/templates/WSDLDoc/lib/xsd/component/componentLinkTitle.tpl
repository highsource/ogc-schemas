<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2011-12-20 06:32:18'
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
ROOT_ET='<ANY>'
<TEMPLATE_PARAMS>
	PARAM={
		param.name='gen.doc.xsd.comp.element.local.unifyByType';
		param.title='Unify By Type';
		param.title.style.italic='true';
		param.description='local elements may be unified by type';
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
		param.name='show.linkTitle.name';
		param.title='Name';
		param.type='boolean';
	}
	PARAM={
		param.name='show.linkTitle.namespace';
		param.title='Namespace URI';
		param.type='boolean';
	}
	PARAM={
		param.name='show.linkTitle.file';
		param.title='Defined in File';
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
	<AREA_SEC>
		DESCR='case of global element'
		MATCHING_ET='xs:element'
		BREAK_PARENT_BLOCK='when-executed'
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						COND='getAttrBooleanValue ("abstract")'
						TEXT='abstract'
					</TEXT_CTRL>
					<TEXT_CTRL>
						TEXT='global element'
					</TEXT_CTRL>
					<DATA_CTRL>
						COND='getBooleanParam("show.linkTitle.name")'
						FORMULA='\'<\' + getAttrValue("name") + \'>\''
					</DATA_CTRL>
					<DATA_CTRL>
						COND='getBooleanParam("show.linkTitle.namespace")'
						FORMULA='"in {" + (
  (nsURI = findAncestor ("xs:schema").getServiceAttr("targetNamespace")) != "" ?
    nsURI : "no namespace"
) + "}"'
					</DATA_CTRL>
					<DATA_CTRL>
						COND='getBooleanParam("show.linkTitle.file")'
						FORMULA='"defined in " + getXMLDocument().getAttrValue("xmlName")'
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<FOLDER>
		DESCR='case of local element'
		MATCHING_ET='xs:%localElement'
		BREAK_PARENT_BLOCK='when-executed'
		FMT={
			sec.outputStyle='text-par';
		}
		<BODY>
			<FOLDER>
				DESCR='case of unified local element'
				COND='getBooleanParam("gen.doc.xsd.comp.element.local.unifyByType")
&&
countElementsByKey (
  "xsd-globally-documented-local-elements",
  contextElement.id
) > 1'
				BREAK_PARENT_BLOCK='when-executed'
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='unified local element'
									</TEXT_CTRL>
									<DATA_CTRL>
										COND='getBooleanParam("show.linkTitle.name")'
										FORMULA='\'<\' + getAttrValue("name") + \'>\''
									</DATA_CTRL>
									<DATA_CTRL>
										COND='getBooleanParam("show.linkTitle.namespace")'
										FORMULA='"in {" + ({
  schema = findAncestor ("xs:schema");

  (hasAttr("form") ? getAttrValue("form") : 
    schema.getAttrValue ("elementFormDefault")) == "qualified"
  &&
  (nsURI = schema.getServiceAttr("targetNamespace")) != ""
  ? 
  nsURI : "no namespace"
}) + "}"'
									</DATA_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<ELEMENT_ITER>
						DESCR='unified local element may be defined in several schemas'
						COND='getBooleanParam("show.linkTitle.file")'
						TARGET_ET='#DOCUMENT'
						SCOPE='advanced-location-rules'
						RULES={
							'* -> {findElementsByKey (
 "xsd-globally-documented-local-elements",
 contextElement.id
)}::xs:%localElement/{Enum (getXMLDocument())}::#DOCUMENT';
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
										FMT={
											txtfl.delimiter.type='space';
										}
										<CTRLS>
											<TEXT_CTRL>
												TEXT='defined at'
											</TEXT_CTRL>
											<DATA_CTRL>
												FORMULA='countElementsByKey (
  "xsd-globally-documented-local-elements",
  contextElement.id
)'
											</DATA_CTRL>
											<TEXT_CTRL>
												TEXT='locations in '
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
				DESCR='just local element'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='local element'
							</TEXT_CTRL>
							<DATA_CTRL>
								COND='getBooleanParam("show.linkTitle.name")'
								FORMULA='\'<\' + getAttrValue("name") + \'>\''
							</DATA_CTRL>
							<DATA_CTRL>
								COND='getBooleanParam("show.linkTitle.namespace")'
								FORMULA='"in {" + ({
  schema = findAncestor ("xs:schema");

  (hasAttr("form") ? getAttrValue("form") : 
    schema.getAttrValue ("elementFormDefault")) == "qualified"
  &&
  (nsURI = schema.getServiceAttr("targetNamespace")) != ""
  ? 
  nsURI : "no namespace"
}) + "}"'
							</DATA_CTRL>
							<DATA_CTRL>
								COND='getBooleanParam("show.linkTitle.file")'
								FORMULA='"defined in " + getXMLDocument().getAttrValue("xmlName")'
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</FOLDER>
	<AREA_SEC>
		DESCR='case of local attribute (not reference)'
		COND='getAttrValue("ref") == null'
		MATCHING_ET='xs:attribute%xs:attribute'
		BREAK_PARENT_BLOCK='when-executed'
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						TEXT='local attribute'
					</TEXT_CTRL>
					<DATA_CTRL>
						COND='getBooleanParam("show.linkTitle.name")'
						FORMULA='\'“\' + getAttrValue("name") + \'”\''
					</DATA_CTRL>
					<DATA_CTRL>
						COND='getBooleanParam("show.linkTitle.namespace")'
						FORMULA='schema = findAncestor ("xs:schema");

(hasAttr("form") ? getAttrValue("form") : 
   schema.getAttrValue ("attributeFormDefault")) == "qualified"
&&
(nsURI = schema.getServiceAttr("targetNamespace")) != ""

? "in {" + nsURI + "}" : ""
'
						FMT={
							ctrl.option.text.noBlankOutput='true';
						}
					</DATA_CTRL>
					<DATA_CTRL>
						COND='getBooleanParam("show.linkTitle.file")'
						FORMULA='"defined in " + getXMLDocument().getAttrValue("xmlName")'
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		DESCR='case of global complexType / simpleType / group / attributeGroup / attribute'
		MATCHING_ETS={'xs:attribute';'xs:attributeGroup';'xs:complexType';'xs:group';'xs:simpleType'}
		BREAK_PARENT_BLOCK='when-executed'
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						COND='getAttrBooleanValue ("abstract")'
						TEXT='abstract'
					</TEXT_CTRL>
					<TEXT_CTRL>
						MATCHING_ET='xs:complexType'
						TEXT='complexType'
					</TEXT_CTRL>
					<TEXT_CTRL>
						MATCHING_ET='xs:simpleType'
						TEXT='simpleType'
					</TEXT_CTRL>
					<TEXT_CTRL>
						MATCHING_ET='xs:group'
						TEXT='group'
					</TEXT_CTRL>
					<TEXT_CTRL>
						MATCHING_ET='xs:attributeGroup'
						TEXT='attributeGroup'
					</TEXT_CTRL>
					<TEXT_CTRL>
						MATCHING_ET='xs:attribute'
						TEXT='global attribute'
					</TEXT_CTRL>
					<DATA_CTRL>
						COND='getBooleanParam("show.linkTitle.name")'
						FORMULA='\'“\' + getAttrValue("name") + \'”\''
					</DATA_CTRL>
					<PANEL>
						COND='hasServiceAttr ("redefinition")'
						MATCHING_ETS={'xs:attributeGroup';'xs:complexType';'xs:group';'xs:simpleType'}
						FMT={
							ctrl.size.width='235.5';
							ctrl.size.height='38.3';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='(redefinition'
									</TEXT_CTRL>
									<DATA_CTRL>
										COND='getServiceAttr("redefinition").toInt() > 0'
										FORMULA='getServiceAttr ("redefinition")'
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
					</PANEL>
					<DATA_CTRL>
						COND='getBooleanParam("show.linkTitle.namespace")'
						FORMULA='"in {" + (
  (nsURI = findAncestor ("xs:schema").getServiceAttr("targetNamespace")) != "" ?
    nsURI : "no namespace"
) + "}"'
					</DATA_CTRL>
					<DATA_CTRL>
						COND='getBooleanParam("show.linkTitle.file")'
						FORMULA='"defined in " + getXMLDocument().getAttrValue("xmlName")'
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
</ROOT>
CHECKSUM='RC+uKsxISTvHS0GLU5DnrNnMe+HrhJppqJFaCNDA2zY'
</DOCFLEX_TEMPLATE>