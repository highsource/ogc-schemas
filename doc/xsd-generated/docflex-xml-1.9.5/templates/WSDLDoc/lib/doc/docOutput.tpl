<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2012-07-11 01:30:07'
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
		DESCR='if XHTML markup is processed and the default namespace is XHTML (see "Enabling" tab), turn off any rendering of the line breaks (see: Formatting | Text | Options | Render Line breaks)
--
iterate by all nodes contained in <xs:documentation> element;
the output is set to text flow and the rendering of embedded HTML is switched on (see  Formatting | Text Flow tab)'
		COND='testDefaultNS ("xhtml")
&&
getBooleanParam("proc.desc.tags.xhtml.files.this")'
		BREAK_PARENT_BLOCK='when-executed'
		TARGET_ET='<ANY>'
		SCOPE='simple-location-rules'
		RULES={
			'* -> *';
		}
		FILTER='! contextElement.pseudoElement ||
instanceOf ("#TEXT | #CDATA")'
		FMT={
			sec.outputStyle='text-par';
			text.option.renderNLs='false';
			txtfl.delimiter.type='none';
			txtfl.ehtml.render='true';
		}
		<BODY>
			<SS_CALL>
				DESCR='processing of each node'
				SS_NAME='Node'
				PARAMS_EXPR='Array (true)'
			</SS_CALL>
		</BODY>
	</ELEMENT_ITER>
	<ELEMENT_ITER>
		DESCR='otherwise, the rendering of line breaks is default
--
iterate by all nodes contained in <xs:documentation> element;
the output is set to text flow and the rendering of embedded HTML is switched on (see  Formatting | Text Flow tab)'
		TARGET_ET='<ANY>'
		SCOPE='simple-location-rules'
		RULES={
			'* -> *';
		}
		FILTER='! contextElement.pseudoElement ||
instanceOf ("#TEXT | #CDATA")'
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='none';
			txtfl.ehtml.render='true';
		}
		<BODY>
			<SS_CALL>
				DESCR='processing of each node'
				SS_NAME='Node'
				PARAMS_EXPR='Array (true)'
			</SS_CALL>
		</BODY>
	</ELEMENT_ITER>
</ROOT>
<STOCK_SECTIONS>
	<FOLDER>
		SS_NAME='<img>'
		COND='getBooleanParam("proc.desc.tags.xhtml.images")'
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='none';
		}
		<BODY>
			<ATTR_ITER>
				DESCR='generates the list of the element\'s attributes'
				SCOPE='enumerated-attrs'
				EXCL_PASSED=false
				FMT={
					txtfl.delimiter.type='none';
				}
				<BODY>
					<AREA_SEC>
						COND='iterator.attr.name == "src"'
						BREAK_PARENT_BLOCK='when-executed'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT=' src="'
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='srcURL = resolveURL (
  iterator.value.toString(),
  getXMLDocument().getAttrStringValue("xmlURI")
);

output.format.name == "HTML" && 
  getBooleanParam("proc.desc.tags.xhtml.images.copy") &&
    (dstFile = copyFile (srcURL, output.docFilesDir)) != "" 
? makeRelativePath (dstFile, output.dir, true) : srcURL'
									</DATA_CTRL>
									<TEXT_CTRL>
										TEXT='"'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
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
		</BODY>
		<HEADER>
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='<img'
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
								TEXT='>'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</FOOTER>
	</FOLDER>
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
		SS_NAME='Node'
		DESCR='processing the documentation node; param indicates whether to collapse whitespaces'
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

stockSection.recursionDepth > 0 ?
{
  stockSection.param.toBoolean() ? 
    text = text.collapseSpaces (false)
} : {
  text = text.collapseSpaces (
           iterator.isFirstItem, iterator.isLastItem)
};

getBooleanParam ("proc.desc.encode.markup.chars") &&
output.format.renderEmbeddedHTML
 ? encodeXMLChars (text) : text'
								FMT={
									ctrl.option.text.noEmptyOutput='true';
								}
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<ELEMENT_ITER>
				DESCR='otherwise, this is element node
--
if the current element belongs to the XHTML namespace and processing of XHTML tags is enabled, reprint the element\'s tags so as they look as an ordinary HTML and process the element\'s content.'
				COND='getBooleanParam("proc.desc.tags.xhtml.files.this")
&&
(belongsToNS ("xhtml") ||
 hasParamValue("proc.desc.tags.other", "xhtml"))'
				INIT_EXPR='stockSection.setVar (
 "tag", contextElement.localName.toLowerCase()
)'
				BREAK_PARENT_BLOCK='when-executed'
				TARGET_ET='<ANY>'
				SCOPE='simple-location-rules'
				RULES={
					'* -> *';
				}
				FILTER='! contextElement.pseudoElement ||
instanceOf ("#TEXT | #CDATA")'
				FMT={
					text.option.renderNLs='false';
				}
				<BODY>
					<SS_CALL>
						DESCR='calls this stock-section recursively'
						SS_NAME='Node'
						PARAMS_EXPR='stockSection.getVar("tag") == "pre" ? 
  Array (false) : stockSection.params'
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
					<SS_CALL>
						COND='stockSection.getVar("tag") == "img"'
						BREAK_PARENT_BLOCK='when-executed'
						SS_NAME='<img>'
					</SS_CALL>
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
				</ELSE>
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='otherwise, this is non-XHTML element
--
if showing of other tags is specified, reprint the element\'s tags so that they appear in the documentation the same as they are defined in XML. 

The "Formatting | Text Flow | Render embeded HTML" property is disabled at each Area Section printing the tag.'
				COND='hasParamValue("proc.desc.tags.other", "show")'
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
						PARAMS_EXPR='stockSection.params'
						FMT={
							sec.indent.left='8.3';
						}
					</SS_CALL>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							txtfl.ehtml.render='false';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='<'
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='contextElement.qName'
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
						FMT={
							txtfl.ehtml.render='false';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='</'
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='contextElement.qName'
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
						FMT={
							txtfl.ehtml.render='false';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='<'
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='contextElement.qName'
									</DATA_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='AttrList'
									</SS_CALL_CTRL>
									<TEXT_CTRL>
										TEXT='/>'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</ELSE>
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='otherwise, only process the element content'
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
						PARAMS_EXPR='stockSection.params'
						FMT={
							sec.indent.left='8.3';
						}
					</SS_CALL>
				</BODY>
			</ELEMENT_ITER>
		</BODY>
	</FOLDER>
</STOCK_SECTIONS>
CHECKSUM='svY94AfwtN7CHI50jRncWLCneF4?+97EIinjjON359w'
</DOCFLEX_TEMPLATE>