<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2012-07-11 02:34:57'
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
ROOT_ET='wsdl:%tDocumented'
<TEMPLATE_PARAMS>
	PARAM={
		param.name='proc';
		param.title='Processing';
		param.title.style.bold='true';
		param.group='true';
	}
	PARAM={
		param.name='proc.desc';
		param.title='Descriptions';
		param.title.style.bold='true';
		param.group='true';
	}
	PARAM={
		param.name='proc.desc.tags';
		param.title='Tags';
		param.title.style.bold='true';
		param.group='true';
	}
	PARAM={
		param.name='proc.desc.tags.xhtml';
		param.title='XHTML';
		param.group='true';
		param.group.defaultState='expanded';
		param.type='boolean';
	}
	PARAM={
		param.name='proc.desc.tags.xhtml.files';
		param.title='For Files';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='proc.desc.tags.xhtml.files.include';
		param.title='Include';
		param.title.style.italic='true';
		param.type='string';
		param.trimSpaces='true';
		param.collapseSpaces='true';
		param.noEmptyString='true';
		param.list='true';
	}
	PARAM={
		param.name='proc.desc.tags.xhtml.files.exclude';
		param.title='Exclude';
		param.title.style.italic='true';
		param.type='string';
		param.trimSpaces='true';
		param.collapseSpaces='true';
		param.noEmptyString='true';
		param.list='true';
	}
	PARAM={
		param.name='proc.desc.tags.xhtml.files.this';
		param.title='This file';
		param.title.style.italic='true';
		param.description='Indicates if processing of XHTML tags is enabled for this particular WSDL/XSD file (to which the annotated definition belongs).

This parameter is calculated dynamically from other parameters and the context element passed to the template.';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("proc.desc.tags.xhtml")
&&
{
  fileName = getXMLDocument().getAttrValue("xmlName");

  includeFiles = getArrayParam("proc.desc.tags.xhtml.files.include");
  excludeFiles = getArrayParam("proc.desc.tags.xhtml.files.exclude");

  (includeFiles.isEmpty() || includeFiles.contains (fileName)) &&
  ! excludeFiles.contains (fileName)
}';
		param.fixed='true';
	}
	PARAM={
		param.name='proc.desc.tags.xhtml.images';
		param.title='Include Images';
		param.group='true';
		param.group.defaultState='expanded';
		param.type='boolean';
	}
	PARAM={
		param.name='proc.desc.tags.xhtml.images.copy';
		param.title='Copy Images';
		param.type='boolean';
	}
	PARAM={
		param.name='proc.desc.tags.other';
		param.title='Other Tags';
		param.type='enum';
		param.enum.values='show;xhtml;no';
	}
	PARAM={
		param.name='proc.desc.encode.markup.chars';
		param.title='Encode markup characters';
		param.type='boolean';
	}
</TEMPLATE_PARAMS>
<STYLES>
	CHAR_STYLE={
		style.name='Code Smaller';
		style.id='cs1';
		text.font.name='Courier New';
		text.font.size='8';
	}
	CHAR_STYLE={
		style.name='Default Paragraph Font';
		style.id='cs2';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs3';
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
	doc.hlink.style.link='cs3';
}
<ROOT>
	<AREA_SEC>
		COND='getBooleanParam("proc.desc.tags.xhtml.files.this")'
		CONTEXT_ELEMENT_EXPR='findChild("wsdl:documentation")'
		MATCHING_ET='wsdl:documentation'
		BREAK_PARENT_BLOCK='when-executed'
		FMT={
			sec.outputStyle='text-par';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<DATA_CTRL>
						FORMULA='firstSentence (
  callStockSection ("HTMLDoc"),
  true,
  output.format.renderEmbeddedHTML
)'
						FMT={
							ctrl.option.text.collapseSpaces='true';
							ctrl.option.text.trimSpaces='true';
							ctrl.option.text.noBlankOutput='true';
							text.option.renderNLs='false';
							txtfl.ehtml.render='true';
						}
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		CONTEXT_ELEMENT_EXPR='findChild("wsdl:documentation")'
		MATCHING_ET='wsdl:documentation'
		FMT={
			sec.outputStyle='text-par';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<DATA_CTRL>
						FORMULA='text = collapseSpaces (mergeStrings (getValuesByLPath ("descendant::(#TEXT|#CDATA)")));

// extract the first sentence

output.format.renderEmbeddedHTML
 ? firstSentence (text, ! getBooleanParam ("proc.desc.encode.markup.chars"), true)
 : firstSentence (text, false)'
						FMT={
							ctrl.option.text.collapseSpaces='true';
							ctrl.option.text.trimSpaces='true';
							ctrl.option.text.noBlankOutput='true';
							text.option.renderNLs='false';
							txtfl.ehtml.render='true';
						}
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
</ROOT>
<STOCK_SECTIONS>
	<TEMPLATE_CALL>
		SS_NAME='HTMLDoc'
		TEMPLATE_FILE='../../doc/firstSentenceOutput.tpl'
	</TEMPLATE_CALL>
</STOCK_SECTIONS>
CHECKSUM='ZrvN30y?ILqu736wY?mVBP8Psjr1efJUSINhS12K4RQ'
</DOCFLEX_TEMPLATE>