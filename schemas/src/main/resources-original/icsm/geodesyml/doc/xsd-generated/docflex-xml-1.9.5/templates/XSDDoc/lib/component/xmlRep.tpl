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
ROOT_ETS={'xs:%element';'xs:attribute';'xs:attributeGroup';'xs:complexType';'xs:group';'xs:simpleType'}
DESCR='when the passed root element is an element component, it must be the element declaration (not a reference to it). The reference element component is also needed and must be passed via the \'$referenceComp\' parameter.
'
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$mainXSD';
		param.type='GOMElement';
	}
	PARAM={
		param.name='$showHeading';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='$sorting';
		param.title='Specify whether to sort attributes';
		param.type='boolean';
	}
	PARAM={
		param.name='$xmlName';
		param.description='The displayed XML name (qualified or local) of the element';
		param.type='string';
		param.hidden='true';
	}
	PARAM={
		param.name='$referenceComp';
		param.description='Specifies the element reference component
--
When the XML Representation Summary is generated for a reference to a global element, this parameter should provide the original element reference component. This is needed because the reference may contain some additional settings to be displayed in the summary, for instance, the default/fixed value specified for this element in that reference.';
		param.type='GOMElement';
	}
	PARAM={
		param.name='$abbreviateAttrValue';
		param.description='Indicates that when an attribute value representation consists of the only enumeration, it should be abbreviated (shown as "enumeration of ...")';
		param.type='boolean';
	}
	PARAM={
		param.name='$abbreviateSimpleContent';
		param.description='Indicates that when the element simple content representation consists of the only enumeration, it should be abbreviated (shown as "enumeration of ...")';
		param.type='boolean';
	}
	PARAM={
		param.name='$xmlContext';
		param.description='Specifies an element that determines the preferable XML document context (i.e. the position on the XML document\'s tree) against which the namespace prefix/URI binding will be resolved';
		param.type='GOMElement';
		param.defaultValue.expr='(el = getElementParam("$referenceComp")) != null
  ? el : contextElement';
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
		param.name='fmt.allowNestedTables';
		param.title='Allow nested tables';
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
		style.name='XML Rep';
		style.id='cs4';
		text.font.name='Courier New';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='XML Rep Attribute Name';
		style.id='cs5';
		text.font.name='Courier New';
		text.font.size='8';
		text.color.foreground='#990000';
	}
	CHAR_STYLE={
		style.name='XML Rep Content Model';
		style.id='cs6';
		text.font.name='Verdana';
		text.font.size='9';
	}
	PAR_STYLE={
		style.name='XML Rep Heading';
		style.id='s2';
		text.font.style.bold='true';
		text.color.foreground='#990000';
		par.margin.bottom='1.7';
	}
	CHAR_STYLE={
		style.name='XML Rep Markup';
		style.id='cs7';
		text.font.name='Courier New';
		text.font.size='9';
		text.color.foreground='#0000FF';
		text.option.nbsps='true';
	}
	CHAR_STYLE={
		style.name='XML Rep Name';
		style.id='cs8';
		text.font.name='Courier New';
		text.font.size='9';
		text.color.foreground='#990000';
	}
	CHAR_STYLE={
		style.name='XML Rep Value';
		style.id='cs9';
		text.font.name='Courier New';
		text.font.size='8';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs2';
}
<ROOT>
	<FOLDER>
		DESCR='case of element'
		COND='instanceOf("xs:%element")'
		CONTEXT_ELEMENT_EXPR='findElementByKey ("element-types", contextElement.id)'
		MATCHING_ETS={'#CUSTOM';'xs:%complexType';'xs:%simpleType'}
		BREAK_PARENT_BLOCK='when-executed'
		<BODY>
			<SS_CALL>
				MATCHING_ET='xs:%complexType'
				BREAK_PARENT_BLOCK='when-executed'
				SS_NAME='Element Rep (complexType)'
				PARAMS_EXPR='Array (getParam("$xmlName"))'
			</SS_CALL>
			<SS_CALL>
				MATCHING_ETS={'#CUSTOM';'xs:%simpleType'}
				SS_NAME='Element Rep (simpleType)'
				PARAMS_EXPR='Array (getParam("$xmlName"))'
			</SS_CALL>
		</BODY>
	</FOLDER>
	<SS_CALL>
		DESCR='case of complexType'
		MATCHING_ET='xs:%complexType'
		BREAK_PARENT_BLOCK='when-executed'
		SS_NAME='Element Rep (complexType)'
		PARAMS_EXPR='Array ("...")'
	</SS_CALL>
	<SS_CALL>
		DESCR='case of simpleType'
		MATCHING_ET='xs:simpleType'
		BREAK_PARENT_BLOCK='when-executed'
		SS_NAME='simpleType Rep'
	</SS_CALL>
	<SS_CALL>
		DESCR='case of element group'
		MATCHING_ET='xs:group'
		BREAK_PARENT_BLOCK='when-executed'
		SS_NAME='Element Group Rep'
	</SS_CALL>
	<SS_CALL>
		DESCR='case of attributeGroup'
		MATCHING_ET='xs:attributeGroup'
		BREAK_PARENT_BLOCK='when-executed'
		SS_NAME='Attribute Group Rep'
		PARAMS_EXPR='Array ("...")'
	</SS_CALL>
	<SS_CALL>
		DESCR='case of global attribute'
		MATCHING_ET='xs:attribute'
		SS_NAME='Attribute Rep'
		PARAMS_EXPR='Array ("...")'
	</SS_CALL>
</ROOT>
<STOCK_SECTIONS>
	<AREA_SEC>
		SS_NAME='Any Attribute'
		MATCHING_ET='xs:anyAttribute'
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEMPLATE_CALL_CTRL>
						TEMPLATE_FILE='wildcard.tpl'
						<DOC_HLINK>
							DESCR='try to link to wildcard\'s detail by this component;
