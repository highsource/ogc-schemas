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
ROOT_ETS={'xs:%annotated';'xs:schema'}
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
		param.name='proc.desc.xsd.annotation';
		param.title='XSD Annotations';
		param.title.style.bold='true';
		param.group='true';
	}
	PARAM={
		param.name='proc.desc.xsd.annotation.appinfo';
		param.title='<appinfo>';
		param.title.style.bold='true';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='proc.desc.xsd.annotation.appinfo.source';
		param.title='Source URI';
		param.type='enum';
		param.enum.values='as_see_link;as_title;no';
	}
	PARAM={
		param.name='proc.desc.xsd.annotation.documentation';
		param.title='<documentation>';
		param.title.style.bold='true';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='proc.desc.xsd.annotation.documentation.lang';
		param.title='Language';
		param.group='true';
		param.type='string';
		param.trimSpaces='true';
		param.noEmptyString='true';
		param.list='true';
		param.list.noEmptyList='true';
	}
	PARAM={
		param.name='proc.desc.xsd.annotation.documentation.lang.alt';
		param.title='Alternative Language';
		param.type='string';
		param.trimSpaces='true';
		param.noEmptyString='true';
		param.list='true';
		param.list.noEmptyList='true';
	}
	PARAM={
		param.name='proc.desc.xsd.annotation.documentation.source';
		param.title='Source URI';
		param.type='enum';
		param.enum.values='as_see_link;as_title;no';
	}
	PARAM={
		param.name='proc.desc.xsd.annotation.show.part.headings';
		param.title='Show part headings';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='proc.desc.xsd.annotation.show.part.headings.schemas';
		param.title='For schemas';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='proc.desc.xsd.annotation.show.part.headings.schemas.include';
		param.title='Include';
		param.title.style.italic='true';
		param.type='string';
		param.trimSpaces='true';
		param.collapseSpaces='true';
		param.noEmptyString='true';
		param.list='true';
	}
	PARAM={
		param.name='proc.desc.xsd.annotation.show.part.headings.schemas.exclude';
		param.title='Exclude';
		param.title.style.italic='true';
		param.type='string';
		param.trimSpaces='true';
		param.collapseSpaces='true';
		param.noEmptyString='true';
		param.list='true';
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
	<FOLDER>
		DESCR='find the first <xs:annotation> child and set it as the context element
(see "New Context Element")'
		CONTEXT_ELEMENT_EXPR='findChild ("xs:annotation")'
		MATCHING_ET='xs:annotation'
		<BODY>
			<AREA_SEC>
				COND='getBooleanParam("proc.desc.tags.xhtml.files.this")'
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
				FMT={
					sec.outputStyle='text-par';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								FORMULA='proc_documentation = getBooleanParam("proc.desc.xsd.annotation.documentation");
proc_appinfo = getBooleanParam("proc.desc.xsd.annotation.appinfo");

// the following works basically the same as the content of "HTMLDoc" stock-section;
// the produced pieces of text are received in the \'texts\' array variable

texts = Vector();

(proc_documentation &&
  (langs = getArrayParam("proc.desc.xsd.annotation.documentation.lang")) != null) ?
{
  // filtering by languages specified

  iterate (
    findChildren (
      "xs:appinfo|xs:documentation",
      BooleanQuery (
        instanceOf("xs:documentation") ?
          langs.containsIgnoreCase (getAttrStringValue("xml:lang")) : proc_appinfo
      )
    ),
    @(GOMElement) el,
    FlexQuery ({
      values = el.getValuesByLPath ("descendant::(#TEXT|#CDATA)");
      ! isBlank (values) ? texts.addElement (collapseSpaces (mergeStrings (values)));
    })
  );

  (texts.isEmpty() &&
    (langs = getArrayParam("proc.desc.xsd.annotation.documentation.lang.alt")) != null) ? 
  {
    iterate (
      findChildren (
        "xs:documentation",
        BooleanQuery (langs.containsIgnoreCase (getAttrStringValue("xml:lang")))
      ),
      @(GOMElement) el,
      FlexQuery ({
        values = el.getValuesByLPath ("descendant::(#TEXT|#CDATA)");
        ! isBlank (values) ? texts.addElement (collapseSpaces (mergeStrings (values)));
      })
    )
  }

} : {  // otherwise, no filtering by languages was specified

  iterate (
    findChildren (
      "xs:appinfo|xs:documentation",
      BooleanQuery (
        instanceOf("xs:documentation") ? proc_documentation : proc_appinfo
      )
    ),
    @(GOMElement) el,
    FlexQuery ({
      values = el.getValuesByLPath ("descendant::(#TEXT|#CDATA)");
      ! isBlank (values) ? texts.addElement (collapseSpaces (mergeStrings (values)));
    })
  )
};

// merge all text blocks into a single string
text = mergeStrings (texts, \' \');

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
		</BODY>
	</FOLDER>
</ROOT>
<STOCK_SECTIONS>
	<FOLDER>
		SS_NAME='HTMLDoc'
		DESCR='generates a single HTML output from the annotation passed in the context element'
		MATCHING_ET='xs:annotation'
		<BODY>
			<ELEMENT_ITER>
				DESCR='execute when no filtering by language needed:
Iterate by all <xs:appinfo> and/or <xs:documentation> elements found in the annotation
(see "Processing | Scope" tab)'
				COND='! getBooleanParam("proc.desc.xsd.annotation.documentation") ||
getParam("proc.desc.xsd.annotation.documentation.lang") == null'
				BREAK_PARENT_BLOCK='when-executed'
				TARGET_ETS={'xs:appinfo';'xs:documentation'}
				SCOPE='simple-location-rules'
				RULES={
					'* -> (xs:appinfo|xs:documentation)';
				}
				FILTER='instanceOf("xs:documentation")
 ? getBooleanParam("proc.desc.xsd.annotation.documentation")
 : getBooleanParam("proc.desc.xsd.annotation.appinfo")'
				FMT={
					sec.outputStyle='text-par';
				}
				<BODY>
					<TEMPLATE_CALL>
						TEMPLATE_FILE='../../doc/firstSentenceOutput.tpl'
					</TEMPLATE_CALL>
				</BODY>
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='otherwise, filtering by language specified:

Iterates by all <xs:documentation> (and possibly <xs:appinfo>) elements which are found by the location path \'xs:annotation/xs:(documentation|xs:appinfo)\' 
(see "Processing | Scope" tab).

<xs:documentation> elements must have the \'xml:lang\' attribute with the needed value. Filtering is specified directly within the location path.'
				BREAK_PARENT_BLOCK='when-output'
				TARGET_ETS={'xs:appinfo';'xs:documentation'}
				SCOPE='simple-location-rules'
				RULES={
					'* -> (xs:appinfo|xs:documentation)';
				}
				FILTER='instanceOf("xs:documentation") ? 
{
  getArrayParam(
    "proc.desc.xsd.annotation.documentation.lang"
  ).containsIgnoreCase (getAttrStringValue("xml:lang"))
} : {
 getBooleanParam("proc.desc.xsd.annotation.appinfo")
}'
				FMT={
					sec.outputStyle='text-par';
				}
				<BODY>
					<TEMPLATE_CALL>
						TEMPLATE_FILE='../../doc/firstSentenceOutput.tpl'
					</TEMPLATE_CALL>
				</BODY>
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='otherwise, no output has been generated still, seek documentation by alternative language
--
execute when filtering by alternative language is specified; see "Component | Enabling" tab.'
				COND='getParam("proc.desc.xsd.annotation.documentation.lang.alt") != null'
				TARGET_ET='xs:documentation'
				SCOPE='simple-location-rules'
				RULES={
					'* -> xs:documentation';
				}
				FILTER='getArrayParam(
  "proc.desc.xsd.annotation.documentation.lang.alt"
).containsIgnoreCase (getAttrStringValue("xml:lang"))'
				<BODY>
					<TEMPLATE_CALL>
						TEMPLATE_FILE='../../doc/firstSentenceOutput.tpl'
					</TEMPLATE_CALL>
				</BODY>
			</ELEMENT_ITER>
		</BODY>
	</FOLDER>
</STOCK_SECTIONS>
CHECKSUM='02xZF42j3bn6tHB5yFGC1x7hsqGhtMfMPPf6x6rAixw'
</DOCFLEX_TEMPLATE>