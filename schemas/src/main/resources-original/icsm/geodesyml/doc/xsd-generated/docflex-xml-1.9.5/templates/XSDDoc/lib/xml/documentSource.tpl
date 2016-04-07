<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2013-07-22 07:14:42'
LAST_UPDATE='2014-07-05 20:02:51'
DESIGNER_TOOL='DocFlex SDK 1.x'
DESIGNER_LICENSE_TYPE='Filigris Works Team'
APP_ID='docflex-xml-xsddoc2'
APP_NAME='DocFlex/XML XSDDoc'
APP_VER='2.8.1'
APP_AUTHOR='Copyright © 2005-2014 Filigris Works, Leonid Rudy Softwareprodukte. All rights reserved.'
TEMPLATE_TYPE='DocumentTemplate'
DSM_TYPE_ID='xsddoc'
ROOT_ET='#DOCUMENT'
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$mainXSD';
		param.type='GOMElement';
	}
	PARAM={
		param.name='$bookmark.xmlns';
		param.type='boolean';
	}
	PARAM={
		param.name='$bookmark.elements';
		param.type='boolean';
	}
	PARAM={
		param.name='$remove.anns';
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
		style.name='Hyperlink (blended in)';
		style.id='cs3';
		text.decor.underline='true';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s1';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='XML Source Comment';
		style.id='cs4';
		text.font.name='Courier New';
		text.font.size='8';
		text.color.foreground='#4D4D4D';
	}
	CHAR_STYLE={
		style.name='XML Source Comment Markup';
		style.id='cs5';
		text.font.name='Verdana';
		text.font.size='8';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='XML Source DOCTYPE';
		style.id='cs6';
		text.font.name='Verdana';
		text.font.size='8';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='XML Source Internal Subset';
		style.id='cs7';
		text.font.name='Courier New';
		text.font.size='8';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='XML Source Processing Instruction';
		style.id='cs8';
		text.font.name='Verdana';
		text.font.size='8';
		text.color.foreground='#0000FF';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
}
<ROOT>
	<AREA_SEC>
		DESCR='XML declaration'
		COND='getAttrValue("xmlDecl") != ""'
		<AREA>
			<CTRL_GROUP>
				FMT={
					txtfl.delimiter.type='none';
				}
				<CTRLS>
					<DATA_CTRL>
						ATTR='xmlDecl'
						FMT={
							text.style='cs8';
						}
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<ELEMENT_ITER>
		DESCR='iterates by all nodes in the XML'
		TARGET_ET='<ANY>'
		SCOPE='simple-location-rules'
		RULES={
			'* -> *';
		}
		<BODY>
			<FOLDER>
				DESCR='processes <!DOCTYPE> node'
				MATCHING_ET='#DOCTYPE'
				BREAK_PARENT_BLOCK='when-executed'
				<BODY>
					<ELEMENT_ITER>
						DESCR='print Internal Subset'
						INIT_EXPR='thisContext.setVar ("comment", false)'
						COLLAPSED
						TARGET_ET='#CUSTOM'
						SCOPE='custom'
						ELEMENT_ENUM_EXPR='breakString (
  getAttrStringValue("internalSubset").trim(),
  Array ("<!--", "-->"),
  false,
  true
).toCustomElements()'
						FMT={
							sec.outputStyle='text-par';
							txtfl.delimiter.type='none';
							par.margin.left='9';
						}
						<BODY>
							<FOLDER>
								DESCR='comments not started'
								COND='! thisContext.getBooleanVar ("comment")'
								BREAK_PARENT_BLOCK='when-executed'
								<BODY>
									<AREA_SEC>
										DESCR='start of comments'
										COND='contextElement.value == "<!--"'
										INIT_EXPR='thisContext.setVar ("comment", true)'
										BREAK_PARENT_BLOCK='when-executed'
										<AREA>
											<CTRL_GROUP>
												FMT={
													txtfl.delimiter.type='none';
												}
												<CTRLS>
													<TEXT_CTRL>
														TEXT='<!--'
														FMT={
															text.style='cs5';
														}
													</TEXT_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</AREA_SEC>
									<AREA_SEC>
										DESCR='internal subset definitions'
										<AREA>
											<CTRL_GROUP>
												FMT={
													txtfl.delimiter.type='none';
												}
												<CTRLS>
													<DATA_CTRL>
														ELEMENT_VALUE
														FMT={
															ctrl.option.text.collapseSpaces='true';
															text.style='cs7';
															text.option.renderNLs='true';
														}
													</DATA_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</AREA_SEC>
								</BODY>
							</FOLDER>
							<FOLDER>
								DESCR='comments started'
								<BODY>
									<AREA_SEC>
										DESCR='end of comments'
										COND='contextElement.value == "-->"'
										INIT_EXPR='thisContext.setVar ("comment", false)'
										BREAK_PARENT_BLOCK='when-executed'
										<AREA>
											<CTRL_GROUP>
												FMT={
													txtfl.delimiter.type='none';
												}
												<CTRLS>
													<TEXT_CTRL>
														TEXT='-->'
														FMT={
															text.style='cs5';
														}
													</TEXT_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</AREA_SEC>
									<AREA_SEC>
										DESCR='comments text'
										<AREA>
											<CTRL_GROUP>
												FMT={
													txtfl.delimiter.type='none';
												}
												<CTRLS>
													<DATA_CTRL>
														ELEMENT_VALUE
														FMT={
															ctrl.option.text.collapseSpaces='true';
															text.style='cs4';
															text.option.renderNLs='true';
														}
													</DATA_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</AREA_SEC>
								</BODY>
							</FOLDER>
						</BODY>
					</ELEMENT_ITER>
				</BODY>
				<HEADER>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								FMT={
									text.style='cs6';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='<!DOCTYPE'
									</TEXT_CTRL>
									<DATA_CTRL>
										ATTR='name'
									</DATA_CTRL>
									<PANEL>
										COND='getAttrStringValue("publicId") != ""'
										FMT={
											ctrl.size.width='127.5';
											txtfl.delimiter.type='none';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='PUBLIC'
													</TEXT_CTRL>
													<DELIMITER>
													</DELIMITER>
													<TEXT_CTRL>
														TEXT='"'
													</TEXT_CTRL>
													<DATA_CTRL>
														ATTR='publicId'
														FMT={
															ctrl.option.text.noBlankOutput='true';
														}
													</DATA_CTRL>
													<TEXT_CTRL>
														TEXT='"'
													</TEXT_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
									<PANEL>
										COND='getAttrStringValue("systemId") != ""'
										FMT={
											ctrl.size.width='127.5';
											txtfl.delimiter.type='none';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														COND='getAttrStringValue("publicId") == ""'
														TEXT='SYSTEM'
													</TEXT_CTRL>
													<DELIMITER>
													</DELIMITER>
													<TEXT_CTRL>
														TEXT='"'
													</TEXT_CTRL>
													<DATA_CTRL>
														ATTR='systemId'
														FMT={
															ctrl.option.text.noBlankOutput='true';
														}
													</DATA_CTRL>
													<TEXT_CTRL>
														TEXT='"'
													</TEXT_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
									<TEXT_CTRL>
										TEXT='['
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
								FMT={
									text.style='cs6';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT=']>'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</FOOTER>
				<ELSE>
					DESCR='simple case of <!DOCTYPE> node (without internal subset)'
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								FMT={
									text.style='cs6';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='<!DOCTYPE'
									</TEXT_CTRL>
									<DATA_CTRL>
										ATTR='name'
									</DATA_CTRL>
									<PANEL>
										COND='getAttrStringValue("publicId") != ""'
										FMT={
											ctrl.size.width='127.5';
											ctrl.size.height='38.3';
											txtfl.delimiter.type='none';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='PUBLIC'
													</TEXT_CTRL>
													<DELIMITER>
													</DELIMITER>
													<TEXT_CTRL>
														TEXT='"'
													</TEXT_CTRL>
													<DATA_CTRL>
														ATTR='publicId'
														FMT={
															ctrl.option.text.noBlankOutput='true';
														}
													</DATA_CTRL>
													<TEXT_CTRL>
														TEXT='"'
													</TEXT_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
									<PANEL>
										COND='getAttrStringValue("systemId") != ""'
										FMT={
											ctrl.size.width='127.5';
											ctrl.size.height='38.3';
											txtfl.delimiter.type='none';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														COND='getAttrStringValue("publicId") == ""'
														TEXT='SYSTEM'
													</TEXT_CTRL>
													<DELIMITER>
													</DELIMITER>
													<TEXT_CTRL>
														TEXT='"'
													</TEXT_CTRL>
													<DATA_CTRL>
														ATTR='systemId'
														FMT={
															ctrl.option.text.noBlankOutput='true';
														}
													</DATA_CTRL>
													<TEXT_CTRL>
														TEXT='"'
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
										TEXT='>'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</ELSE>
			</FOLDER>
			<TEMPLATE_CALL>
				DESCR='processes other XML nodes'
				TEMPLATE_FILE='nodeSource.tpl'
			</TEMPLATE_CALL>
		</BODY>
	</ELEMENT_ITER>
</ROOT>
CHECKSUM='3npR?5MlDpxrUZC+tFWlokbUTMNuWKgA3eETuUD2I8s'
</DOCFLEX_TEMPLATE>