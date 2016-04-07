<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2005-09-01 11:12:00'
LAST_UPDATE='2014-07-05 20:02:50'
DESIGNER_TOOL='DocFlex SDK 1.x'
DESIGNER_LICENSE_TYPE='Filigris Works Team'
APP_ID='docflex-xml-xsddoc2'
APP_NAME='DocFlex/XML XSDDoc'
APP_VER='2.8.1'
APP_AUTHOR='Copyright © 2005-2014 Filigris Works, Leonid Rudy Softwareprodukte. All rights reserved.'
TEMPLATE_TYPE='DocumentTemplate'
DSM_TYPE_ID='xsddoc'
ROOT_ETS={'xs:complexType';'xs:simpleType'}
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$mainXSD';
		param.type='GOMElement';
		param.defaultValue.expr='findElementByKey ("main-xsds", getXMLDocument().id)';
	}
	PARAM={
		param.name='doc.comp';
		param.title='Component Documentation';
		param.title.style.bold='true';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='doc.comp.usage.layout';
		param.title='List Layout';
		param.title.style.italic='true';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='flow;one_column;two_columns;optimal';
		param.defaultValue='optimal';
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
		param.name='show.localElementExt';
		param.title='Local Element Extensions';
		param.type='enum';
		param.enum.values='always;repeating;never';
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
		style.name='Derivation Method';
		style.id='cs2';
		text.font.name='Verdana';
		text.font.size='8';
		text.color.foreground='#FF9900';
	}
	PAR_STYLE={
		style.name='Heading 4';
		style.id='s1';
		text.font.size='10';
		text.font.style.bold='true';
		par.bkgr.opaque='true';
		par.bkgr.color='#EEEEFF';
		par.border.style='solid';
		par.border.color='#666666';
		par.margin.top='10';
		par.margin.bottom='8.3';
		par.padding.left='1.7';
		par.padding.right='1.7';
		par.padding.top='1.7';
		par.padding.bottom='1.7';
		par.page.keepWithNext='true';
	}
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs3';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	PAR_STYLE={
		style.name='List Heading 2';
		style.id='s2';
		text.font.name='Arial';
		text.font.size='9';
		text.font.style.bold='true';
		par.margin.bottom='6.7';
		par.page.keepWithNext='true';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s3';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Page Reference';
		style.id='cs4';
		text.font.name='Courier New';
		text.font.size='8';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs3';
}
<ROOT>
	<FOLDER>
		DESCR='All KNOWN USAGE LOCATIONS'
		INIT_EXPR='thisContext.setVar (
  "all_locations", 
  toVector (findElementsByKey ("type-usage", contextElement.id))
)'
		FMT={
			sec.outputStyle='list';
			list.item.margin.top='8.3';
			list.item.margin.bottom='8.3';
		}
		<HTARGET>
			HKEYS={
				'contextElement.id';
				'"usage-locations"';
			}
		</HTARGET>
		<BODY>
			<FOLDER>
				DESCR='Usage in derivations of other global types'
				COND='e = filterElements (
  thisContext.getVar ("all_locations").toEnum(), 
  BooleanQuery (
    instanceOf ("xs:%extensionType | xs:%restrictionType | xs:list | xs:restriction | xs:union") 
    &&
    findPredecessorByType (
       "xs:%element|xs:%attribute|xs:simpleType|xs:complexType"
    ).instanceOf ("xs:simpleType | xs:complexType")
  )
);

e.hasNext() ? {

  lenMax = 0;  // accumulates the maximal length of location names

  v = e.toVector();

  // sort locations according to their descriptions (names)
  v.sortVector (
    @(GOMElement) el,
    FlexQuery ({
      locationName = el.callStockSection ("Usage in global type");

      len = locationName.length();
      lenMax < len ? lenMax = len;

      locationName
    })
  );

  thisContext.setVar ("locations", v); 

  /* The actual list layout:

   - If the list consist of the only location, the layout is \'flow\'
   - If the specified layout was \'optimal\', calculate the actual layout as follows:

     1). If maximal length of location names in the list exceeds 50,
         use \'one_column\' layout
     2). Otherwise, use \'two_columns\' layout

   - Otherwise, use the specified layout
  */

  thisContext.setVar (
    "listLayout", 
    (v.size() == 1 ? "flow" :
       hasParamValue("doc.comp.usage.layout", "optimal") ?
         lenMax > 50 ? "one_column" : "two_columns"
       : getStringParam("doc.comp.usage.layout"))
  );

  true; 

} : false'
				COLLAPSED
				<BODY>
					<ELEMENT_ITER>
						DESCR='print the list as comma-delimited text flow'
						COND='thisContext.getVar ("listLayout") == "flow"'
						BREAK_PARENT_BLOCK='when-executed'
						TARGET_ET='<ANY>'
						SCOPE='custom'
						ELEMENT_ENUM_EXPR='thisContext.getVar ("locations").toEnum()'
						FMT={
							sec.outputStyle='list';
							list.type='delimited';
						}
						<BODY>
							<SS_CALL>
								SS_NAME='Usage in global type'
							</SS_CALL>
						</BODY>
					</ELEMENT_ITER>
					<ELEMENT_ITER>
						DESCR='print one-column list'
						COND='thisContext.getVar ("listLayout") == "one_column"'
						BREAK_PARENT_BLOCK='when-executed'
						TARGET_ET='<ANY>'
						SCOPE='custom'
						ELEMENT_ENUM_EXPR='thisContext.getVar ("locations").toEnum()'
						FMT={
							list.type='delimited';
						}
						<BODY>
							<AREA_SEC>
								<AREA>
									<CTRL_GROUP>
										FMT={
											txtfl.delimiter.type='none';
										}
										<CTRLS>
											<SS_CALL_CTRL>
												SS_NAME='Usage in global type'
											</SS_CALL_CTRL>
											<TEXT_CTRL>
												COND='! iterator.isLastItem'
												TEXT=','
											</TEXT_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</BODY>
					</ELEMENT_ITER>
					<SS_CALL>
						DESCR='otherwise, print two column list'
						SS_NAME='Two Column List'
						PARAMS_EXPR='Array (
  thisContext.getVar("locations"),
  "Usage in global type"
)'
					</SS_CALL>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							par.style='s2';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='In derivations of other global types'
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='"(" + thisContext.getVar ("locations").toVector().size() + ")"'
									</DATA_CTRL>
									<DELIMITER>
										FMT={
											txtfl.delimiter.type='none';
										}
									</DELIMITER>
									<TEXT_CTRL>
										TEXT=':'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
			</FOLDER>
			<FOLDER>
				DESCR='Usage as direct type of elements'
				COND='e = filterElements (
      thisContext.getVar ("all_locations").toEnum(),
      "xs:%element"
    );