otherwise, link to wildcard\'s details by its parent component (where the attribute is defined);
if not found still, link to the XML schema source location, where this wildcard is defined'
							TITLE_EXPR='getBooleanParam("show.linkTitle") ? "attribute wildcard" : ""'
							HKEYS={
								'contextElement.id';
								'Array ("local", "def", "xml-source-location")';
								'Array (rootElement.id, NoKey())';
							}
						</DOC_HLINK>
					</TEMPLATE_CALL_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<FOLDER>
		SS_NAME='Attribute Group Rep'
		MATCHING_ET='xs:attributeGroup'
		FMT={
			sec.outputStyle='table';
			sec.page.keepTogether='true';
			table.sizing='Relative';
			table.cell.padding.both='0';
			table.bkgr.color='#F5F5F5';
			table.border.style='solid';
			table.border.color='#999999';
			table.border.horz.style='none';
			table.border.vert.style='none';
			table.page.keepTogether='true';
			table.option.borderStylesInHTML='true';
		}
		<BODY>
			<FOLDER>
				DESCR='ATTRIBUTES'
				COND='checkElementsByKey (
  "content-model-attributes",
  contextElement.id,
  BooleanQuery (
    instanceOf ("xs:%attribute") && ! hasAttrValue ("use", "prohibited")
  )
)'
				<BODY>
					<AREA_SEC>
						DESCR='if nested tables are allowed, generate the attribute summary as a separate nested table to avoid the unwanted stretching of table cells visible in some browsers/readers (e.g IE)'
						COND='getBooleanParam("fmt.allowNestedTables")'
						BREAK_PARENT_BLOCK='when-executed'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='   '
										FMT={
											ctrl.size.width='21';
											ctrl.size.height='17.3';
											tcell.sizing='Minimal';
											tcell.padding.extra.left='3.3';
											text.option.nbsps='true';
										}
									</TEXT_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='attributes'
										FMT={
											ctrl.size.width='478.5';
											ctrl.size.height='17.3';
											tcell.padding.extra.right='3.3';
										}
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<ELEMENT_ITER>
						TARGET_ET='xs:%attribute'
						SCOPE='custom'
						ELEMENT_ENUM_EXPR='findElementsByKey (
  "content-model-attributes",
  contextElement.id,
  BooleanQuery (! hasAttrValue ("use", "prohibited"))
)'
						SORTING='by-expr'
						SORTING_KEY={expr='hasAttr("name")
  ? callStockSection("Attribute Name (local)")
  : getAttrQNameValue("ref").toXMLName (
       Array (getElementParam("$xmlContext"), contextElement))',ascending}
						SORTING_COND='getBooleanParam("$sorting")'
						<BODY>
							<AREA_SEC>
								DESCR='case of local attribute'
								COND='getAttrStringValue("name") != ""'
								BREAK_PARENT_BLOCK='when-executed'
								<AREA>
									<CTRL_GROUP>
										FMT={
											trow.cell.align.vert='Top';
											txtfl.delimiter.type='none';
										}
										<CTRLS>
											<TEXT_CTRL>
												TEXT='   '
												FMT={
													ctrl.size.width='21.8';
													ctrl.size.height='17.3';
													tcell.sizing='Minimal';
													tcell.padding.extra.left='3.3';
													text.option.nbsps='true';
												}
											</TEXT_CTRL>
											<SS_CALL_CTRL>
												SS_NAME='Attribute Name (local)'
												FMT={
													content.outputStyle='text-par';
													ctrl.size.width='75';
													ctrl.size.height='17.3';
													tcell.sizing='Minimal';
													tcell.option.nowrap='true';
													text.style='cs5';
													text.hlink.fmt='style';
													text.hlink.style='cs3';
												}
											</SS_CALL_CTRL>
											<TEXT_CTRL>
												TEXT=' = '
												FMT={
													ctrl.size.width='18.8';
													ctrl.size.height='17.3';
													tcell.sizing='Minimal';
													tcell.align.horz='Center';
													text.style='cs7';
												}
											</TEXT_CTRL>
											<SS_CALL_CTRL>
												SS_NAME='Attribute Value'
												FMT={
													content.outputStyle='text-par';
													ctrl.size.width='384';
													ctrl.size.height='17.3';
													tcell.padding.extra.right='3.3';
													text.style='cs9';
												}
											</SS_CALL_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
							<AREA_SEC>
								DESCR='case of reference to global attribute'
								COND='getAttrValue("ref") != null'
								<AREA>
									<CTRL_GROUP>
										FMT={
											trow.cell.align.vert='Top';
											txtfl.delimiter.type='none';
										}
										<CTRLS>
											<TEXT_CTRL>
												TEXT='   '
												FMT={
													ctrl.size.width='21';
													ctrl.size.height='17.3';
													tcell.sizing='Minimal';
													tcell.padding.extra.left='3.3';
													text.option.nbsps='true';
												}
											</TEXT_CTRL>
											<SS_CALL_CTRL>
												SS_NAME='Attribute Name (reference)'
												FMT={
													content.outputStyle='text-par';
													ctrl.size.width='75';
													ctrl.size.height='17.3';
													tcell.sizing='Minimal';
													tcell.option.nowrap='true';
													text.style='cs5';
													text.hlink.fmt='style';
													text.hlink.style='cs3';
												}
											</SS_CALL_CTRL>
											<TEXT_CTRL>
												TEXT=' = '
												FMT={
													ctrl.size.width='18.8';
													ctrl.size.height='17.3';
													tcell.sizing='Minimal';
													tcell.align.horz='Center';
													text.style='cs7';
												}
											</TEXT_CTRL>
											<SS_CALL_CTRL>
												SS_NAME='Attribute Value'
												PASSED_ELEMENT_EXPR='findElementByKey (
  "global-attributes", getAttrQNameValue("ref"),
  BooleanQuery (
    checkElementByKey (
      "main-xsds",
      getXMLDocument().id,
      getElementParam("$mainXSD")
    )
  )
)'
												PASSED_ELEMENT_MATCHING_ET='xs:attribute'
												PARAMS_EXPR='Array (contextElement)'
												ALT_FORMULA='"???"'
												FMT={
													content.outputStyle='text-par';
													ctrl.size.width='384.8';
													ctrl.size.height='17.3';
													tcell.padding.extra.right='3.3';
													text.style='cs9';
												}
											</SS_CALL_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</BODY>
					</ELEMENT_ITER>
				</BODY>
			</FOLDER>
			<ELEMENT_ITER>
				DESCR='ATTRIBUTE WILDCARDS'
				TARGET_ET='xs:anyAttribute'
				SCOPE='custom'
				ELEMENT_ENUM_EXPR='findElementsByKey (
  "content-model-attributes", contextElement.id
)'
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='   '
										FMT={
											ctrl.size.width='21';
											ctrl.size.height='17.3';
											tcell.sizing='Minimal';
											tcell.padding.extra.left='3.3';
											text.option.nbsps='true';
										}
									</TEXT_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='Any Attribute'
										FMT={
											content.outputStyle='text-par';
											ctrl.size.width='478.5';
											ctrl.size.height='17.3';
											tcell.padding.extra.right='3.3';
											text.style='cs5';
											text.font.style.italic='true';
											text.hlink.fmt='style';
											text.hlink.style='cs3';
										}
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</ELEMENT_ITER>
		</BODY>
		<HEADER>
			<AREA_SEC>
				COND='getBooleanParam("$showHeading")'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='XML Representation Summary'
								FMT={
									ctrl.size.width='499.5';
									ctrl.size.height='17.3';
									tcell.padding.extra.left='3.3';
									tcell.padding.extra.right='3.3';
									tcell.padding.extra.top='3.3';
									par.style='s2';
								}
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<PANEL>
								FMT={
									ctrl.size.width='499.5';
									ctrl.size.height='38.3';
									tcell.padding.extra.left='3.3';
									tcell.padding.extra.right='3.3';
									tcell.padding.extra.top='3.3';
									tcell.padding.extra.bottom='0.8';
								}
								<AREA>
									<CTRL_GROUP>
										FMT={
											txtfl.delimiter.type='none';
										}
										<CTRLS>
											<TEXT_CTRL>
												TEXT='<'
												FMT={
													text.style='cs7';
												}
											</TEXT_CTRL>
											<TEXT_CTRL>
												TEXT='...'
												FMT={
													text.style='cs8';
												}
											</TEXT_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
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
							<PANEL>
								FMT={
									ctrl.size.width='499.5';
									ctrl.size.height='39.8';
									tcell.padding.extra.left='3.3';
									tcell.padding.extra.right='3.3';
									tcell.padding.extra.bottom='3.3';
								}
								<AREA>
									<CTRL_GROUP>
										FMT={
											txtfl.delimiter.type='none';
										}
										<CTRLS>
											<TEXT_CTRL>
												TEXT='...'
												FMT={
													text.style='cs8';
												}
											</TEXT_CTRL>
											<TEXT_CTRL>
												TEXT='>'
												FMT={
													text.style='cs7';
												}
											</TEXT_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</FOOTER>
	</FOLDER>
	<TEMPLATE_CALL>
		SS_NAME='Attribute Link Title'
		TEMPLATE_FILE='componentLinkTitle.tpl'
	</TEMPLATE_CALL>
	<AREA_SEC>
		SS_NAME='Attribute Name (local)'
		MATCHING_ET='xs:%attribute'
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<DATA_CTRL>
						FORMULA='name = getAttrStringValue("name");
schema = findAncestor ("xs:schema");

form = hasAttr("form") ? getAttrValue("form") :
         schema.getAttrValue ("attributeFormDefault");

form == "qualified" ? 
  toXMLName (schema.getServiceAttr("targetNamespace").toString(), name,
             Array (getElementParam("$xmlContext"), contextElement))
  : name'
						<DOC_HLINK>
							DESCR='try to link to the attribute\'s detail by this component;
otherwise, link to the attribute\'s details by its parent component (where the attribute is defined);
if not found still, link to the XML schema source location, where this attribute is defined'
							TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("Attribute Link Title") : ""'
							HKEYS={
								'contextElement.id';
								'Array ("local", "def", "xml-source-location")';
								'Array (rootElement.id, NoKey())';
							}
						</DOC_HLINK>
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		SS_NAME='Attribute Name (reference)'
		MATCHING_ET='xs:%attribute'
		INIT_EXPR='stockSection.setVar (
  "globalAttr", 
  findElementByKey (
    "global-attributes", getAttrQNameValue("ref"),
    BooleanQuery (
      checkElementByKey (
        "main-xsds",
        getXMLDocument().id,
        getElementParam("$mainXSD")
      )
    )
  )
)'
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<DATA_CTRL>
						FORMULA='getAttrQNameValue("ref").toXMLName (
  Array (getElementParam("$xmlContext"), contextElement))'
						<DOC_HLINK>
							DESCR='try to link to attribute\'s detail by this component;
