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
ROOT_ETS={'xs:%annotated';'xs:schema'}
<TEMPLATE_PARAMS>
	PARAM={
		param.name='proc.annotation';
		param.title='Annotations';
		param.title.style.bold='true';
		param.description='This group of parameters controls processing and formatting of annotations (the content of <b><code>&lt;xs:annotation&gt;</code></b> elements specified in XML schemas).
<p>
The annotation text, which appears in a particular <i>"Annotation"</i> section of the generate documentation, is produced from all &lt;xs:documentation&gt; elements found by the path:
<dl><dd>
<code><b><i>xs:annotated</i></b>/xs:annotation/xs:documentation</code>
</dd></dl>
where <code><i>\'xs:annotated\'</i></code> is the XSD element which defines either the XML schema itself (<code>\'xs:schema\'</code>) or a schema component (e.g. <code>\'xs:complexType\'</code>) being documented.
<p>
Multiple &lt;xs:documentation&gt; elements will produce different sections of the annotation text.';
		param.group='true';
	}
	PARAM={
		param.name='proc.annotation.appinfo';
		param.title='<appinfo>';
		param.title.style.bold='true';
		param.featureType='pro';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='proc.annotation.appinfo.source';
		param.title='Source URI';
		param.type='enum';
		param.enum.values='as_see_link;as_title;no';
	}
	PARAM={
		param.name='proc.annotation.documentation';
		param.title='<documentation>';
		param.title.style.bold='true';
		param.group='true';
		param.group.defaultState='expanded';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='proc.annotation.documentation.lang';
		param.title='Language';
		param.group='true';
		param.type='string';
		param.trimSpaces='true';
		param.noEmptyString='true';
		param.list='true';
		param.list.noEmptyList='true';
	}
	PARAM={
		param.name='proc.annotation.documentation.lang.alt';
		param.title='Alternative Language';
		param.type='string';
		param.trimSpaces='true';
		param.noEmptyString='true';
		param.list='true';
		param.list.noEmptyList='true';
	}
	PARAM={
		param.name='proc.annotation.documentation.source';
		param.title='Source URI';
		param.type='enum';
		param.enum.values='as_see_link;as_title;no';
	}
	PARAM={
		param.name='proc.annotation.tags';
		param.title='Tags';
		param.title.style.bold='true';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='proc.annotation.tags.xhtml';
		param.title='XHTML';
		param.group='true';
		param.group.defaultState='expanded';
		param.type='boolean';
	}
	PARAM={
		param.name='proc.annotation.tags.xhtml.schemas';
		param.title='For schemas';
		param.title.style.italic='true';
		param.group='true';
	}
	PARAM={
		param.name='proc.annotation.tags.xhtml.schemas.include';
		param.title='Include';
		param.title.style.italic='true';
		param.type='string';
		param.trimSpaces='true';
		param.collapseSpaces='true';
		param.noEmptyString='true';
		param.list='true';
	}
	PARAM={
		param.name='proc.annotation.tags.xhtml.schemas.exclude';
		param.title='Exclude';
		param.title.style.italic='true';
		param.type='string';
		param.trimSpaces='true';
		param.collapseSpaces='true';
		param.noEmptyString='true';
		param.list='true';
	}
	PARAM={
		param.name='proc.annotation.tags.xhtml.schemas.this';
		param.title='This schema';
		param.title.style.italic='true';
		param.description='Indicates if processing of XHTML tags is enabled for this particular schema (to which the annotated definition belongs).

This parameter is calculated dynamically from other parameters and the context element passed to the template.';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("proc.annotation.tags.xhtml")
&&
{
  schemaFileName = getXMLDocument().getAttrValue("xmlName");

  includeFiles = getArrayParam("proc.annotation.tags.xhtml.schemas.include");
  excludeFiles = getArrayParam("proc.annotation.tags.xhtml.schemas.exclude");

  (includeFiles.isEmpty() || includeFiles.contains (schemaFileName)) &&
  ! excludeFiles.contains (schemaFileName)
}';
		param.fixed='true';
	}
	PARAM={
		param.name='proc.annotation.tags.xhtml.images';
		param.title='Include Images';
		param.group='true';
		param.group.defaultState='expanded';
		param.type='boolean';
	}
	PARAM={
		param.name='proc.annotation.tags.xhtml.images.copy';
		param.title='Copy Images';
		param.type='boolean';
	}
	PARAM={
		param.name='proc.annotation.tags.other';
		param.title='Other Tags';
		param.type='enum';
		param.enum.values='show;xhtml;no';
	}
	PARAM={
		param.name='proc.annotation.encode.markup.chars';
		param.title='Encode markup characters';
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
	CHAR_STYLE={
		style.name='Mono (Small)';
		style.id='cs3';
		text.font.name='Courier New';
		text.font.size='8';
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
		DESCR='find the first <xs:annotation> child and set it as the context element
(see "New Context Element")'
		CONTEXT_ELEMENT_EXPR='findChild ("xs:annotation")'
		MATCHING_ET='xs:annotation'
		<BODY>
			<AREA_SEC>
				COND='getBooleanParam("proc.annotation.tags.xhtml.schemas.this")'
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
								FORMULA='proc_documentation = getBooleanParam("proc.annotation.documentation");
proc_appinfo = getBooleanParam("proc.annotation.appinfo");

// the following works basically the same as the content of "HTMLDoc" stock-section;
// the produced pieces of text are received in the \'texts\' array variable

texts = Vector();

(proc_documentation &&
  (langs = getArrayParam("proc.annotation.documentation.lang")) != null) ?
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
    (langs = getArrayParam("proc.annotation.documentation.lang.alt")) != null) ? 
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
 ? firstSentence (text, ! getBooleanParam ("proc.annotation.encode.markup.chars"), true)
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
	<ATTR_ITER>
		SS_NAME='AttrList'
		DESCR='generates the list of the element\'s attributes'
		SCOPE='enumerated-attrs'
		EXCL_PASSED=false
		FILTER='name = iterator.attr.name;
name != "xmlns" && ! name.startsWith ("xmlns:")'
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='none';
		}
		<BODY>
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DELIMITER>
							</DELIMITER>
							<DATA_CTRL>
								FORMULA='iterator.attr.name'
							</DATA_CTRL>
							<TEXT_CTRL>
								TEXT='="'
							</TEXT_CTRL>
							<DATA_CTRL>
								FORMULA='encodeXMLChars (
  iterator.attr.rawValue,
  true, true, true, false
)'
							</DATA_CTRL>
							<TEXT_CTRL>
								TEXT='"'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</ATTR_ITER>
	<FOLDER>
		SS_NAME='HTMLDoc'
		DESCR='generates a single HTML output from the annotation passed in the context element'
		MATCHING_ET='xs:annotation'
		<BODY>
			<ELEMENT_ITER>
				DESCR='execute when no filtering by language needed:
Iterate by all <xs:appinfo> and/or <xs:documentation> elements found in the annotation
(see "Processing | Scope" tab)'
				COND='! getBooleanParam("proc.annotation.documentation") ||
getParam("proc.annotation.documentation.lang") == null'
				BREAK_PARENT_BLOCK='when-executed'
				TARGET_ETS={'xs:appinfo';'xs:documentation'}
				SCOPE='simple-location-rules'
				RULES={
					'* -> (xs:appinfo|xs:documentation)';
				}
				FILTER='instanceOf("xs:documentation")
 ? getBooleanParam("proc.annotation.documentation")
 : getBooleanParam("proc.annotation.appinfo")'
				FMT={
					sec.outputStyle='text-par';
				}
				<BODY>
					<ELEMENT_ITER>
						DESCR='iterate by all nodes contained in <xs:documentation>/<xs:appinfo> element'
						TARGET_ET='<ANY>'
						SCOPE='simple-location-rules'
						RULES={
							'* -> *';
						}
						FMT={
							txtfl.delimiter.type='none';
						}
						<BODY>
							<SS_CALL>
								DESCR='processing of each node'
								SS_NAME='Node'
								FMT={
									sec.indent.left='8.3';
								}
							</SS_CALL>
						</BODY>
					</ELEMENT_ITER>
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
    "proc.annotation.documentation.lang"
  ).containsIgnoreCase (getAttrStringValue("xml:lang"))
} : {
 getBooleanParam("proc.annotation.appinfo")
}'
				FMT={
					sec.outputStyle='text-par';
				}
				<BODY>
					<ELEMENT_ITER>
						DESCR='iterate by all nodes contained in <xs:documentation>/<xs:appinfo> element'
						TARGET_ET='<ANY>'
						SCOPE='simple-location-rules'
						RULES={
							'* -> *';
						}
						FMT={
							txtfl.delimiter.type='none';
						}
						<BODY>
							<SS_CALL>
								DESCR='processing of each node'
								SS_NAME='Node'
								FMT={
									sec.indent.left='8.3';
								}
							</SS_CALL>
						</BODY>
					</ELEMENT_ITER>
				</BODY>
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='otherwise, no output generated still, seek documentation by alternative language
--
execute when filtering by alternative language is specified; see "Component | Enabling" tab.'
				COND='getParam("proc.annotation.documentation.lang.alt") != null'
				TARGET_ET='xs:documentation'
				SCOPE='simple-location-rules'
				RULES={
					'* -> xs:documentation';
				}
				FILTER='getArrayParam(
  "proc.annotation.documentation.lang.alt"
).containsIgnoreCase (getAttrStringValue("xml:lang"))'
				<BODY>
					<ELEMENT_ITER>
						DESCR='iterate by all nodes contained in <xs:documentation> element'
						TARGET_ET='<ANY>'
						SCOPE='simple-location-rules'
						RULES={
							'* -> *';
						}
						FMT={
							txtfl.delimiter.type='none';
						}
						<BODY>
							<SS_CALL>
								DESCR='processing of each node'
								SS_NAME='Node'
								FMT={
									sec.indent.left='8.3';
								}
							</SS_CALL>
						</BODY>
					</ELEMENT_ITER>
				</BODY>
			</ELEMENT_ITER>
		</BODY>
	</FOLDER>
	<FOLDER>
		SS_NAME='Node'
		DESCR='processing the documentation node'
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='none';
		}
		<BODY>
			<AREA_SEC>
				DESCR='case of text or character data node'
				MATCHING_ETS={'#CDATA';'#TEXT'}
				BREAK_PARENT_BLOCK='when-executed'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								FORMULA='text = contextElement.value.toString();