e.hasNext() ? {

  mainXSDFilter = BooleanQuery (checkElementByKey (
                    "main-xsds",
                    getXMLDocument().id,
                    getElementParam("$mainXSD")
                  ));
  nameExt = null;

  /* This variable accumulates the maximal normalized length of element display names.
   For an element, the normalized display name length is calculated
   as the number of characters of the element\'s main name plus
   (in the case of a local element with the name extension)
   the number of character of the local element name extension multiplied by 0.8
  */
  nameLenMax = 0;

  v = e.toVector();

  // sort locations according to the containing element\'s name
  v.sortVector (
    @(GOMElement) el,
    FlexQuery ({
      name = el.getAttrStringValue("name");
      schema = el.findAncestor ("xs:schema");
      targetNS = schema.getServiceAttr("targetNamespace").toString();

      el.instanceOf ("xs:element") ?
      {
        // case of global element

        displayName = toXMLName (targetNS, name, Array (rootElement, el));
        nameLen = displayName.length()

      } : {
        // case of local element

        form = el.hasAttr("form") ? el.getAttrValue("form")
                  : schema.getAttrValue ("elementFormDefault");

        displayName = (form == "qualified") ? 
                         toXMLName (targetNS, name, Array (rootElement, el)) : name;

        nameLen = displayName.length();
         
        // if there is local element name extension

        (hasParamValue("show.localElementExt", "always")
         ||
         hasParamValue("show.localElementExt", "repeating") &&
         {
           qName = QName (form == "qualified" ? targetNS : "", name);

           countElementsByKey ("global-elements", qName, mainXSDFilter) +
           countElementsByKey ("local-elements", qName, mainXSDFilter) > 1
         }
        ) ? {
          nameExt = el.callStockSection ("localElementExt");
          displayName = displayName + nameExt;

          nameLen = nameLen + round (nameExt.length() * 0.8);
        }
      };

      nameLenMax < nameLen ? nameLenMax = nameLen;

      displayName
    })
  );

  thisContext.setVar ("locations", v); 

  /* The actual list layout:

   - If the list consist of the only element, the layout is \'flow\'
   - If the specified layout was \'optimal\', calculate the actual layout as follows:

     1). If there are no local element name extensions, use \'flow\' layout
     2). If maximal normalized length of element display names in the list exceeds 50,
         use \'one_column\' layout
     3). Otherwise, use \'two_columns\' layout

   - Otherwise, use the specified layout
  */

  thisContext.setVar (
    "listLayout", 
    (v.size() == 1 ? "flow" :
       hasParamValue("doc.comp.usage.layout", "optimal") ?
         nameExt == null ? "flow" : nameLenMax > 50 ? "one_column" : "two_columns"
       : getStringParam("doc.comp.usage.layout"))
  );

  true;

} : false'
				COLLAPSED
				<BODY>
					<ELEMENT_ITER>
						DESCR='print the list as comma-delimited text flow'
						COND='thisContext.getVar ("listLayout") == "flow"'
						BREAK_PARENT_BLOCK='when-executed'
						TARGET_ET='xs:%element'
						SCOPE='custom'
						ELEMENT_ENUM_EXPR='thisContext.getVar("locations").toEnum()'
						FMT={
							sec.outputStyle='list';
							list.type='delimited';
						}
						<BODY>
							<SS_CALL>
								SS_NAME='Element Location'
							</SS_CALL>
						</BODY>
					</ELEMENT_ITER>
					<ELEMENT_ITER>
						DESCR='print one-column list'
						COND='thisContext.getVar ("listLayout") == "one_column"'
						BREAK_PARENT_BLOCK='when-executed'
						TARGET_ET='xs:%element'
						SCOPE='custom'
						ELEMENT_ENUM_EXPR='thisContext.getVar("locations").toEnum()'
						FMT={
							list.type='delimited';
						}
						<BODY>
							<AREA_SEC>
								<AREA>
									<CTRL_GROUP>
										FMT={
											txtfl.delimiter.type='none';
										}
										<CTRLS>
											<SS_CALL_CTRL>
												SS_NAME='Element Location'
											</SS_CALL_CTRL>
											<TEXT_CTRL>
												COND='! iterator.isLastItem'
												TEXT=','
											</TEXT_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</BODY>
					</ELEMENT_ITER>
					<SS_CALL>
						DESCR='otherwise, print two-column list'
						SS_NAME='Two Column List'
						PARAMS_EXPR='Array (
  thisContext.getVar("locations"),
  "Element Location"
)'
					</SS_CALL>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							par.style='s2';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='As direct type of elements'
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='"(" + thisContext.getVar ("locations").toVector().size() + ")"'
									</DATA_CTRL>
									<DELIMITER>
										FMT={
											txtfl.delimiter.type='none';
										}
									</DELIMITER>
									<TEXT_CTRL>
										TEXT=':'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
			</FOLDER>
			<FOLDER>
				DESCR='Usage in deriviations of anonymous types of elements'
				COND='e = filterElements (
      thisContext.getVar ("all_locations").toEnum(), 
      BooleanQuery (
        instanceOf ("xs:%extensionType | xs:%restrictionType | xs:list | xs:restriction | xs:union") 
        &&
        findPredecessorByType("xs:%attribute|xs:%element").instanceOf ("xs:%element")
      )
    );

