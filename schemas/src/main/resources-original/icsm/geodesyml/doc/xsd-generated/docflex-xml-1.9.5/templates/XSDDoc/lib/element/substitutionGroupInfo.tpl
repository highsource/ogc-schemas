<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2008-11-15 02:13:28'
LAST_UPDATE='2014-07-05 20:02:50'
DESIGNER_TOOL='DocFlex SDK 1.x'
DESIGNER_LICENSE_TYPE='Filigris Works Team'
APP_ID='docflex-xml-xsddoc2'
APP_NAME='DocFlex/XML XSDDoc'
APP_VER='2.8.1'
APP_AUTHOR='Copyright © 2005-2014 Filigris Works, Leonid Rudy Softwareprodukte. All rights reserved.'
TEMPLATE_TYPE='DocumentTemplate'
DSM_TYPE_ID='xsddoc'
ROOT_ET='xs:element'
DESCR='Prints summary info about the involvement of the element in substitution groups:
<ul>
<li>The list of substitution groups, which this element is affiliated to.</li>
<li>The number of known elements (or the name of the element if it is only one) which may substitute for this element.</li>
</ul>
<b>Applies To:</b>
<blockquote>
Global Elements
</blockquote>'
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$mainXSD';
		param.type='GOMElement';
	}
	PARAM={
		param.name='$list.heads';
		param.title='List Heads';
		param.type='boolean';
	}
	PARAM={
		param.name='$list.members';
		param.title='List Members';
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
		param.type='boolean';
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
		DESCR='if the element is affiliated to a substitution group'
		COND='getAttrValue("substitutionGroup") != null'
		<BODY>
			<AREA_SEC>
				DESCR='when the element is not a member of the substitution group it is affiliated to'
				CONTEXT_ELEMENT_EXPR='directHead = findElementByKey (
  "global-elements",
  getAttrQNameValue("substitutionGroup"),
  BooleanQuery (
    checkElementByKey (
      "main-xsds",
      getXMLDocument().id,
      getElementParam("$mainXSD")
    )
  )
);

checkElementByKey (
  "substitution-group-members",
  directHead.id,
  contextElement
) ? null : directHead'
				MATCHING_ET='xs:element'
				BREAK_PARENT_BLOCK='when-executed'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='affiliated to substitution group'
							</TEXT_CTRL>
							<SS_CALL_CTRL>
								SS_NAME='Global Element'
								FMT={
									text.style='cs3';
								}
							</SS_CALL_CTRL>
							<PANEL>
								COND='output.format.supportsPageRefs &&
getBooleanParam("fmt.page.refs") &&
findHyperTarget (Array (contextElement.id, "detail")) != null'
								FMT={
									ctrl.size.width='148.5';
									ctrl.size.height='38.3';
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
														'"detail"';
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
									txtfl.delimiter.type='text';
									txtfl.delimiter.text='; ';
								}
							</DELIMITER>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<FOLDER>
				DESCR='if the element is a member of one or more substitution groups'
				COND='headCount = countElementsByKey (
  "substitution-group-heads",
  contextElement.id
);

headCount > 0 ? {
  setVar ("headCount", headCount);
  true
} : false'
				BREAK_PARENT_BLOCK='when-executed'
				<BODY>
					<ELEMENT_ITER>
						DESCR='list of all susbtitutable elements (i.e. the heads of the substitution groups this element belongs to)'
						COND='getBooleanParam("$list.heads")'
						BREAK_PARENT_BLOCK='when-executed'
						TARGET_ET='xs:element'
						SCOPE='custom'
						ELEMENT_ENUM_EXPR='findElementsByKey (
  "substitution-group-heads",
  contextElement.id
)'
						<BODY>
							<AREA_SEC>
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<SS_CALL_CTRL>
												SS_NAME='Global Element'
												FMT={
													text.style='cs3';
												}
											</SS_CALL_CTRL>
											<PANEL>
												COND='output.format.supportsPageRefs
&&
getBooleanParam("fmt.page.refs")
&&
findHyperTarget (Array (
  contextElement.id,
  Array ("detail", "xml-source-location")
)) != null'
												FMT={
													ctrl.size.width='148.5';
													ctrl.size.height='38.3';
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
																		'Array ("detail", "xml-source-location")';
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
													txtfl.delimiter.type='text';
													txtfl.delimiter.text=', ';
												}
											</DELIMITER>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</BODY>
						<HEADER>
							<AREA_SEC>
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='may substitute for'
											</TEXT_CTRL>
											<TEXT_CTRL>
												COND='iterator.numItems == 1'
												TEXT='element'
											</TEXT_CTRL>
											<TEXT_CTRL>
												COND='iterator.numItems > 1'
												TEXT='elements:'
											</TEXT_CTRL>
											<DELIMITER>
											</DELIMITER>
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
											<DELIMITER>
												FMT={
													txtfl.delimiter.type='text';
													txtfl.delimiter.text='; ';
												}
											</DELIMITER>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</FOOTER>
					</ELEMENT_ITER>
					<AREA_SEC>
						DESCR='otherwise, print only the number of substitutable elements'
						INIT_EXPR='setVar (
  "headCount", 
  countElementsByKey ("substitution-group-heads", 
                      contextElement.id)
)'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='may substitute for'
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='getVar("headCount")'
									</DATA_CTRL>
									<TEXT_CTRL>
										COND='getVar("headCount").toInt() == 1'
										TEXT='element'
										<DOC_HLINK>
											HKEYS={
												'contextElement.id';
												'"substitution-group-heads"';
											}
										</DOC_HLINK>
									</TEXT_CTRL>
									<TEXT_CTRL>
										COND='getVar("headCount").toInt() > 1'
										TEXT='elements'
										<DOC_HLINK>
											HKEYS={
												'contextElement.id';
												'"substitution-group-heads"';
											}
										</DOC_HLINK>
									</TEXT_CTRL>
									<DELIMITER>
										FMT={
											txtfl.delimiter.type='text';
											txtfl.delimiter.text='; ';
										}
									</DELIMITER>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</FOLDER>
			<AREA_SEC>
				DESCR='otherwise, the element\'s substitution group head cannot be resolved'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='affiliated to substitution group'
							</TEXT_CTRL>
							<DATA_CTRL>
								ATTR='substitutionGroup'
								FMT={
									text.style='cs3';
								}
							</DATA_CTRL>
							<DELIMITER>
								FMT={
									txtfl.delimiter.type='text';
									txtfl.delimiter.text='; ';
								}
							</DELIMITER>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</FOLDER>
	<FOLDER>
		DESCR='if the element is the head of a substitution group'
		COND='memberCount = countElementsByKey (
  "substitution-group-members",
  contextElement.id
);

