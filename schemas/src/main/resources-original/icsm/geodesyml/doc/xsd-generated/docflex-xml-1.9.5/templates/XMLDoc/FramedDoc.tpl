<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2005-03-04 07:50:00'
LAST_UPDATE='2013-12-16 01:44:43'
DESIGNER_TOOL='DocFlex SDK 1.x'
DESIGNER_LICENSE_TYPE='Filigris Works Team'
APP_NAME='XMLDoc'
TEMPLATE_TYPE='FramesetTemplate'
DSM_TYPE_ID='xmldoc'
ROOT_ET='#DOCUMENTS'
DESCR='<b>XML File Documenter Template (framed version)</b> -- allows you to compile any number of XML files of any possible types into a framed documentation with the special formatting and table of contents frame.'
TITLE_EXPR='getStringParam("docTitle")'
HTML_HEAD_EXPR='/* The following script is needed to support a possibility to pass
to the frameset file any HTML page contained in the documentation
to be loaded initially in the \'detailFrame\' frame on opening of
the frameset.

The page pathname should be specified relatively to the documentation
root directory (where index.html is located) and passed as the URL 
parameter (specified after \'?\' in the initial index.html URL),
for example:

  index.html?blah/blah/fileName.html 
*/

\'<script type="text/javascript">
    targetPage = "" + window.location.search;
    if (targetPage != "" && targetPage != "undefined")
        targetPage = targetPage.substring(1);
    window.onload = function() {
        if (targetPage != "" && targetPage != "undefined")
            top.detailFrame.location = top.targetPage;
    }
</script>\''
<TEMPLATE_PARAMS>
	PARAM={
		param.name='docTitle';
		param.title='Documentation Title';
		param.description='Specify the title for the documentation.';
		param.type='string';
	}
	PARAM={
		param.name='sorting';
		param.title='Sorting';
		param.description='Specify the order in which XML files are sorted in table of contents frame.';
		param.type='enum';
		param.enum.values='none;by name';
	}
	PARAM={
		param.name='include';
		param.title='Include';
		param.title.style.bold='true';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='include.nsb';
		param.title='Namespace Bindings';
		param.description='Include Namespace Bindings report';
		param.type='boolean';
		param.defaultValue='true';
	}
</TEMPLATE_PARAMS>
<STYLES>
	CHAR_STYLE={
		style.name='About';
		style.id='cs1';
		style.description='Used for "About" section added at the bottom of each generated document.';
		style.css.className='about';
		style.css.allowNamedRule='false';
		text.font.name='Verdana';
		text.font.size='7';
		text.color.foreground='#808080';
	}
	CHAR_STYLE={
		style.name='Default Paragraph Font';
		style.id='cs2';
		style.default='true';
	}
	PAR_STYLE={
		style.name='File Info';
		style.id='s1';
		style.css.className='fileInfo';
		text.font.size='7';
		text.font.style.bold='true';
		par.margin.top='1.7';
	}
	PAR_STYLE={
		style.name='Frame Heading 1';
		style.id='s2';
		style.description='Formats the top heading (title) of navigation frame';
		style.css.className='frameHead1';
		text.font.name='Arial';
		text.font.size='11';
		text.font.style.bold='true';
		par.margin.bottom='5';
	}
	PAR_STYLE={
		style.name='Frame Heading 2';
		style.id='s3';
		style.description='Formats the heading of groups (lists) in navigation frame, e.g.: "Files"';
		style.css.className='frameHead2';
		text.font.name='Arial';
		text.font.size='9';
		text.font.style.bold='true';
		par.margin.top='8';
		par.margin.bottom='4';
		par.option.nowrap='true';
	}
	PAR_STYLE={
		style.name='Frame Item';
		style.id='s4';
		style.css.className='frameItem';
		text.font.name='Arial';
		text.font.size='9';
		par.option.nowrap='true';
	}
	PAR_STYLE={
		style.name='Heading 1';
		style.id='s5';
		style.css.className='head1';
		text.font.size='16';
		text.font.style.bold='true';
		par.level='1';
		par.border.bottom.style='solid';
		par.border.bottom.thickness='medium';
		par.padding.bottom='1.7';
		par.page.keepWithNext='true';
	}
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs3';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='Hyperlink (blended in)';
		style.id='cs4';
		text.decor.underline='true';
	}
	CHAR_STYLE={
		style.name='Hyperlink (xml source, hover)';
		style.id='cs5';
		style.description='This style is used to indicate a hyperlink assigned to little piece of XML source (with all markup included). That hyperlink doesn\'t reveal itself until mouse cursor hovers over it. Then, the whole text (XML source) is highlighted with the red-colored underlining, which this style defines.

That feature is used only in the XML Namespace Bindings report.';
		style.css.className='xmlSrcLink-hover';
		text.decor.underline='true';
		text.color.foreground='#990000';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s6';
		style.default='true';
	}
	PAR_STYLE={
		style.name='Property Title';
		style.id='s7';
		style.description='The style for property titles. Besides formatting of text, it specifies also a few paragraph settings to ensure necessary spacing between neighbouring rows and cells.';
		style.css.className='propTitle';
		text.font.name='Arial';
		text.font.size='8.4';
		text.font.style.bold='true';
		text.decor.underline='false';
		text.color.foreground='#000000';
		par.margin.right='5.8';
		par.margin.top='0.3';
		par.margin.bottom='0.3';
		par.option.nowrap='true';
	}
	CHAR_STYLE={
		style.name='Property Value (Font)';
		style.id='cs6';
		style.description='Specify only font (text formatting) of the property value';
		style.css.className='propValue';
		text.font.name='Verdana';
		text.font.size='8.3';
	}
	CHAR_STYLE={
		style.name='XML Source';
		style.id='cs7';
		style.description='The default font for the reproduced XML source.';
		style.css.className='xml';
		text.font.name='Verdana';
		text.font.size='8.3';
	}
	CHAR_STYLE={
		style.name='XML Source Attribute Name';
		style.id='cs8';
		style.description='The font for the names of attributes in the reproduced XML source.';
		style.css.className='xmlAttrName';
		text.font.name='Verdana';
		text.font.size='8.3';
		text.color.foreground='#990000';
	}
	CHAR_STYLE={
		style.name='XML Source Attribute Name (Reserved)';
		style.id='cs9';
		style.description='The font for reserved attribute names in the reproduced XML source.

Reserved are namespace bindings (e.g. "xmlns:xs") and attributes from the XML namespace (e.g. "xml:lang").';
		style.css.className='xmlAttrName-reserved';
		text.font.name='Verdana';
		text.font.size='8.3';
		text.color.foreground='#FF0000';
	}
	CHAR_STYLE={
		style.name='XML Source Attribute Value';
		style.id='cs10';
		style.description='The font for the values of attributes in the reproduced XML source.

NOTE: The attribute values may be simultaneously hyperlinks, which are formatted with the same font/color and highlighted only with underlining. So, in case of HTML, this style will produce the same named CSS rule for both <span> element (to format just the value text) and <a> element (to format the hyperlink, along with \'blended-in hyperlink\' style).';
		style.css.className='xmlAttrVal';
		text.font.name='Verdana';
		text.font.size='7';
		text.font.style.bold='true';
		text.color.foreground='#000000';
	}
	CHAR_STYLE={
		style.name='XML Source Attribute Value (Reserved)';
		style.id='cs11';
		style.description='The font for the values of reserved attributes in the reproduced XML source.

Reserved are namespace bindings (e.g. "xmlns:xs") and attributes from the XML namespace (e.g. "xml:lang").';
		style.css.className='xmlAttrVal-reserved';
		text.font.name='Verdana';
		text.font.size='7';
		text.font.style.bold='true';
		text.color.foreground='#FF0000';
	}
	CHAR_STYLE={
		style.name='XML Source CDATA';
		style.id='cs12';
		style.description='The font for CDATA section content in the reproduced XML source';
		style.css.className='xmlCDATA';
		text.font.name='Verdana';
		text.font.size='8.3';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='XML Source CDATA Markup';
		style.id='cs13';
		style.description='The font for CDATA section markup ("<![CDATA[" and "]]>") in the reproduced XML source';
		style.css.className='xmlCDATAMrk';
		text.font.name='Verdana';
		text.font.size='8.3';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='XML Source Comment';
		style.id='cs14';
		style.description='The font for XML source comments';
		style.css.className='xmlCom';
		text.font.name='Courier New';
		text.font.size='8.3';
		text.color.foreground='#4D4D4D';
	}
	CHAR_STYLE={
		style.name='XML Source Comment Markup';
		style.id='cs15';
		style.description='The font for XML comment markup ("<!--" and "-->") in the reproduced XML source';
		style.css.className='xmlComMrk';
		text.font.name='Verdana';
		text.font.size='8.3';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='XML Source DOCTYPE';
		style.id='cs16';
		style.description='The font for <!DOCTYPE> declaration (except internal subset) in the reproduced XML source';
		style.css.className='xmlDOCTYPE';
		text.font.name='Verdana';
		text.font.size='8.3';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='XML Source Element Name';
		style.id='cs17';
		style.description='The font for the names of elements in the reproduced XML source.';
		style.css.className='xmlElemName';
		text.font.name='Verdana';
		text.font.size='8.3';
		text.color.foreground='#990000';
	}
	CHAR_STYLE={
		style.name='XML Source Element Value';
		style.id='cs18';
		style.description='The font for the values of elements in the reproduced XML source.';
		style.css.className='xmlElemVal';
		text.font.name='Verdana';
		text.font.size='7';
		text.font.style.bold='true';
	}
	CHAR_STYLE={
		style.name='XML Source Internal Subset';
		style.id='cs19';
		style.description='The font for Internal Subset (embedded in <!DOCTYPE> declaration) in the reproduced XML source.';
		style.css.className='xmlIS';
		text.font.name='Courier New';
		text.font.size='8.3';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='XML Source Internal Subset Markup';
		style.id='cs20';
		style.description='The font for specific XML markup surrounding Internal Subset section in the reproduced XML source';
		style.css.className='xmlSubsetMrk';
		text.font.name='Verdana';
		text.font.size='8.3';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='XML Source Markup';
		style.id='cs21';
		style.description='The font for XML markup characters (such as angle brackets, quotes etc.)';
		style.css.className='xmlMrk';
		text.font.name='Verdana';
		text.font.size='8.3';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='XML Source Processing Instruction';
		style.id='cs22';
		style.description='The font for Processing Instructions in the reproduced XML source.

It will be used also for XML declarions (which have the same syntax as processing instructions), e.g.:
<?xml version="1.0" encoding="UTF-8"?>';
		style.css.className='xmlPI';
		text.font.name='Verdana';
		text.font.size='8.3';
		text.color.foreground='#0000FF';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.default.font='Arial';
}
<FRAMESET>
	LAYOUT='columns'
	<FRAME>
		PERCENT_SIZE=20
		NAME='listFrame'
		SOURCE_EXPR='documentByTemplate("TOC")'
	</FRAME>
	<FRAME>
		PERCENT_SIZE=80
		NAME='detailFrame'
		SOURCE_EXPR='documentByTemplate("Document")'
	</FRAME>
</FRAMESET>
<ROOT>
	<ELEMENT_ITER>
		DESCR='iterates by all XML documents'
		TARGET_ET='#DOCUMENT'
		SCOPE='simple-location-rules'
		RULES={
			'* -> #DOCUMENT';
		}
		SORTING='by-attr'
		SORTING_KEY={lpath='@xmlName',ascending}
		SORTING_COND='getStringParam("sorting") == "by name"'
		<BODY>
			<TEMPLATE_CALL>
				DESCR='generates a single-file doc for each XML document'
				TEMPLATE_FILE='lib/Document.tpl'
				OUTPUT_TYPE='document'
				OUTPUT_DIR_EXPR='output.docFilesDir'
				FILE_NAME_EXPR='getAttrStringValue("xmlName").replace(".", "_")'
			</TEMPLATE_CALL>
		</BODY>
	</ELEMENT_ITER>
	<TEMPLATE_CALL>
		COND='getBooleanParam("include.nsb")'
		TEMPLATE_FILE='lib/xmlns-bindings.tpl'
		OUTPUT_TYPE='document'
		OUTPUT_DIR_EXPR='output.docFilesDir'
	</TEMPLATE_CALL>
	<TEMPLATE_CALL>
		DESCR='generates index of XML files'
		TEMPLATE_FILE='lib/TOC.tpl'
		OUTPUT_TYPE='document'
		OUTPUT_DIR_EXPR='output.docFilesDir'
	</TEMPLATE_CALL>
</ROOT>
CHECKSUM='9rpuTZ2lmfOE+A8Re8gvuFR3VNW+9WH2ziUtmJr9m7A'
</DOCFLEX_TEMPLATE>