e.hasNext() ? {

  lenMax = 0;  // accumulates the maximal length of location names

  v = e.toVector();

  // sort locations according to their descriptions (names)
  v.sortVector (
    @(GOMElement) el,
    FlexQuery ({
      locationName = el.callStockSection ("Usage in anonymous type of element");

      len = locationName.length();
      lenMax < len ? lenMax = len;

      locationName
    })
  );

  thisContext.setVar ("locations", v); 

  /* The actual list layout:

   - If the list consist of the only location, the layout is \'flow\'
   - If the specified layout was \'optimal\', calculate the actual layout as follows:

     1). If maximal length of location names in the list exceeds 50,
         use \'one_column\' layout
     2). Otherwise, use \'two_columns\' layout

   - Otherwise, use the specified layout
  */

  thisContext.setVar (
    "listLayout", 
    (v.size() == 1 ? "flow" :
       hasParamValue("doc.comp.usage.layout", "optimal") ?
         lenMax > 50 ? "one_column" : "two_columns"
       : getStringParam("doc.comp.usage.layout"))
  );

  true; 

} : false'
				COLLAPSED
				<BODY>
					<ELEMENT_ITER>
						DESCR='print the list as comma-delimited text flow'
						COND='thisContext.getVar ("listLayout") == "flow"'
						BREAK_PARENT_BLOCK='when-executed'
						TARGET_ET='<ANY>'
						SCOPE='custom'
						ELEMENT_ENUM_EXPR='thisContext.getVar("locations").toEnum()'
						FMT={
							sec.outputStyle='list';
							list.type='delimited';
						}
						<BODY>
							<SS_CALL>
								SS_NAME='Usage in anonymous type of element'
							</SS_CALL>
						</BODY>
					</ELEMENT_ITER>
					<ELEMENT_ITER>
						DESCR='print one-column list'
						COND='thisContext.getVar ("listLayout") == "one_column"'
						BREAK_PARENT_BLOCK='when-executed'
						TARGET_ET='<ANY>'
						SCOPE='custom'
						ELEMENT_ENUM_EXPR='thisContext.getVar("locations").toEnum()'
						FMT={
							list.type='delimited';
						}
						<BODY>
							<AREA_SEC>
								<AREA>
									<CTRL_GROUP>
										FMT={
											txtfl.delimiter.type='none';
										}
										<CTRLS>
											<SS_CALL_CTRL>
												SS_NAME='Usage in anonymous type of element'
											</SS_CALL_CTRL>
											<TEXT_CTRL>
												COND='! iterator.isLastItem'
												TEXT=','
											</TEXT_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</BODY>
					</ELEMENT_ITER>
					<SS_CALL>
						DESCR='otherwise, print two-column list'
						SS_NAME='Two Column List'
						PARAMS_EXPR='Array (
  thisContext.getVar("locations"),
  "Usage in anonymous type of element"
)'
					</SS_CALL>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							par.style='s2';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='In derivations of anonymous types of elements'
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='"(" + thisContext.getVar ("locations").toVector().size() + ")"'
									</DATA_CTRL>
									<DELIMITER>
										FMT={
											txtfl.delimiter.type='none';
										}
									</DELIMITER>
									<TEXT_CTRL>
										TEXT=':'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
			</FOLDER>
			<FOLDER>
				DESCR='Usage as direct type of attributes'
				COND='e = filterElements (
  thisContext.getVar ("all_locations").toEnum(), 
  "xs:%attribute"
);

