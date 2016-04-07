<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2012-06-20 09:27:53'
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
		MATCHING_ETS={'wsdl:binding';'wsdl:message';'wsdl:portType';'wsdl:service';'wsdl:types'}
		BREAK_PARENT_BLOCK='when-executed'
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						MATCHING_ET='wsdl:service'
						TEXT='service'
					</TEXT_CTRL>
					<TEXT_CTRL>
						MATCHING_ET='wsdl:binding'
						TEXT='binding'
					</TEXT_CTRL>
					<TEXT_CTRL>
						MATCHING_ET='wsdl:portType'
						TEXT='portType'
					</TEXT_CTRL>
					<TEXT_CTRL>
						MATCHING_ET='wsdl:message'
						TEXT='message'
					</TEXT_CTRL>
					<DATA_CTRL>
						COND='getBooleanParam("show.linkTitle.name")'
						FORMULA='\'“\' + getAttrValue("name") + \'”\''
					</DATA_CTRL>
					<DATA_CTRL>
						COND='getBooleanParam("show.linkTitle.namespace")'
						FORMULA='"in {" + (
  (nsURI = findAncestor ("wsdl:definitions").getAttrStringValue("targetNamespace")) != "" ?
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
	<AREA_SEC>
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						MATCHING_ET='wsdl:port'
						TEXT='service port'
					</TEXT_CTRL>
					<TEXT_CTRL>
						MATCHING_ET='wsdl:part'
						TEXT='message part'
					</TEXT_CTRL>
					<TEXT_CTRL>
						MATCHING_ET='wsdl:operation%wsdl:tOperation'
						TEXT='operation'
					</TEXT_CTRL>
					<TEXT_CTRL>
						MATCHING_ET='wsdl:operation%wsdl:tBindingOperation'
						TEXT='operation binding'
					</TEXT_CTRL>
					<DATA_CTRL>
						COND='getBooleanParam("show.linkTitle.name")'
						FORMULA='\'“\' + getAttrValue("name") + \'”\''
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
</ROOT>
CHECKSUM='azcEe807wZun3B4+ei8dy50PdZCRoSs5SaoJTTTHxz0'
</DOCFLEX_TEMPLATE>