otherwise, link to the attribute\'s detail by its parent component (where the attribute reference is defined);
if not found, link to the attribute\'s global documentation;
finally, try to link to the location in the XML schema source, where this attribute reference is defined'
							TITLE_EXPR='getBooleanParam("show.linkTitle") ?
{
  (globalAttr = stockSection.getElementVar("globalAttr")) != null ? 
    globalAttr.callStockSection ("Attribute Link Title") : "global attribute"

} : ""'
							HKEYS={
								'Array (
  contextElement.id,
  contextElement.id,
  stockSection.getElementVar("globalAttr").id,
  contextElement.id
)';
								'Array (
  "local",
  "def",
  "detail",
  "xml-source-location"
)';
								'Array (rootElement.id, NoKey())';
							}
						</DOC_HLINK>
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<FOLDER>
		SS_NAME='Attribute Rep'
		MATCHING_ET='xs:attribute'
		FMT={
			sec.outputStyle='table';
			sec.page.keepTogether='true';
			table.sizing='Relative';
			table.cell.padding.both='0';
			table.bkgr.color='#F5F5F5';
			table.border.style='solid';
			table.border.color='#999999';
			table.border.horz.style='none';
			table.border.vert.style='none';
			table.page.keepTogether='true';
			table.option.borderStylesInHTML='true';
		}
		<BODY>
			<AREA_SEC>
				COND='getBooleanParam("$showHeading")'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='XML Representation Summary'
								FMT={
									ctrl.size.width='499.5';
									ctrl.size.height='17.3';
									tcell.padding.extra.left='3.3';
									tcell.padding.extra.right='3.3';
									tcell.padding.extra.top='3.3';
									par.style='s2';
								}
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				FMT={
					text.style='cs4';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<PANEL>
								FMT={
									ctrl.size.width='499.5';
									ctrl.size.height='38.3';
									tcell.padding.extra.left='3.3';
									tcell.padding.extra.right='3.3';
									tcell.padding.extra.top='3.3';
									tcell.padding.extra.bottom='0.8';
								}
								<AREA>
									<CTRL_GROUP>
										FMT={
											txtfl.delimiter.type='none';
										}
										<CTRLS>
											<TEXT_CTRL>
												TEXT='<'
												FMT={
													text.style='cs7';
												}
											</TEXT_CTRL>
											<TEXT_CTRL>
												TEXT='...'
												FMT={
													text.style='cs8';
												}
											</TEXT_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				DESCR='if nested tables are allowed, generate the attribute summary as a separate nested table to avoid the unwanted stretching of table cells visible in some browsers/readers (e.g IE or MS Word)'
				COND='getBooleanParam("fmt.allowNestedTables")'
				FMT={
					text.style='cs4';
				}
				<AREA>
					<CTRL_GROUP>
						FMT={
							trow.cell.align.vert='Top';
							txtfl.delimiter.type='none';
						}
						<CTRLS>
							<TEXT_CTRL>
								TEXT='   '
								FMT={
									ctrl.size.width='21';
									ctrl.size.height='38.3';
									tcell.sizing='Minimal';
									tcell.padding.extra.left='3.3';
									text.option.nbsps='true';
								}
							</TEXT_CTRL>
							<PANEL>
								FMT={
									content.outputStyle='table';
									ctrl.size.width='478.5';
									ctrl.size.height='38.3';
									tcell.padding.extra.right='3.3';
									table.cell.padding.both='0';
									table.border.style='none';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<DATA_CTRL>
												FORMULA='toXMLName (
  findAncestor("xs:schema").getServiceAttr("targetNamespace").toString(),
  getAttrStringValue("name"),
  Array (getElementParam("$xmlContext"), contextElement)
)'
												FMT={
													ctrl.size.width='75';
													ctrl.size.height='17.3';
													tcell.option.nowrap='true';
													text.style='cs5';
													text.hlink.fmt='style';
													text.hlink.style='cs3';
												}
												<DOC_HLINK>
													DESCR='link to attribute\'s global documentation'
													TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("Attribute Link Title") : ""'
													HKEYS={
														'contextElement.id';
														'"detail"';
													}
												</DOC_HLINK>
											</DATA_CTRL>
											<TEXT_CTRL>
												TEXT=' = '
												FMT={
													ctrl.size.width='18.8';
													ctrl.size.height='17.3';
													tcell.align.horz='Center';
													text.style='cs7';
												}
											</TEXT_CTRL>
											<SS_CALL_CTRL>
												SS_NAME='Attribute Value'
												FMT={
													content.outputStyle='text-par';
													ctrl.size.width='362.3';
													ctrl.size.height='17.3';
													text.style='cs9';
												}
											</SS_CALL_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				DESCR='if nested tables are not allowed, format everything as a single row of cells'
				COND='! getBooleanParam("fmt.allowNestedTables")'
				FMT={
					text.style='cs4';
				}
				<AREA>
					<CTRL_GROUP>
						FMT={
							trow.cell.align.vert='Top';
							txtfl.delimiter.type='none';
						}
						<CTRLS>
							<TEXT_CTRL>
								TEXT='   '
								FMT={
									ctrl.size.width='21';
									ctrl.size.height='17.3';
									tcell.sizing='Minimal';
									tcell.padding.extra.left='3.3';
									text.option.nbsps='true';
								}
							</TEXT_CTRL>
							<DATA_CTRL>
								FORMULA='toXMLName (
  findAncestor("xs:schema").getServiceAttr("targetNamespace").toString(),
  getAttrStringValue("name"),
  Array (getElementParam("$xmlContext"), contextElement)
)'
								FMT={
									ctrl.size.width='75';
									ctrl.size.height='17.3';
									tcell.sizing='Minimal';
									tcell.option.nowrap='true';
									text.style='cs5';
									text.hlink.fmt='style';
									text.hlink.style='cs3';
								}
								<DOC_HLINK>
									DESCR='link to attribute\'s global documentation'
									TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("Attribute Link Title") : ""'
									HKEYS={
										'contextElement.id';
										'"detail"';
									}
								</DOC_HLINK>
							</DATA_CTRL>
							<TEXT_CTRL>
								TEXT=' = '
								FMT={
									ctrl.size.width='18.8';
									ctrl.size.height='17.3';
									tcell.sizing='Minimal';
									tcell.align.horz='Center';
									text.style='cs7';
								}
							</TEXT_CTRL>
							<SS_CALL_CTRL>
								SS_NAME='Attribute Value'
								FMT={
									content.outputStyle='text-par';
									ctrl.size.width='384.8';
									ctrl.size.height='17.3';
									tcell.padding.extra.right='3.3';
									text.style='cs9';
								}
							</SS_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				FMT={
					text.style='cs4';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<PANEL>
								FMT={
									ctrl.size.width='499.5';
									ctrl.size.height='39.8';
									tcell.padding.extra.left='3.3';
									tcell.padding.extra.right='3.3';
									tcell.padding.extra.bottom='3.3';
								}
								<AREA>
									<CTRL_GROUP>
										FMT={
											txtfl.delimiter.type='none';
										}
										<CTRLS>
											<TEXT_CTRL>
												TEXT='...'
												FMT={
													text.style='cs8';
												}
											</TEXT_CTRL>
											<TEXT_CTRL>
												TEXT='>'
												FMT={
													text.style='cs7';
												}
											</TEXT_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</FOLDER>
	<FOLDER>
		SS_NAME='Attribute Value'
		DESCR='the passed context element must be the attribute declaration component (not a reference to it);

params[0]: in case of reference to a global attribute, the reference-attribute should be passed in the stock-section parameter'
		MATCHING_ET='xs:%attribute'
		FMT={
			sec.outputStyle='text-par';
		}
		<BODY>
			<AREA_SEC>
				DESCR='if the attribute value is fixed'
				COND='! getBooleanParam("$abbreviateAttrValue")'
				CONTEXT_ELEMENT_EXPR='hasAttr("fixed") ? contextElement :
{
  refAttr = stockSection.param.toElement();
  refAttr.hasAttr("fixed") ? refAttr : null
}'
				MATCHING_ET='xs:%attribute'
				BREAK_PARENT_BLOCK='when-executed'
				<AREA>
					<CTRL_GROUP>
						FMT={
							txtfl.delimiter.type='none';
						}
						<CTRLS>
							<TEXT_CTRL>
								TEXT='"'
								FMT={
									text.style='cs7';
								}
							</TEXT_CTRL>
							<DATA_CTRL>
								ATTR='fixed'
							</DATA_CTRL>
							<TEXT_CTRL>
								TEXT='"'
								FMT={
									text.style='cs7';
								}
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<FOLDER>
				DESCR='no fixed value'
				<BODY>
					<SS_CALL>
						DESCR='if there is \'type\' attribute'
						COND='hasAttr("type")'
						BREAK_PARENT_BLOCK='when-executed'
						SS_NAME='Simple Content Model'
						PASSED_ELEMENT_EXPR='typeQName = getAttrQNameValue("type");

type = findElementByKey (
  "types",
  typeQName,
  BooleanQuery (checkElementByKey (
    "main-xsds",
    getXMLDocument().id,
    getElementParam("$mainXSD")
  ))
);

(type != null) ? type : CustomElement (typeQName)'
						PASSED_ELEMENT_MATCHING_ETS={'#CUSTOM';'xs:%simpleType'}
						PARAMS_EXPR='Array (
 true,  // highlight XML markup
 true,  // always apply brackets
 getBooleanParam("$abbreviateAttrValue")
)'
					</SS_CALL>
					<SS_CALL>
						DESCR='otherwise, if there is anonymous type'
						CONTEXT_ELEMENT_EXPR='findChild("xs:simpleType")'
						MATCHING_ET='xs:%simpleType'
						BREAK_PARENT_BLOCK='when-executed'
						SS_NAME='Simple Content Model'
						PARAMS_EXPR='Array (
 true,  // highlight XML markup
 true,  // always apply brackets
 getBooleanParam("$abbreviateAttrValue")
)'
					</SS_CALL>
					<AREA_SEC>
						DESCR='otherwise, no type information is specified at all'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<DATA_CTRL>
										FORMULA='toXMLName (
  getNamespaceURI("xs"),
  "anySimpleType",
  getElementParam("$xmlContext")
)'
									</DATA_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</FOLDER>
			<AREA_SEC>
				DESCR='add default value, when specified'
				CONTEXT_ELEMENT_EXPR='refAttr = stockSection.param.toElement();

