<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2008-11-17 01:15:01'
LAST_UPDATE='2014-07-05 20:02:58'
DESIGNER_TOOL='DocFlex SDK 1.x'
DESIGNER_LICENSE_TYPE='Filigris Works Team'
APP_ID='docflex-xml-wsdldoc'
APP_NAME='DocFlex/XML WSDLDoc'
APP_VER='1.0.b'
APP_AUTHOR='Copyright © 2014 Filigris Works, Leonid Rudy Softwareprodukte. All rights reserved.'
FEATURE_TYPE='pro'
TEMPLATE_TYPE='DocumentTemplate'
DSM_TYPE_ID='wsdldoc'
ROOT_ET='xs:complexType'
DESCR='Documents \'block\' attribute of a complex type'
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$blockAttrValues';
		param.title='The actual values of \'block\' attribute';
		param.type='string';
		param.list='true';
		param.defaultValue.expr='hasAttr ("block") ? getAttrValues ("block") :
  findAncestor("xs:schema").getAttrValues ("blockDefault")';
		param.fixed='true';
	}
	PARAM={
		param.name='doc.xsd.comp.profile';
		param.title='Component Profile';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.block.value';
		param.title='Value';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.block.meaning';
		param.title='Meaning';
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
	CHAR_STYLE={
		style.name='Property Note';
		style.id='cs4';
		text.font.name='Tahoma';
		text.font.size='8';
		text.font.style.italic='true';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs3';
}
<ROOT>
	<AREA_SEC>
		COND='getBooleanParam("doc.xsd.comp.profile.block.value")'
		FMT={
			text.style='cs1';
			txtfl.delimiter.type='none';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						TEXT='"'
					</TEXT_CTRL>
					<DATA_CTRL>
						FORMULA='getArrayParam("$blockAttrValues")'
						FMT={
							txtfl.delimiter.text=' ';
						}
					</DATA_CTRL>
					<TEXT_CTRL>
						TEXT='"'
					</TEXT_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<FOLDER>
		DESCR='meaning'
		COND='getBooleanParam("doc.xsd.comp.profile.block.meaning")'
		FMT={
			text.style='cs4';
		}
		<BODY>
			<AREA_SEC>
				DESCR='#all'
				COND='getArrayParam("$blockAttrValues").contains ("#all")'
				BREAK_PARENT_BLOCK='when-executed'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='(blocks all substitutions of this complex type through xsi:type attribute in instance XML documents)'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				DESCR='extension, restriction'
				COND='values = getArrayParam("$blockAttrValues");

derivations = Vector();

values.contains ("extension") ?
  derivations.addElement ("extension");

values.contains ("restriction") ?
  derivations.addElement ("restriction");

derivations.size() > 0 ? 
{
  setVar ("blocked_derivations", derivations);
  true
} : false'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='(blocks substitutions of this complex type through xsi:type attribute in instance XML documents with any other types derived by'
							</TEXT_CTRL>
							<DATA_CTRL>
								FORMULA='mergeStrings (
  getVar ("blocked_derivations").toVector(),
  ", ", " or "
)'
							</DATA_CTRL>
							<TEXT_CTRL>
								TEXT='from this type)'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</FOLDER>
</ROOT>
CHECKSUM='uVNVi3xxjJVCwW0UqzQodofRR5GreczBoMl7cNl6lyg'
</DOCFLEX_TEMPLATE>