text = stockSection.recursionDepth > 0 
         ? text.collapseSpaces (false)
         : text.collapseSpaces (iterator.isFirstItem, iterator.isLastItem);

getBooleanParam ("proc.annotation.encode.markup.chars") ?
  encodeXMLChars (text) : text'
								FMT={
									ctrl.option.text.noEmptyOutput='true';
								}
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<ELEMENT_ITER>
				DESCR='otherwise, if the current element belongs to the XHTML namespace and processing of XHTML tags is enabled, reprint the element\'s tags so as they look as an ordinary HTML and process the element\'s content.'
				COND='getBooleanParam("proc.annotation.tags.xhtml.schemas.this")
&&
(belongsToNS ("xhtml") ||
 hasParamValue("proc.annotation.tags.other", "xhtml"))'
				BREAK_PARENT_BLOCK='when-executed'
				TARGET_ET='<ANY>'
				SCOPE='simple-location-rules'
				RULES={
					'* -> *';
				}
				FILTER='! contextElement.pseudoElement ||
instanceOf ("#TEXT | #CDATA")'
				<BODY>
					<SS_CALL>
						DESCR='calls this stock-section recursively'
						SS_NAME='Node'
						FMT={
							sec.indent.left='8.3';
						}
					</SS_CALL>
				</BODY>
				<HEADER>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='<'
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='contextElement.localName'
									</DATA_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='AttrList'
									</SS_CALL_CTRL>
									<TEXT_CTRL>
										TEXT='>'
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
								<CTRLS>
									<TEXT_CTRL>
										TEXT='</'
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='contextElement.localName'
									</DATA_CTRL>
									<TEXT_CTRL>
										TEXT='>'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</FOOTER>
				<ELSE>
					DESCR='this is executed when no child nodes encountered -- the case of a simple element'
					<AREA_SEC>
						COND='! contextElement.localName.equalsIgnoreCase ("img")'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='<'
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='contextElement.localName'
									</DATA_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='AttrList'
									</SS_CALL_CTRL>
									<TEXT_CTRL>
										TEXT='>'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</ELSE>
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='otherwise, in case of any non-XHTML element, only process the element content'
				TARGET_ET='<ANY>'
				SCOPE='simple-location-rules'
				RULES={
					'* -> *';
				}
				FILTER='! contextElement.pseudoElement ||
instanceOf ("#TEXT | #CDATA")'
				<BODY>
					<SS_CALL>
						DESCR='calls this stock-section recursively'
						SS_NAME='Node'
						FMT={
							sec.indent.left='8.3';
						}
					</SS_CALL>
				</BODY>
			</ELEMENT_ITER>
		</BODY>
	</FOLDER>
</STOCK_SECTIONS>
CHECKSUM='nXtnNUeDfGSRtZqQ1fhkDxPDaA22YCZnogwrCvftIN0'
</DOCFLEX_TEMPLATE>