refAttr.hasAttr("default") ? refAttr :
  hasAttr("default") ? contextElement : null'
				MATCHING_ET='xs:%attribute'
				<AREA>
					<CTRL_GROUP>
						FMT={
							txtfl.delimiter.type='none';
						}
						<CTRLS>
							<DELIMITER>
								FMT={
									txtfl.delimiter.type='text';
									txtfl.delimiter.text=' : ';
								}
							</DELIMITER>
							<TEXT_CTRL>
								TEXT='"'
								FMT={
									text.style='cs7';
								}
							</TEXT_CTRL>
							<DATA_CTRL>
								ATTR='default'
							</DATA_CTRL>
							<TEXT_CTRL>
								TEXT='"'
								FMT={
									text.style='cs7';
								}
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</FOLDER>
	<ELEMENT_ITER>
		SS_NAME='attributes'
		MATCHING_ETS={'xs:%complexType';'xs:attributeGroup'}
		TARGET_ET='xs:%attribute'
		SCOPE='custom'
		ELEMENT_ENUM_EXPR='findElementsByKey (
  "content-model-attributes",
  contextElement.id,
  BooleanQuery (! hasAttrValue ("use", "prohibited"))
)'
		SORTING='by-expr'
		SORTING_KEY={expr='hasAttr("name")
  ? callStockSection("Attribute Name (local)")
  : getAttrQNameValue("ref").toXMLName (
       Array (getElementParam("$xmlContext"), contextElement))',ascending}
		SORTING_COND='getBooleanParam("$sorting")'
		FMT={
			sec.outputStyle='table';
			sec.page.keepTogether='true';
			table.cell.padding.both='0';
			table.border.style='none';
		}
		<BODY>
			<AREA_SEC>
				DESCR='case of local attribute'
				COND='getAttrStringValue("name") != ""'
				BREAK_PARENT_BLOCK='when-executed'
				<AREA>
					<CTRL_GROUP>
						FMT={
							trow.cell.align.vert='Top';
							txtfl.delimiter.type='none';
						}
						<CTRLS>
							<SS_CALL_CTRL>
								SS_NAME='Attribute Name (local)'
								FMT={
									ctrl.size.width='128.3';
									ctrl.size.height='17.3';
									tcell.option.nowrap='true';
									text.style='cs5';
									text.hlink.fmt='style';
									text.hlink.style='cs3';
								}
							</SS_CALL_CTRL>
							<TEXT_CTRL>
								TEXT=' = '
								FMT={
									ctrl.size.width='18.8';
									ctrl.size.height='17.3';
									tcell.align.horz='Center';
									text.style='cs7';
								}
							</TEXT_CTRL>
							<SS_CALL_CTRL>
								SS_NAME='Attribute Value'
								FMT={
									content.outputStyle='text-par';
									ctrl.size.width='352.5';
									ctrl.size.height='17.3';
									text.style='cs9';
								}
							</SS_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				DESCR='case of reference to global attribute'
				COND='getAttrValue("ref") != null'
				<AREA>
					<CTRL_GROUP>
						FMT={
							trow.cell.align.vert='Top';
							txtfl.delimiter.type='none';
						}
						<CTRLS>
							<SS_CALL_CTRL>
								SS_NAME='Attribute Name (reference)'
								FMT={
									ctrl.size.width='128.3';
									ctrl.size.height='17.3';
									tcell.option.nowrap='true';
									text.style='cs5';
									text.hlink.fmt='style';
									text.hlink.style='cs3';
								}
							</SS_CALL_CTRL>
							<TEXT_CTRL>
								TEXT=' = '
								FMT={
									ctrl.size.width='18.8';
									ctrl.size.height='17.3';
									tcell.align.horz='Center';
									text.style='cs7';
								}
							</TEXT_CTRL>
							<SS_CALL_CTRL>
								SS_NAME='Attribute Value'
								PASSED_ELEMENT_EXPR='findElementByKey (
  "global-attributes", getAttrQNameValue("ref"),
  BooleanQuery (
    checkElementByKey (
      "main-xsds",
      getXMLDocument().id,
      getElementParam("$mainXSD")
    )
  )
)'
								PASSED_ELEMENT_MATCHING_ET='xs:attribute'
								PARAMS_EXPR='Array (contextElement)'
								ALT_FORMULA='"???"'
								FMT={
									content.outputStyle='text-par';
									ctrl.size.width='352.5';
									ctrl.size.height='17.3';
									text.style='cs9';
								}
							</SS_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</ELEMENT_ITER>
	<TEMPLATE_CALL>
		SS_NAME='Complex Content Model'
		MATCHING_ETS={'xs:%complexType';'xs:group'}
		TEMPLATE_FILE='complexContentModel.tpl'
		PASSED_PARAMS={
			'$owner','rootElement';
		}
	</TEMPLATE_CALL>
	<FOLDER>
		SS_NAME='Element Group Rep'
		MATCHING_ET='xs:group'
		FMT={
			sec.outputStyle='table';
			sec.page.keepTogether='true';
			table.sizing='Relative';
			table.cell.padding.both='0';
			table.bkgr.color='#F5F5F5';
			table.border.style='solid';
			table.border.color='#999999';
			table.border.horz.style='none';
			table.border.vert.style='none';
			table.page.keepTogether='true';
			table.option.borderStylesInHTML='true';
		}
		<BODY>
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<SS_CALL_CTRL>
								SS_NAME='Complex Content Model'
								FMT={
									content.outputStyle='text-par';
									ctrl.size.width='499.5';
									ctrl.size.height='17.3';
									tcell.padding.extra.left='3.3';
									tcell.padding.extra.right='3.3';
									tcell.padding.extra.top='3.3';
									tcell.padding.extra.bottom='3.3';
									text.style='cs6';
								}
							</SS_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
		<HEADER>
			<AREA_SEC>
				COND='getBooleanParam("$showHeading")'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Complex Content Model'
								FMT={
									ctrl.size.width='499.5';
									ctrl.size.height='17.3';
									tcell.padding.extra.left='3.3';
									tcell.padding.extra.right='3.3';
									tcell.padding.extra.top='3.3';
									par.style='s2';
								}
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
	<FOLDER>
		SS_NAME='Element Rep (complexType)'
		DESCR='param: element\'s qualified name'
		MATCHING_ET='xs:%complexType'
		INIT_EXPR='contentType = 
  checkElementsByKey ("content-model-elements", contextElement.id) ? "complex"
  :
  (((el = findChild("xs:complexContent")) != null && el.hasAttr ("mixed"))
    ? el.getAttrBooleanValue("mixed") : getAttrBooleanValue("mixed")) ? "complex"
  :
  hasChild("xs:simpleContent") && ! rootElement.hasAttrValue("fixed", "") ? "simple"
  :
  "empty";

stockSection.setVar ("contentType", contentType);'
		FMT={
			sec.outputStyle='table';
			sec.page.keepTogether='true';
			table.sizing='Relative';
			table.cell.padding.both='0';
			table.bkgr.color='#F5F5F5';
			table.border.style='solid';
			table.border.color='#999999';
			table.border.horz.style='none';
			table.border.vert.style='none';
			table.page.keepTogether='true';
			table.option.borderStylesInHTML='true';
		}
		<BODY>
			<FOLDER>
				DESCR='NON-EMPTY CONTENT'
				COND='stockSection.getVar("contentType") != "empty"'
				OUTPUT_CHECKER_EXPR='// the output does exist as that was already tested 
// in the Enabling Condition;
// (1 means "yes"; -1 means "no"; 0 means "unknown")

