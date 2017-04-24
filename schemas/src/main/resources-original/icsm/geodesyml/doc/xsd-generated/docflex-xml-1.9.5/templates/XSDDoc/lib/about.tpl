<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2005-10-08 05:00:00'
LAST_UPDATE='2014-07-05 20:02:50'
DESIGNER_TOOL='DocFlex SDK 1.x'
DESIGNER_LICENSE_TYPE='Filigris Works Team'
APP_ID='docflex-xml-xsddoc2'
APP_NAME='DocFlex/XML XSDDoc'
APP_VER='2.8.1'
APP_AUTHOR='Copyright © 2005-2014 Filigris Works, Leonid Rudy Softwareprodukte. All rights reserved.'
TEMPLATE_TYPE='DocumentTemplate'
DSM_TYPE_ID='xsddoc'
ROOT_ET='<ANY>'
<TEMPLATE_PARAMS>
	PARAM={
		param.name='show';
		param.title='Show';
		param.title.style.bold='true';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='show.about';
		param.title='About (footer)';
		param.type='enum';
		param.enum.values='full;short;none';
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
		style.name='About';
		style.id='cs1';
		text.font.name='Arial';
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
		FMT={
			sec.outputStyle='table';
			text.style='cs1';
			text.option.renderNLs='false';
			table.sizing='Relative';
			table.cell.padding.both='2.5';
			table.bkgr.color='#E7EDF6';
			table.border.style='solid';
			table.border.color='#999999';
			table.page.keepTogether='true';
			table.option.borderStylesInHTML='true';
		}
		<AREA>
			<HR>
				FMT={
					rule.style='dashed';
					rule.color='#B2B2B2';
					par.margin.top='10';
					par.margin.bottom='5';
					par.page.keepWithNext='true';
				}
			</HR>
			<CTRL_GROUP>
				<CTRLS>
					<SS_CALL_CTRL>
						SS_NAME='Details'
						FMT={
							ctrl.size.width='499.5';
							ctrl.size.height='17.3';
						}
					</SS_CALL_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
</ROOT>
<STOCK_SECTIONS>
	<FOLDER>
		SS_NAME='Details'
		<BODY>
			<AREA_SEC>
				COND='hasParamValue("show.about", "short")'
				BREAK_PARENT_BLOCK='when-executed'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='XML schema documentation generated with'
							</TEXT_CTRL>
							<DATA_CTRL>
								FORMULA='output.generator.name'
								<URL_HLINK>
									COND='output.generator.name == "DocFlex/XML RE"'
									TARGET_FRAME_EXPR='"_blank"'
									TARGET_FRAME_ALWAYS
									URL_EXPR='"http://www.filigris.com/docflex-xml/#docflex-xml-re"'
								</URL_HLINK>
								<URL_HLINK>
									TARGET_FRAME_EXPR='"_blank"'
									TARGET_FRAME_ALWAYS
									URL_EXPR='"http://www.filigris.com/docflex-xml/"'
								</URL_HLINK>
							</DATA_CTRL>
							<DATA_CTRL>
								FORMULA='output.generator.version'
							</DATA_CTRL>
							<TEXT_CTRL>
								TEXT='using'
							</TEXT_CTRL>
							<DATA_CTRL>
								FORMULA='template.appName'
								<URL_HLINK>
									TARGET_FRAME_EXPR='"_blank"'
									TARGET_FRAME_ALWAYS
									URL_EXPR='"http://www.filigris.com/docflex-xml/xsddoc/"'
								</URL_HLINK>
							</DATA_CTRL>
							<DATA_CTRL>
								FORMULA='template.appVersion'
							</DATA_CTRL>
							<TEXT_CTRL>
								TEXT='template set'
							</TEXT_CTRL>
							<DELIMITER>
								FMT={
									txtfl.delimiter.type='text';
									txtfl.delimiter.text='. ';
								}
							</DELIMITER>
							<SS_CALL_CTRL>
								COND='checkVar ("has-diagrams")'
								SS_NAME='Integration Notice'
							</SS_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<FOLDER>
				COND='hasParamValue("show.about", "full")'
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								FMT={
									par.margin.bottom='6.7';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='This XML schema documentation has been generated with'
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='output.generator.name'
										<URL_HLINK>
											COND='output.generator.name == "DocFlex/XML RE"'
											TARGET_FRAME_EXPR='"_blank"'
											TARGET_FRAME_ALWAYS
											URL_EXPR='"http://www.filigris.com/docflex-xml/#docflex-xml-re"'
										</URL_HLINK>
										<URL_HLINK>
											TARGET_FRAME_EXPR='"_blank"'
											TARGET_FRAME_ALWAYS
											URL_EXPR='"http://www.filigris.com/docflex-xml/"'
										</URL_HLINK>
									</DATA_CTRL>
									<DATA_CTRL>
										FORMULA='output.generator.version'
									</DATA_CTRL>
									<TEXT_CTRL>
										TEXT='using'
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='template.appName'
										<URL_HLINK>
											TARGET_FRAME_EXPR='"_blank"'
											TARGET_FRAME_ALWAYS
											URL_EXPR='"http://www.filigris.com/docflex-xml/xsddoc/"'
										</URL_HLINK>
									</DATA_CTRL>
									<DATA_CTRL>
										FORMULA='template.appVersion'
									</DATA_CTRL>
									<TEXT_CTRL>
										TEXT='template set.'
									</TEXT_CTRL>
									<SS_CALL_CTRL>
										COND='checkVar ("has-diagrams")'
										SS_NAME='Integration Notice'
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
							<CTRL_GROUP>
								FMT={
									par.margin.bottom='6.7';
								}
								<CTRLS>
									<DATA_CTRL>
										FORMULA='output.generator.name'
										<URL_HLINK>
											COND='output.generator.name == "DocFlex/XML RE"'
											TARGET_FRAME_EXPR='"_blank"'
											TARGET_FRAME_ALWAYS
											URL_EXPR='"http://www.filigris.com/docflex-xml/#docflex-xml-re"'
										</URL_HLINK>
										<URL_HLINK>
											TARGET_FRAME_EXPR='"_blank"'
											TARGET_FRAME_ALWAYS
											URL_EXPR='"http://www.filigris.com/docflex-xml/"'
										</URL_HLINK>
									</DATA_CTRL>
									<PANEL>
										COND='output.generator.name == "DocFlex/XML RE"'
										FMT={
											ctrl.size.width='219';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='is a reduced edition of'
													</TEXT_CTRL>
													<TEXT_CTRL>
														TEXT='DocFlex/XML'
														<URL_HLINK>
															TARGET_FRAME_EXPR='"_blank"'
															TARGET_FRAME_ALWAYS
															URL_EXPR='"http://www.filigris.com/docflex-xml/"'
														</URL_HLINK>
													</TEXT_CTRL>
													<DELIMITER>
														FMT={
															txtfl.delimiter.type='text';
															txtfl.delimiter.text=', ';
														}
													</DELIMITER>
													<TEXT_CTRL>
														TEXT='which'
													</TEXT_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
									<TEXT_CTRL>
										TEXT='is a tool for programming and running highly sophisticated documentation and reports generators by the data obtained from
any kind of XML files. The actual doc-generators are implemented in the form of special templates that are designed visually
using a high-quality Template Designer GUI basing on the XML schema (or DTD) files describing the data source XML.'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
							<CTRL_GROUP>
								FMT={
									par.margin.bottom='6.7';
								}
								<CTRLS>
									<DATA_CTRL>
										FORMULA='template.appName'
										<URL_HLINK>
											TARGET_FRAME_EXPR='"_blank"'
											TARGET_FRAME_ALWAYS
											URL_EXPR='"http://www.filigris.com/docflex-xml/xsddoc/"'
										</URL_HLINK>
									</DATA_CTRL>
									<TEXT_CTRL>
										TEXT='is a commercial template application of'
									</TEXT_CTRL>
									<TEXT_CTRL>
										TEXT='DocFlex/XML'
										<URL_HLINK>
											TARGET_FRAME_EXPR='"_blank"'
											TARGET_FRAME_ALWAYS
											URL_EXPR='"http://www.filigris.com/docflex-xml/"'
										</URL_HLINK>
									</TEXT_CTRL>
									<TEXT_CTRL>
										TEXT='that implements a high-quality XML Schema documentation generator with simultaneous support of framed multi-file HTML,
single-file HTML and RTF output formats.  (More formats are planned in the future).'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
							<CTRL_GROUP>
								FMT={
									par.margin.bottom='6.7';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='A commercial license for'
									</TEXT_CTRL>
									<DELIMITER>
										FMT={
											txtfl.delimiter.type='text';
											txtfl.delimiter.text=' "';
										}
									</DELIMITER>
									<DATA_CTRL>
										FORMULA='template.appName'
										<URL_HLINK>
											TARGET_FRAME_EXPR='"_blank"'
											TARGET_FRAME_ALWAYS
											URL_EXPR='"http://www.filigris.com/docflex-xml/xsddoc/"'
										</URL_HLINK>
									</DATA_CTRL>
									<DELIMITER>
										FMT={
											txtfl.delimiter.type='text';
											txtfl.delimiter.text='" ';
										}
									</DELIMITER>
									<TEXT_CTRL>
										TEXT='will allow you:'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						FMT={
							sec.outputStyle='list';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='To configure the generated documentation so much as you want.
Thanks to our template technology, it was possible to support > 400 template parameters, which work the same as "options"
of ordinary doc-generators. The parameters are organized in nested groups, which form a parameter tree. Most of them
have their default values calculated dynamically from a few primary parameters. So, you\'ll never need to specify all of them.
That will give you swift and effective control over the generated content!'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='To use certain features disabled in the free mode (such as the full documenting of substitution groups).'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='To select only the initial, imported, included, redefined XML schemas to be documented
or only those directly specified by name.'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='To include only XML schema components specified by name.'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='To document local element components both globally and locally (similar to attributes).'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='To allow/suppress unification of local elements by type.'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='To enable/disable reproducing of namespace prefixes.'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='To use'
									</TEXT_CTRL>
									<TEXT_CTRL>
										TEXT='PlainDoc.tpl'
										<URL_HLINK>
											TARGET_FRAME_EXPR='"_blank"'
											TARGET_FRAME_ALWAYS
											URL_EXPR='"http://www.filigris.com/docflex-xml/xsddoc/#PlainDoc.tpl"'
										</URL_HLINK>
									</TEXT_CTRL>
									<TEXT_CTRL>
										TEXT='main template to generate all the XML schema documentation in a signle-file form as both HTML
and incredible quality RTF output.'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='To format your annotations with XHTML tags and reproduce that formatting both in HTML and RTF output.'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='To insert images in your annotations using XHTML <img> tags (supported both in HTML and RTF output).'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='To remove this very advertisement text!'
										FMT={
											text.color.foreground='#CC0000';
										}
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								FMT={
									par.margin.top='6.7';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Once having only such a license, you will be able to run the fully-featured XML schema documentation generator both with'
									</TEXT_CTRL>
									<TEXT_CTRL>
										TEXT='DocFlex/XML (Full Edition)'
										<URL_HLINK>
											TARGET_FRAME_EXPR='"_blank"'
											TARGET_FRAME_ALWAYS
											URL_EXPR='"http://www.filigris.com/docflex-xml/#full_edition"'
										</URL_HLINK>
									</TEXT_CTRL>
									<TEXT_CTRL>
										TEXT='and with'
									</TEXT_CTRL>
									<TEXT_CTRL>
										TEXT='DocFlex/XML RE'
										<URL_HLINK>
											TARGET_FRAME_EXPR='"_blank"'
											TARGET_FRAME_ALWAYS
											URL_EXPR='"http://www.filigris.com/docflex-xml/#docflex-xml-re"'
										</URL_HLINK>
									</TEXT_CTRL>
									<DELIMITER>
										FMT={
											txtfl.delimiter.type='text';
											txtfl.delimiter.text=', ';
										}
									</DELIMITER>
									<TEXT_CTRL>
										TEXT='which is a reduced free edition containing only the template interpretor / output generator. No other licenses will be required!'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
							<CTRL_GROUP>
								FMT={
									par.margin.top='6.7';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='But this is not all. In addition to it, a commercial license for'
									</TEXT_CTRL>
									<DELIMITER>
										FMT={
											txtfl.delimiter.type='text';
											txtfl.delimiter.text=' "';
										}
									</DELIMITER>
									<TEXT_CTRL>
										TEXT='DocFlex/XML SDK'
										<URL_HLINK>
											TARGET_FRAME_EXPR='"_blank"'
											TARGET_FRAME_ALWAYS
											URL_EXPR='"http://www.filigris.com/docflex-xml/#docflex-xml-sdk"'
										</URL_HLINK>
									</TEXT_CTRL>
									<DELIMITER>
										FMT={
											txtfl.delimiter.type='text';
											txtfl.delimiter.text='" ';
										}
									</DELIMITER>
									<TEXT_CTRL>
										TEXT='will allow you to modify the'
									</TEXT_CTRL>
									<TEXT_CTRL>
										TEXT='XSDDoc'
										<URL_HLINK>
											TARGET_FRAME_EXPR='"_blank"'
											TARGET_FRAME_ALWAYS
											URL_EXPR='"http://www.filigris.com/docflex-xml/xsddoc/"'
										</URL_HLINK>
									</TEXT_CTRL>
									<TEXT_CTRL>
										TEXT='templates themselves as much as you want. You will be able to achieve whatever was impossible to do with the template parameters only.
And, of course, you could develop any template applications by your own!'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
							<CTRL_GROUP>
								FMT={
									text.color.foreground='#CC0000';
									par.margin.top='6.7';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='Please note that by purchasing a license for this software, you not only acquire a useful tool,
you will also make an important investment in its future development, the results of which you could enjoy later by yourself.
Every single your purchase matters and makes a difference for us!'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
							<CTRL_GROUP>
								FMT={
									par.margin.top='6.7';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='To purchase a license, please follow this link:'
									</TEXT_CTRL>
									<TEXT_CTRL>
										TEXT='http://www.filigris.com/shop/'
										<URL_HLINK>
											TARGET_FRAME_EXPR='"_blank"'
											TARGET_FRAME_ALWAYS
											URL_EXPR='"http://www.filigris.com/shop/"'
										</URL_HLINK>
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</FOLDER>
		</BODY>
	</FOLDER>
	<FOLDER>
		SS_NAME='Integration Notice'
		<BODY>
			<AREA_SEC>
				COND='getBooleanParam("integration.XMLSpy")'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='All content model diagrams generated by'
							</TEXT_CTRL>
							<TEXT_CTRL>
								TEXT='Altova XMLSpy'
								<URL_HLINK>
									TARGET_FRAME_EXPR='"_blank"'
									TARGET_FRAME_ALWAYS
									URL_EXPR='"http://www.altova.com/xmlspy"'
								</URL_HLINK>
							</TEXT_CTRL>
							<TEXT_CTRL>
								TEXT='via'
							</TEXT_CTRL>
							<TEXT_CTRL>
								TEXT='DocFlex/XML XMLSpy Integration'
								<URL_HLINK>
									TARGET_FRAME_EXPR='"_blank"'
									TARGET_FRAME_ALWAYS
									URL_EXPR='"http://www.filigris.com/docflex-xml/XMLSpy/"'
								</URL_HLINK>
							</TEXT_CTRL>
							<DELIMITER>
								FMT={
									txtfl.delimiter.type='none';
								}
							</DELIMITER>
							<TEXT_CTRL>
								TEXT='.'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				COND='getBooleanParam("integration.OxygenXML")'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='All component diagrams generated by'
							</TEXT_CTRL>
							<TEXT_CTRL>
								TEXT='Oxygen XML Editor'
								<URL_HLINK>
									TARGET_FRAME_EXPR='"_blank"'
									TARGET_FRAME_ALWAYS
									URL_EXPR='"http://www.oxygenxml.com"'
								</URL_HLINK>
							</TEXT_CTRL>
							<TEXT_CTRL>
								TEXT='via'
							</TEXT_CTRL>
							<TEXT_CTRL>
								TEXT='DocFlex/XML OxygenXML Integration'
								<URL_HLINK>
									TARGET_FRAME_EXPR='"_blank"'
									TARGET_FRAME_ALWAYS
									URL_EXPR='"http://www.filigris.com/docflex-xml/OxygenXML/"'
								</URL_HLINK>
							</TEXT_CTRL>
							<DELIMITER>
								FMT={
									txtfl.delimiter.type='none';
								}
							</DELIMITER>
							<TEXT_CTRL>
								TEXT='.'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</FOLDER>
</STOCK_SECTIONS>
CHECKSUM='C8qV0ihH9RqaI4SMXWAj8rAIe+xGeY8A58pZH5zRFgk'
</DOCFLEX_TEMPLATE>