e.hasNext() ? {

  v = e.toVector();

  // sort locations according to the attribute\'s representation
  v.sortVector (
    @(GOMElement) el,
    FlexQuery (el.callStockSection ("Attribute Location"))
  );

  thisContext.setVar ("locations", v); 
  true; 

} : false'
				COLLAPSED
				FMT={
					sec.outputStyle='list-items';
				}
				<BODY>
					<SS_CALL>
						DESCR='global attributes'
						COND='e = filterElements (
  thisContext.getVar ("locations").toEnum(), 
  "xs:%topLevelAttribute"
);

e.hasNext() ? {
  thisContext.setVar ("attributes", e.toVector()); 
  true; 
} : false'
						SS_NAME='Attribute List'
						PARAMS_EXPR='Array (
  "As direct type of global attributes",
  thisContext.getVar ("attributes")
)'
					</SS_CALL>
					<SS_CALL>
						DESCR='in elements'
						COND='e = filterElements (
  thisContext.getVar ("locations").toEnum(), 
  BooleanQuery (checkPredecessorByType("xs:%element"))
);

e.hasNext() ? {
  thisContext.setVar ("attributes", e.toVector()); 
  true; 
} : false'
						SS_NAME='Attribute List'
						PARAMS_EXPR='Array (
  "As direct type of attributes within elements",
  thisContext.getVar ("attributes")
)'
					</SS_CALL>
					<SS_CALL>
						DESCR='in complexTypes'
						COND='e = filterElements (
  thisContext.getVar ("locations").toEnum(), 
  BooleanQuery (

    // the filter condition ensures the attribute has been declared
    // directly in a global complexType, but not within a local element
    // belonging to a complexType

    findPredecessorByType ("xs:%element|xs:complexType").instanceOf ("xs:complexType")
  )
);

e.hasNext() ? {
  thisContext.setVar ("attributes", e.toVector()); 
  true; 
} : false'
						SS_NAME='Attribute List'
						PARAMS_EXPR='Array (
  "As direct type of attributes within complexTypes",
  thisContext.getVar ("attributes")
)'
					</SS_CALL>
					<SS_CALL>
						DESCR='in attributeGroups'
						COND='e = filterElements (
  thisContext.getVar ("locations").toEnum(), 
  BooleanQuery (checkPredecessorByType("xs:attributeGroup"))
);

e.hasNext() ? {
  thisContext.setVar ("attributes", e.toVector()); 
  true; 
} : false'
						SS_NAME='Attribute List'
						PARAMS_EXPR='Array (
  "As direct type of attributes within attributeGroups",
  thisContext.getVar ("attributes")
)'
					</SS_CALL>
				</BODY>
			</FOLDER>
			<FOLDER>
				DESCR='Usage in derivations of anonymous types of attributes'
				COND='e = filterElements (
      thisContext.getVar ("all_locations").toEnum(), 
      BooleanQuery (checkPredecessorByType("xs:%attribute"))
    );