1'
				BREAK_PARENT_BLOCK='when-executed'
				FMT={
					text.style='cs4';
				}
				<BODY>
					<FOLDER>
						DESCR='START TAG'
						<BODY>
							<FOLDER>
								DESCR='ATTRIBUTES'
								COND='checkElementsByKey (
  "content-model-attributes",
  contextElement.id,
  BooleanQuery (
    instanceOf ("xs:%attribute") && ! hasAttrValue ("use", "prohibited")
  )
)'
								<BODY>
									<AREA_SEC>
										DESCR='if nested tables are allowed, generate the attribute summary as a separate nested table to avoid the unwanted stretching of table cells visible in some browsers/readers (e.g IE)'
										COND='getBooleanParam("fmt.allowNestedTables")'
										BREAK_PARENT_BLOCK='when-executed'
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='   '
														FMT={
															ctrl.size.width='21';
															ctrl.size.height='17.3';
															tcell.sizing='Minimal';
															tcell.padding.extra.left='3.3';
															text.option.nbsps='true';
														}
													</TEXT_CTRL>
													<SS_CALL_CTRL>
														SS_NAME='attributes'
														FMT={
															ctrl.size.width='478.5';
															ctrl.size.height='17.3';
															tcell.padding.extra.right='3.3';
														}
													</SS_CALL_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</AREA_SEC>
									<ELEMENT_ITER>
										TARGET_ET='xs:%attribute'
										SCOPE='custom'
										ELEMENT_ENUM_EXPR='findElementsByKey (
  "content-model-attributes",
  contextElement.id,
  BooleanQuery (! hasAttrValue ("use", "prohibited"))
)'
										SORTING='by-expr'
										SORTING_KEY={expr='hasAttr("name")
  ? callStockSection("Attribute Name (local)")
  : getAttrQNameValue("ref").toXMLName (
       Array (getElementParam("$xmlContext"), contextElement))',ascending}
										SORTING_COND='getBooleanParam("$sorting")'
										<BODY>
											<AREA_SEC>
												DESCR='case of local attribute'
												COND='getAttrStringValue("name") != ""'
												BREAK_PARENT_BLOCK='when-executed'
												<AREA>
													<CTRL_GROUP>
														FMT={
															trow.cell.align.vert='Top';
															txtfl.delimiter.type='none';
														}
														<CTRLS>
															<TEXT_CTRL>
																TEXT='   '
																FMT={
																	ctrl.size.width='21.8';
																	ctrl.size.height='17.3';
																	tcell.sizing='Minimal';
																	tcell.padding.extra.left='3.3';
																	text.option.nbsps='true';
																}
															</TEXT_CTRL>
															<SS_CALL_CTRL>
																SS_NAME='Attribute Name (local)'
																FMT={
																	content.outputStyle='text-par';
																	ctrl.size.width='75';
																	ctrl.size.height='17.3';
																	tcell.sizing='Minimal';
																	tcell.option.nowrap='true';
																	text.style='cs5';
																	text.hlink.fmt='style';
																	text.hlink.style='cs3';
																}
															</SS_CALL_CTRL>
															<TEXT_CTRL>
																TEXT=' = '
																FMT={
																	ctrl.size.width='18.8';
																	ctrl.size.height='17.3';
																	tcell.sizing='Minimal';
																	tcell.align.horz='Center';
																	text.style='cs7';
																}
															</TEXT_CTRL>
															<SS_CALL_CTRL>
																SS_NAME='Attribute Value'
																FMT={
																	content.outputStyle='text-par';
																	ctrl.size.width='384';
																	ctrl.size.height='17.3';
																	tcell.padding.extra.right='3.3';
																	text.style='cs9';
																}
															</SS_CALL_CTRL>
														</CTRLS>
													</CTRL_GROUP>
												</AREA>
											</AREA_SEC>
											<AREA_SEC>
												DESCR='case of reference to global attribute'
												COND='getAttrValue("ref") != null'
												<AREA>
													<CTRL_GROUP>
														FMT={
															trow.cell.align.vert='Top';
															txtfl.delimiter.type='none';
														}
														<CTRLS>
															<TEXT_CTRL>
																TEXT='   '
																FMT={
																	ctrl.size.width='21';
																	ctrl.size.height='17.3';
																	tcell.sizing='Minimal';
																	tcell.padding.extra.left='3.3';
																	text.option.nbsps='true';
																}
															</TEXT_CTRL>
															<SS_CALL_CTRL>
																SS_NAME='Attribute Name (reference)'
																FMT={
																	content.outputStyle='text-par';
																	ctrl.size.width='75';
																	ctrl.size.height='17.3';
																	tcell.sizing='Minimal';
																	tcell.option.nowrap='true';
																	text.style='cs5';
																	text.hlink.fmt='style';
																	text.hlink.style='cs3';
																}
															</SS_CALL_CTRL>
															<TEXT_CTRL>
																TEXT=' = '
																FMT={
																	ctrl.size.width='18.8';
																	ctrl.size.height='17.3';
																	tcell.sizing='Minimal';
																	tcell.align.horz='Center';
																	text.style='cs7';
																}
															</TEXT_CTRL>
															<SS_CALL_CTRL>
																SS_NAME='Attribute Value'
																PASSED_ELEMENT_EXPR='findElementByKey (
  "global-attributes", getAttrQNameValue("ref"),
  BooleanQuery (
    checkElementByKey (
      "main-xsds",
      getXMLDocument().id,
      getElementParam("$mainXSD")
    )
  )
)'
																PASSED_ELEMENT_MATCHING_ET='xs:attribute'
																PARAMS_EXPR='Array (contextElement)'
																ALT_FORMULA='"???"'
																FMT={
																	content.outputStyle='text-par';
																	ctrl.size.width='384.8';
																	ctrl.size.height='17.3';
																	tcell.padding.extra.right='3.3';
																	text.style='cs9';
																}
															</SS_CALL_CTRL>
														</CTRLS>
													</CTRL_GROUP>
												</AREA>
											</AREA_SEC>
										</BODY>
									</ELEMENT_ITER>
								</BODY>
							</FOLDER>
							<ELEMENT_ITER>
								DESCR='ATTRIBUTE WILDCARDS'
								TARGET_ET='xs:anyAttribute'
								SCOPE='custom'
								ELEMENT_ENUM_EXPR='findElementsByKey (
  "content-model-attributes", contextElement.id
)'
								<BODY>
									<AREA_SEC>
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='   '
														FMT={
															ctrl.size.width='21';
															ctrl.size.height='17.3';
															tcell.sizing='Minimal';
															tcell.padding.extra.left='3.3';
															text.option.nbsps='true';
														}
													</TEXT_CTRL>
													<SS_CALL_CTRL>
														SS_NAME='Any Attribute'
														FMT={
															content.outputStyle='text-par';
															ctrl.size.width='478.5';
															ctrl.size.height='17.3';
															tcell.padding.extra.right='3.3';
															text.style='cs5';
															text.font.style.italic='true';
															text.hlink.fmt='style';
															text.hlink.style='cs3';
														}
													</SS_CALL_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</AREA_SEC>
								</BODY>
							</ELEMENT_ITER>
						</BODY>
						<HEADER>
							<AREA_SEC>
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<PANEL>
												FMT={
													ctrl.size.width='499.5';
													ctrl.size.height='38.3';
													tcell.padding.extra.left='3.3';
													tcell.padding.extra.right='3.3';
													tcell.padding.extra.top='3.3';
												}
												<AREA>
													<CTRL_GROUP>
														FMT={
															txtfl.delimiter.type='none';
														}
														<CTRLS>
															<TEXT_CTRL>
																TEXT='<'
																FMT={
																	text.style='cs7';
																}
															</TEXT_CTRL>
															<DATA_CTRL>
																FORMULA='stockSection.param'
																FMT={
																	text.style='cs8';
																}
															</DATA_CTRL>
														</CTRLS>
													</CTRL_GROUP>
												</AREA>
											</PANEL>
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
												TEXT='   '
												FMT={
													ctrl.size.width='21';
													ctrl.size.height='17.3';
													tcell.sizing='Minimal';
													tcell.padding.extra.left='3.3';
													text.option.nbsps='true';
												}
											</TEXT_CTRL>
											<TEXT_CTRL>
												TEXT='>'
												FMT={
													ctrl.size.width='478.5';
													ctrl.size.height='17.3';
													tcell.padding.extra.right='3.3';
													text.style='cs7';
												}
											</TEXT_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</FOOTER>
						<ELSE>
							<AREA_SEC>
								<AREA>
									<CTRL_GROUP>
										FMT={
											txtfl.delimiter.type='none';
										}
										<CTRLS>
											<PANEL>
												FMT={
													ctrl.size.width='499.5';
													ctrl.size.height='38.3';
													tcell.padding.extra.left='3.3';
													tcell.padding.extra.right='3.3';
													tcell.padding.extra.top='3.3';
												}
												<AREA>
													<CTRL_GROUP>
														<CTRLS>
															<TEXT_CTRL>
																TEXT='<'
																FMT={
																	text.style='cs7';
																}
															</TEXT_CTRL>
															<DATA_CTRL>
																FORMULA='stockSection.param'
																FMT={
																	text.style='cs8';
																}
															</DATA_CTRL>
															<TEXT_CTRL>
																TEXT='>'
																FMT={
																	text.style='cs7';
																}
															</TEXT_CTRL>
														</CTRLS>
													</CTRL_GROUP>
												</AREA>
											</PANEL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</ELSE>
					</FOLDER>
					<FOLDER>
						DESCR='COMPLEX CONTENT'
						COND='stockSection.getVar("contentType") == "complex"'
						BREAK_PARENT_BLOCK='when-executed'
						COLLAPSED
						<BODY>
							<AREA_SEC>
								COND='getBooleanParam("fmt.allowNestedTables")'
								BREAK_PARENT_BLOCK='when-executed'
								FMT={
									table.border.style='none';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='   '
												FMT={
													ctrl.size.width='21';
													ctrl.size.height='59.3';
													tcell.sizing='Minimal';
													tcell.padding.extra.left='3.3';
													text.option.nbsps='true';
												}
											</TEXT_CTRL>
											<PANEL>
												FMT={
													content.outputStyle='table';
													ctrl.size.width='478.5';
													ctrl.size.height='59.3';
													tcell.padding.extra.right='3.3';
													table.cell.align.vert='Top';
													table.cell.padding.both='0';
													table.border.style='none';
												}
												<AREA>
													<CTRL_GROUP>
														<CTRLS>
															<PANEL>
																FMT={
																	ctrl.size.width='72';
																	ctrl.size.height='38.3';
																	tcell.padding.extra.right='1.7';
																	txtfl.delimiter.type='none';
																	par.option.nowrap='true';
																}
																<AREA>
																	<CTRL_GROUP>
																		<CTRLS>
																			<TEXT_CTRL>
																				TEXT='Content:'
																				FMT={
																					text.font.style.italic='true';
																				}
																			</TEXT_CTRL>
																			<TEXT_CTRL>
																				TEXT=' '
																				FMT={
																					text.style='cs6';
																					text.option.nbsps='true';
																				}
																			</TEXT_CTRL>
																		</CTRLS>
																	</CTRL_GROUP>
																</AREA>
															</PANEL>
															<SS_CALL_CTRL>
																SS_NAME='Complex Content Model'
																FMT={
																	content.outputStyle='text-par';
																	ctrl.size.width='384';
																	ctrl.size.height='38.3';
																	text.style='cs6';
																}
															</SS_CALL_CTRL>
														</CTRLS>
													</CTRL_GROUP>
												</AREA>
											</PANEL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
							<AREA_SEC>
								FMT={
									table.border.style='none';
									trow.cell.align.vert='Top';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='   '
												FMT={
													ctrl.size.width='21';
													ctrl.size.height='38.3';
													tcell.sizing='Minimal';
													tcell.padding.extra.left='3.3';
													text.option.nbsps='true';
												}
											</TEXT_CTRL>
											<PANEL>
												FMT={
													ctrl.size.width='72';
													ctrl.size.height='38.3';
													tcell.sizing='Minimal';
													tcell.padding.extra.right='1.7';
													txtfl.delimiter.type='none';
													par.option.nowrap='true';
												}
												<AREA>
													<CTRL_GROUP>
														<CTRLS>
															<TEXT_CTRL>
																TEXT='Content:'
																FMT={
																	text.font.style.italic='true';
																}
															</TEXT_CTRL>
															<TEXT_CTRL>
																TEXT=' '
																FMT={
																	text.style='cs6';
																	text.option.nbsps='true';
																}
															</TEXT_CTRL>
														</CTRLS>
													</CTRL_GROUP>
												</AREA>
											</PANEL>
											<SS_CALL_CTRL>
												SS_NAME='Complex Content Model'
												FMT={
													content.outputStyle='text-par';
													ctrl.size.width='406.5';
													ctrl.size.height='38.3';
													tcell.padding.extra.right='3.3';
													text.style='cs6';
												}
											</SS_CALL_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</BODY>
					</FOLDER>
					<FOLDER>
						DESCR='SIMPLE CONTENT'
						COND='stockSection.getVar("contentType") == "simple"'
						COLLAPSED
						<BODY>
							<AREA_SEC>
								COND='getBooleanParam("fmt.allowNestedTables")'
								BREAK_PARENT_BLOCK='when-executed'
								FMT={
									table.border.style='none';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='   '
												FMT={
													ctrl.size.width='21';
													ctrl.size.height='59.3';
													tcell.sizing='Minimal';
													tcell.padding.extra.left='3.3';
													text.option.nbsps='true';
												}
											</TEXT_CTRL>
											<PANEL>
												FMT={
													content.outputStyle='table';
													ctrl.size.width='478.5';
													ctrl.size.height='59.3';
													tcell.padding.extra.right='3.3';
													table.cell.align.vert='Top';
													table.cell.padding.both='0';
													table.border.style='none';
												}
												<AREA>
													<CTRL_GROUP>
														<CTRLS>
															<PANEL>
																FMT={
																	ctrl.size.width='72';
																	ctrl.size.height='38.3';
																	tcell.padding.extra.right='1.7';
																	txtfl.delimiter.type='none';
																	par.option.nowrap='true';
																}
																<AREA>
																	<CTRL_GROUP>
																		<CTRLS>
																			<TEXT_CTRL>
																				TEXT='Content:'
																				FMT={
																					text.font.style.italic='true';
																				}
																			</TEXT_CTRL>
																			<TEXT_CTRL>
																				TEXT=' '
																				FMT={
																					text.style='cs6';
																					text.option.nbsps='true';
																				}
																			</TEXT_CTRL>
																		</CTRLS>
																	</CTRL_GROUP>
																</AREA>
															</PANEL>
															<SS_CALL_CTRL>
																SS_NAME='Element Simple Content'
																FMT={
																	content.outputStyle='text-par';
																	ctrl.size.width='384';
																	ctrl.size.height='38.3';
																	text.style='cs9';
																}
															</SS_CALL_CTRL>
														</CTRLS>
													</CTRL_GROUP>
												</AREA>
											</PANEL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
							<AREA_SEC>
								FMT={
									table.border.style='none';
									trow.cell.align.vert='Top';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='   '
												FMT={
													ctrl.size.width='21';
													ctrl.size.height='38.3';
													tcell.sizing='Minimal';
													tcell.padding.extra.left='3.3';
													text.option.nbsps='true';
												}
											</TEXT_CTRL>
											<PANEL>
												FMT={
													ctrl.size.width='72';
													ctrl.size.height='38.3';
													tcell.sizing='Minimal';
													tcell.padding.extra.right='1.7';
													txtfl.delimiter.type='none';
													par.option.nowrap='true';
												}
												<AREA>
													<CTRL_GROUP>
														<CTRLS>
															<TEXT_CTRL>
																TEXT='Content:'
																FMT={
																	text.font.style.italic='true';
																}
															</TEXT_CTRL>
															<TEXT_CTRL>
																TEXT=' '
																FMT={
																	text.style='cs6';
																	text.option.nbsps='true';
																}
															</TEXT_CTRL>
														</CTRLS>
													</CTRL_GROUP>
												</AREA>
											</PANEL>
											<SS_CALL_CTRL>
												SS_NAME='Element Simple Content'
												FMT={
													content.outputStyle='text-par';
													ctrl.size.width='406.5';
													ctrl.size.height='38.3';
													tcell.sizing='Relative';
													tcell.padding.extra.right='3.3';
													text.style='cs9';
												}
											</SS_CALL_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</BODY>
					</FOLDER>
				</BODY>
				<FOOTER>
					DESCR='END TAG'
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='none';
								}
								<CTRLS>
									<PANEL>
										FMT={
											ctrl.size.width='499.5';
											ctrl.size.height='38.3';
											tcell.padding.extra.left='3.3';
											tcell.padding.extra.right='3.3';
											tcell.padding.extra.bottom='3.3';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='</'
														FMT={
															text.style='cs7';
														}
													</TEXT_CTRL>
													<DATA_CTRL>
														FORMULA='stockSection.param'
														FMT={
															text.style='cs8';
														}
													</DATA_CTRL>
													<TEXT_CTRL>
														TEXT='>'
														FMT={
															text.style='cs7';
														}
													</TEXT_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</FOOTER>
			</FOLDER>
			<FOLDER>
				DESCR='EMPTY CONTENT'
				COLLAPSED
				FMT={
					text.style='cs4';
				}
				<BODY>
					<FOLDER>
						DESCR='ATTRIBUTES'
						COND='checkElementsByKey (
  "content-model-attributes",
  contextElement.id,
  BooleanQuery (
    instanceOf ("xs:%attribute") && ! hasAttrValue ("use", "prohibited")
  )
)'
						<BODY>
							<AREA_SEC>
								DESCR='if nested tables are allowed, generate the attribute summary as a separate nested table to avoid the unwanted stretching of table cells visible in some browsers/readers (e.g IE)'
								COND='getBooleanParam("fmt.allowNestedTables")'
								BREAK_PARENT_BLOCK='when-executed'
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='   '
												FMT={
													ctrl.size.width='21';
													ctrl.size.height='17.3';
													tcell.sizing='Minimal';
													tcell.padding.extra.left='3.3';
													text.option.nbsps='true';
												}
											</TEXT_CTRL>
											<SS_CALL_CTRL>
												SS_NAME='attributes'
												FMT={
													ctrl.size.width='478.5';
													ctrl.size.height='17.3';
													tcell.padding.extra.right='3.3';
												}
											</SS_CALL_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
							<ELEMENT_ITER>
								TARGET_ET='xs:%attribute'
								SCOPE='custom'
								ELEMENT_ENUM_EXPR='findElementsByKey (
  "content-model-attributes",
  contextElement.id,
  BooleanQuery (! hasAttrValue ("use", "prohibited"))
)'
								SORTING='by-expr'
								SORTING_KEY={expr='hasAttr("name")
  ? callStockSection("Attribute Name (local)")
  : getAttrQNameValue("ref").toXMLName (
       Array (getElementParam("$xmlContext"), contextElement))',ascending}
								SORTING_COND='getBooleanParam("$sorting")'
								<BODY>
									<AREA_SEC>
										DESCR='case of local attribute'
										COND='getAttrStringValue("name") != ""'
										BREAK_PARENT_BLOCK='when-executed'
										<AREA>
											<CTRL_GROUP>
												FMT={
													trow.cell.align.vert='Top';
													txtfl.delimiter.type='none';
												}
												<CTRLS>
													<TEXT_CTRL>
														TEXT='   '
														FMT={
															ctrl.size.width='21.8';
															ctrl.size.height='17.3';
															tcell.sizing='Minimal';
															tcell.padding.extra.left='3.3';
															text.option.nbsps='true';
														}
													</TEXT_CTRL>
													<SS_CALL_CTRL>
														SS_NAME='Attribute Name (local)'
														FMT={
															content.outputStyle='text-par';
															ctrl.size.width='75';
															ctrl.size.height='17.3';
															tcell.sizing='Minimal';
															tcell.option.nowrap='true';
															text.style='cs5';
															text.hlink.fmt='style';
															text.hlink.style='cs3';
														}
													</SS_CALL_CTRL>
													<TEXT_CTRL>
														TEXT=' = '
														FMT={
															ctrl.size.width='18.8';
															ctrl.size.height='17.3';
															tcell.sizing='Minimal';
															tcell.align.horz='Center';
															text.style='cs7';
														}
													</TEXT_CTRL>
													<SS_CALL_CTRL>
														SS_NAME='Attribute Value'
														FMT={
															content.outputStyle='text-par';
															ctrl.size.width='384';
															ctrl.size.height='17.3';
															tcell.padding.extra.right='3.3';
															text.style='cs9';
														}
													</SS_CALL_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</AREA_SEC>
									<AREA_SEC>
										DESCR='case of reference to global attribute'
										COND='getAttrValue("ref") != null'
										<AREA>
											<CTRL_GROUP>
												FMT={
													trow.cell.align.vert='Top';
													txtfl.delimiter.type='none';
												}
												<CTRLS>
													<TEXT_CTRL>
														TEXT='   '
														FMT={
															ctrl.size.width='21';
															ctrl.size.height='17.3';
															tcell.sizing='Minimal';
															tcell.padding.extra.left='3.3';
															text.option.nbsps='true';
														}
													</TEXT_CTRL>
													<SS_CALL_CTRL>
														SS_NAME='Attribute Name (reference)'
														FMT={
															content.outputStyle='text-par';
															ctrl.size.width='75';
															ctrl.size.height='17.3';
															tcell.sizing='Minimal';
															tcell.option.nowrap='true';
															text.style='cs5';
															text.hlink.fmt='style';
															text.hlink.style='cs3';
														}
													</SS_CALL_CTRL>
													<TEXT_CTRL>
														TEXT=' = '
														FMT={
															ctrl.size.width='18.8';
															ctrl.size.height='17.3';
															tcell.sizing='Minimal';
															tcell.align.horz='Center';
															text.style='cs7';
														}
													</TEXT_CTRL>
													<SS_CALL_CTRL>
														SS_NAME='Attribute Value'
														PASSED_ELEMENT_EXPR='findElementByKey (
  "global-attributes", getAttrQNameValue("ref"),
  BooleanQuery (
    checkElementByKey (
      "main-xsds",
      getXMLDocument().id,
      getElementParam("$mainXSD")
    )
  )
)'
														PASSED_ELEMENT_MATCHING_ET='xs:attribute'
														PARAMS_EXPR='Array (contextElement)'
														ALT_FORMULA='"???"'
														FMT={
															content.outputStyle='text-par';
															ctrl.size.width='384.8';
															ctrl.size.height='17.3';
															tcell.padding.extra.right='3.3';
															text.style='cs9';
														}
													</SS_CALL_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</AREA_SEC>
								</BODY>
							</ELEMENT_ITER>
						</BODY>
					</FOLDER>
					<ELEMENT_ITER>
						DESCR='ATTRIBUTE WILDCARDS'
						TARGET_ET='xs:anyAttribute'
						SCOPE='custom'
						ELEMENT_ENUM_EXPR='findElementsByKey (
  "content-model-attributes", contextElement.id
)'
						<BODY>
							<AREA_SEC>
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='   '
												FMT={
													ctrl.size.width='21';
													ctrl.size.height='17.3';
													tcell.sizing='Minimal';
													tcell.padding.extra.left='3.3';
													tcell.option.nowrap='true';
													text.option.nbsps='true';
												}
											</TEXT_CTRL>
											<SS_CALL_CTRL>
												SS_NAME='Any Attribute'
												FMT={
													content.outputStyle='text-par';
													ctrl.size.width='478.5';
													ctrl.size.height='17.3';
													tcell.padding.extra.right='3.3';
													text.style='cs5';
													text.font.style.italic='true';
													text.hlink.fmt='style';
													text.hlink.style='cs3';
												}
											</SS_CALL_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</BODY>
					</ELEMENT_ITER>
				</BODY>
				<HEADER>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<PANEL>
										FMT={
											ctrl.size.width='499.5';
											ctrl.size.height='38.3';
											tcell.padding.extra.left='3.3';
											tcell.padding.extra.right='3.3';
											tcell.padding.extra.top='3.3';
										}
										<AREA>
											<CTRL_GROUP>
												FMT={
													txtfl.delimiter.type='none';
												}
												<CTRLS>
													<TEXT_CTRL>
														TEXT='<'
														FMT={
															text.style='cs7';
														}
													</TEXT_CTRL>
													<DATA_CTRL>
														FORMULA='stockSection.param'
														FMT={
															text.style='cs8';
														}
													</DATA_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
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
									txtfl.delimiter.type='none';
								}
								<CTRLS>
									<TEXT_CTRL>
										TEXT='/>'
										FMT={
											ctrl.size.width='499.5';
											ctrl.size.height='17.3';
											tcell.padding.extra.left='3.3';
											tcell.padding.extra.right='3.3';
											tcell.padding.extra.bottom='3.3';
											text.style='cs7';
										}
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</FOOTER>
				<ELSE>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<PANEL>
										FMT={
											ctrl.size.width='499.5';
											ctrl.size.height='39.8';
											tcell.padding.extra.left='3.3';
											tcell.padding.extra.right='3.3';
											tcell.padding.extra.top='3.3';
											tcell.padding.extra.bottom='3.3';
										}
										<AREA>
											<CTRL_GROUP>
												FMT={
													txtfl.delimiter.type='none';
												}
												<CTRLS>
													<TEXT_CTRL>
														TEXT='<'
														FMT={
															text.style='cs7';
														}
													</TEXT_CTRL>
													<DATA_CTRL>
														FORMULA='stockSection.param'
														FMT={
															text.style='cs8';
														}
													</DATA_CTRL>
													<TEXT_CTRL>
														TEXT='/>'
														FMT={
															text.style='cs7';
														}
													</TEXT_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</ELSE>
			</FOLDER>
		</BODY>
		<HEADER>
			<AREA_SEC>
				COND='getBooleanParam("$showHeading")'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='XML Representation Summary'
								FMT={
									ctrl.size.width='499.5';
									ctrl.size.height='17.3';
									tcell.padding.extra.left='3.3';
									tcell.padding.extra.right='3.3';
									tcell.padding.extra.top='3.3';
									par.style='s2';
								}
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
	<FOLDER>
		SS_NAME='Element Rep (simpleType)'
		DESCR='param: element\'s qualified name'
		MATCHING_ETS={'#CUSTOM';'xs:%simpleType'}
		INIT_EXPR='contentType = ! rootElement.hasAttrValue("fixed", "") ? "simple" : "empty";