memberCount > 0 ? {
  setVar ("memberCount", memberCount);
  true
} : false'
		<BODY>
			<ELEMENT_ITER>
				COND='getBooleanParam("$list.members")'
				BREAK_PARENT_BLOCK='when-executed'
				TARGET_ET='xs:element'
				SCOPE='custom'
				ELEMENT_ENUM_EXPR='findElementsByKey (
  "substitution-group-members",
  contextElement.id
)'
				SORTING='by-expr'
				SORTING_KEY={expr='callStockSection("Global Element")',ascending}
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<SS_CALL_CTRL>
										SS_NAME='Global Element'
										FMT={
											text.style='cs3';
										}
									</SS_CALL_CTRL>
									<PANEL>
										COND='output.format.supportsPageRefs
&&
getBooleanParam("fmt.page.refs")
&&
findHyperTarget (Array (
  contextElement.id,
  Array ("detail", "xml-source-location")
)) != null'
										FMT={
											ctrl.size.width='148.5';
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
																'Array ("detail", "xml-source-location")';
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
											txtfl.delimiter.type='text';
											txtfl.delimiter.text=', ';
										}
									</DELIMITER>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
				<HEADER>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='may be substituted with'
									</TEXT_CTRL>
									<TEXT_CTRL>
										COND='iterator.numItems == 1'
										TEXT='element'
									</TEXT_CTRL>
									<TEXT_CTRL>
										COND='iterator.numItems > 1'
										TEXT='elements:'
									</TEXT_CTRL>
									<DELIMITER>
									</DELIMITER>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
			</ELEMENT_ITER>
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='may be substituted with'
							</TEXT_CTRL>
							<DATA_CTRL>
								FORMULA='getVar("memberCount")'
							</DATA_CTRL>
							<TEXT_CTRL>
								COND='getVar("memberCount").toInt() == 1'
								TEXT='element'
								<DOC_HLINK>
									HKEYS={
										'contextElement.id';
										'"substitution-group-members"';
									}
								</DOC_HLINK>
							</TEXT_CTRL>
							<TEXT_CTRL>
								COND='getVar("memberCount").toInt() > 1'
								TEXT='elements'
								<DOC_HLINK>
									HKEYS={
										'contextElement.id';
										'"substitution-group-members"';
									}
								</DOC_HLINK>
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</FOLDER>
</ROOT>
<STOCK_SECTIONS>
	<AREA_SEC>
		SS_NAME='Global Element'
		DESCR='prints the qualified name a global element component (passed as the stock-section context element)'
		MATCHING_ET='xs:element'
		FMT={
			par.option.nowrap='true';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<DATA_CTRL>
						COND='! getAttrBooleanValue ("abstract")'
						FORMULA='toXMLName (
  findAncestor("xs:schema").getServiceAttr("targetNamespace").toString(),
  getAttrStringValue("name"),
  Array (rootElement, contextElement)
)'
						<DOC_HLINK>
							TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("Link Title") : ""'
							HKEYS={
								'contextElement.id';
								'Array ("detail", "xml-source-location")';
							}
						</DOC_HLINK>
					</DATA_CTRL>
					<DATA_CTRL>
						COND='getAttrBooleanValue ("abstract")'
						FORMULA='toXMLName (
  findAncestor("xs:schema").getServiceAttr("targetNamespace").toString(),
  getAttrStringValue("name"),
  Array (rootElement, contextElement)
)'
						FMT={
							text.font.style.italic='true';
						}
						<DOC_HLINK>
							TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("Link Title") : ""'
							HKEYS={
								'contextElement.id';
								'Array ("detail", "xml-source-location")';
							}
						</DOC_HLINK>
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<TEMPLATE_CALL>
		SS_NAME='Link Title'
		TEMPLATE_FILE='../component/componentLinkTitle.tpl'
	</TEMPLATE_CALL>
</STOCK_SECTIONS>
CHECKSUM='EpoRnBqxWQFaU5tbFUjfWIFFeaNMB5FjYib8ZrP0Fcg'
</DOCFLEX_TEMPLATE>