e.hasNext() ? {
  thisContext.setVar ("locations", e.toVector());
  true; 
} : false'
				COLLAPSED
				FMT={
					sec.outputStyle='list-items';
				}
				<BODY>
					<ELEMENT_ITER>
						DESCR='global attributes'
						COLLAPSED
						TARGET_ETS={'xs:%extensionType';'xs:%restrictionType';'xs:list';'xs:restriction';'xs:union'}
						SCOPE='custom'
						ELEMENT_ENUM_EXPR='filterElements (
  thisContext.getVar("locations").toEnum(),
  BooleanQuery (checkPredecessorByType ("xs:%topLevelAttribute"))
)'
						SORTING='by-expr'
						SORTING_KEY={expr='findPredecessorByType ("xs:%attribute").callStockSection("Attribute Name")',ascending,case_sensitive}
						<BODY>
							<AREA_SEC>
								DESCR='case of global attribute'
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<SS_CALL_CTRL>
												SS_NAME='Attribute Location'
												PASSED_ELEMENT_EXPR='findPredecessorByType ("xs:%attribute")'
												PASSED_ELEMENT_MATCHING_ET='xs:%attribute'
											</SS_CALL_CTRL>
											<SS_CALL_CTRL>
												SS_NAME='Used As'
												PASSED_ELEMENT_EXPR='iterator.element'
												PASSED_ELEMENT_MATCHING_ETS={'xs:%extensionType';'xs:%restrictionType';'xs:list';'xs:restriction';'xs:union'}
											</SS_CALL_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</BODY>
						<HEADER>
							<AREA_SEC>
								FMT={
									par.style='s2';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='In derivations of anonymous types of global attributes'
											</TEXT_CTRL>
											<DATA_CTRL>
												FORMULA='"(" + iterator.numItems + ")"'
											</DATA_CTRL>
											<DELIMITER>
												FMT={
													txtfl.delimiter.type='none';
												}
											</DELIMITER>
											<TEXT_CTRL>
												TEXT=':'
											</TEXT_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</HEADER>
					</ELEMENT_ITER>
					<ELEMENT_ITER>
						DESCR='in elements'
						COLLAPSED
						TARGET_ETS={'xs:%extensionType';'xs:%restrictionType';'xs:list';'xs:restriction';'xs:union'}
						SCOPE='custom'
						ELEMENT_ENUM_EXPR='filterElements (
  thisContext.getVar("locations").toEnum(),
  BooleanQuery (
    findPredecessorByType("xs:%element|xs:complexType").instanceOf ("xs:%element")
  )
)'
						SORTING='by-expr'
						SORTING_KEY={expr='callStockSection("Attribute Location")',ascending,case_sensitive}
						<BODY>
							<AREA_SEC>
								DESCR='case of global attribute'
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<SS_CALL_CTRL>
												SS_NAME='Attribute Location'
												PASSED_ELEMENT_EXPR='findPredecessorByType ("xs:%attribute")'
												PASSED_ELEMENT_MATCHING_ET='xs:%attribute'
											</SS_CALL_CTRL>
											<SS_CALL_CTRL>
												SS_NAME='Used As'
												PASSED_ELEMENT_EXPR='iterator.element'
												PASSED_ELEMENT_MATCHING_ETS={'xs:%extensionType';'xs:%restrictionType';'xs:list';'xs:restriction';'xs:union'}
											</SS_CALL_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</BODY>
						<HEADER>
							<AREA_SEC>
								FMT={
									par.style='s2';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='In derivations of anonymous types of attributes within elements'
											</TEXT_CTRL>
											<DATA_CTRL>
												FORMULA='"(" + iterator.numItems + ")"'
											</DATA_CTRL>
											<DELIMITER>
												FMT={
													txtfl.delimiter.type='none';
												}
											</DELIMITER>
											<TEXT_CTRL>
												TEXT=':'
											</TEXT_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</HEADER>
					</ELEMENT_ITER>
					<ELEMENT_ITER>
						DESCR='in complexTypes'
						COLLAPSED
						TARGET_ETS={'xs:%extensionType';'xs:%restrictionType';'xs:list';'xs:restriction';'xs:union'}
						SCOPE='custom'
						ELEMENT_ENUM_EXPR='filterElements (
  thisContext.getVar("locations").toEnum(),

  // the filter condition ensures the attribute has been declared
  // directly in a global complexType, but not within a local element 
  // belonging to a complexType

  BooleanQuery (
    findPredecessorByType ("xs:%element|xs:complexType").instanceOf ("xs:complexType")
  )
)'
						SORTING='by-expr'
						SORTING_KEY={expr='callStockSection("Attribute Location")',ascending,case_sensitive}
						<BODY>
							<AREA_SEC>
								DESCR='case of global attribute'
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<SS_CALL_CTRL>
												SS_NAME='Attribute Location'
												PASSED_ELEMENT_EXPR='findPredecessorByType ("xs:%attribute")'
												PASSED_ELEMENT_MATCHING_ET='xs:%attribute'
											</SS_CALL_CTRL>
											<SS_CALL_CTRL>
												SS_NAME='Used As'
												PASSED_ELEMENT_EXPR='iterator.element'
												PASSED_ELEMENT_MATCHING_ETS={'xs:%extensionType';'xs:%restrictionType';'xs:list';'xs:restriction';'xs:union'}
											</SS_CALL_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</BODY>
						<HEADER>
							<AREA_SEC>
								FMT={
									par.style='s2';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='In derivations of anonymous types of attributes within complexTypes'
											</TEXT_CTRL>
											<DATA_CTRL>
												FORMULA='"(" + iterator.numItems + ")"'
											</DATA_CTRL>
											<DELIMITER>
												FMT={
													txtfl.delimiter.type='none';
												}
											</DELIMITER>
											<TEXT_CTRL>
												TEXT=':'
											</TEXT_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</HEADER>
					</ELEMENT_ITER>
					<ELEMENT_ITER>
						DESCR='in attributeGroups'
						COLLAPSED
						TARGET_ETS={'xs:%extensionType';'xs:%restrictionType';'xs:list';'xs:restriction';'xs:union'}
						SCOPE='custom'
						ELEMENT_ENUM_EXPR='filterElements (
  thisContext.getVar("locations").toEnum(),
  BooleanQuery (checkPredecessorByType("xs:attributeGroup"))
)'
						SORTING='by-expr'
						SORTING_KEY={expr='callStockSection("Attribute Location")',ascending,case_sensitive}
						<BODY>
							<AREA_SEC>
								DESCR='case of global attribute'
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<SS_CALL_CTRL>
												SS_NAME='Attribute Location'
												PASSED_ELEMENT_EXPR='findPredecessorByType ("xs:%attribute")'
												PASSED_ELEMENT_MATCHING_ET='xs:%attribute'
											</SS_CALL_CTRL>
											<SS_CALL_CTRL>
												SS_NAME='Used As'
												PASSED_ELEMENT_EXPR='iterator.element'
												PASSED_ELEMENT_MATCHING_ETS={'xs:%extensionType';'xs:%restrictionType';'xs:list';'xs:restriction';'xs:union'}
											</SS_CALL_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</BODY>
						<HEADER>
							<AREA_SEC>
								FMT={
									par.style='s2';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<TEXT_CTRL>
												TEXT='In derivations of anonymous types of attributes within attributeGroups'
											</TEXT_CTRL>
											<DATA_CTRL>
												FORMULA='"(" + iterator.numItems + ")"'
											</DATA_CTRL>
											<DELIMITER>
												FMT={
													txtfl.delimiter.type='none';
												}
											</DELIMITER>
											<TEXT_CTRL>
												TEXT=':'
											</TEXT_CTRL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</HEADER>
					</ELEMENT_ITER>
				</BODY>
			</FOLDER>
		</BODY>
		<HEADER>
			<AREA_SEC>
				FMT={
					par.style='s1';
				}
				<AREA>
					<CTRL_GROUP>
						FMT={
							trow.bkgr.color='#CCCCFF';
						}
						<CTRLS>
							<TEXT_CTRL>
								TEXT='Known Usage Locations'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
</ROOT>
<STOCK_SECTIONS>
	<FOLDER>
		SS_NAME='Attribute List'
		DESCR='params[0]: list title; 
params[1]: vector of attributes to list'
		INIT_EXPR='lenMax = 0;  // accumulates the maximal length of attribute location names

v = stockSection.params[1].toVector();

v.sortVector (
  @(GOMElement) el,
  FlexQuery ({
    locationName = el.callStockSection ("Attribute Location");

    len = locationName.length();
    lenMax < len ? lenMax = len;

    locationName
  })
);

stockSection.setVar ("attributes", v);

/* The actual list layout:

 - If the list consist of the only location, the layout is \'flow\'
 - If the specified layout was \'optimal\', calculate the actual layout as follows:

   1). If maximal length of location names in the list exceeds 50,
       use \'one_column\' layout
   2). Otherwise, use \'two_columns\' layout

 - Otherwise, use the specified layout
*/

stockSection.setVar (
  "listLayout", 
  (v.size() == 1 ? "flow" :
     hasParamValue("doc.comp.usage.layout", "optimal") ?
       lenMax > 50 ? "one_column" : "two_columns"
     : getStringParam("doc.comp.usage.layout"))
);'
		<BODY>
			<ELEMENT_ITER>
				DESCR='print the list as comma-delimited text'
				COND='stockSection.getVar ("listLayout") == "flow"'
				BREAK_PARENT_BLOCK='when-executed'
				TARGET_ET='xs:%attribute'
				SCOPE='custom'
				ELEMENT_ENUM_EXPR='stockSection.getVar ("attributes").toEnum()'
				FMT={
					sec.outputStyle='list';
					list.type='delimited';
				}
				<BODY>
					<SS_CALL>
						SS_NAME='Attribute Location'
					</SS_CALL>
				</BODY>
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='print one-column list'
				COND='stockSection.getVar ("listLayout") == "one_column"'
				BREAK_PARENT_BLOCK='when-executed'
				TARGET_ET='xs:%attribute'
				SCOPE='custom'
				ELEMENT_ENUM_EXPR='stockSection.getVar ("attributes").toEnum()'
				FMT={
					list.type='delimited';
				}
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='none';
								}
								<CTRLS>
									<SS_CALL_CTRL>
										SS_NAME='Attribute Location'
									</SS_CALL_CTRL>
									<TEXT_CTRL>
										COND='! iterator.isLastItem'
										TEXT=','
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</ELEMENT_ITER>
			<SS_CALL>
				DESCR='otherwise, print two column list'
				SS_NAME='Two Column List'
				PARAMS_EXPR='Array (
  stockSection.getVar("attributes"),
  "Attribute Location"
)'
			</SS_CALL>
		</BODY>
		<HEADER>
			<AREA_SEC>
				FMT={
					par.style='s2';
				}
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								FORMULA='stockSection.param'
							</DATA_CTRL>
							<DATA_CTRL>
								FORMULA='"(" + stockSection.getVar ("attributes").toVector().size() + ")"'
							</DATA_CTRL>
							<DELIMITER>
								FMT={
									txtfl.delimiter.type='none';
								}
							</DELIMITER>
							<TEXT_CTRL>
								TEXT=':'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
	<AREA_SEC>
		SS_NAME='Attribute Location'
		DESCR='case of global attribute'
		MATCHING_ET='xs:%attribute'
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='none';
			par.option.nowrap='true';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<PANEL>
						DESCR='in case of local attribute'
						CONTEXT_ELEMENT_EXPR='findPredecessorByType (
  "xs:%element|xs:complexType|xs:attributeGroup"
)'
						MATCHING_ETS={'xs:%element';'xs:attributeGroup';'xs:complexType'}
						FMT={
							ctrl.size.width='185.3';
							ctrl.size.height='38.3';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<SS_CALL_CTRL>
										SS_NAME='Component Name'
									</SS_CALL_CTRL>
									<TEXT_CTRL>
										TEXT='/@'
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</PANEL>
					<SS_CALL_CTRL>
						SS_NAME='Attribute Name'
					</SS_CALL_CTRL>
					<PANEL>
						COND='output.format.supportsPageRefs
&&
getBooleanParam("fmt.page.refs")
&&
findHyperTarget (Array (
  contextElement.id,
  Array ("def", "local", "detail", "xml-source-location")
)) != null'
						FMT={
							ctrl.size.width='180';
							ctrl.size.height='38.3';
							txtfl.delimiter.type='none';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<DELIMITER>
										FMT={
											txtfl.delimiter.type='nbsp';
										}
									</DELIMITER>
									<TEXT_CTRL>
										TEXT='['
										FMT={
											text.style='cs4';
										}
									</TEXT_CTRL>
									<DATA_CTRL>
										DOCFIELD='page-htarget'
										FMT={
											ctrl.option.noHLinkFmt='true';
											text.style='cs4';
											text.hlink.fmt='none';
										}
										<DOC_HLINK>
											HKEYS={
												'contextElement.id';
												'Array ("def", "local", "detail", "xml-source-location")';
											}
										</DOC_HLINK>
									</DATA_CTRL>
									<TEXT_CTRL>
										TEXT=']'
										FMT={
											text.style='cs4';
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
		SS_NAME='Attribute Name'
		MATCHING_ET='xs:%attribute'
		FMT={
			par.option.nowrap='true';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<DATA_CTRL>
						FORMULA='name = getAttrStringValue("name");
schema = findAncestor ("xs:schema");

( // if this is a top-level attribute, it should be always qualified
  instanceOf ("xs:attribute") 
  ||
  // in case of a local attribute
  (hasAttr("form") ? getAttrValue("form") : 
    schema.getAttrValue ("attributeFormDefault")) == "qualified"
) 
? toXMLName (
    schema.getServiceAttr("targetNamespace").toString(),
    name,
    Array (rootElement, contextElement)
  )
: name'
						<DOC_HLINK>
							TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection("Link Title") : ""'
							HKEYS={
								'contextElement.id';
								'Array ("def", "local", "detail", "xml-source-location")';
							}
						</DOC_HLINK>
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<TEMPLATE_CALL>
		SS_NAME='Component Name'
		DESCR='prints the qualified name of any global schema component or local element (passed as the stock-section context element)'
		TEMPLATE_FILE='../component/componentName.tpl'
		PASSED_PARAMS={
			'$xmlContexts','Array (rootElement, contextElement)';
		}
		FMT={
			sec.outputStyle='text-par';
		}
	</TEMPLATE_CALL>
	<AREA_SEC>
		SS_NAME='Element Location'
		MATCHING_ET='xs:%element'
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='none';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<SS_CALL_CTRL>
						SS_NAME='Component Name'
					</SS_CALL_CTRL>
					<PANEL>
						COND='output.format.supportsPageRefs
&&
getBooleanParam("fmt.page.refs")
&&
findHyperTarget (Array (
  contextElement.id,
  Array ("detail", "def", "xml-source-location")
)) != null'
						FMT={
							ctrl.size.width='186';
							ctrl.size.height='38.3';
							txtfl.delimiter.type='none';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<DELIMITER>
										FMT={
											txtfl.delimiter.type='nbsp';
										}
									</DELIMITER>
									<TEXT_CTRL>
										TEXT='['
										FMT={
											text.style='cs4';
										}
									</TEXT_CTRL>
									<DATA_CTRL>
										DOCFIELD='page-htarget'
										FMT={
											ctrl.option.noHLinkFmt='true';
											text.style='cs4';
											text.hlink.fmt='none';
										}
										<DOC_HLINK>
											HKEYS={
												'contextElement.id';
												'Array ("detail", "def", "xml-source-location")';
											}
										</DOC_HLINK>
									</DATA_CTRL>
									<TEXT_CTRL>
										TEXT=']'
										FMT={
											text.style='cs4';
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
	<TEMPLATE_CALL>
		SS_NAME='Link Title'
		TEMPLATE_FILE='../component/componentLinkTitle.tpl'
	</TEMPLATE_CALL>
	<ELEMENT_ITER>
		SS_NAME='List Column'
		DESCR='params[0]: the vector of column items
params[1]: true if this is the last part of the whole list (to avoid printing comma after last item)
params[2]: the name of the stock-section to print each item'
		TARGET_ET='<ANY>'
		SCOPE='custom'
		ELEMENT_ENUM_EXPR='toEnum (stockSection.params[0])'
		FMT={
			sec.outputStyle='pars';
			txtfl.delimiter.type='text';
			txtfl.delimiter.text=', ';
			list.style.type='none';
		}
		<BODY>
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
						FMT={
							txtfl.delimiter.type='none';
						}
						<CTRLS>
							<SS_CALL_CTRL>
								SS_NAME_EXPR='stockSection.params[2].toString()'
							</SS_CALL_CTRL>
							<TEXT_CTRL>
								COND='! iterator.isLastItem ||
! stockSection.params[1].toBoolean()'
								TEXT=','
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</ELEMENT_ITER>
	<TEMPLATE_CALL>
		SS_NAME='localElementExt'
		MATCHING_ET='xs:%localElement'
		TEMPLATE_FILE='../element/localElementExt.tpl'
		PASSED_PARAMS={
			'$xmlContexts','Array (rootElement, contextElement)';
		}
		PASSED_ROOT_ELEMENT_EXPR='// the element passed to localElementExt.tpl template 
// must be either globaly documented directly (not via a unifier)
// or not globally documented at all

el = findElementByKey (
  "globally-documented-local-elements",
  contextElement.id
);

el != null ? el : contextElement'
	</TEMPLATE_CALL>
	<FOLDER>
		SS_NAME='Two Column List'
		DESCR='params[0]: vector of elements to be printed in the list; 
params[1]: the name of the stock-section to print each list item'
		INIT_EXPR='// sort vector according to the list item string representations

ssName = stockSection.params[1].toString();

sortVector (
  toVector (stockSection.param), 
  @(GOMElement) el,
  FlexQuery (el.callStockSection (ssName))
)'
		<BODY>
			<AREA_SEC>
				FMT={
					sec.outputStyle='table';
					table.cell.padding.both='0';
					table.border.style='none';
				}
				<AREA>
					<CTRL_GROUP>
						FMT={
							trow.cell.align.vert='Top';
						}
						<CTRLS>
							<SS_CALL_CTRL>
								SS_NAME='List Column'
								PARAMS_EXPR='v = stockSection.param.toVector();
N = v.size();

Array (
  v.subVector (0, (N + 1) / 2), 
  N == 1,
  stockSection.params[1]
)'
								FMT={
									ctrl.size.width='217.5';
									ctrl.size.height='17.3';
								}
							</SS_CALL_CTRL>
							<SS_CALL_CTRL>
								SS_NAME='List Column'
								PARAMS_EXPR='v = stockSection.param.toVector();

Array (
  v.subVector ((v.size() + 1) / 2), 
  true,
  stockSection.params[1]
)'
								FMT={
									ctrl.size.width='282';
									ctrl.size.height='17.3';
									tcell.padding.extra.left='10';
								}
							</SS_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</FOLDER>
	<AREA_SEC>
		SS_NAME='Usage in anonymous type of element'
		DESCR='context element is a usage location within definition of anonymous type of element'
		MATCHING_ETS={'xs:%extensionType';'xs:%restrictionType';'xs:list';'xs:restriction';'xs:union'}
		<AREA>
			<CTRL_GROUP>
				FMT={
					txtfl.delimiter.type='space';
				}
				<CTRLS>
					<PANEL>
						CONTEXT_ELEMENT_EXPR='findPredecessorByType ("xs:%element")'
						MATCHING_ET='xs:%element'
						FMT={
							ctrl.size.width='328.5';
							ctrl.size.height='59.3';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<SS_CALL_CTRL>
										SS_NAME='Component Name'
									</SS_CALL_CTRL>
									<PANEL>
										COND='output.format.supportsPageRefs
&&
getBooleanParam("fmt.page.refs")
&&
findHyperTarget (Array (
  contextElement.id,
  Array ("detail", "def", "xml-source-location")
)) != null'
										FMT={
											ctrl.size.width='157.5';
											txtfl.delimiter.type='none';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='['
														FMT={
															text.style='cs4';
														}
													</TEXT_CTRL>
													<DATA_CTRL>
														DOCFIELD='page-htarget'
														FMT={
															ctrl.option.noHLinkFmt='true';
															text.style='cs4';
															text.hlink.fmt='none';
														}
														<DOC_HLINK>
															HKEYS={
																'contextElement.id';
																'Array ("detail", "def", "xml-source-location")';
															}
														</DOC_HLINK>
													</DATA_CTRL>
													<TEXT_CTRL>
														TEXT=']'
														FMT={
															text.style='cs4';
														}
													</TEXT_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</PANEL>
					<SS_CALL_CTRL>
						SS_NAME='Used As'
					</SS_CALL_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		SS_NAME='Usage in global type'
		DESCR='context element is a usage location within definition of a global type'
		MATCHING_ETS={'xs:%extensionType';'xs:%restrictionType';'xs:list';'xs:restriction';'xs:union'}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<PANEL>
						CONTEXT_ELEMENT_EXPR='findPredecessorByType ("xs:simpleType|xs:complexType")'
						MATCHING_ETS={'xs:complexType';'xs:simpleType'}
						FMT={
							ctrl.size.width='327';
							ctrl.size.height='59.3';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<SS_CALL_CTRL>
										SS_NAME='Component Name'
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
											ctrl.size.width='153';
											ctrl.size.height='38.3';
											text.style='cs4';
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
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</PANEL>
					<SS_CALL_CTRL>
						SS_NAME='Used As'
					</SS_CALL_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		SS_NAME='Used As'
		MATCHING_ETS={'xs:%extensionType';'xs:%restrictionType';'xs:list';'xs:restriction';'xs:union'}
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='none';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<DELIMITER>
					</DELIMITER>
					<TEXT_CTRL>
						MATCHING_ET='xs:%extensionType'
						TEXT='(as extension base)'
						FMT={
							text.style='cs2';
						}
					</TEXT_CTRL>
					<TEXT_CTRL>
						MATCHING_ETS={'xs:%restrictionType';'xs:restriction'}
						TEXT='(as restriction base)'
						FMT={
							text.style='cs2';
						}
					</TEXT_CTRL>
					<TEXT_CTRL>
						MATCHING_ET='xs:list'
						TEXT='(as list item type)'
						FMT={
							text.style='cs2';
						}
					</TEXT_CTRL>
					<TEXT_CTRL>
						MATCHING_ET='xs:union'
						TEXT='(as union member)'
						FMT={
							text.style='cs2';
						}
					</TEXT_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
</STOCK_SECTIONS>
CHECKSUM='5rlQDo3p7BW0PLrUjhC9BoT2pHK8uJCVXqQ9SPJBpOQ'
</DOCFLEX_TEMPLATE>