stockSection.setVar ("contentType", contentType);'
		FMT={
			sec.outputStyle='table';
			sec.page.keepTogether='true';
			table.sizing='Relative';
			table.cell.padding.both='0';
			table.bkgr.color='#F5F5F5';
			table.border.style='solid';
			table.border.color='#999999';
			table.border.horz.style='none';
			table.border.vert.style='none';
			table.page.keepTogether='true';
			table.option.borderStylesInHTML='true';
		}
		<BODY>
			<FOLDER>
				DESCR='NON-EMPTY CONTENT'
				COND='stockSection.getVar("contentType") != "empty"'
				OUTPUT_CHECKER_EXPR='// the output does exist as that was already tested 
// in the Enabling Condition;
// (1 means "yes"; -1 means "no"; 0 means "unknown")

1'
				BREAK_PARENT_BLOCK='when-executed'
				FMT={
					text.style='cs4';
				}
				<BODY>
					<AREA_SEC>
						COND='instanceOf ("#CUSTOM") &&
contextElement.value.toQName().isXSPredefinedType ("anyType")'
						BREAK_PARENT_BLOCK='when-executed'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='   '
										FMT={
											ctrl.size.width='21';
											ctrl.size.height='17.3';
											tcell.sizing='Minimal';
											tcell.padding.extra.left='3.3';
											text.option.nbsps='true';
										}
									</TEXT_CTRL>
									<TEXT_CTRL>
										TEXT='...'
										FMT={
											ctrl.size.width='478.5';
											ctrl.size.height='17.3';
											tcell.align.vert='Center';
											tcell.padding.extra.right='3.3';
											text.style='cs9';
										}
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						FMT={
							trow.cell.align.vert='Top';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='   '
										FMT={
											ctrl.size.width='21';
											ctrl.size.height='38.3';
											tcell.sizing='Minimal';
											tcell.padding.extra.left='3.3';
											text.option.nbsps='true';
										}
									</TEXT_CTRL>
									<PANEL>
										FMT={
											ctrl.size.width='72';
											ctrl.size.height='38.3';
											tcell.sizing='Minimal';
											tcell.padding.extra.right='1.7';
											txtfl.delimiter.type='none';
											par.option.nowrap='true';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='Content:'
														FMT={
															text.font.style.italic='true';
														}
													</TEXT_CTRL>
													<TEXT_CTRL>
														TEXT=' '
														FMT={
															text.style='cs6';
															text.option.nbsps='true';
														}
													</TEXT_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
									<SS_CALL_CTRL>
										SS_NAME='Element Simple Content'
										FMT={
											content.outputStyle='text-par';
											ctrl.size.width='406.5';
											ctrl.size.height='38.3';
											tcell.padding.extra.right='3.3';
											text.style='cs9';
										}
									</SS_CALL_CTRL>
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
									txtfl.delimiter.type='none';
								}
								<CTRLS>
									<PANEL>
										FMT={
											ctrl.size.width='499.5';
											ctrl.size.height='38.3';
											tcell.padding.extra.left='3.3';
											tcell.padding.extra.right='3.3';
											tcell.padding.extra.top='3.3';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='<'
														FMT={
															text.style='cs7';
														}
													</TEXT_CTRL>
													<DATA_CTRL>
														FORMULA='stockSection.param'
														FMT={
															text.style='cs8';
														}
													</DATA_CTRL>
													<TEXT_CTRL>
														TEXT='>'
														FMT={
															text.style='cs7';
														}
													</TEXT_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
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
									txtfl.delimiter.type='none';
								}
								<CTRLS>
									<PANEL>
										FMT={
											ctrl.size.width='499.5';
											ctrl.size.height='38.3';
											tcell.padding.extra.left='3.3';
											tcell.padding.extra.right='3.3';
											tcell.padding.extra.bottom='3.3';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='</'
														FMT={
															text.style='cs7';
														}
													</TEXT_CTRL>
													<DATA_CTRL>
														FORMULA='stockSection.param'
														FMT={
															text.style='cs8';
														}
													</DATA_CTRL>
													<TEXT_CTRL>
														TEXT='>'
														FMT={
															text.style='cs7';
														}
													</TEXT_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</FOOTER>
			</FOLDER>
			<FOLDER>
				DESCR='EMPTY CONTENT'
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='none';
								}
								<CTRLS>
									<PANEL>
										FMT={
											ctrl.size.width='499.5';
											ctrl.size.height='39.8';
											tcell.padding.extra.left='3.3';
											tcell.padding.extra.right='3.3';
											tcell.padding.extra.top='3.3';
											tcell.padding.extra.bottom='3.3';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='<'
														FMT={
															text.style='cs7';
														}
													</TEXT_CTRL>
													<DATA_CTRL>
														FORMULA='stockSection.param'
														FMT={
															text.style='cs8';
														}
													</DATA_CTRL>
													<TEXT_CTRL>
														TEXT='/>'
														FMT={
															text.style='cs7';
														}
													</TEXT_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</FOLDER>
		</BODY>
		<HEADER>
			<AREA_SEC>
				COND='getBooleanParam("$showHeading")'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='XML Representation Summary'
								FMT={
									ctrl.size.width='499.5';
									ctrl.size.height='17.3';
									tcell.padding.extra.left='3.3';
									tcell.padding.extra.right='3.3';
									tcell.padding.extra.top='3.3';
									par.style='s2';
								}
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
	<FOLDER>
		SS_NAME='Element Simple Content'
		MATCHING_ETS={'#CUSTOM';'xs:%complexType';'xs:%simpleType'}
		FMT={
			sec.outputStyle='text-par';
		}
		<BODY>
			<FOLDER>
				DESCR='in case the template\'s root element is \'%element\', some settings specified in it need to be printed; (switch to it the current context element)'
				COND='! getBooleanParam("$abbreviateSimpleContent")'
				CONTEXT_ELEMENT_EXPR='rootElement'
				MATCHING_ET='xs:%element'
				BREAK_PARENT_BLOCK='when-executed'
				<BODY>
					<FOLDER>
						DESCR='if \'fixed\' attr is specified and its value is not empty (the empty value actually defines the EMPTY content model!)'
						COND='// see "New Context Element"'
						CONTEXT_ELEMENT_EXPR='hasAttr("fixed") ? contextElement :
{
  el = getElementParam("$referenceComp");
  el.hasAttr("fixed") ? el : null
}'
						MATCHING_ET='xs:%element'
						<BODY>
							<AREA_SEC>
								<AREA>
									<CTRL_GROUP>
										FMT={
											txtfl.delimiter.type='none';
										}
										<CTRLS>
											<TEXT_CTRL>
												TEXT='"'
											</TEXT_CTRL>
											<DATA_CTRL>
												ATTR='fixed'
											</DATA_CTRL>
											<TEXT_CTRL>
												TEXT='"'
											</TEXT_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</BODY>
					</FOLDER>
					<FOLDER>
						DESCR='when there\'s no \'fixed\' attribute'
						COND='! hasAttr("fixed")'
						<BODY>
							<AREA_SEC>
								DESCR='if there\'s \'default\' attribute'
								COND='// see "New Context Element"'
								CONTEXT_ELEMENT_EXPR='el = getElementParam("$referenceComp");

el.hasAttr("default") ? el :
  hasAttr("fixed") ? contextElement : null'
								MATCHING_ET='xs:%element'
								BREAK_PARENT_BLOCK='when-executed'
								<AREA>
									<CTRL_GROUP>
										FMT={
											txtfl.delimiter.type='none';
										}
										<CTRLS>
											<SS_CALL_CTRL>
												SS_NAME='Simple Content Model'
												PASSED_ELEMENT_EXPR='stockSection.contextElement'
												PASSED_ELEMENT_MATCHING_ETS={'#CUSTOM';'xs:%complexType';'xs:%simpleType'}
												PARAMS_EXPR='Array (true)'
											</SS_CALL_CTRL>
											<DELIMITER>
												FMT={
													txtfl.delimiter.type='text';
													txtfl.delimiter.text=' : ';
												}
											</DELIMITER>
											<TEXT_CTRL>
												TEXT='"'
											</TEXT_CTRL>
											<DATA_CTRL>
												ATTR='default'
											</DATA_CTRL>
											<TEXT_CTRL>
												TEXT='"'
											</TEXT_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
							<SS_CALL>
								DESCR='otherwise, no \'default\' attribute; print the simple content model (back to the element received by this stock-section)'
								SS_NAME='Simple Content Model'
								PASSED_ELEMENT_EXPR='stockSection.contextElement'
								PASSED_ELEMENT_MATCHING_ETS={'#CUSTOM';'xs:%complexType';'xs:%simpleType'}
							</SS_CALL>
						</BODY>
					</FOLDER>
				</BODY>
			</FOLDER>
			<SS_CALL>
				DESCR='otherwise, just print the simple content model'
				SS_NAME='Simple Content Model'
				PARAMS_EXPR='Array (
 false, 
 false, 
 getBooleanParam("$abbreviateSimpleContent")
)'
			</SS_CALL>
		</BODY>
		<HEADER>
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='{ '
								FMT={
									text.style='cs6';
								}
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
								TEXT=' }'
								FMT={
									text.style='cs6';
								}
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</FOOTER>
	</FOLDER>
	<FOLDER>
		SS_NAME='Simple Content Model'
		DESCR='params[0]: highlight XML markup;
params[1]: apply all brackets
params[2]: abbreviate simple content representation'
		MATCHING_ETS={'#CUSTOM';'xs:%complexType';'xs:%simpleType'}
		FMT={
			sec.outputStyle='text-par';
		}
		<BODY>
			<TEMPLATE_CALL>
				MATCHING_ETS={'xs:%complexType';'xs:%simpleType'}
				BREAK_PARENT_BLOCK='when-executed'
				TEMPLATE_FILE='simpleContentRep.tpl'
				PASSED_PARAMS={
					'$highlightMarkup','stockSection.params[0].toBoolean()';
					'$applyBrackets','stockSection.params[1].toBoolean()';
					'$abbreviateEnum','stockSection.params[2].toBoolean()';
				}
			</TEMPLATE_CALL>
			<AREA_SEC>
				MATCHING_ET='#CUSTOM'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								FORMULA='toXMLName (
  contextElement.value.toQName(),
  getElementParam("$xmlContext")
)'
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</FOLDER>
	<FOLDER>
		SS_NAME='simpleType Rep'
		MATCHING_ET='xs:simpleType'
		FMT={
			sec.outputStyle='table';
			sec.page.keepTogether='true';
			table.sizing='Relative';
			table.cell.padding.both='0';
			table.bkgr.color='#F5F5F5';
			table.border.style='solid';
			table.border.color='#999999';
			table.border.horz.style='none';
			table.border.vert.style='none';
			table.option.borderStylesInHTML='true';
		}
		<BODY>
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEMPLATE_CALL_CTRL>
								TEMPLATE_FILE='simpleContentRep.tpl'
								PASSED_PARAMS={
									'$abbreviateEnum','getBooleanParam("$abbreviateSimpleContent")';
								}
								FMT={
									content.outputStyle='text-par';
									ctrl.size.width='499.5';
									ctrl.size.height='17.3';
									tcell.padding.extra.left='3.3';
									tcell.padding.extra.right='3.3';
									tcell.padding.extra.top='3.3';
									tcell.padding.extra.bottom='3.3';
									text.style='cs9';
								}
							</TEMPLATE_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
		<HEADER>
			<AREA_SEC>
				COND='getBooleanParam("$showHeading")'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Simple Content Model'
								FMT={
									ctrl.size.width='499.5';
									ctrl.size.height='17.3';
									tcell.padding.extra.left='3.3';
									tcell.padding.extra.right='3.3';
									tcell.padding.extra.top='3.3';
									par.style='s2';
								}
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
</STOCK_SECTIONS>
CHECKSUM='oK9xVCM10uZm8QVAUaLzIuwfUGWRYQlYhuY5qjvIVoE'
</DOCFLEX_TEMPLATE>