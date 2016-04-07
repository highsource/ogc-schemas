<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2005-03-04 07:50:00'
LAST_UPDATE='2014-07-05 20:02:57'
DESIGNER_TOOL='DocFlex SDK 1.x'
DESIGNER_LICENSE_TYPE='Filigris Works Team'
APP_ID='docflex-xml-wsdldoc'
APP_NAME='DocFlex/XML WSDLDoc'
APP_VER='1.0.b'
APP_AUTHOR='Copyright © 2014 Filigris Works, Leonid Rudy Softwareprodukte. All rights reserved.'
FEATURE_TYPE='pro'
TEMPLATE_TYPE='FramesetTemplate'
DSM_TYPE_ID='wsdldoc'
ROOT_ET='#DOCUMENTS'
DESCR='This template generates multi-file framed hypertext documentation for any number of XML Schemas.
<p>
<b>Note:</b> The destination output format may be only HTML.'
INIT_EXPR='callStockSection("Init");

setXMLNameForm (
  getBooleanParam("show.nsPrefix") ? "qualified" : "unqualified"
);'
FINISH_EXPR='callStockSection("Finish")'
TITLE_EXPR='getStringParam("docTitle")'
HTML_HEAD_EXPR='/* The following script is needed to support a possibility to pass
to the frameset file any HTML page contained in the documentation
to be loaded initially in the \'detailFrame\' frame on opening of
the frameset.

The page pathname should be specified relatively to the documentation
root directory (where index.html is located) and passed as the URL 
parameter (specified after \'?\' in the initial index.html URL),
for example:

  index.html?schemas/XMLSchema_xsd/complexTypes/namedAttributeGroup.html 
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
		param.name='$resourceOutputDir';
		param.title='Documentation resources directory';
		param.description='This parameter is used internally. It specifies the absolute pathname of a directory where all commonly used icons are to be stored.
<p>
If this pathname is empty, all resource (icon) files used by a given document will be stored in the local \'doc-files\' directory associated with that document.';
		param.type='string';
		param.defaultValue.expr='output.docFilesDir + "/resources"';
		param.hidden='true';
	}
	PARAM={
		param.name='docTitle';
		param.title='Documentation Title';
		param.description='${include help/params/docTitle.htm}';
		param.type='string';
		param.trimSpaces='true';
		param.noEmptyString='true';
		param.defaultValue='WSDL/XSD Documentation';
	}
	PARAM={
		param.name='gen.doc';
		param.title='Generate Details';
		param.title.style.bold='true';
		param.description='${include help/params/gen/gen.doc.htm}';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='gen.doc.for';
		param.title='For';
		param.title.style.italic='true';
		param.description='${include help/params/gen/for/gen.doc.for.htm}';
		param.group='true';
	}
	PARAM={
		param.name='gen.doc.for.files';
		param.title='WSDL/XSD Files';
		param.title.style.italic='true';
		param.description='${include help/params/gen/for/gen.doc.for.files.htm}';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='gen.doc.for.files.initial';
		param.title='Initial';
		param.title.style.italic='true';
		param.description='${include help/params/gen/for/gen.doc.for.files.initial.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.for.files.referenced';
		param.title='Referenced';
		param.title.style.italic='true';
		param.description='${include help/params/gen/for/gen.doc.for.files.referenced.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.for.files.referenced.wsdl';
		param.title='WSDL';
		param.title.style.italic='true';
		param.description='${include help/params/gen/for/gen.doc.for.files.referenced.wsdl.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.for.files.referenced.xsd';
		param.title='XSD';
		param.title.style.italic='true';
		param.description='${include help/params/gen/for/gen.doc.for.files.referenced.xsd.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.for.files.include';
		param.title='Include';
		param.title.style.italic='true';
		param.description='${include help/params/gen/for/gen.doc.for.files.include.htm}';
		param.type='string';
		param.trimSpaces='true';
		param.collapseSpaces='true';
		param.noEmptyString='true';
		param.list='true';
	}
	PARAM={
		param.name='gen.doc.for.files.exclude';
		param.title='Exclude';
		param.title.style.italic='true';
		param.description='${include help/params/gen/for/gen.doc.for.files.exclude.htm}';
		param.type='string';
		param.trimSpaces='true';
		param.collapseSpaces='true';
		param.noEmptyString='true';
		param.list='true';
	}
	PARAM={
		param.name='gen.doc.for.embeddedSchemas';
		param.title='Embedded Schemas';
		param.title.style.italic='true';
		param.description='${include help/params/gen/for/gen.doc.for.embeddedSchemas.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/gen/sorting/gen.doc.sorting.htm}';
		param.group='true';
	}
	PARAM={
		param.name='gen.doc.sorting.namespaces';
		param.title='Namespaces';
		param.title.style.italic='true';
		param.description='${include help/params/gen/sorting/gen.doc.sorting.namespaces.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.sorting.wsdl.files';
		param.title='WSDL Files';
		param.title.style.italic='true';
		param.description='${include help/params/gen/sorting/gen.doc.sorting.wsdl.files.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.sorting.xsd.schemas';
		param.title='Schemas';
		param.title.style.italic='true';
		param.description='${include help/params/gen/sorting/gen.doc.sorting.xsd.schemas.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.sorting.wsdl.defs';
		param.title='WSDL Definitions';
		param.title.style.italic='true';
		param.description='${include help/params/gen/sorting/gen.doc.sorting.wsdl.defs.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.sorting.xsd.comps';
		param.title='XSD Components';
		param.title.style.italic='true';
		param.description='${include help/params/gen/sorting/gen.doc.sorting.xsd.comps.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.overview';
		param.title='Overview Summary';
		param.description='${include help/params/gen/gen.doc.overview.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.allcomps';
		param.title='All Component Summary';
		param.description='${include help/params/gen/gen.doc.allcomps.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.namespace';
		param.title='Namespace Overviews';
		param.description='${include help/params/gen/gen.doc.namespace.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.wsdl.file';
		param.title='WSDL File Overviews';
		param.description='${include help/params/gen/wsdl/gen.doc.wsdl.file.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.xsd.schema';
		param.title='Schema Overviews';
		param.description='${include help/params/gen/xsd/gen.doc.xsd.schema.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.wsdl.def';
		param.title='WSDL Definitions';
		param.title.style.bold='true';
		param.description='${include help/params/gen/wsdl/gen.doc.wsdl.def.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.wsdl.def.service';
		param.title='Services';
		param.description='${include help/params/gen/wsdl/gen.doc.wsdl.def.service.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.wsdl.def.binding';
		param.title='Bindings';
		param.description='${include help/params/gen/wsdl/gen.doc.wsdl.def.binding.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.wsdl.def.portType';
		param.title='Port Types';
		param.description='${include help/params/gen/wsdl/gen.doc.wsdl.def.portType.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.wsdl.def.message';
		param.title='Messages';
		param.description='${include help/params/gen/wsdl/gen.doc.wsdl.def.message.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.xsd.comp';
		param.title='XSD Components';
		param.title.style.bold='true';
		param.description='${include help/params/gen/xsd/gen.doc.xsd.comp.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.xsd.comp.element';
		param.title='Elements';
		param.description='${include help/params/gen/xsd/gen.doc.xsd.comp.element.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.xsd.comp.element.local';
		param.title='Local Elements';
		param.description='${include help/params/gen/xsd/gen.doc.xsd.comp.element.local.htm}';
		param.group='true';
		param.group.defaultState='expanded';
		param.group.enablingExpr='! hasParamValue("", "none")';
		param.type='enum';
		param.enum.values='all;complexType;none';
		param.enum.displayValues='all;with complex type only;none';
	}
	PARAM={
		param.name='gen.doc.xsd.comp.element.local.unifyByType';
		param.title='Unify By Type';
		param.title.style.italic='true';
		param.description='${include help/params/gen/xsd/gen.doc.xsd.comp.element.local.unifyByType.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.xsd.comp.element.local.storeByParents';
		param.title='Store By Parents';
		param.title.style.italic='true';
		param.description='${include help/params/gen/xsd/gen.doc.xsd.comp.element.local.storeByParents.htm}';
		param.enablingExpr='! getBooleanParam("gen.doc.xsd.comp.element.local.unifyByType")';
		param.type='boolean';
	}
	PARAM={
		param.name='gen.doc.xsd.comp.complexType';
		param.title='Complex Types';
		param.description='${include help/params/gen/xsd/gen.doc.xsd.comp.complexType.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.xsd.comp.simpleType';
		param.title='Simple Types';
		param.description='${include help/params/gen/xsd/gen.doc.xsd.comp.simpleType.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.xsd.comp.group';
		param.title='Element Groups';
		param.description='${include help/params/gen/xsd/gen.doc.xsd.comp.group.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.xsd.comp.attribute';
		param.title='Global Attributes';
		param.description='${include help/params/gen/xsd/gen.doc.xsd.comp.attribute.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.xsd.comp.attributeGroup';
		param.title='Attribute Groups';
		param.description='${include help/params/gen/xsd/gen.doc.xsd.comp.attributeGroup.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.xmlnsBindings';
		param.title='XML Namespace Bindings';
		param.description='${include help/params/gen/gen.doc.xmlnsBindings.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc';
		param.title='Details';
		param.title.style.bold='true';
		param.description='${include help/params/doc/doc.htm}';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='doc.frgm';
		param.title='Fragments';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/doc.frgm.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.frgm.wsdl.files';
		param.title='WSDL File Summary';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/wsdl/files/doc.frgm.wsdl.files.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.frgm.wsdl.files.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/wsdl/files/doc.frgm.wsdl.files.sorting.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.sorting.wsdl.files")';
	}
	PARAM={
		param.name='doc.frgm.wsdl.files.description';
		param.title='Description';
		param.description='${include help/params/doc/frgm/wsdl/files/doc.frgm.wsdl.files.description.htm}';
		param.type='enum';
		param.enum.values='first_sentence;full;none';
		param.enum.displayValues='first sentence;full;none';
	}
	PARAM={
		param.name='doc.frgm.wsdl.files.profile';
		param.title='WSDL File Profile';
		param.description='${include help/params/doc/frgm/wsdl/files/doc.frgm.wsdl.files.profile.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.wsdl.files.profile.location';
		param.title='File Location';
		param.description='${include help/params/doc/wsdl/file/doc.wsdl.file.profile.location.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.wsdl.files.profile.location.relative';
		param.title='Relative Path';
		param.description='${include help/params/doc/wsdl/file/doc.wsdl.file.profile.location.relative.htm}';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.wsdl.files.profile.location.hyperlink';
		param.title='Hyperlink';
		param.description='${include help/params/doc/wsdl/file/doc.wsdl.file.profile.location.hyperlink.htm}';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.wsdl.files.profile.targetNamespace';
		param.title='Target Namespace';
		param.description='${include help/params/doc/wsdl/file/doc.wsdl.file.profile.targetNamespace.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.wsdl.files.profile.types.schemas';
		param.title='Types / Schemas';
		param.description='${include help/params/doc/wsdl/file/doc.wsdl.file.profile.types.schemas.htm}';
		param.type='enum';
		param.enum.values='list;summary;none';
	}
	PARAM={
		param.name='doc.frgm.wsdl.files.profile.defs';
		param.title='WSDL Definitions';
		param.description='${include help/params/doc/wsdl/file/doc.wsdl.file.profile.defs.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.wsdl.files.profile.relatedWSDLs';
		param.title='Related WSDL Files';
		param.description='${include help/params/doc/wsdl/file/doc.wsdl.file.profile.relatedWSDLs.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.xsd.schemas';
		param.title='Schema Summary';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.frgm.xsd.schemas.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.sorting.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.sorting.xsd.schemas")';
	}
	PARAM={
		param.name='doc.frgm.xsd.schemas.annotation';
		param.title='Annotation';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.annotation.htm}';
		param.type='enum';
		param.enum.values='first_sentence;full;none';
		param.enum.displayValues='first sentence;full;none';
	}
	PARAM={
		param.name='doc.frgm.xsd.schemas.profile';
		param.title='Schema Profile';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.xsd.schemas.profile.location';
		param.title='Schema Location';
		param.description='${include help/params/doc/xsd/schema/doc.xsd.schema.profile.location.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.xsd.schemas.profile.location.relative';
		param.title='Relative Path';
		param.description='${include help/params/doc/xsd/schema/doc.xsd.schema.profile.location.relative.htm}';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.schemas.profile.location.hyperlink';
		param.title='Hyperlink';
		param.description='${include help/params/doc/xsd/schema/doc.xsd.schema.profile.location.hyperlink.htm}';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.schemas.profile.targetNamespace';
		param.title='Target Namespace';
		param.description='${include help/params/doc/xsd/schema/doc.xsd.schema.profile.targetNamespace.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.xsd.schemas.profile.version';
		param.title='Version';
		param.description='${include help/params/doc/xsd/schema/doc.xsd.schema.profile.version.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.xsd.schemas.profile.components';
		param.title='Components';
		param.description='${include help/params/doc/xsd/schema/doc.xsd.schema.profile.components.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.xsd.schemas.profile.formDefault';
		param.title='Default NS-Qualified Form';
		param.description='${include help/params/doc/xsd/schema/doc.xsd.schema.profile.formDefault.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.xsd.schemas.profile.blockDefault';
		param.title='Default Block Attribute';
		param.description='${include help/params/doc/xsd/schema/doc.xsd.schema.profile.blockDefault.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.xsd.schemas.profile.blockDefault.value';
		param.title='Value';
		param.description='${include help/params/doc/xsd/schema/doc.xsd.schema.profile.blockDefault.value.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.xsd.schemas.profile.blockDefault.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc/xsd/schema/doc.xsd.schema.profile.blockDefault.meaning.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.xsd.schemas.profile.finalDefault';
		param.title='Default Final Attribute';
		param.description='${include help/params/doc/xsd/schema/doc.xsd.schema.profile.finalDefault.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.xsd.schemas.profile.finalDefault.value';
		param.title='Value';
		param.description='${include help/params/doc/xsd/schema/doc.xsd.schema.profile.finalDefault.value.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.xsd.schemas.profile.finalDefault.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc/xsd/schema/doc.xsd.schema.profile.finalDefault.meaning.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.xsd.schemas.profile.relatedSchemas';
		param.title='Related Schemas';
		param.description='${include help/params/doc/xsd/schema/doc.xsd.schema.profile.relatedSchemas.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.wsdl.defs';
		param.title='WSDL Definition Summary';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.frgm.wsdl.defs.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.for.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.frgm.wsdl.defs.for.services';
		param.title='Services';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.for.services.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.wsdl.def.service")';
	}
	PARAM={
		param.name='doc.frgm.wsdl.defs.for.bindings';
		param.title='Bindings';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.for.bindings.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.wsdl.def.binding")';
	}
	PARAM={
		param.name='doc.frgm.wsdl.defs.for.portTypes';
		param.title='Port Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.for.portTypes.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.wsdl.def.portType")';
	}
	PARAM={
		param.name='doc.frgm.wsdl.defs.for.messages';
		param.title='Messages';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.for.messages.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.wsdl.def.message")';
	}
	PARAM={
		param.name='doc.frgm.wsdl.defs.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.sorting.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.sorting.wsdl.defs")';
	}
	PARAM={
		param.name='doc.frgm.wsdl.defs.description';
		param.title='Description';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.description.htm}';
		param.type='enum';
		param.enum.values='first_sentence;full;none';
		param.enum.displayValues='first sentence;full;none';
	}
	PARAM={
		param.name='doc.frgm.wsdl.defs.profile';
		param.title='Definition Profile';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.profile.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.wsdl.defs.profile.namespace';
		param.title='Namespace';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.profile.namespace.htm}';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.wsdl.defs.profile.portType';
		param.title='Port Type';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.profile.portType.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.wsdl.defs.profile.includes';
		param.title='Includes';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.profile.includes.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.wsdl.defs.profile.defined';
		param.title='Defined / XML Source';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.profile.defined.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.wsdl.defs.profile.used';
		param.title='Used';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.profile.used.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps';
		param.title='XSD Component Summary';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.for.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.for.elements';
		param.title='Elements';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.for.elements.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.xsd.comp.element")';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.for.elements.local';
		param.title='Local Elements';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.for.elements.local.htm}';
		param.type='enum';
		param.enum.values='all;complexType;none';
		param.enum.displayValues='all;with complex type;none';
		param.defaultValue.expr='getStringParam("gen.doc.xsd.comp.element.local")';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.for.complexTypes';
		param.title='Complex Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.for.complexTypes.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.xsd.comp.complexType")';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.for.simpleTypes';
		param.title='Simple Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.for.simpleTypes.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.xsd.comp.simpleType")';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.for.groups';
		param.title='Element Groups';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.for.groups.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.xsd.comp.group")';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.for.attributes';
		param.title='Global Attributes';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.for.attributes.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.xsd.comp.attribute")';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.for.attributeGroups';
		param.title='Attribute Groups';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.for.attributeGroups.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.xsd.comp.attributeGroup")';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.sorting.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.sorting.xsd.comps")';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.annotation';
		param.title='Annotation';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.annotation.htm}';
		param.type='enum';
		param.enum.values='first_sentence;full;none';
		param.enum.displayValues='first sentence;full;none';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile';
		param.title='Component Profile';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.namespace';
		param.title='Namespace';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.profile.namespace.htm}';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.type';
		param.title='Type';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.profile.type.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.content';
		param.title='Content';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.profile.content.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.abstract';
		param.title='Abstract';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.profile.abstract.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.block';
		param.title='Block';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.profile.block.htm}';
		param.group='true';
		param.group.enablingExpr='! hasParamValue("", "none")';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.block.value';
		param.title='Value';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.profile.block.value.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.block.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.profile.block.meaning.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.final';
		param.title='Final';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.final.htm}';
		param.group='true';
		param.group.enablingExpr='! hasParamValue("", "none")';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.final.value';
		param.title='Value';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.final.value.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.final.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.final.meaning.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.subst';
		param.title='Subst.Gr';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.subst.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.subst.heads';
		param.title='List of group heads';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.subst.heads.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.subst.members';
		param.title='List of group members';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.subst.members.htm}';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.nillable';
		param.title='Nillable';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.nillable.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.defined';
		param.title='Defined';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.defined.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.includes';
		param.title='Includes';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.includes.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.redefines';
		param.title='Redefines';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.redefines.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.redefined';
		param.title='Redefined';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.redefined.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.frgm.xsd.comps.profile.used';
		param.title='Used';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.used.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.overview';
		param.title='Overview Summary';
		param.title.style.bold='true';
		param.description='${include help/params/doc/overview/doc.overview.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.overview.title';
		param.title='Title';
		param.description='${include help/params/doc/overview/doc.overview.title.htm}';
		param.type='string';
		param.defaultValue.expr='getStringParam("docTitle")';
	}
	PARAM={
		param.name='doc.overview.namespaces';
		param.title='Namespace Summary';
		param.description='${include help/params/doc/overview/doc.overview.namespaces.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.overview.namespaces.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/doc/overview/doc.overview.namespaces.sorting.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.sorting.namespaces")';
	}
	PARAM={
		param.name='doc.overview.wsdl.files';
		param.title='WSDL File Summary';
		param.description='${include help/params/doc/overview/doc.overview.wsdl.files.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.overview.wsdl.files.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/wsdl/files/doc.frgm.wsdl.files.sorting$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.files.sorting")';
	}
	PARAM={
		param.name='doc.overview.wsdl.files.description';
		param.title='Description';
		param.description='${include help/params/doc/frgm/wsdl/files/doc.frgm.wsdl.files.description$.htm}';
		param.type='enum';
		param.enum.values='first_sentence;full;none';
		param.enum.displayValues='first sentence;full;none';
		param.defaultValue.expr='getStringParam("doc.frgm.wsdl.files.description")';
	}
	PARAM={
		param.name='doc.overview.wsdl.files.profile';
		param.title='WSDL File Profile';
		param.description='${include help/params/doc/frgm/wsdl/files/doc.frgm.wsdl.files.profile$.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.files.profile")';
	}
	PARAM={
		param.name='doc.overview.wsdl.files.profile.location';
		param.title='File Location';
		param.description='${include help/params/doc/frgm/wsdl/files/doc.frgm.wsdl.files.profile.location$.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.files.profile.location")';
	}
	PARAM={
		param.name='doc.overview.wsdl.files.profile.location.relative';
		param.title='Relative Path';
		param.description='${include help/params/doc/frgm/wsdl/files/doc.frgm.wsdl.files.profile.location.relative$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.files.profile.location.relative")';
	}
	PARAM={
		param.name='doc.overview.wsdl.files.profile.location.hyperlink';
		param.title='Hyperlink';
		param.description='${include help/params/doc/frgm/wsdl/files/doc.frgm.wsdl.files.profile.location.hyperlink$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.files.profile.location.hyperlink")';
	}
	PARAM={
		param.name='doc.overview.wsdl.files.profile.targetNamespace';
		param.title='Target Namespace';
		param.description='${include help/params/doc/frgm/wsdl/files/doc.frgm.wsdl.files.profile.targetNamespace$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.files.profile.targetNamespace")';
	}
	PARAM={
		param.name='doc.overview.wsdl.files.profile.types.schemas';
		param.title='Types / Schemas';
		param.description='${include help/params/doc/wsdl/file/doc.wsdl.file.profile.types.schemas.htm}';
		param.type='enum';
		param.enum.values='list;summary;none';
		param.defaultValue='summary';
	}
	PARAM={
		param.name='doc.overview.wsdl.files.profile.defs';
		param.title='WSDL Definitions';
		param.description='${include help/params/doc/frgm/wsdl/files/doc.frgm.wsdl.files.profile.defs$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.files.profile.defs")';
	}
	PARAM={
		param.name='doc.overview.wsdl.files.profile.relatedWSDLs';
		param.title='Related WSDL Files';
		param.description='${include help/params/doc/frgm/wsdl/files/doc.frgm.wsdl.files.profile.relatedWSDLs$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.files.profile.relatedWSDLs")';
	}
	PARAM={
		param.name='doc.overview.xsd.files';
		param.title='Schema File Summary';
		param.description='${include help/params/doc/overview/doc.overview.xsd.files.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.overview.xsd.files.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.sorting$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.sorting")';
	}
	PARAM={
		param.name='doc.overview.xsd.files.annotation';
		param.title='Annotation';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.annotation$.htm}';
		param.type='enum';
		param.enum.values='first_sentence;full;none';
		param.enum.displayValues='first sentence;full;none';
		param.defaultValue.expr='getStringParam("doc.frgm.xsd.schemas.annotation")';
	}
	PARAM={
		param.name='doc.overview.xsd.files.profile';
		param.title='Schema Profile';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile$.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile")';
	}
	PARAM={
		param.name='doc.overview.xsd.files.profile.location';
		param.title='Schema Location';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.location$.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.location")';
	}
	PARAM={
		param.name='doc.overview.xsd.files.profile.location.relative';
		param.title='Relative Path';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.location.relative$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.location.relative")';
	}
	PARAM={
		param.name='doc.overview.xsd.files.profile.location.hyperlink';
		param.title='Hyperlink';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.location.hyperlink$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.location.hyperlink")';
	}
	PARAM={
		param.name='doc.overview.xsd.files.profile.targetNamespace';
		param.title='Target Namespace';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.targetNamespace$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.targetNamespace")';
	}
	PARAM={
		param.name='doc.overview.xsd.files.profile.version';
		param.title='Version';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.version$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.version")';
	}
	PARAM={
		param.name='doc.overview.xsd.files.profile.components';
		param.title='Components';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.components$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.components")';
	}
	PARAM={
		param.name='doc.overview.xsd.files.profile.formDefault';
		param.title='Default NS-Qualified Form';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.formDefault$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.formDefault")';
	}
	PARAM={
		param.name='doc.overview.xsd.files.profile.blockDefault';
		param.title='Default Block Attribute';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.blockDefault$.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.blockDefault")';
	}
	PARAM={
		param.name='doc.overview.xsd.files.profile.blockDefault.value';
		param.title='Value';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.blockDefault.value$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.blockDefault.value")';
	}
	PARAM={
		param.name='doc.overview.xsd.files.profile.blockDefault.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.blockDefault.meaning$.htm}';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.blockDefault.meaning")';
	}
	PARAM={
		param.name='doc.overview.xsd.files.profile.finalDefault';
		param.title='Default Final Attribute';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.finalDefault$.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.finalDefault")';
	}
	PARAM={
		param.name='doc.overview.xsd.files.profile.finalDefault.value';
		param.title='Value';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.finalDefault.value$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.finalDefault.value")';
	}
	PARAM={
		param.name='doc.overview.xsd.files.profile.finalDefault.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.finalDefault.meaning$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.finalDefault.meaning")';
	}
	PARAM={
		param.name='doc.overview.xsd.files.profile.relatedSchemas';
		param.title='Related Schemas';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.relatedSchemas$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.relatedSchemas")';
	}
	PARAM={
		param.name='doc.allcomps';
		param.title='All Component Summary';
		param.title.style.bold='true';
		param.description='${include help/params/doc/allcomps/doc.allcomps.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.allcomps.wsdl.defs';
		param.title='WSDL Definition Summary';
		param.description='${include help/params/doc/allcomps/doc.allcomps.wsdl.defs.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.wsdl.def")';
	}
	PARAM={
		param.name='doc.allcomps.wsdl.defs.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.for$.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.allcomps.wsdl.defs.for.services';
		param.title='Services';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.for.services$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.defs.for.services")';
	}
	PARAM={
		param.name='doc.allcomps.wsdl.defs.for.bindings';
		param.title='Bindings';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.for.bindings$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.defs.for.bindings")';
	}
	PARAM={
		param.name='doc.allcomps.wsdl.defs.for.portTypes';
		param.title='Port Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.for.portTypes$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.defs.for.portTypes")';
	}
	PARAM={
		param.name='doc.allcomps.wsdl.defs.for.messages';
		param.title='Messages';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.for.messages$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.defs.for.messages")';
	}
	PARAM={
		param.name='doc.allcomps.wsdl.defs.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.sorting$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.defs.sorting")';
	}
	PARAM={
		param.name='doc.allcomps.wsdl.defs.description';
		param.title='Description';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.description$.htm}';
		param.type='enum';
		param.enum.values='first_sentence;full;none';
		param.enum.displayValues='first sentence;full;none';
		param.defaultValue.expr='getStringParam("doc.frgm.wsdl.defs.description")';
	}
	PARAM={
		param.name='doc.allcomps.wsdl.defs.profile';
		param.title='Definition Profile';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.profile$.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.defs.profile")';
	}
	PARAM={
		param.name='doc.allcomps.wsdl.defs.profile.namespace';
		param.title='Namespace';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.profile.namespace.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.allcomps.wsdl.defs.profile.portType';
		param.title='Port Type';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.profile.portType$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.defs.profile.portType")';
	}
	PARAM={
		param.name='doc.allcomps.wsdl.defs.profile.includes';
		param.title='Includes';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.profile.includes$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.defs.profile.includes")';
	}
	PARAM={
		param.name='doc.allcomps.wsdl.defs.profile.defined';
		param.title='Defined / XML Source';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.profile.defined$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.defs.profile.defined")';
	}
	PARAM={
		param.name='doc.allcomps.wsdl.defs.profile.used';
		param.title='Used';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.profile.used$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.defs.profile.used")';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps';
		param.title='XSD Component Summary';
		param.description='${include help/params/doc/allcomps/doc.allcomps.xsd.comps.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.xsd.comp")';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.for$.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.for.elements';
		param.title='Elements';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.for.elements$.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.for.elements")';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.for.elements.local';
		param.title='Local Elements';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.for.elements.local$.htm}';
		param.type='enum';
		param.enum.values='all;complexType;none';
		param.enum.displayValues='all;with complex type;none';
		param.defaultValue.expr='getStringParam("doc.frgm.xsd.comps.for.elements.local")';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.for.complexTypes';
		param.title='Complex Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.for.complexTypes$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.for.complexTypes")';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.for.simpleTypes';
		param.title='Simple Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.for.simpleTypes$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.for.simpleTypes")';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.for.groups';
		param.title='Element Groups';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.for.groups$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.for.groups")';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.for.attributes';
		param.title='Global Attributes';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.for.attributes$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.for.attributes")';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.for.attributeGroups';
		param.title='Attribute Groups';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.for.attributeGroups$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.for.attributeGroups")';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.sorting$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.sorting")';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.annotation';
		param.title='Annotation';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.annotation$.htm}';
		param.type='enum';
		param.enum.values='first_sentence;full;none';
		param.enum.displayValues='first sentence;full;none';
		param.defaultValue.expr='getStringParam("doc.frgm.xsd.comps.annotation")';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile';
		param.title='Component Profile';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile$.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile")';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.namespace';
		param.title='Namespace';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.profile.namespace.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.type';
		param.title='Type';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.type$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.type")';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.content';
		param.title='Content';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.content$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.content")';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.abstract';
		param.title='Abstract';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.abstract$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.abstract")';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.block';
		param.title='Block';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.block$.htm}';
		param.group='true';
		param.group.enablingExpr='! hasParamValue("", "none")';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
		param.defaultValue.expr='getStringParam("doc.frgm.xsd.comps.profile.block")';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.block.value';
		param.title='Value';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.block.value$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.block.value")';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.block.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.block.meaning$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.block.meaning")';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.final';
		param.title='Final';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.final$.htm}';
		param.group='true';
		param.group.enablingExpr='! hasParamValue("", "none")';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
		param.defaultValue.expr='getStringParam("doc.frgm.xsd.comps.profile.final")';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.final.value';
		param.title='Value';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.final.value$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.final.value")';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.final.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.final.meaning$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.final.meaning")';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.subst';
		param.title='Subst.Gr';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.subst$.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.subst")';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.subst.heads';
		param.title='List of group heads';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.subst.heads$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.subst.heads")';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.subst.members';
		param.title='List of group members';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.subst.members$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.subst.members")';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.nillable';
		param.title='Nillable';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.nillable$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.nillable")';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.defined';
		param.title='Defined';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.defined$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.defined")';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.includes';
		param.title='Includes';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.includes$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.includes")';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.redefines';
		param.title='Redefines';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.redefines$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.redefines")';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.redefined';
		param.title='Redefined';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.redefined$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.redefined")';
	}
	PARAM={
		param.name='doc.allcomps.xsd.comps.profile.used';
		param.title='Used';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.used$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.used")';
	}
	PARAM={
		param.name='doc.namespace';
		param.title='Namespace Overview';
		param.title.style.bold='true';
		param.description='${include help/params/doc/namespace/doc.namespace.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.namespace.profile';
		param.title='Namespace Profile';
		param.description='${include help/params/doc/namespace/doc.namespace.profile.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.wsdl.files';
		param.title='WSDL File Summary';
		param.description='${include help/params/doc/namespace/doc.namespace.wsdl.files.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.wsdl.files.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/wsdl/files/doc.frgm.wsdl.files.sorting$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.files.sorting")';
	}
	PARAM={
		param.name='doc.namespace.wsdl.files.description';
		param.title='Description';
		param.description='${include help/params/doc/frgm/wsdl/files/doc.frgm.wsdl.files.description$.htm}';
		param.type='enum';
		param.enum.values='first_sentence;full;none';
		param.enum.displayValues='first sentence;full;none';
		param.defaultValue.expr='getStringParam("doc.frgm.wsdl.files.description")';
	}
	PARAM={
		param.name='doc.namespace.wsdl.files.profile';
		param.title='WSDL File Profile';
		param.description='${include help/params/doc/frgm/wsdl/files/doc.frgm.wsdl.files.profile$.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.files.profile")';
	}
	PARAM={
		param.name='doc.namespace.wsdl.files.profile.location';
		param.title='File Location';
		param.description='${include help/params/doc/frgm/wsdl/files/doc.frgm.wsdl.files.profile.location$.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.files.profile.location")';
	}
	PARAM={
		param.name='doc.namespace.wsdl.files.profile.location.relative';
		param.title='Relative Path';
		param.description='${include help/params/doc/frgm/wsdl/files/doc.frgm.wsdl.files.profile.location.relative$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.files.profile.location.relative")';
	}
	PARAM={
		param.name='doc.namespace.wsdl.files.profile.location.hyperlink';
		param.title='Hyperlink';
		param.description='${include help/params/doc/frgm/wsdl/files/doc.frgm.wsdl.files.profile.location.hyperlink$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.files.profile.location.hyperlink")';
	}
	PARAM={
		param.name='doc.namespace.wsdl.files.profile.targetNamespace';
		param.title='Target Namespace';
		param.description='${include help/params/doc/frgm/wsdl/files/doc.frgm.wsdl.files.profile.targetNamespace$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.files.profile.targetNamespace")';
	}
	PARAM={
		param.name='doc.namespace.wsdl.files.profile.types.schemas';
		param.title='Types / Schemas';
		param.description='${include help/params/doc/frgm/wsdl/files/doc.frgm.wsdl.files.profile.types.schemas$.htm}';
		param.type='enum';
		param.enum.values='list;summary;none';
		param.defaultValue.expr='getStringParam("doc.frgm.wsdl.files.profile.types.schemas")';
	}
	PARAM={
		param.name='doc.namespace.wsdl.files.profile.defs';
		param.title='WSDL Definitions';
		param.description='${include help/params/doc/frgm/wsdl/files/doc.frgm.wsdl.files.profile.defs$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.files.profile.defs")';
	}
	PARAM={
		param.name='doc.namespace.wsdl.files.profile.relatedWSDLs';
		param.title='Related WSDL Files';
		param.description='${include help/params/doc/frgm/wsdl/files/doc.frgm.wsdl.files.profile.relatedWSDLs$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.files.profile.relatedWSDLs")';
	}
	PARAM={
		param.name='doc.namespace.wsdl.defs';
		param.title='WSDL Definition Summary';
		param.description='${include help/params/doc/namespace/doc.namespace.wsdl.defs.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.wsdl.def")';
	}
	PARAM={
		param.name='doc.namespace.wsdl.defs.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.for$.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.namespace.wsdl.defs.for.services';
		param.title='Services';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.for.services$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.defs.for.services")';
	}
	PARAM={
		param.name='doc.namespace.wsdl.defs.for.bindings';
		param.title='Bindings';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.for.bindings$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.defs.for.bindings")';
	}
	PARAM={
		param.name='doc.namespace.wsdl.defs.for.portTypes';
		param.title='Port Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.for.portTypes$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.defs.for.portTypes")';
	}
	PARAM={
		param.name='doc.namespace.wsdl.defs.for.messages';
		param.title='Messages';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.for.messages$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.defs.for.messages")';
	}
	PARAM={
		param.name='doc.namespace.wsdl.defs.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.sorting$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.defs.sorting")';
	}
	PARAM={
		param.name='doc.namespace.wsdl.defs.description';
		param.title='Description';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.description$.htm}';
		param.type='enum';
		param.enum.values='first_sentence;full;none';
		param.enum.displayValues='first sentence;full;none';
		param.defaultValue.expr='getStringParam("doc.frgm.wsdl.defs.description")';
	}
	PARAM={
		param.name='doc.namespace.wsdl.defs.profile';
		param.title='Definition Profile';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.profile$.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.defs.profile")';
	}
	PARAM={
		param.name='doc.namespace.wsdl.defs.profile.namespace';
		param.title='Namespace';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.profile.namespace$.htm}';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.wsdl.defs.profile.portType';
		param.title='Port Type';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.profile.portType$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.defs.profile.portType")';
	}
	PARAM={
		param.name='doc.namespace.wsdl.defs.profile.includes';
		param.title='Includes';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.profile.includes$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.defs.profile.includes")';
	}
	PARAM={
		param.name='doc.namespace.wsdl.defs.profile.defined';
		param.title='Defined / XML Source';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.profile.defined$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.defs.profile.defined")';
	}
	PARAM={
		param.name='doc.namespace.wsdl.defs.profile.used';
		param.title='Used';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.profile.used$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.defs.profile.used")';
	}
	PARAM={
		param.name='doc.namespace.xsd.schemas';
		param.title='Schema Summary';
		param.description='${include help/params/doc/namespace/doc.namespace.xsd.schemas.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.xsd.schemas.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.sorting$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.sorting")';
	}
	PARAM={
		param.name='doc.namespace.xsd.schemas.annotation';
		param.title='Annotation';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.annotation$.htm}';
		param.type='enum';
		param.enum.values='first_sentence;full;none';
		param.enum.displayValues='first sentence;full;none';
		param.defaultValue.expr='getStringParam("doc.frgm.xsd.schemas.annotation")';
	}
	PARAM={
		param.name='doc.namespace.xsd.schemas.profile';
		param.title='Schema Profile';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile$.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile")';
	}
	PARAM={
		param.name='doc.namespace.xsd.schemas.profile.location';
		param.title='Schema Location';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.location$.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.location")';
	}
	PARAM={
		param.name='doc.namespace.xsd.schemas.profile.location.relative';
		param.title='Relative Path';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.location.relative$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.location.relative")';
	}
	PARAM={
		param.name='doc.namespace.xsd.schemas.profile.location.hyperlink';
		param.title='Hyperlink';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.location.hyperlink$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.location.hyperlink")';
	}
	PARAM={
		param.name='doc.namespace.xsd.schemas.profile.targetNamespace';
		param.title='Target Namespace';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.targetNamespace$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.targetNamespace")';
	}
	PARAM={
		param.name='doc.namespace.xsd.schemas.profile.version';
		param.title='Version';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.version$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.version")';
	}
	PARAM={
		param.name='doc.namespace.xsd.schemas.profile.components';
		param.title='Components';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.components$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.components")';
	}
	PARAM={
		param.name='doc.namespace.xsd.schemas.profile.formDefault';
		param.title='Default NS-Qualified Form';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.formDefault$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.formDefault")';
	}
	PARAM={
		param.name='doc.namespace.xsd.schemas.profile.blockDefault';
		param.title='Default Block Attribute';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.blockDefault$.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.blockDefault")';
	}
	PARAM={
		param.name='doc.namespace.xsd.schemas.profile.blockDefault.value';
		param.title='Value';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.blockDefault.value$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.blockDefault.value")';
	}
	PARAM={
		param.name='doc.namespace.xsd.schemas.profile.blockDefault.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.blockDefault.meaning$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.blockDefault.meaning")';
	}
	PARAM={
		param.name='doc.namespace.xsd.schemas.profile.finalDefault';
		param.title='Default Final Attribute';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.finalDefault$.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.finalDefault")';
	}
	PARAM={
		param.name='doc.namespace.xsd.schemas.profile.finalDefault.value';
		param.title='Value';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.finalDefault.value$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.finalDefault.value")';
	}
	PARAM={
		param.name='doc.namespace.xsd.schemas.profile.finalDefault.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.finalDefault.meaning$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.finalDefault.meaning")';
	}
	PARAM={
		param.name='doc.namespace.xsd.schemas.profile.relatedSchemas';
		param.title='Related Schemas';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.relatedSchemas$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.relatedSchemas")';
	}
	PARAM={
		param.name='doc.namespace.xsd.comps';
		param.title='XSD Component Summary';
		param.description='${include help/params/doc/namespace/doc.namespace.xsd.comps.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.xsd.comp")';
	}
	PARAM={
		param.name='doc.namespace.xsd.comps.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.for$.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.namespace.xsd.comps.for.elements';
		param.title='Elements';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.for.elements$.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.for.elements")';
	}
	PARAM={
		param.name='doc.namespace.xsd.comps.for.elements.local';
		param.title='Local Elements';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.for.elements.local$.htm}';
		param.type='enum';
		param.enum.values='all;complexType;none';
		param.enum.displayValues='all;with complex type;none';
		param.defaultValue.expr='getStringParam("doc.frgm.xsd.comps.for.elements.local")';
	}
	PARAM={
		param.name='doc.namespace.xsd.comps.for.complexTypes';
		param.title='Complex Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.for.complexTypes$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.for.complexTypes")';
	}
	PARAM={
		param.name='doc.namespace.xsd.comps.for.simpleTypes';
		param.title='Simple Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.for.simpleTypes$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.for.simpleTypes")';
	}
	PARAM={
		param.name='doc.namespace.xsd.comps.for.groups';
		param.title='Element Groups';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.for.groups$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.for.groups")';
	}
	PARAM={
		param.name='doc.namespace.xsd.comps.for.attributes';
		param.title='Global Attributes';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.for.attributes$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.for.attributes")';
	}
	PARAM={
		param.name='doc.namespace.xsd.comps.for.attributeGroups';
		param.title='Attribute Groups';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.for.attributeGroups$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.for.attributeGroups")';
	}
	PARAM={
		param.name='doc.namespace.xsd.comps.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.sorting$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.sorting")';
	}
	PARAM={
		param.name='doc.namespace.xsd.comps.annotation';
		param.title='Annotation';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.annotation$.htm}';
		param.type='enum';
		param.enum.values='first_sentence;full;none';
		param.enum.displayValues='first sentence;full;none';
		param.defaultValue.expr='getStringParam("doc.frgm.xsd.comps.annotation")';
	}
	PARAM={
		param.name='doc.namespace.xsd.comps.profile';
		param.title='Component Profile';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile$.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile")';
	}
	PARAM={
		param.name='doc.namespace.xsd.comps.profile.namespace';
		param.title='Namespace';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.namespace$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.namespace")';
	}
	PARAM={
		param.name='doc.namespace.xsd.comps.profile.type';
		param.title='Type';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.type$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.type")';
	}
	PARAM={
		param.name='doc.namespace.xsd.comps.profile.content';
		param.title='Content';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.content$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.content")';
	}
	PARAM={
		param.name='doc.namespace.xsd.comps.profile.abstract';
		param.title='Abstract';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.abstract$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.abstract")';
	}
	PARAM={
		param.name='doc.namespace.xsd.comps.profile.block';
		param.title='Block';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.block$.htm}';
		param.group='true';
		param.group.enablingExpr='! hasParamValue("", "none")';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
		param.defaultValue.expr='getStringParam("doc.frgm.xsd.comps.profile.block")';
	}
	PARAM={
		param.name='doc.namespace.xsd.comps.profile.block.value';
		param.title='Value';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.block.value$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.block.value")';
	}
	PARAM={
		param.name='doc.namespace.xsd.comps.profile.block.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.block.meaning$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.block.meaning")';
	}
	PARAM={
		param.name='doc.namespace.xsd.comps.profile.final';
		param.title='Final';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.final$.htm}';
		param.group='true';
		param.group.enablingExpr='! hasParamValue("", "none")';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
		param.defaultValue.expr='getStringParam("doc.frgm.xsd.comps.profile.final")';
	}
	PARAM={
		param.name='doc.namespace.xsd.comps.profile.final.value';
		param.title='Value';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.final.value$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.final.value")';
	}
	PARAM={
		param.name='doc.namespace.xsd.comps.profile.final.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.final.meaning$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.final.meaning")';
	}
	PARAM={
		param.name='doc.namespace.xsd.comps.profile.subst';
		param.title='Subst.Gr';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.subst$.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.subst")';
	}
	PARAM={
		param.name='doc.namespace.xsd.comps.profile.subst.heads';
		param.title='List of group heads';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.subst.heads$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.subst.heads")';
	}
	PARAM={
		param.name='doc.namespace.xsd.comps.profile.subst.members';
		param.title='List of group members';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.subst.members$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.subst.members")';
	}
	PARAM={
		param.name='doc.namespace.xsd.comps.profile.nillable';
		param.title='Nillable';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.nillable$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.nillable")';
	}
	PARAM={
		param.name='doc.namespace.xsd.comps.profile.defined';
		param.title='Defined';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.defined$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.defined")';
	}
	PARAM={
		param.name='doc.namespace.xsd.comps.profile.includes';
		param.title='Includes';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.includes$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.includes")';
	}
	PARAM={
		param.name='doc.namespace.xsd.comps.profile.redefines';
		param.title='Redefines';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.redefines$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.redefines")';
	}
	PARAM={
		param.name='doc.namespace.xsd.comps.profile.redefined';
		param.title='Redefined';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.redefined$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.redefined")';
	}
	PARAM={
		param.name='doc.namespace.xsd.comps.profile.used';
		param.title='Used';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.used$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.used")';
	}
	PARAM={
		param.name='doc.wsdl.file';
		param.title='WSDL File Overview';
		param.title.style.bold='true';
		param.description='${include help/params/doc/wsdl/file/doc.wsdl.file.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.wsdl.file.profile';
		param.title='WSDL File Profile';
		param.description='${include help/params/doc/wsdl/file/doc.wsdl.file.profile.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.file.profile.location';
		param.title='File Location';
		param.description='${include help/params/doc/wsdl/file/doc.wsdl.file.profile.location.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.file.profile.location.relative';
		param.title='Relative Path';
		param.description='${include help/params/doc/wsdl/file/doc.wsdl.file.profile.location.relative.htm}';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.file.profile.location.hyperlink';
		param.title='Hyperlink';
		param.description='${include help/params/doc/wsdl/file/doc.wsdl.file.profile.location.hyperlink.htm}';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.file.profile.targetNamespace';
		param.title='Target Namespace';
		param.description='${include help/params/doc/wsdl/file/doc.wsdl.file.profile.targetNamespace.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.file.profile.types.schemas';
		param.title='Types / Schemas';
		param.description='${include help/params/doc/wsdl/file/doc.wsdl.file.profile.types.schemas.htm}';
		param.type='enum';
		param.enum.values='list;summary;none';
	}
	PARAM={
		param.name='doc.wsdl.file.profile.defs';
		param.title='WSDL Definitions';
		param.description='${include help/params/doc/wsdl/file/doc.wsdl.file.profile.defs.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.file.profile.relatedWSDLs';
		param.title='Related WSDL Files';
		param.description='${include help/params/doc/wsdl/file/doc.wsdl.file.profile.relatedWSDLs.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.file.description';
		param.title='Description';
		param.description='${include help/params/doc/wsdl/file/doc.wsdl.file.description.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.file.schemas';
		param.title='Embedded Schema Summary';
		param.description='${include help/params/doc/wsdl/file/doc.wsdl.file.schemas.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.file.schemas.annotation';
		param.title='Annotation';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.annotation$.htm}';
		param.type='enum';
		param.enum.values='first_sentence;full;none';
		param.enum.displayValues='first sentence;full;none';
		param.defaultValue.expr='getStringParam("doc.frgm.xsd.schemas.annotation")';
	}
	PARAM={
		param.name='doc.wsdl.file.schemas.profile';
		param.title='Schema Profile';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile$.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile")';
	}
	PARAM={
		param.name='doc.wsdl.file.schemas.profile.location';
		param.title='Schema Location';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.location$.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.location")';
	}
	PARAM={
		param.name='doc.wsdl.file.schemas.profile.location.relative';
		param.title='Relative Path';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.location.relative$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.location.relative")';
	}
	PARAM={
		param.name='doc.wsdl.file.schemas.profile.location.hyperlink';
		param.title='Hyperlink';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.location.hyperlink$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.location.hyperlink")';
	}
	PARAM={
		param.name='doc.wsdl.file.schemas.profile.targetNamespace';
		param.title='Target Namespace';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.targetNamespace$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.targetNamespace")';
	}
	PARAM={
		param.name='doc.wsdl.file.schemas.profile.version';
		param.title='Version';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.version$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.version")';
	}
	PARAM={
		param.name='doc.wsdl.file.schemas.profile.components';
		param.title='Components';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.components$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.components")';
	}
	PARAM={
		param.name='doc.wsdl.file.schemas.profile.formDefault';
		param.title='Default NS-Qualified Form';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.formDefault$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.formDefault")';
	}
	PARAM={
		param.name='doc.wsdl.file.schemas.profile.blockDefault';
		param.title='Default Block Attribute';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.blockDefault$.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.blockDefault")';
	}
	PARAM={
		param.name='doc.wsdl.file.schemas.profile.blockDefault.value';
		param.title='Value';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.blockDefault.value$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.blockDefault.value")';
	}
	PARAM={
		param.name='doc.wsdl.file.schemas.profile.blockDefault.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.blockDefault.meaning$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.blockDefault.meaning")';
	}
	PARAM={
		param.name='doc.wsdl.file.schemas.profile.finalDefault';
		param.title='Default Final Attribute';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.finalDefault$.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.finalDefault")';
	}
	PARAM={
		param.name='doc.wsdl.file.schemas.profile.finalDefault.value';
		param.title='Value';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.finalDefault.value$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.finalDefault.value")';
	}
	PARAM={
		param.name='doc.wsdl.file.schemas.profile.finalDefault.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.finalDefault.meaning$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.finalDefault.meaning")';
	}
	PARAM={
		param.name='doc.wsdl.file.schemas.profile.relatedSchemas';
		param.title='Related Schemas';
		param.description='${include help/params/doc/frgm/xsd/schemas/doc.frgm.xsd.schemas.profile.relatedSchemas$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.schemas.profile.relatedSchemas")';
	}
	PARAM={
		param.name='doc.wsdl.file.defs';
		param.title='WSDL Definition Summary';
		param.description='${include help/params/doc/wsdl/file/doc.wsdl.file.defs.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.wsdl.def")';
	}
	PARAM={
		param.name='doc.wsdl.file.defs.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.for$.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.wsdl.file.defs.for.services';
		param.title='Services';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.for.services$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.defs.for.services")';
	}
	PARAM={
		param.name='doc.wsdl.file.defs.for.bindings';
		param.title='Bindings';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.for.bindings$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.defs.for.bindings")';
	}
	PARAM={
		param.name='doc.wsdl.file.defs.for.portTypes';
		param.title='Port Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.for.portTypes$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.defs.for.portTypes")';
	}
	PARAM={
		param.name='doc.wsdl.file.defs.for.messages';
		param.title='Messages';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.for.messages$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.defs.for.messages")';
	}
	PARAM={
		param.name='doc.wsdl.file.defs.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.sorting$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.defs.sorting")';
	}
	PARAM={
		param.name='doc.wsdl.file.defs.description';
		param.title='Description';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.description$.htm}';
		param.type='enum';
		param.enum.values='first_sentence;full;none';
		param.enum.displayValues='first sentence;full;none';
		param.defaultValue.expr='getStringParam("doc.frgm.wsdl.defs.description")';
	}
	PARAM={
		param.name='doc.wsdl.file.defs.profile';
		param.title='Definition Profile';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.profile$.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.defs.profile")';
	}
	PARAM={
		param.name='doc.wsdl.file.defs.profile.namespace';
		param.title='Namespace';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.profile.namespace$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.defs.profile.namespace")';
	}
	PARAM={
		param.name='doc.wsdl.file.defs.profile.portType';
		param.title='Port Type';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.profile.portType$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.defs.profile.portType")';
	}
	PARAM={
		param.name='doc.wsdl.file.defs.profile.includes';
		param.title='Includes';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.profile.includes$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.defs.profile.includes")';
	}
	PARAM={
		param.name='doc.wsdl.file.defs.profile.defined';
		param.title='Defined / XML Source';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.profile.defined$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.defs.profile.defined")';
	}
	PARAM={
		param.name='doc.wsdl.file.defs.profile.used';
		param.title='Used';
		param.description='${include help/params/doc/frgm/wsdl/defs/doc.frgm.wsdl.defs.profile.used$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.wsdl.defs.profile.used")';
	}
	PARAM={
		param.name='doc.wsdl.file.xml';
		param.title='XML Source';
		param.description='${include help/params/doc/wsdl/file/doc.wsdl.file.xml.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.file.xml.separate';
		param.title='Separate File';
		param.description='${include help/params/doc/wsdl/file/doc.wsdl.file.xml.separate.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.file.xml.box';
		param.title='Enclose in Box';
		param.description='${include help/params/doc/wsdl/file/doc.wsdl.file.xml.box.htm}';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.file.xml.remove.wsdl.docs';
		param.title='Remove <wsdl:documentation>';
		param.description='${include help/params/doc/wsdl/file/doc.wsdl.file.xml.remove.wsdl.docs.htm}';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.file.xml.remove.xsd.anns';
		param.title='Remove <xs:annotation>';
		param.description='${include help/params/doc/wsdl/file/doc.wsdl.file.xml.remove.xsd.anns.htm}';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.schema';
		param.title='Schema Overview';
		param.title.style.bold='true';
		param.description='${include help/params/doc/xsd/schema/doc.xsd.schema.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.xsd.schema.profile';
		param.title='Schema Profile';
		param.description='${include help/params/doc/xsd/schema/doc.xsd.schema.profile.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.schema.profile.location';
		param.title='Schema Location';
		param.description='${include help/params/doc/xsd/schema/doc.xsd.schema.profile.location.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.schema.profile.location.relative';
		param.title='Relative Path';
		param.description='${include help/params/doc/xsd/schema/doc.xsd.schema.profile.location.relative.htm}';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.schema.profile.location.hyperlink';
		param.title='Hyperlink';
		param.description='${include help/params/doc/xsd/schema/doc.xsd.schema.profile.location.hyperlink.htm}';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.schema.profile.targetNamespace';
		param.title='Target Namespace';
		param.description='${include help/params/doc/xsd/schema/doc.xsd.schema.profile.targetNamespace.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.schema.profile.version';
		param.title='Version';
		param.description='${include help/params/doc/xsd/schema/doc.xsd.schema.profile.version.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.schema.profile.components';
		param.title='Components';
		param.description='${include help/params/doc/xsd/schema/doc.xsd.schema.profile.components.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.schema.profile.formDefault';
		param.title='Default NS-Qualified Form';
		param.description='${include help/params/doc/xsd/schema/doc.xsd.schema.profile.formDefault.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.schema.profile.blockDefault';
		param.title='Default Block Attribute';
		param.description='${include help/params/doc/xsd/schema/doc.xsd.schema.profile.blockDefault.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.schema.profile.blockDefault.value';
		param.title='Value';
		param.description='${include help/params/doc/xsd/schema/doc.xsd.schema.profile.blockDefault.value.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.schema.profile.blockDefault.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc/xsd/schema/doc.xsd.schema.profile.blockDefault.meaning.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.schema.profile.finalDefault';
		param.title='Default Final Attribute';
		param.description='${include help/params/doc/xsd/schema/doc.xsd.schema.profile.finalDefault.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.schema.profile.finalDefault.value';
		param.title='Value';
		param.description='${include help/params/doc/xsd/schema/doc.xsd.schema.profile.finalDefault.value.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.schema.profile.finalDefault.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc/xsd/schema/doc.xsd.schema.profile.finalDefault.meaning.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.schema.profile.relatedSchemas';
		param.title='Related Schemas';
		param.description='${include help/params/doc/xsd/schema/doc.xsd.schema.profile.relatedSchemas.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.schema.annotation';
		param.title='Annotation';
		param.description='${include help/params/doc/xsd/schema/doc.xsd.schema.annotation.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.schema.comps';
		param.title='XSD Component Summary';
		param.description='${include help/params/doc/xsd/schema/doc.xsd.schema.comps.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.xsd.comp")';
	}
	PARAM={
		param.name='doc.xsd.schema.comps.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.for$.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.xsd.schema.comps.for.elements';
		param.title='Elements';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.for.elements$.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.for.elements")';
	}
	PARAM={
		param.name='doc.xsd.schema.comps.for.elements.local';
		param.title='Local Elements';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.for.elements.local$.htm}';
		param.type='enum';
		param.enum.values='all;complexType;none';
		param.enum.displayValues='all;with complex type;none';
		param.defaultValue.expr='getStringParam("doc.frgm.xsd.comps.for.elements.local")';
	}
	PARAM={
		param.name='doc.xsd.schema.comps.for.complexTypes';
		param.title='Complex Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.for.complexTypes$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.for.complexTypes")';
	}
	PARAM={
		param.name='doc.xsd.schema.comps.for.simpleTypes';
		param.title='Simple Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.for.simpleTypes$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.for.simpleTypes")';
	}
	PARAM={
		param.name='doc.xsd.schema.comps.for.groups';
		param.title='Element Groups';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.for.groups$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.for.groups")';
	}
	PARAM={
		param.name='doc.xsd.schema.comps.for.attributes';
		param.title='Global Attributes';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.for.attributes$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.for.attributes")';
	}
	PARAM={
		param.name='doc.xsd.schema.comps.for.attributeGroups';
		param.title='Attribute Groups';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.for.attributeGroups$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.for.attributeGroups")';
	}
	PARAM={
		param.name='doc.xsd.schema.comps.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.sorting$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.sorting")';
	}
	PARAM={
		param.name='doc.xsd.schema.comps.annotation';
		param.title='Annotation';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.annotation$.htm}';
		param.type='enum';
		param.enum.values='first_sentence;full;none';
		param.enum.displayValues='first sentence;full;none';
		param.defaultValue.expr='getStringParam("doc.frgm.xsd.comps.annotation")';
	}
	PARAM={
		param.name='doc.xsd.schema.comps.profile';
		param.title='Component Profile';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile$.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile")';
	}
	PARAM={
		param.name='doc.xsd.schema.comps.profile.namespace';
		param.title='Namespace';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.namespace$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.namespace")';
	}
	PARAM={
		param.name='doc.xsd.schema.comps.profile.type';
		param.title='Type';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.type$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.type")';
	}
	PARAM={
		param.name='doc.xsd.schema.comps.profile.content';
		param.title='Content';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.content$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.content")';
	}
	PARAM={
		param.name='doc.xsd.schema.comps.profile.abstract';
		param.title='Abstract';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.abstract$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.abstract")';
	}
	PARAM={
		param.name='doc.xsd.schema.comps.profile.block';
		param.title='Block';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.block$.htm}';
		param.group='true';
		param.group.enablingExpr='! hasParamValue("", "none")';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
		param.defaultValue.expr='getStringParam("doc.frgm.xsd.comps.profile.block")';
	}
	PARAM={
		param.name='doc.xsd.schema.comps.profile.block.value';
		param.title='Value';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.block.value$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.block.value")';
	}
	PARAM={
		param.name='doc.xsd.schema.comps.profile.block.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.block.meaning$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.block.meaning")';
	}
	PARAM={
		param.name='doc.xsd.schema.comps.profile.final';
		param.title='Final';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.final$.htm}';
		param.group='true';
		param.group.enablingExpr='! hasParamValue("", "none")';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
		param.defaultValue.expr='getStringParam("doc.frgm.xsd.comps.profile.final")';
	}
	PARAM={
		param.name='doc.xsd.schema.comps.profile.final.value';
		param.title='Value';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.final.value$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.final.value")';
	}
	PARAM={
		param.name='doc.xsd.schema.comps.profile.final.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.final.meaning$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.final.meaning")';
	}
	PARAM={
		param.name='doc.xsd.schema.comps.profile.subst';
		param.title='Subst.Gr';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.subst$.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.subst")';
	}
	PARAM={
		param.name='doc.xsd.schema.comps.profile.subst.heads';
		param.title='List of group heads';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.subst.heads$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.subst.heads")';
	}
	PARAM={
		param.name='doc.xsd.schema.comps.profile.subst.members';
		param.title='List of group members';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.subst.members$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.subst.members")';
	}
	PARAM={
		param.name='doc.xsd.schema.comps.profile.nillable';
		param.title='Nillable';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.nillable$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.nillable")';
	}
	PARAM={
		param.name='doc.xsd.schema.comps.profile.defined';
		param.title='Defined';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.defined$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.defined")';
	}
	PARAM={
		param.name='doc.xsd.schema.comps.profile.includes';
		param.title='Includes';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.includes$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.includes")';
	}
	PARAM={
		param.name='doc.xsd.schema.comps.profile.redefines';
		param.title='Redefines';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.redefines$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.redefines")';
	}
	PARAM={
		param.name='doc.xsd.schema.comps.profile.redefined';
		param.title='Redefined';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.redefined$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.redefined")';
	}
	PARAM={
		param.name='doc.xsd.schema.comps.profile.used';
		param.title='Used';
		param.description='${include help/params/doc/frgm/xsd/comps/doc.frgm.xsd.comps.profile.used$.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.frgm.xsd.comps.profile.used")';
	}
	PARAM={
		param.name='doc.xsd.schema.xml';
		param.title='XML Source';
		param.description='${include help/params/doc/xsd/schema/doc.xsd.schema.xml.htm}';
		param.group='true';
		param.group.enablingExpr='! hasParamValue("", "none")';
		param.type='enum';
		param.enum.values='all;xsd;none';
		param.enum.displayValues='all;XSD files only;none';
		param.defaultValue='xsd';
	}
	PARAM={
		param.name='doc.xsd.schema.xml.separate';
		param.title='Separate File';
		param.description='${include help/params/doc/xsd/schema/doc.xsd.schema.xml.separate.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.schema.xml.box';
		param.title='Enclose in Box';
		param.description='${include help/params/doc/xsd/schema/doc.xsd.schema.xml.box.htm}';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.schema.xml.remove.xsd.anns';
		param.title='Remove <xs:annotation>';
		param.description='${include help/params/doc/xsd/schema/doc.xsd.schema.xml.remove.xsd.anns.htm}';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def';
		param.title='WSDL Definition';
		param.title.style.bold='true';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.wsdl.def.altDesc';
		param.title='Alternative Descriptions';
		param.title.style.italic='true';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.altDesc.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.wsdl.def.altDesc.operation';
		param.title='Operation';
		param.title.style.italic='true';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.altDesc.operation.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.wsdl.def.altDesc.operation.copyFrom';
		param.title='Copy From';
		param.title.style.italic='true';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.altDesc.operation.copyFrom.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.wsdl.def.altDesc.operation.copyFrom.portType.operation';
		param.title='Port Type Operation';
		param.title.style.italic='true';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.altDesc.operation.copyFrom.portType.operation.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.altDesc.operation.copyFrom.input.message';
		param.title='Input Message';
		param.title.style.italic='true';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.altDesc.operation.copyFrom.input.message.htm}';
		param.group='true';
		param.group.defaultState='expanded';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.altDesc.operation.copyFrom.input.message.part.dataType';
		param.title='Data Type';
		param.title.style.italic='true';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.altDesc.operation.copyFrom.input.message.part.dataType.htm}';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.altDesc.operation.copyFrom.output.message';
		param.title='Output Message';
		param.title.style.italic='true';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.altDesc.operation.copyFrom.output.message.htm}';
		param.group='true';
		param.group.defaultState='expanded';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.altDesc.operation.copyFrom.output.message.part.dataType';
		param.title='Data Type';
		param.title.style.italic='true';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.altDesc.operation.copyFrom.output.message.part.dataType.htm}';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.altDesc.part';
		param.title='Message Part';
		param.title.style.italic='true';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.altDesc.part.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.wsdl.def.altDesc.part.copyFrom';
		param.title='Copy From';
		param.title.style.italic='true';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.altDesc.part.copyFrom.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.wsdl.def.altDesc.part.copyFrom.dataType';
		param.title='Data Type';
		param.title.style.italic='true';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.altDesc.part.copyFrom.dataType.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.profile';
		param.title='Definition Profile';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.profile.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.profile.namespace';
		param.title='Namespace';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.profile.namespace.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.profile.portType';
		param.title='Port Type';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.profile.portType.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.profile.includes';
		param.title='Includes';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.profile.includes.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.profile.defined';
		param.title='Defined / XML Source';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.profile.defined.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.profile.used';
		param.title='Used';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.profile.used.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.extensibility';
		param.title='Extensibility Elements';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.extensibility.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.usage';
		param.title='Usage Locations';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.usage.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.description';
		param.title='Description';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.description.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operationSummary';
		param.title='Operation Summary';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operationSummary.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operationSummary.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operationSummary.for.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operationSummary.for.binding';
		param.title='Bindings';
		param.title.style.italic='true';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operationSummary.for.binding.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operationSummary.for.portType';
		param.title='Port Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operationSummary.for.portType.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.xml';
		param.title='XML Source';
		param.title.style.bold='true';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.xml.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.xml.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.xml.for.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.wsdl.def.xml.for.service';
		param.title='Services';
		param.title.style.italic='true';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.xml.for.service.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.xml.for.binding';
		param.title='Bindings';
		param.title.style.italic='true';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.xml.for.binding.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.xml.for.portType';
		param.title='Port Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.xml.for.portType.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.xml.for.message';
		param.title='Messages';
		param.title.style.italic='true';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.xml.for.message.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.xml.box';
		param.title='Enclose in Box';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.xml.box.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.xml.remove.wsdl.docs';
		param.title='Remove <wsdl:documentation>';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.xml.remove.wsdl.docs.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.ports';
		param.title='Port Detail';
		param.title.style.bold='true';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.ports.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.ports.description';
		param.title='Description';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.ports.description.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.ports.profile';
		param.title='Profile';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.ports.profile.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.ports.extensibility';
		param.title='Extensibility Elements';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.ports.extensibility.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.ports.xml';
		param.title='XML Source';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.ports.xml.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.ports.xml.box';
		param.title='Enclose in Box';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.ports.xml.box.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.ports.xml.remove.wsdl.docs';
		param.title='Remove <wsdl:documentation>';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.ports.xml.remove.wsdl.docs.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.ports.operationSummary';
		param.title='Operation Summary';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.ports.operationSummary.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operations';
		param.title='Operation Detail';
		param.title.style.bold='true';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operations.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operations.for.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.for.binding';
		param.title='Bindings';
		param.title.style.italic='true';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operations.for.binding.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.for.portType';
		param.title='Port Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operations.for.portType.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.description';
		param.title='Description';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operations.description.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.profile';
		param.title='Profile';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operations.profile.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.extensibility';
		param.title='Extensibility Elements';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operations.extensibility.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.input';
		param.title='Input';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operations.input.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.input.description';
		param.title='Description';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operations.input.description.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.input.message';
		param.title='Message';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operations.input.message.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.input.message.parts';
		param.title='Parts';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operations.input.message.parts.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.input.message.parts.description';
		param.title='Description';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operations.input.message.parts.description.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.input.message.parts.description.copyFrom';
		param.title='Copy From';
		param.title.style.italic='true';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operations.input.message.parts.description.copyFrom.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.input.message.parts.description.copyFrom.dataType';
		param.title='Data Type';
		param.title.style.italic='true';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operations.input.message.parts.description.copyFrom.dataType.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.wsdl.def.altDesc.part.copyFrom.dataType")';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.input.extensibility';
		param.title='Extensibility Elements';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operations.input.extensibility.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.output';
		param.title='Output';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operations.output.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.output.description';
		param.title='Description';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operations.output.description.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.output.message';
		param.title='Message';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operations.output.message.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.output.message.parts';
		param.title='Parts';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operations.input.message.parts.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.output.message.parts.description';
		param.title='Description';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operations.input.message.parts.description.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.output.message.parts.description.copyFrom';
		param.title='Copy From';
		param.title.style.italic='true';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operations.input.message.parts.description.copyFrom.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.output.message.parts.description.copyFrom.dataType';
		param.title='Data Type';
		param.title.style.italic='true';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operations.input.message.parts.description.copyFrom.dataType.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.wsdl.def.altDesc.part.copyFrom.dataType")';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.output.extensibility';
		param.title='Extensibility Elements';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operations.output.extensibility.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.fault';
		param.title='Fault';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operations.fault.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.fault.description';
		param.title='Description';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operations.fault.description.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.fault.message';
		param.title='Message';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operations.fault.message.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.fault.message.parts';
		param.title='Parts';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operations.input.message.parts.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.fault.message.parts.description';
		param.title='Description';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operations.input.message.parts.description.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.fault.message.parts.description.copyFrom';
		param.title='Copy From';
		param.title.style.italic='true';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operations.input.message.parts.description.copyFrom.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.fault.message.parts.description.copyFrom.dataType';
		param.title='Data Type';
		param.title.style.italic='true';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operations.input.message.parts.description.copyFrom.dataType.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.wsdl.def.altDesc.part.copyFrom.dataType")';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.fault.extensibility';
		param.title='Extensibility Elements';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operations.fault.extensibility.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.xml';
		param.title='XML Source';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operations.xml.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.xml.box';
		param.title='Enclose in Box';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operations.xml.box.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.operations.xml.remove.wsdl.docs';
		param.title='Remove <wsdl:documentation>';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.operations.xml.remove.wsdl.docs.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.parts';
		param.title='Message Part Detail';
		param.title.style.bold='true';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.parts.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.parts.dataType';
		param.title='Data Type';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.parts.dataType.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.wsdl.def.parts.description';
		param.title='Description';
		param.description='${include help/params/doc/wsdl/def/doc.wsdl.def.parts.description.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp';
		param.title='XSD Component';
		param.title.style.bold='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.xsd.comp.profile';
		param.title='Component Profile';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.profile.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.namespace';
		param.title='Namespace';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.profile.namespace.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.type';
		param.title='Type';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.profile.type.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.content';
		param.title='Content';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.profile.content.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.abstract';
		param.title='Abstract';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.profile.abstract.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.block';
		param.title='Block';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.profile.block.htm}';
		param.group='true';
		param.group.enablingExpr='! hasParamValue("", "none")';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.block.value';
		param.title='Value';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.profile.block.value.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.block.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.profile.block.meaning.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.final';
		param.title='Final';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.profile.final.htm}';
		param.group='true';
		param.group.enablingExpr='! hasParamValue("", "none")';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.final.value';
		param.title='Value';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.profile.final.value.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.final.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.profile.final.meaning.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.subst';
		param.title='Subst.Gr';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.profile.subst.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.subst.heads';
		param.title='List of group heads';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.profile.subst.heads.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.subst.members';
		param.title='List of group members';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.profile.subst.members.htm}';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.nillable';
		param.title='Nillable';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.profile.nillable.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.defined';
		param.title='Defined';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.profile.defined.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.includes';
		param.title='Includes';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.profile.includes.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.redefines';
		param.title='Redefines';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.profile.redefines.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.redefined';
		param.title='Redefined';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.profile.redefined.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.used';
		param.title='Used';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.profile.used.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.diagram';
		param.title='Diagram';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.diagram.htm}';
		param.enablingExpr='getBooleanParam("integration.XMLSpy") ||
getBooleanParam("integration.OxygenXML")';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='getBooleanParam("integration.XMLSpy") ||
getBooleanParam("integration.OxygenXML")';
	}
	PARAM={
		param.name='doc.xsd.comp.diagram.links';
		param.title='Hyperlinks';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.diagram.links.htm}';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='doc.xsd.comp.diagram.links.attribute.global';
		param.title='Global Attributes';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.diagram.links.attribute.global.htm}';
		param.type='enum';
		param.enum.values='global;local';
		param.enum.displayValues='global documentation;local documentation';
	}
	PARAM={
		param.name='doc.xsd.comp.diagram.links.element.local';
		param.title='Local Elements';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.diagram.links.element.local.htm}';
		param.type='enum';
		param.enum.values='global;local';
		param.enum.displayValues='global documentation;local documentation';
	}
	PARAM={
		param.name='doc.xsd.comp.xmlRep';
		param.title='XML Representation Summary';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.xmlRep.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.xmlRep.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.xmlRep.for.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.xsd.comp.xmlRep.for.element';
		param.title='Elements';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.xmlRep.for.element.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.xmlRep.for.complexType';
		param.title='Complex Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.xmlRep.for.complexType.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.xmlRep.for.simpleType';
		param.title='Simple Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.xmlRep.for.simpleType.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.xmlRep.for.group';
		param.title='Element Groups';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.xmlRep.for.group.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.xmlRep.for.attribute';
		param.title='Global Attributes';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.xmlRep.for.attribute.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.xmlRep.for.attributeGroup';
		param.title='Attribute Groups';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.xmlRep.for.attributeGroup.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.xmlRep.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.xmlRep.sorting.htm}';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.simpleContent';
		param.title='Simple Content Detail';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.simpleContent.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.simpleContent.restrictions';
		param.title='Restrictions';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.simpleContent.restrictions.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.simpleContent.restrictions.annotation';
		param.title='Annotations';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.simpleContent.restrictions.annotation.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.simpleContent.default';
		param.title='Default Value';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.simpleContent.default.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.simpleContent.fixed';
		param.title='Fixed Value';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.simpleContent.fixed.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.lists';
		param.title='Lists of Related Components';
		param.title.style.bold='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.lists.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.lists.layout';
		param.title='List Layout';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.lists.layout.htm}';
		param.type='enum';
		param.enum.values='flow;one_column;two_columns;optimal';
		param.enum.displayValues='flow;one column;two columns;optimal';
		param.defaultValue='optimal';
	}
	PARAM={
		param.name='doc.xsd.comp.lists.contentElements';
		param.title='Content Elements';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.lists.contentElements.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.lists.containingElements';
		param.title='Containing Elements';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.lists.containingElements.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.lists.substitutableElements';
		param.title='Substitutable Elements';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.lists.substitutableElements.htm}';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='! getBooleanParam("doc.xsd.comp.profile.subst.heads")';
	}
	PARAM={
		param.name='doc.xsd.comp.lists.substitutingElements';
		param.title='Substituting Elements';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.lists.substitutingElements.htm}';
		param.type='boolean';
		param.defaultValue.expr='! getBooleanParam("doc.xsd.comp.profile.subst.members")';
	}
	PARAM={
		param.name='doc.xsd.comp.lists.childrenBySubst';
		param.title='Children By Substitutions';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.lists.childrenBySubst.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.lists.parentsBySubst';
		param.title='Parents By Substitutions';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.lists.parentsBySubst.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.lists.directSubtypes';
		param.title='Direct Subtypes';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.lists.directSubtypes.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.lists.indirectSubtypes';
		param.title='Indirect Subtypes';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.lists.indirectSubtypes.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.lists.basedElements';
		param.title='All Based Elements';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.lists.basedElements.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.lists.basedAttributes';
		param.title='All Based Attributes';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.lists.basedAttributes.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.usage';
		param.title='Usage / Definition Locations';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.usage.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.usage.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.usage.for.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.xsd.comp.usage.for.element.global';
		param.title='Global Elements';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.usage.for.element.global.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.usage.for.element.local';
		param.title='Local Elements';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.usage.for.element.local.htm}';
		param.type='enum';
		param.enum.values='always;multiple;never';
		param.enum.displayValues='always;multiple only;never';
		param.defaultValue='multiple';
	}
	PARAM={
		param.name='doc.xsd.comp.usage.for.complexType';
		param.title='Complex Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.usage.for.complexType.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.usage.for.simpleType';
		param.title='Simple Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.usage.for.simpleType.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.usage.for.group';
		param.title='Element Groups';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.usage.for.group.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.usage.for.attribute';
		param.title='Global Attributes';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.usage.for.attribute.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.usage.for.attributeGroup';
		param.title='Attribute Groups';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.usage.for.attributeGroup.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.usage.layout';
		param.title='List Layout';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.usage.layout.htm}';
		param.type='enum';
		param.enum.values='flow;one_column;two_columns;optimal';
		param.enum.displayValues='flow;one column;two columns;optimal';
		param.defaultValue='optimal';
	}
	PARAM={
		param.name='doc.xsd.comp.annotation';
		param.title='Annotation';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.annotation.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.annotation.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.annotation.for.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.xsd.comp.annotation.for.element';
		param.title='Elements';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.annotation.for.element.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.annotation.for.complexType';
		param.title='Complex Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.annotation.for.complexType.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.annotation.for.simpleType';
		param.title='Simple Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.annotation.for.simpleType.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.annotation.for.group';
		param.title='Element Groups';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.annotation.for.group.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.annotation.for.attribute';
		param.title='Global Attributes';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.annotation.for.attribute.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.annotation.for.attributeGroup';
		param.title='Attribute Groups';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.annotation.for.attributeGroup.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.type';
		param.title='Type Definition Detail';
		param.title.style.bold='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.type.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.type.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.type.for.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.xsd.comp.type.for.element.type';
		param.title='Elements With Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.type.for.element.type.htm}';
		param.type='enum';
		param.enum.values='anonymous;any;none';
	}
	PARAM={
		param.name='doc.xsd.comp.type.for.attribute.type';
		param.title='Attributes With Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.type.for.attribute.type.htm}';
		param.type='enum';
		param.enum.values='anonymous;any;none';
	}
	PARAM={
		param.name='doc.xsd.comp.type.for.type';
		param.title='Global Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.type.for.type.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.type.deriv.tree';
		param.title='Type Derivation Tree';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.type.deriv.tree.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.type.annotation';
		param.title='Annotation';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.type.annotation.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.type.deriv.simpleContent';
		param.title='Simple Content Derivation';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.type.deriv.simpleContent.htm}';
		param.group='true';
		param.group.enablingExpr='! hasParamValue("", "none")';
		param.type='enum';
		param.enum.values='local;full;none';
		param.enum.displayValues='local definition only;full;none';
	}
	PARAM={
		param.name='doc.xsd.comp.type.deriv.simpleContent.facets';
		param.title='Facets';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.type.deriv.simpleContent.facets.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.type.deriv.simpleContent.annotations';
		param.title='Annotations';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.type.deriv.simpleContent.annotations.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.xml';
		param.title='XML Source';
		param.title.style.bold='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.xml.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.xml.box';
		param.title='Enclose in Box';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.xml.box.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.xml.remove.xsd.anns';
		param.title='Remove <xs:annotation>';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.xml.remove.xsd.anns.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes';
		param.title='Attribute Detail';
		param.title.style.bold='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.for.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.for.element';
		param.title='Elements';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.for.element.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.for.complexType';
		param.title='Complex Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.for.complexType.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.for.attributeGroup';
		param.title='Attribute Groups';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.for.attributeGroup.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.include';
		param.title='Include';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.include.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.include.local';
		param.title='Local';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.include.local.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.include.references';
		param.title='References';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.include.references.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.include.wildcard';
		param.title='Wildcard';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.include.wildcard.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.include.prohibitions';
		param.title='Prohibitions';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.include.prohibitions.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.include.inherited';
		param.title='Inherited';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.include.inherited.htm}';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.sorting.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.profile';
		param.title='Profile';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.profile.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.profile.form';
		param.title='Form';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.profile.form.htm}';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
		param.defaultValue='non_default';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.profile.type';
		param.title='Type';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.profile.type.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.profile.use';
		param.title='Usage';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.profile.use.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.profile.default';
		param.title='Default Value';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.profile.default.htm}';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='! getBooleanParam("doc.xsd.comp.attributes.value") ||
! getBooleanParam("doc.xsd.comp.attributes.value.default")';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.profile.fixed';
		param.title='Fixed Value';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.profile.fixed.htm}';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='! getBooleanParam("doc.xsd.comp.attributes.value") ||
! getBooleanParam("doc.xsd.comp.attributes.value.fixed")';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.profile.defined';
		param.title='Definition Location';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.profile.defined.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.xsd.comp.attributes.include.inherited")';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.annotation';
		param.title='Annotation';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.annotation.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.value';
		param.title='Attribute Value';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.value.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.value.model';
		param.title='Datatype Model';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.value.model.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.value.restrictions';
		param.title='Restrictions';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.value.restrictions.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.value.restrictions.annotation';
		param.title='Annotations';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.value.restrictions.annotation.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.value.default';
		param.title='Default Value';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.value.default.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.value.fixed';
		param.title='Fixed Value';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.value.fixed.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.type';
		param.title='Type Detail';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.type.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.type.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.type.for.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.type.for.attr';
		param.title='Attributes';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.type.for.attr.htm}';
		param.type='enum';
		param.enum.values='local;any';
		param.enum.displayValues='local only;any';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.type.for.typeDecl';
		param.title='Type Declarations';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.type.for.typeDecl.htm}';
		param.type='enum';
		param.enum.values='anonymous;any';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.type.annotation';
		param.title='Annotation';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.type.annotation.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.type.deriv.tree';
		param.title='Type Derivation Tree';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.type.deriv.tree.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.type.deriv.simpleContent';
		param.title='Simple Content Derivation';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.type.deriv.simpleContent.htm}';
		param.group='true';
		param.group.enablingExpr='! hasParamValue("", "none")';
		param.type='enum';
		param.enum.values='local;full;none';
		param.enum.displayValues='local definition only;full;none';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.type.deriv.simpleContent.facets';
		param.title='Facets';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.type.deriv.simpleContent.facets.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.type.deriv.simpleContent.annotations';
		param.title='Annotations';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.type.deriv.simpleContent.annotations.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.xml';
		param.title='XML Source';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.xml.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.xml.box';
		param.title='Enclose in Box';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.xml.box.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.attributes.xml.remove.xsd.anns';
		param.title='Remove <xs:annotation>';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.attributes.xml.remove.xsd.anns.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements';
		param.title='Content Element Detail';
		param.title.style.bold='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.for.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.for.element';
		param.title='Elements';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.for.element.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.for.complexType';
		param.title='Complex Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.for.complexType.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.for.group';
		param.title='Element Groups';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.for.group.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.include';
		param.title='Include';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.include.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.include.local';
		param.title='Local';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.include.local.htm}';
		param.type='enum';
		param.enum.values='all;simpleType;none';
		param.enum.displayValues='all;with simple type only;none';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.include.references';
		param.title='References';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.include.references.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.include.wildcards';
		param.title='Wildcards';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.include.wildcards.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.include.inherited';
		param.title='Inherited';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.include.inherited.htm}';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.sorting.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.profile';
		param.title='Profile';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.profile.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.profile.form';
		param.title='Form';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.profile.form.htm}';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
		param.defaultValue='non_default';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.profile.type';
		param.title='Type';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.profile.type.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.profile.abstract';
		param.title='Abstract';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.profile.abstract.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.profile.block';
		param.title='Block';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.profile.block.htm}';
		param.group='true';
		param.group.enablingExpr='! hasParamValue("", "none")';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
		param.defaultValue='non_default';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.profile.block.value';
		param.title='Value';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.profile.block.value.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.profile.block.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.profile.block.meaning.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.profile.final';
		param.title='Final';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.profile.final.htm}';
		param.group='true';
		param.group.enablingExpr='! hasParamValue("", "none")';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
		param.defaultValue='non_default';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.profile.final.value';
		param.title='Value';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.profile.final.value.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.profile.final.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.profile.final.meaning.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.profile.subst';
		param.title='Subst.Gr';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.profile.subst.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.profile.subst.heads';
		param.title='List of group heads';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.profile.subst.heads.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.profile.subst.members';
		param.title='List of group members';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.profile.subst.members.htm}';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.profile.default';
		param.title='Default Value';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.profile.default.htm}';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='! getBooleanParam("doc.xsd.comp.contentElements.simpleContent") ||
! getBooleanParam("doc.xsd.comp.contentElements.simpleContent.default")';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.profile.fixed';
		param.title='Fixed Value';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.profile.fixed.htm}';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='! getBooleanParam("doc.xsd.comp.contentElements.simpleContent") ||
! getBooleanParam("doc.xsd.comp.contentElements.simpleContent.fixed")';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.profile.nillable';
		param.title='Nillable';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.profile.nillable.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.profile.defined';
		param.title='Definition Location';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.profile.defined.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.xsd.comp.contentElements.include.inherited")';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.annotation';
		param.title='Annotation';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.annotation.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.xmlRep';
		param.title='XML Representation Summary';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.xmlRep.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='! getBooleanParam("gen.doc.xsd.comp.element") ||
! hasParamValue("gen.doc.xsd.comp.element.local", "all")';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.xmlRep.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.xmlRep.for.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.xmlRep.for.element';
		param.title='Elements';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.xmlRep.for.element.htm}';
		param.type='enum';
		param.enum.values='local;any';
		param.enum.displayValues='local only;any';
		param.defaultValue.expr='getBooleanParam("gen.doc.xsd.comp.element") ? "local" : "any"';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.xmlRep.for.type';
		param.title='With Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.xmlRep.for.type.htm}';
		param.type='enum';
		param.enum.values='complexType;simpleType;any';
		param.enum.displayValues='complex type;simple type;any type';
		param.defaultValue.expr='hasParamValue("gen.doc.xsd.comp.element.local", "complexType") ?
 "simpleType" : "any"';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.xmlRep.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.xmlRep.sorting.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.xmlRep.heading';
		param.title='Show Heading';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.xmlRep.heading.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.simpleContent';
		param.title='Simple Content';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.simpleContent.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.simpleContent.model';
		param.title='Datatype Model';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.simpleContent.model.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.simpleContent.restrictions';
		param.title='Restrictions';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.simpleContent.restrictions.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.simpleContent.restrictions.annotation';
		param.title='Annotations';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.simpleContent.restrictions.annotation.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.simpleContent.default';
		param.title='Default Value';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.simpleContent.default.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.simpleContent.fixed';
		param.title='Fixed Value';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.simpleContent.fixed.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.type';
		param.title='Type Detail';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.type.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='! getBooleanParam("gen.doc.xsd.comp.element") ||
! hasParamValue("gen.doc.xsd.comp.element.local", "all")';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.type.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.type.for.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.type.for.element';
		param.title='Elements';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.type.for.element.htm}';
		param.type='enum';
		param.enum.values='local;any';
		param.enum.displayValues='local only;any';
		param.defaultValue.expr='getBooleanParam("gen.doc.xsd.comp.element") ? "local" : "any"';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.type.for.type';
		param.title='Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.type.for.type.htm}';
		param.type='enum';
		param.enum.values='simpleType;any';
		param.enum.displayValues='simple type;any';
		param.defaultValue.expr='getBooleanParam("gen.doc.xsd.comp.element") &&
  hasParamValue("gen.doc.xsd.comp.element.local", "complexType")
? "simpleType" : "any"';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.type.for.typeDecl';
		param.title='Type Declarations';
		param.title.style.italic='true';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.type.for.typeDecl.htm}';
		param.type='enum';
		param.enum.values='anonymous;any';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.type.annotation';
		param.title='Annotation';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.type.annotation.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.type.deriv.tree';
		param.title='Type Derivation Tree';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.type.deriv.tree.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.type.deriv.simpleContent';
		param.title='Simple Content Derivation';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.type.deriv.simpleContent.htm}';
		param.group='true';
		param.group.enablingExpr='! hasParamValue("", "none")';
		param.type='enum';
		param.enum.values='local;full;none';
		param.enum.displayValues='local definition only;full;none';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.type.deriv.simpleContent.facets';
		param.title='Facets';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.type.deriv.simpleContent.facets.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.type.deriv.simpleContent.annotations';
		param.title='Annotations';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.type.deriv.simpleContent.annotations.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.xml';
		param.title='XML Source';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.xml.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.xml.box';
		param.title='Enclose in Box';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.xml.box.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.xsd.comp.contentElements.xml.remove.xsd.anns';
		param.title='Remove <xs:annotation>';
		param.description='${include help/params/doc/xsd/comp/doc.xsd.comp.contentElements.xml.remove.xsd.anns.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='nav';
		param.title='Navigation';
		param.title.style.bold='true';
		param.description='${include help/params/nav/nav.htm}';
		param.group='true';
	}
	PARAM={
		param.name='nav.overviewFrame';
		param.title='Overview Frame';
		param.description='${include help/params/nav/nav.overviewFrame.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='nav.overviewFrame.title';
		param.title='Title';
		param.description='${include help/params/nav/nav.overviewFrame.title.htm}';
		param.type='string';
		param.defaultValue.expr='getStringParam("docTitle")';
	}
	PARAM={
		param.name='nav.indexFrame';
		param.title='Index Frame';
		param.title.style.bold='true';
		param.description='${include help/params/nav/indexFrame/nav.indexFrame.htm}';
		param.group='true';
		param.type='enum';
		param.enum.values='allcomps;namespace;wsdl;schema';
		param.enum.displayValues='All Components;Namespace;WSDL File;Schema';
	}
	PARAM={
		param.name='nav.indexFrame.allcomps';
		param.title='All Components';
		param.title.style.bold='true';
		param.description='${include help/params/nav/indexFrame/allcomps/nav.indexFrame.allcomps.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.allcomps")';
	}
	PARAM={
		param.name='nav.indexFrame.allcomps.wsdl.defs';
		param.title='WSDL Definitions';
		param.description='${include help/params/nav/indexFrame/allcomps/wsdl/nav.indexFrame.allcomps.wsdl.defs.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.wsdl.def")';
	}
	PARAM={
		param.name='nav.indexFrame.allcomps.wsdl.defs.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/nav/indexFrame/allcomps/wsdl/nav.indexFrame.allcomps.wsdl.defs.sorting.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.sorting.wsdl.defs")';
	}
	PARAM={
		param.name='nav.indexFrame.allcomps.wsdl.defs.services';
		param.title='Services';
		param.description='${include help/params/nav/indexFrame/allcomps/wsdl/nav.indexFrame.allcomps.wsdl.defs.services.htm}';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='getBooleanParam("gen.doc.wsdl.def.service")';
	}
	PARAM={
		param.name='nav.indexFrame.allcomps.wsdl.defs.bindings';
		param.title='Bindings';
		param.description='${include help/params/nav/indexFrame/allcomps/wsdl/nav.indexFrame.allcomps.wsdl.defs.bindings.htm}';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='getBooleanParam("gen.doc.wsdl.def.binding")';
	}
	PARAM={
		param.name='nav.indexFrame.allcomps.wsdl.defs.portTypes';
		param.title='Port Types';
		param.description='${include help/params/nav/indexFrame/allcomps/wsdl/nav.indexFrame.allcomps.wsdl.defs.portTypes.htm}';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='getBooleanParam("gen.doc.wsdl.def.portType")';
	}
	PARAM={
		param.name='nav.indexFrame.allcomps.wsdl.defs.messages';
		param.title='Messages';
		param.description='${include help/params/nav/indexFrame/allcomps/wsdl/nav.indexFrame.allcomps.wsdl.defs.messages.htm}';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='getBooleanParam("gen.doc.wsdl.def.message")';
	}
	PARAM={
		param.name='nav.indexFrame.allcomps.xsd.comps';
		param.title='XSD Components';
		param.description='${include help/params/nav/indexFrame/allcomps/xsd/nav.indexFrame.allcomps.xsd.comps.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.xsd.comp")';
	}
	PARAM={
		param.name='nav.indexFrame.allcomps.xsd.comps.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/nav/indexFrame/allcomps/xsd/nav.indexFrame.allcomps.xsd.comps.sorting.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.sorting.xsd.comps")';
	}
	PARAM={
		param.name='nav.indexFrame.allcomps.xsd.comps.elements';
		param.title='Elements';
		param.description='${include help/params/nav/indexFrame/allcomps/xsd/nav.indexFrame.allcomps.xsd.comps.elements.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.xsd.comp.element")';
	}
	PARAM={
		param.name='nav.indexFrame.allcomps.xsd.comps.elements.local';
		param.title='Local Elements';
		param.description='${include help/params/nav/indexFrame/allcomps/xsd/nav.indexFrame.allcomps.xsd.comps.elements.local.htm}';
		param.type='enum';
		param.enum.values='all;complexType;none';
		param.enum.displayValues='all;with complex type;none';
		param.defaultValue.expr='getStringParam("gen.doc.xsd.comp.element.local")';
	}
	PARAM={
		param.name='nav.indexFrame.allcomps.xsd.comps.complexTypes';
		param.title='Complex Types';
		param.description='${include help/params/nav/indexFrame/allcomps/xsd/nav.indexFrame.allcomps.xsd.comps.complexTypes.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.xsd.comp.complexType")';
	}
	PARAM={
		param.name='nav.indexFrame.allcomps.xsd.comps.simpleTypes';
		param.title='Simple Types';
		param.description='${include help/params/nav/indexFrame/allcomps/xsd/nav.indexFrame.allcomps.xsd.comps.simpleTypes.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.xsd.comp.simpleType")';
	}
	PARAM={
		param.name='nav.indexFrame.allcomps.xsd.comps.groups';
		param.title='Element Groups';
		param.description='${include help/params/nav/indexFrame/allcomps/xsd/nav.indexFrame.allcomps.xsd.comps.groups.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.xsd.comp.group")';
	}
	PARAM={
		param.name='nav.indexFrame.allcomps.xsd.comps.attributes';
		param.title='Global Attributes';
		param.description='${include help/params/nav/indexFrame/allcomps/xsd/nav.indexFrame.allcomps.xsd.comps.attributes.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.xsd.comp.attribute")';
	}
	PARAM={
		param.name='nav.indexFrame.allcomps.xsd.comps.attributeGroups';
		param.title='Attribute Groups';
		param.description='${include help/params/nav/indexFrame/allcomps/xsd/nav.indexFrame.allcomps.xsd.comps.attributeGroups.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.xsd.comp.attributeGroup")';
	}
	PARAM={
		param.name='nav.indexFrame.namespace';
		param.title='Namespace';
		param.title.style.bold='true';
		param.description='${include help/params/nav/indexFrame/nav.indexFrame.namespace.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.namespace")';
	}
	PARAM={
		param.name='nav.indexFrame.namespace.wsdl.files';
		param.title='WSDL Files';
		param.description='${include help/params/nav/indexFrame/nav.indexFrame.namespace.wsdl.files.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.wsdl.file")';
	}
	PARAM={
		param.name='nav.indexFrame.namespace.wsdl.defs';
		param.title='WSDL Definitions';
		param.description='${include help/params/nav/indexFrame/nav.indexFrame.namespace.wsdl.defs.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.wsdl.def")';
	}
	PARAM={
		param.name='nav.indexFrame.namespace.wsdl.defs.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/nav/indexFrame/allcomps/wsdl/nav.indexFrame.allcomps.wsdl.defs.sorting.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.sorting.wsdl.defs")';
	}
	PARAM={
		param.name='nav.indexFrame.namespace.wsdl.defs.services';
		param.title='Services';
		param.description='${include help/params/nav/indexFrame/allcomps/wsdl/nav.indexFrame.allcomps.wsdl.defs.services.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.wsdl.def.service")';
	}
	PARAM={
		param.name='nav.indexFrame.namespace.wsdl.defs.bindings';
		param.title='Bindings';
		param.description='${include help/params/nav/indexFrame/allcomps/wsdl/nav.indexFrame.allcomps.wsdl.defs.bindings.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.wsdl.def.binding")';
	}
	PARAM={
		param.name='nav.indexFrame.namespace.wsdl.defs.portTypes';
		param.title='Port Types';
		param.description='${include help/params/nav/indexFrame/allcomps/wsdl/nav.indexFrame.allcomps.wsdl.defs.portTypes.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.wsdl.def.portType")';
	}
	PARAM={
		param.name='nav.indexFrame.namespace.wsdl.defs.messages';
		param.title='Messages';
		param.description='${include help/params/nav/indexFrame/allcomps/wsdl/nav.indexFrame.allcomps.wsdl.defs.messages.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.wsdl.def.message")';
	}
	PARAM={
		param.name='nav.indexFrame.namespace.xsd.schemas';
		param.title='Schemas';
		param.description='${include help/params/nav/indexFrame/nav.indexFrame.namespace.xsd.schemas.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.xsd.schema")';
	}
	PARAM={
		param.name='nav.indexFrame.namespace.xsd.comps';
		param.title='XSD Components';
		param.description='${include help/params/nav/indexFrame/nav.indexFrame.namespace.xsd.comps.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.xsd.comp")';
	}
	PARAM={
		param.name='nav.indexFrame.namespace.xsd.comps.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/nav/indexFrame/allcomps/xsd/nav.indexFrame.allcomps.xsd.comps.sorting.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.sorting.xsd.comps")';
	}
	PARAM={
		param.name='nav.indexFrame.namespace.xsd.comps.elements';
		param.title='Elements';
		param.description='${include help/params/nav/indexFrame/allcomps/xsd/nav.indexFrame.allcomps.xsd.comps.elements.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.xsd.comp.element")';
	}
	PARAM={
		param.name='nav.indexFrame.namespace.xsd.comps.elements.local';
		param.title='Local Elements';
		param.description='${include help/params/nav/indexFrame/allcomps/xsd/nav.indexFrame.allcomps.xsd.comps.elements.local.htm}';
		param.type='enum';
		param.enum.values='all;complexType;none';
		param.enum.displayValues='all;with complex type;none';
		param.defaultValue.expr='getStringParam("gen.doc.xsd.comp.element.local")';
	}
	PARAM={
		param.name='nav.indexFrame.namespace.xsd.comps.complexTypes';
		param.title='Complex Types';
		param.description='${include help/params/nav/indexFrame/allcomps/xsd/nav.indexFrame.allcomps.xsd.comps.complexTypes.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.xsd.comp.complexType")';
	}
	PARAM={
		param.name='nav.indexFrame.namespace.xsd.comps.simpleTypes';
		param.title='Simple Types';
		param.description='${include help/params/nav/indexFrame/allcomps/xsd/nav.indexFrame.allcomps.xsd.comps.simpleTypes.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.xsd.comp.simpleType")';
	}
	PARAM={
		param.name='nav.indexFrame.namespace.xsd.comps.groups';
		param.title='Element Groups';
		param.description='${include help/params/nav/indexFrame/allcomps/xsd/nav.indexFrame.allcomps.xsd.comps.groups.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.xsd.comp.group")';
	}
	PARAM={
		param.name='nav.indexFrame.namespace.xsd.comps.attributes';
		param.title='Global Attributes';
		param.description='${include help/params/nav/indexFrame/allcomps/xsd/nav.indexFrame.allcomps.xsd.comps.attributes.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.xsd.comp.attribute")';
	}
	PARAM={
		param.name='nav.indexFrame.namespace.xsd.comps.attributeGroups';
		param.title='Attribute Groups';
		param.description='${include help/params/nav/indexFrame/allcomps/xsd/nav.indexFrame.allcomps.xsd.comps.attributeGroups.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.xsd.comp.attributeGroup")';
	}
	PARAM={
		param.name='nav.indexFrame.wsdl.file';
		param.title='WSDL File';
		param.title.style.bold='true';
		param.description='${include help/params/nav/indexFrame/nav.indexFrame.wsdl.file.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.wsdl.file")';
	}
	PARAM={
		param.name='nav.indexFrame.wsdl.file.defs';
		param.title='WSDL Definitions';
		param.description='${include help/params/nav/indexFrame/nav.indexFrame.wsdl.file.defs.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.wsdl.def")';
	}
	PARAM={
		param.name='nav.indexFrame.wsdl.file.defs.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/nav/indexFrame/allcomps/wsdl/nav.indexFrame.allcomps.wsdl.defs.sorting.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.sorting.wsdl.defs")';
	}
	PARAM={
		param.name='nav.indexFrame.wsdl.file.defs.services';
		param.title='Services';
		param.description='${include help/params/nav/indexFrame/allcomps/wsdl/nav.indexFrame.allcomps.wsdl.defs.services.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.wsdl.def.service")';
	}
	PARAM={
		param.name='nav.indexFrame.wsdl.file.defs.bindings';
		param.title='Bindings';
		param.description='${include help/params/nav/indexFrame/allcomps/wsdl/nav.indexFrame.allcomps.wsdl.defs.bindings.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.wsdl.def.binding")';
	}
	PARAM={
		param.name='nav.indexFrame.wsdl.file.defs.portTypes';
		param.title='Port Types';
		param.description='${include help/params/nav/indexFrame/allcomps/wsdl/nav.indexFrame.allcomps.wsdl.defs.portTypes.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.wsdl.def.portType")';
	}
	PARAM={
		param.name='nav.indexFrame.wsdl.file.defs.messages';
		param.title='Messages';
		param.description='${include help/params/nav/indexFrame/allcomps/wsdl/nav.indexFrame.allcomps.wsdl.defs.messages.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.wsdl.def.message")';
	}
	PARAM={
		param.name='nav.indexFrame.schema';
		param.title='Schema';
		param.title.style.bold='true';
		param.description='${include help/params/nav/indexFrame/nav.indexFrame.schema.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.xsd.schema")';
	}
	PARAM={
		param.name='nav.indexFrame.schema.xsd.comps';
		param.title='XSD Components';
		param.description='${include help/params/nav/indexFrame/nav.indexFrame.schema.xsd.comps.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.xsd.comp")';
	}
	PARAM={
		param.name='nav.indexFrame.schema.xsd.comps.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/nav/indexFrame/allcomps/xsd/nav.indexFrame.allcomps.xsd.comps.sorting.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.sorting.xsd.comps")';
	}
	PARAM={
		param.name='nav.indexFrame.schema.xsd.comps.elements';
		param.title='Elements';
		param.description='${include help/params/nav/indexFrame/allcomps/xsd/nav.indexFrame.allcomps.xsd.comps.elements.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.xsd.comp.element")';
	}
	PARAM={
		param.name='nav.indexFrame.schema.xsd.comps.elements.local';
		param.title='Local Elements';
		param.description='${include help/params/nav/indexFrame/allcomps/xsd/nav.indexFrame.allcomps.xsd.comps.elements.local.htm}';
		param.type='enum';
		param.enum.values='all;complexType;none';
		param.enum.displayValues='all;with complex type;none';
		param.defaultValue.expr='getStringParam("gen.doc.xsd.comp.element.local")';
	}
	PARAM={
		param.name='nav.indexFrame.schema.xsd.comps.complexTypes';
		param.title='Complex Types';
		param.description='${include help/params/nav/indexFrame/allcomps/xsd/nav.indexFrame.allcomps.xsd.comps.complexTypes.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.xsd.comp.complexType")';
	}
	PARAM={
		param.name='nav.indexFrame.schema.xsd.comps.simpleTypes';
		param.title='Simple Types';
		param.description='${include help/params/nav/indexFrame/allcomps/xsd/nav.indexFrame.allcomps.xsd.comps.simpleTypes.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.xsd.comp.simpleType")';
	}
	PARAM={
		param.name='nav.indexFrame.schema.xsd.comps.groups';
		param.title='Element Groups';
		param.description='${include help/params/nav/indexFrame/allcomps/xsd/nav.indexFrame.allcomps.xsd.comps.groups.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.xsd.comp.group")';
	}
	PARAM={
		param.name='nav.indexFrame.schema.xsd.comps.attributes';
		param.title='Global Attributes';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.xsd.comp.attribute")';
	}
	PARAM={
		param.name='nav.indexFrame.schema.xsd.comps.attributeGroups';
		param.title='Attribute Groups';
		param.description='${include help/params/nav/indexFrame/allcomps/xsd/nav.indexFrame.allcomps.xsd.comps.attributeGroups.htm}';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.xsd.comp.attributeGroup")';
	}
	PARAM={
		param.name='nav.detailFrame';
		param.title='Detail Frame';
		param.description='${include help/params/nav/nav.detailFrame.htm}';
		param.type='enum';
		param.enum.values='overview;allcomps;namespace;wsdl;schema';
		param.enum.displayValues='Overview Summary;All Component Summary;Namespace Overview;WSDL File Overview;Schema Overview';
	}
	PARAM={
		param.name='show';
		param.title='Show';
		param.title.style.bold='true';
		param.description='${include help/params/show/show.htm}';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='show.linkTitle';
		param.title='Link Titles (Tooltips)';
		param.description='${include help/params/show/show.linkTitle.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='show.linkTitle.name';
		param.title='Component Name';
		param.description='${include help/params/show/show.linkTitle.name.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='show.linkTitle.namespace';
		param.title='Namespace URI';
		param.description='${include help/params/show/show.linkTitle.namespace.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='show.linkTitle.file';
		param.title='Defined in File';
		param.description='${include help/params/show/show.linkTitle.file.htm}';
		param.type='boolean';
	}
	PARAM={
		param.name='show.nsPrefix';
		param.title='Namespace Prefixes';
		param.description='${include help/params/show/show.nsPrefix.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='show.localElementExt';
		param.title='Local Element Extensions';
		param.description='${include help/params/show/show.localElementExt.htm}';
		param.type='enum';
		param.enum.values='always;repeating;never';
		param.enum.displayValues='always;for repeating names only;never';
		param.defaultValue='repeating';
	}
	PARAM={
		param.name='show.about';
		param.title='About (footer)';
		param.description='${include help/params/show/show.about.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='proc';
		param.title='Processing';
		param.title.style.bold='true';
		param.description='${include help/params/proc/proc.htm}';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='proc.desc';
		param.title='Descriptions';
		param.title.style.bold='true';
		param.description='${include help/params/proc/proc.desc.htm}';
		param.group='true';
	}
	PARAM={
		param.name='proc.desc.xsd.annotation';
		param.title='XSD Annotations';
		param.title.style.bold='true';
		param.description='${include help/params/proc/proc.desc.xsd.annotation.htm}';
		param.group='true';
	}
	PARAM={
		param.name='proc.desc.xsd.annotation.appinfo';
		param.title='<appinfo>';
		param.title.style.bold='true';
		param.description='${include help/params/proc/proc.desc.xsd.annotation.appinfo.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
	}
	PARAM={
		param.name='proc.desc.xsd.annotation.appinfo.source';
		param.title='Source URI';
		param.description='${include help/params/proc/proc.desc.xsd.annotation.appinfo.source.htm}';
		param.type='enum';
		param.enum.values='as_see_link;as_title;no';
		param.enum.displayValues='document as see-link;document as annotation title;no processing';
	}
	PARAM={
		param.name='proc.desc.xsd.annotation.documentation';
		param.title='<documentation>';
		param.title.style.bold='true';
		param.description='${include help/params/proc/proc.desc.xsd.annotation.documentation.htm}';
		param.group='true';
		param.group.defaultState='expanded';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='proc.desc.xsd.annotation.documentation.lang';
		param.title='Language';
		param.description='${include help/params/proc/proc.desc.xsd.annotation.documentation.lang.htm}';
		param.group='true';
		param.group.enablingExpr='! getArrayParam("").isEmpty()';
		param.type='string';
		param.trimSpaces='true';
		param.noEmptyString='true';
		param.list='true';
		param.list.noEmptyList='true';
	}
	PARAM={
		param.name='proc.desc.xsd.annotation.documentation.lang.alt';
		param.title='Alternative Language';
		param.description='${include help/params/proc/proc.desc.xsd.annotation.documentation.lang.alt.htm}';
		param.type='string';
		param.trimSpaces='true';
		param.noEmptyString='true';
		param.list='true';
		param.list.noEmptyList='true';
	}
	PARAM={
		param.name='proc.desc.xsd.annotation.documentation.source';
		param.title='Source URI';
		param.description='${include help/params/proc/proc.desc.xsd.annotation.documentation.source.htm}';
		param.type='enum';
		param.enum.values='as_see_link;as_title;no';
		param.enum.displayValues='document as see-link;document as annotation title;no processing';
	}
	PARAM={
		param.name='proc.desc.xsd.annotation.show.part.headings';
		param.title='Show part headings';
		param.description='${include help/params/proc/proc.desc.xsd.annotation.show.part.headings.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='proc.desc.xsd.annotation.show.part.headings.schemas';
		param.title='For schemas';
		param.title.style.italic='true';
		param.description='${include help/params/proc/proc.desc.xsd.annotation.show.part.headings.schemas.htm}';
		param.group='true';
	}
	PARAM={
		param.name='proc.desc.xsd.annotation.show.part.headings.schemas.include';
		param.title='Include';
		param.title.style.italic='true';
		param.description='${include help/params/proc/proc.desc.xsd.annotation.show.part.headings.schemas.include.htm}';
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
		param.description='${include help/params/proc/proc.desc.xsd.annotation.show.part.headings.schemas.exclude.htm}';
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
		param.description='${include help/params/proc/proc.desc.tags.htm}';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='proc.desc.tags.xhtml';
		param.title='XHTML';
		param.description='${include help/params/proc/proc.desc.tags.xhtml.htm}';
		param.group='true';
		param.group.defaultState='expanded';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='proc.desc.tags.xhtml.files';
		param.title='For Files';
		param.title.style.italic='true';
		param.description='${include help/params/proc/proc.desc.tags.xhtml.files.htm}';
		param.group='true';
	}
	PARAM={
		param.name='proc.desc.tags.xhtml.files.include';
		param.title='Include';
		param.title.style.italic='true';
		param.description='${include help/params/proc/proc.desc.tags.xhtml.files.include.htm}';
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
		param.description='${include help/params/proc/proc.desc.tags.xhtml.files.exclude.htm}';
		param.type='string';
		param.trimSpaces='true';
		param.collapseSpaces='true';
		param.noEmptyString='true';
		param.list='true';
	}
	PARAM={
		param.name='proc.desc.tags.xhtml.images';
		param.title='Include Images';
		param.description='${include help/params/proc/proc.desc.tags.xhtml.images.htm}';
		param.group='true';
		param.group.defaultState='expanded';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='proc.desc.tags.xhtml.images.copy';
		param.title='Copy Images';
		param.description='${include help/params/proc/proc.desc.tags.xhtml.images.copy.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='proc.desc.tags.other';
		param.title='Other Tags';
		param.description='${include help/params/proc/proc.desc.tags.other.htm}';
		param.type='enum';
		param.enum.values='show;xhtml;no';
		param.enum.displayValues='show;process as XHTML;no processing';
	}
	PARAM={
		param.name='proc.desc.encode.markup.chars';
		param.title='Encode markup characters';
		param.description='${include help/params/proc/proc.desc.encode.markup.chars.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='integration';
		param.title='Integrations';
		param.title.style.bold='true';
		param.description='${include help/params/integration/integration.htm}';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='integration.XMLSpy';
		param.title='XMLSpy';
		param.title.style.bold='true';
		param.description='${include help/params/integration/XMLSpy/integration.XMLSpy.htm}';
		param.enablingExpr='dsmType.hasImageProvider("com.docflex.xml.xmlspy.SpyKit")';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='dsmType.hasImageProvider("com.docflex.xml.xmlspy.SpyKit")';
	}
	PARAM={
		param.name='integration.XMLSpy.version';
		param.title='XMLSpy Version';
		param.description='${include help/params/integration/XMLSpy/integration.XMLSpy.version.htm}';
		param.type='string';
		param.trimSpaces='true';
		param.noEmptyString='true';
		param.suggestedValues='2014;2013;2012;2011;2010;2009;2008;2007;2006;2005;2004';
		param.defaultValue.expr='spyVersion()';
	}
	PARAM={
		param.name='integration.XMLSpy.show';
		param.title='Show XMLSpy';
		param.description='${include help/params/integration/XMLSpy/integration.XMLSpy.show.htm}';
		param.type='boolean';
	}
	PARAM={
		param.name='integration.XMLSpy.quit';
		param.title='Quit XMLSpy';
		param.description='${include help/params/integration/XMLSpy/integration.XMLSpy.quit.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='integration.XMLSpy.deleteTempDocs';
		param.title='Delete Temporary Docs';
		param.description='${include help/params/integration/XMLSpy/integration.XMLSpy.deleteTempDocs.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='integration.XMLSpy.diagramFormat';
		param.title='Diagram Format';
		param.description='${include help/params/integration/XMLSpy/integration.XMLSpy.diagramFormat.htm}';
		param.enablingExpr='version = getStringParam("integration.XMLSpy.version");
version.substring(0,4).toInt() >= 2009';
		param.type='enum';
		param.enum.values='PNG;EMF';
	}
	PARAM={
		param.name='integration.XMLSpy.workarounds';
		param.title='Workarounds';
		param.title.style.bold='true';
		param.description='${include help/params/integration/XMLSpy/integration.XMLSpy.workarounds.htm}';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='integration.XMLSpy.workarounds.api';
		param.title='XMLSpy API';
		param.description='${include help/params/integration/XMLSpy/integration.XMLSpy.workarounds.api.htm}';
		param.type='enum';
		param.enum.values='old;2012';
		param.enum.displayValues='early version;2012';
		param.defaultValue.expr='version = getStringParam("integration.XMLSpy.version");
version.substring(0,4).toInt() >= 2013 ? "2012" : "old"';
	}
	PARAM={
		param.name='integration.XMLSpy.workarounds.fixCoords';
		param.title='Fix Imagemap Coordinates';
		param.description='${include help/params/integration/XMLSpy/integration.XMLSpy.workarounds.fixCoords.htm}';
		param.type='boolean';
		param.defaultValue.expr='true';
	}
	PARAM={
		param.name='integration.XMLSpy.workarounds.useNSPrefixes';
		param.title='Use Namespace Prefixes';
		param.description='${include help/params/integration/XMLSpy/integration.XMLSpy.workarounds.useNSPrefixes.htm}';
		param.type='boolean';
		param.defaultValue.expr='version = getStringParam("integration.XMLSpy.version");
version.substring(0,4).toInt() <= 2007';
	}
	PARAM={
		param.name='integration.XMLSpy.workarounds.includeAttributes';
		param.title='Include Attributes';
		param.description='${include help/params/integration/XMLSpy/integration.XMLSpy.workarounds.includeAttributes.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='version = getStringParam("integration.XMLSpy.version");
version.substring(0,4).toInt() >= 2006';
	}
	PARAM={
		param.name='integration.XMLSpy.workarounds.includeAttributes.excludeAttributeGroups';
		param.title='Exclude Attribute Groups';
		param.description='${include help/params/integration/XMLSpy/integration.XMLSpy.workarounds.includeAttributes.excludeAttributeGroups.htm}';
		param.type='boolean';
		param.defaultValue.expr='version = getStringParam("integration.XMLSpy.version");
version.substring(0,4).toInt() < 2008';
	}
	PARAM={
		param.name='integration.XMLSpy.workarounds.includeRedefinedComps';
		param.title='Include Redefined Components';
		param.description='${include help/params/integration/XMLSpy/integration.XMLSpy.workarounds.includeRedefinedComps.htm}';
		param.type='boolean';
		param.defaultValue.expr='version = getStringParam("integration.XMLSpy.version");
version.substring(0,4).toInt() >= 2007';
	}
	PARAM={
		param.name='integration.OxygenXML';
		param.title='Oxygen XML';
		param.title.style.bold='true';
		param.description='${include help/params/integration/OxygenXML/integration.OxygenXML.htm}';
		param.enablingExpr='dsmType.hasImageProvider("com.docflex.xml.OxygenXML.Kit")';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
		param.defaultValue.expr='dsmType.hasImageProvider("com.docflex.xml.OxygenXML.Kit")';
	}
	PARAM={
		param.name='integration.OxygenXML.multithread';
		param.title='Multithread Processing';
		param.description='${include help/params/integration/OxygenXML/integration.OxygenXML.multithread.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("")';
		param.type='boolean';
	}
	PARAM={
		param.name='integration.OxygenXML.multithread.max';
		param.title='Max Number of Threads';
		param.description='${include help/params/integration/OxygenXML/integration.OxygenXML.multithread.max.htm}';
		param.type='string';
		param.trimSpaces='true';
		param.noEmptyString='true';
		param.suggestedValues='auto;2;3;4';
		param.defaultValue='auto';
	}
	PARAM={
		param.name='integration.OxygenXML.diagram';
		param.title='Diagrams';
		param.description='${include help/params/integration/OxygenXML/integration.OxygenXML.diagram.htm}';
		param.group='true';
	}
	PARAM={
		param.name='integration.OxygenXML.diagram.format';
		param.title='Format';
		param.description='${include help/params/integration/OxygenXML/integration.OxygenXML.diagram.format.htm}';
		param.type='enum';
		param.enum.values='PNG;GIF;JPEG';
	}
	PARAM={
		param.name='integration.OxygenXML.diagram.annotations';
		param.title='Show Annotations';
		param.description='${include help/params/integration/OxygenXML/integration.OxygenXML.diagram.annotations.htm}';
		param.type='boolean';
	}
	PARAM={
		param.name='integration.OxygenXML.deleteTempFiles';
		param.title='Delete Temporary Files';
		param.description='${include help/params/integration/OxygenXML/integration.OxygenXML.deleteTempFiles.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
</TEMPLATE_PARAMS>
<STYLES>
	CHAR_STYLE={
		style.name='Annotation';
		style.id='cs1';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Annotation Smaller';
		style.id='cs2';
		text.font.name='Arial';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Annotation Smallest';
		style.id='cs3';
		text.font.name='Arial';
		text.font.size='8.4';
	}
	CHAR_STYLE={
		style.name='Code';
		style.id='cs4';
		text.font.name='Courier New';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Code Relative';
		style.id='cs5';
		text.font.name='Courier New';
		text.font.size.relative='90';
	}
	CHAR_STYLE={
		style.name='Code Smaller';
		style.id='cs6';
		text.font.name='Courier New';
		text.font.size='7.5';
	}
	CHAR_STYLE={
		style.name='Code Smallest';
		style.id='cs7';
		text.font.name='Courier New';
		text.font.size='7';
	}
	CHAR_STYLE={
		style.name='Default Paragraph Font';
		style.id='cs8';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Derivation Method';
		style.id='cs9';
		text.font.name='Verdana';
		text.font.size='8.3';
		text.color.foreground='#FF9900';
	}
	PAR_STYLE={
		style.name='Derivation Tree Heading';
		style.id='s1';
		text.font.size.relative='90';
		text.font.style.bold='true';
		text.color.foreground='#990000';
		par.margin.bottom='5.7';
		par.page.keepWithNext='true';
	}
	CHAR_STYLE={
		style.name='Derivation Tree Method';
		style.id='cs10';
		text.font.name='Verdana';
		text.font.size='7';
		text.color.foreground='#F59200';
	}
	CHAR_STYLE={
		style.name='Derivation Tree Smaller';
		style.id='cs11';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Derivation Tree Type';
		style.id='cs12';
		text.font.name='Courier New';
		text.font.size.relative='90';
	}
	PAR_STYLE={
		style.name='Detail Heading 1';
		style.id='s2';
		text.font.size='12';
		text.font.style.bold='true';
	}
	PAR_STYLE={
		style.name='Detail Heading 2';
		style.id='s3';
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
	PAR_STYLE={
		style.name='Detail Heading 3';
		style.id='s4';
		text.font.size='9';
		text.font.style.bold='true';
		par.margin.top='8.3';
		par.margin.bottom='6.7';
	}
	PAR_STYLE={
		style.name='Detail Heading 4';
		style.id='s5';
		text.font.size='9';
		text.font.style.bold='true';
		text.font.style.italic='true';
		text.color.background='#CCCCFF';
		text.color.opaque='true';
		par.margin.top='8';
		par.margin.bottom='5';
		par.page.keepWithNext='true';
	}
	PAR_STYLE={
		style.name='Detail Heading 5';
		style.id='s6';
		text.font.name='Arial';
		text.font.size='8.4';
		text.font.style.bold='true';
		text.font.style.italic='true';
		text.color.background='#CCCCFF';
		text.color.opaque='true';
		par.margin.top='6.7';
		par.margin.bottom='6.7';
		par.page.keepWithNext='true';
	}
	PAR_STYLE={
		style.name='Frame Heading';
		style.id='s7';
		text.font.name='Arial';
		text.font.size='9';
		text.font.style.bold='true';
		par.margin.top='5.8';
		par.margin.bottom='2.5';
		par.option.nowrap='true';
	}
	PAR_STYLE={
		style.name='Frame Heading Note';
		style.id='s8';
		text.font.name='Tahoma';
		text.font.size='6';
		text.font.style.bold='true';
		par.margin.top='0';
		par.margin.bottom='3.3';
		par.option.nowrap='true';
	}
	PAR_STYLE={
		style.name='Frame Item';
		style.id='s9';
		text.font.name='Arial';
		text.font.size='9';
		par.option.nowrap='true';
	}
	PAR_STYLE={
		style.name='Frame Title';
		style.id='s10';
		text.font.name='Arial';
		text.font.size='9.5';
		text.font.style.bold='true';
		par.margin.bottom='5.8';
		par.option.nowrap='true';
	}
	PAR_STYLE={
		style.name='Frame TOC Heading';
		style.id='s11';
		text.font.name='Arial';
		text.font.size='7';
		text.font.style.bold='true';
		par.margin.bottom='1.7';
		par.option.nowrap='true';
	}
	PAR_STYLE={
		style.name='Frame TOC Item';
		style.id='s12';
		text.font.name='Arial';
		text.font.size='8';
		par.option.nowrap='true';
	}
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs13';
	}
	PAR_STYLE={
		style.name='List Heading 1';
		style.id='s13';
		text.font.size='10';
		text.font.style.bold='true';
		par.margin.top='10';
		par.margin.bottom='6.7';
	}
	PAR_STYLE={
		style.name='List Heading 2';
		style.id='s14';
		text.font.size='9';
		text.font.style.bold='true';
		par.margin.bottom='6.7';
	}
	PAR_STYLE={
		style.name='Main Heading';
		style.id='s15';
		text.font.name='Verdana';
		text.font.size='13';
		text.font.style.bold='true';
		text.color.foreground='#4477AA';
		par.bkgr.opaque='true';
		par.bkgr.color='#EEEEEE';
		par.border.style='solid';
		par.border.color='#4477AA';
		par.margin.top='0';
		par.margin.bottom='6.7';
		par.padding.left='4.2';
		par.padding.right='4.2';
		par.padding.top='2.5';
		par.padding.bottom='2.5';
		par.page.keepWithNext='true';
	}
	CHAR_STYLE={
		style.name='Name Modifier';
		style.id='cs14';
		text.font.name='Verdana';
		text.font.size='7';
		text.color.foreground='#B2B2B2';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s16';
		style.default='true';
		text.decor.underline='false';
		text.color.foreground='#000000';
	}
	CHAR_STYLE={
		style.name='Normal Smaller';
		style.id='cs15';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Normal Smallest';
		style.id='cs16';
		text.font.size='8.4';
	}
	CHAR_STYLE={
		style.name='Note Font';
		style.id='cs17';
		text.font.size='8.4';
		text.font.style.bold='false';
	}
	PAR_STYLE={
		style.name='Profile Heading 1';
		style.id='s17';
		text.font.size='9';
		text.font.style.bold='true';
	}
	PAR_STYLE={
		style.name='Profile Heading 2';
		style.id='s18';
		text.font.size='8.4';
		text.font.style.bold='true';
	}
	CHAR_STYLE={
		style.name='Profile Property';
		style.id='cs18';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Profile Property Clear';
		style.id='cs19';
		text.font.name='Verdana';
		text.font.size='8';
	}
	CHAR_STYLE={
		style.name='Profile Property Mono';
		style.id='cs20';
		text.font.name='Courier New';
		text.font.size='7.5';
	}
	CHAR_STYLE={
		style.name='Profile Property Note';
		style.id='cs21';
		text.font.name='Tahoma';
		text.font.size='8';
		text.font.style.italic='true';
	}
	CHAR_STYLE={
		style.name='Property Note';
		style.id='cs22';
		text.font.name='Tahoma';
		text.font.size='8.3';
		text.font.style.italic='true';
	}
	PAR_STYLE={
		style.name='Property Title';
		style.id='s19';
		text.font.name='Arial';
		text.font.size='8.4';
		text.font.style.bold='true';
		par.margin.right='5.8';
		par.margin.top='0.3';
		par.margin.bottom='0.3';
		par.option.nowrap='true';
	}
	CHAR_STYLE={
		style.name='Property Title Font';
		style.id='cs23';
		text.font.name='Arial';
		text.font.size='8.4';
		text.font.style.bold='true';
	}
	PAR_STYLE={
		style.name='Property Value';
		style.id='s20';
		text.font.name='Verdana';
		text.font.size='8.3';
		par.margin.top='0.3';
		par.margin.bottom='0.3';
	}
	CHAR_STYLE={
		style.name='Property Value Font';
		style.id='cs24';
		text.font.name='Verdana';
		text.font.size='8.3';
	}
	CHAR_STYLE={
		style.name='Summary Heading';
		style.id='cs25';
		text.font.size='12';
		text.font.style.bold='true';
	}
	CHAR_STYLE={
		style.name='Summary Item';
		style.id='cs26';
		text.font.name='Verdana';
		text.font.size='9';
		text.font.style.bold='true';
	}
	CHAR_STYLE={
		style.name='Summary Item Smaller';
		style.id='cs27';
		text.font.name='Verdana';
		text.font.size='8.4';
		text.font.style.bold='true';
	}
	CHAR_STYLE={
		style.name='XML Rep Attribute Name';
		style.id='cs28';
		text.font.name='Courier New';
		text.font.size.relative='83';
		text.color.foreground='#990000';
	}
	CHAR_STYLE={
		style.name='XML Rep Content Model';
		style.id='cs29';
		text.font.name='Verdana';
		text.font.size.relative='90';
	}
	PAR_STYLE={
		style.name='XML Rep Heading';
		style.id='s21';
		text.font.style.bold='true';
		text.color.foreground='#990000';
		par.margin.bottom='1.7';
	}
	CHAR_STYLE={
		style.name='XML Rep Markup';
		style.id='cs30';
		text.color.foreground='#0000FF';
		text.option.nbsps='true';
	}
	CHAR_STYLE={
		style.name='XML Rep Name';
		style.id='cs31';
		text.color.foreground='#990000';
	}
	CHAR_STYLE={
		style.name='XML Rep Smaller';
		style.id='cs32';
		text.font.size='8.4';
	}
	CHAR_STYLE={
		style.name='XML Rep Value';
		style.id='cs33';
		text.font.name='Courier New';
		text.font.size.relative='83';
	}
	CHAR_STYLE={
		style.name='XML Source';
		style.id='cs34';
		text.font.name='Verdana';
		text.font.size='8.3';
	}
	CHAR_STYLE={
		style.name='XML Source Comment';
		style.id='cs35';
		text.font.name='Courier New';
		text.color.foreground='#4D4D4D';
	}
	CHAR_STYLE={
		style.name='XML Source Internal Subset';
		style.id='cs36';
		text.font.name='Courier New';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='XML Source Markup';
		style.id='cs37';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='XML Source Name';
		style.id='cs38';
		text.color.foreground='#990000';
	}
	CHAR_STYLE={
		style.name='XML Source Name Highlight';
		style.id='cs39';
		text.color.foreground='#FF0000';
	}
	CHAR_STYLE={
		style.name='XML Source Value';
		style.id='cs40';
		text.font.size='7';
		text.font.style.bold='true';
		text.color.foreground='#000000';
	}
	CHAR_STYLE={
		style.name='XML Source Value Highlight';
		style.id='cs41';
		text.font.size='7';
		text.font.style.bold='true';
		text.color.foreground='#FF0000';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.default.font='Arial';
	doc.hlink.style.link='cs13';
}
<FRAMESET>
	LAYOUT='columns'
	<FRAMESET>
		PERCENT_SIZE=20
		LAYOUT='rows'
		<FRAME>
			COND='documentByTemplate (
  "overview-frame"
) != null'
			PERCENT_SIZE=30
			NAME='overviewFrame'
			SOURCE_EXPR='documentByTemplate ("overview-frame")'
		</FRAME>
		<FRAME>
			COND='documentByTemplate (
  "all-components-frame;
   namespace-frame;
   wsdl-frame;
   schema-frame"
) != null'
			PERCENT_SIZE=70
			NAME='indexFrame'
			SOURCE_EXPR='templateNames = Vector (
  "all-components-frame",
  "namespace-frame",
  "wsdl-frame",
  "schema-frame"
);

templateNames.moveElement (
  indexOf (
    Array ("allcomps", "namespace", "wsdl", "schema"),
    getStringParam("nav.indexFrame")
  ),
  0
);

documentByTemplate (
  templateNames.mergeStrings (\';\')
)'
		</FRAME>
	</FRAMESET>
	<FRAME>
		PERCENT_SIZE=80
		NAME='detailFrame'
		SOURCE_EXPR='templateNames = Vector (
  "overview-summary",
  "all-components-summary",
  "namespace-overview",
  "wsdl-overview",
  "schema-overview",
  "service",
  "binding",
  "portType",
  "message",
  "element", 
  "complexType",
  "simpleType",
  "group",
  "attribute",
  "attributeGroup",
  "xmlns-bindings"
);

templateNames.moveElement (
  indexOf (
    Array ("overview", "allcomps", "namespace", "wsdl", "schema"),
    getStringParam ("nav.detailFrame")
  ),
  0
);

documentByTemplate (
  templateNames.mergeStrings (\';\')
)'
	</FRAME>
</FRAMESET>
<ROOT>
	<TEMPLATE_CALL>
		COND='getBooleanParam("gen.doc.overview")'
		TEMPLATE_FILE='lib/overview-summary.tpl'
		OUTPUT_TYPE='document'
		OUTPUT_DIR_EXPR='output.docFilesDir'
	</TEMPLATE_CALL>
	<TEMPLATE_CALL>
		COND='getBooleanParam("gen.doc.allcomps")'
		TEMPLATE_FILE='lib/all-components-summary.tpl'
		OUTPUT_TYPE='document'
		OUTPUT_DIR_EXPR='output.docFilesDir'
		SUPPRESS_EMPTY_FILE
	</TEMPLATE_CALL>
	<ELEMENT_ITER>
		DESCR='ITERATE BY WSDL FILES'
		STEP_EXPR='wsdlFolder = makeUniquePath (
  output.docFilesDir + "wsdl",
  makeFileName (getXMLDocument().getAttrStringValue("xmlName")),
  ""
) + "/";
setVar ("wsdlFolder", wsdlFolder);

nsURI = getAttrStringValue("targetNamespace").toString();
setVar("nsURI", nsURI);'
		TARGET_ET='wsdl:definitions'
		SCOPE='advanced-location-rules'
		RULES={
			'* -> #DOCUMENT/wsdl:definitions[checkElementsByKey("documented-wsdl-files", contextElement.id)]';
		}
		SORTING='by-expr'
		SORTING_KEY={expr='getXMLDocument().getAttrStringValue("xmlName")',ascending}
		SORTING_COND='getBooleanParam("gen.doc.sorting.wsdl.defs")'
		<BODY>
			<TEMPLATE_CALL>
				DESCR='WSDL file navigation list'
				TEMPLATE_FILE='lib/wsdl/file/wsdl-frame.tpl'
				OUTPUT_TYPE='document'
				OUTPUT_DIR_EXPR='getStringVar("wsdlFolder")'
				SUPPRESS_EMPTY_FILE
			</TEMPLATE_CALL>
			<FOLDER>
				DESCR='WSDL file overview / XML source'
				COND='getBooleanParam("gen.doc.wsdl.file")'
				<BODY>
					<TEMPLATE_CALL>
						DESCR='WSDL file overview'
						TEMPLATE_FILE='lib/wsdl/file/wsdl-overview.tpl'
						OUTPUT_TYPE='document'
						OUTPUT_DIR_EXPR='getStringVar("wsdlFolder")'
						SUPPRESS_EMPTY_FILE
					</TEMPLATE_CALL>
					<TEMPLATE_CALL>
						DESCR='WSDL file\'s XML source (as a separate file)'
						COND='getBooleanParam("doc.wsdl.file.xml") &&
getBooleanParam("doc.wsdl.file.xml.separate")'
						TEMPLATE_FILE='lib/wsdl/file/wsdl-source.tpl'
						OUTPUT_TYPE='document'
						OUTPUT_DIR_EXPR='getStringVar("wsdlFolder")'
						SUPPRESS_EMPTY_FILE
					</TEMPLATE_CALL>
				</BODY>
			</FOLDER>
			<FOLDER>
				DESCR='WSDL definitions'
				COND='getBooleanParam("gen.doc.wsdl.def")'
				<BODY>
					<ELEMENT_ITER>
						DESCR='services'
						COND='getBooleanParam("gen.doc.wsdl.def.service")'
						TARGET_ET='wsdl:service'
						SCOPE='simple-location-rules'
						RULES={
							'* -> wsdl:service';
						}
						SORTING='by-attr'
						SORTING_KEY={lpath='@name',ascending}
						SORTING_COND='getBooleanParam("gen.doc.sorting.wsdl.defs")'
						<BODY>
							<TEMPLATE_CALL>
								TEMPLATE_FILE='lib/wsdl/service/service.tpl'
								PASSED_PARAMS={
									'$nsURI','getVar("nsURI")';
								}
								OUTPUT_TYPE='document'
								OUTPUT_DIR_EXPR='getVar("wsdlFolder") + "services"'
								FILE_NAME_EXPR='getAttrStringValue("name")'
								ASSOCIATED_FILES_DIR_EXPR='getVar("wsdlFolder") + "doc-files"'
							</TEMPLATE_CALL>
						</BODY>
					</ELEMENT_ITER>
					<ELEMENT_ITER>
						DESCR='bindings'
						COND='getBooleanParam("gen.doc.wsdl.def.binding")'
						TARGET_ET='wsdl:binding'
						SCOPE='simple-location-rules'
						RULES={
							'* -> wsdl:binding';
						}
						SORTING='by-attr'
						SORTING_KEY={lpath='@name',ascending}
						SORTING_COND='getBooleanParam("gen.doc.sorting.wsdl.defs")'
						<BODY>
							<TEMPLATE_CALL>
								TEMPLATE_FILE='lib/wsdl/binding/binding.tpl'
								PASSED_PARAMS={
									'$nsURI','getVar("nsURI")';
								}
								OUTPUT_TYPE='document'
								OUTPUT_DIR_EXPR='getVar("wsdlFolder") + "bindings"'
								FILE_NAME_EXPR='getAttrStringValue("name")'
								ASSOCIATED_FILES_DIR_EXPR='getVar("wsdlFolder") + "doc-files"'
							</TEMPLATE_CALL>
						</BODY>
					</ELEMENT_ITER>
					<ELEMENT_ITER>
						DESCR='port types'
						COND='getBooleanParam("gen.doc.wsdl.def.portType")'
						TARGET_ET='wsdl:portType'
						SCOPE='simple-location-rules'
						RULES={
							'* -> wsdl:portType';
						}
						SORTING='by-attr'
						SORTING_KEY={lpath='@name',ascending}
						SORTING_COND='getBooleanParam("gen.doc.sorting.wsdl.defs")'
						<BODY>
							<TEMPLATE_CALL>
								TEMPLATE_FILE='lib/wsdl/portType/portType.tpl'
								PASSED_PARAMS={
									'$nsURI','getVar("nsURI")';
								}
								OUTPUT_TYPE='document'
								OUTPUT_DIR_EXPR='getVar("wsdlFolder") + "portTypes"'
								FILE_NAME_EXPR='getAttrStringValue("name")'
								ASSOCIATED_FILES_DIR_EXPR='getVar("wsdlFolder") + "doc-files"'
							</TEMPLATE_CALL>
						</BODY>
					</ELEMENT_ITER>
					<ELEMENT_ITER>
						DESCR='messages'
						COND='getBooleanParam("gen.doc.wsdl.def.message")'
						TARGET_ET='wsdl:message'
						SCOPE='simple-location-rules'
						RULES={
							'* -> wsdl:message';
						}
						SORTING='by-attr'
						SORTING_KEY={lpath='@name',ascending}
						SORTING_COND='getBooleanParam("gen.doc.sorting.wsdl.defs")'
						<BODY>
							<TEMPLATE_CALL>
								TEMPLATE_FILE='lib/wsdl/message/message.tpl'
								PASSED_PARAMS={
									'$nsURI','getVar("nsURI")';
								}
								OUTPUT_TYPE='document'
								OUTPUT_DIR_EXPR='getVar("wsdlFolder") + "messages"'
								FILE_NAME_EXPR='getAttrStringValue("name")'
								ASSOCIATED_FILES_DIR_EXPR='getVar("wsdlFolder") + "doc-files"'
							</TEMPLATE_CALL>
						</BODY>
					</ELEMENT_ITER>
				</BODY>
			</FOLDER>
			<ELEMENT_ITER>
				DESCR='iterate by embedded XML schemas'
				STEP_EXPR='nsURI = getServiceAttr("targetNamespace").toString();
setVar("nsURI", nsURI);

nsFolder = makeFileName (nsURI);
nsFolder = (nsFolder != "") ? nsFolder :  "no_namespace";
setVar("nsFolder", output.docFilesDir + "namespaces/" + nsFolder + "/");

setVar (
  "schemaFolder",
  getVar ("wsdlFolder") + "types/" +
  (hasServiceAttr ("embeddedSchemaNo")
    ? "schema" + getServiceAttr ("embeddedSchemaNo") + "/" : "")
)
'
				TARGET_ET='xs:schema'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> wsdl:types/xs:schema[checkElementsByKey ("documented-schemas", contextElement.id)]';
				}
				SORTING='by-expr'
				SORTING_KEY={expr='getXMLDocument().getAttrStringValue("xmlName")',ascending}
				SORTING_COND='getBooleanParam("gen.doc.sorting.xsd.schemas")'
				<BODY>
					<SS_CALL>
						SS_NAME='Schema'
					</SS_CALL>
				</BODY>
			</ELEMENT_ITER>
		</BODY>
	</ELEMENT_ITER>
	<ELEMENT_ITER>
		DESCR='ITERATE BY XSD FILES'
		STEP_EXPR='schemaFolder = makeUniquePath (
  output.docFilesDir + "schemas",
  makeFileName (getXMLDocument().getAttrStringValue("xmlName")),
  ""
) + "/";
setVar ("schemaFolder", schemaFolder);

uri = getServiceAttr("targetNamespace").toString();
setVar("nsURI", uri);

nsFolder = makeFileName (uri);
nsFolder = (nsFolder != "") ? nsFolder :  "no_namespace";
setVar("nsFolder", output.docFilesDir + "namespaces/" + nsFolder + "/");'
		TARGET_ET='xs:schema'
		SCOPE='advanced-location-rules'
		RULES={
			'* -> #DOCUMENT/xs:schema[checkElementsByKey ("documented-schemas", contextElement.id)]';
		}
		SORTING='by-expr'
		SORTING_KEY={expr='getXMLDocument().getAttrStringValue("xmlName")',ascending}
		SORTING_COND='getBooleanParam("gen.doc.sorting.xsd.schemas")'
		<BODY>
			<SS_CALL>
				SS_NAME='Schema'
			</SS_CALL>
		</BODY>
	</ELEMENT_ITER>
	<ELEMENT_ITER>
		DESCR='ITERATE BY NAMESPACES (see "Processing | Iteration Scope" tab);
namespace URI is saved in \'nsURI\' variable (see "Processing | Init/Step/Finish | Step Expression" tab)'
		STEP_EXPR='uri = contextElement.value.toString();
setVar("nsURI", uri);

nsFolder = makeFileName (uri);
nsFolder = (nsFolder != "") ? nsFolder : "no_namespace";
setVar("nsFolder", output.docFilesDir + "namespaces/" + nsFolder + "/");'
		TARGET_ET='#CUSTOM'
		SCOPE='custom'
		ELEMENT_ENUM_EXPR='toCustomElements (getElementMapKeys("namespaces"))'
		SORTING='by-value'
		SORTING_KEY={lpath='.',ascending}
		SORTING_COND='getBooleanParam("gen.doc.sorting.namespaces")'
		<BODY>
			<TEMPLATE_CALL>
				DESCR='namespace overview'
				COND='getBooleanParam("gen.doc.namespace")'
				TEMPLATE_FILE='lib/namespace/namespace-overview.tpl'
				PASSED_PARAMS={
					'$nsURI','getVar("nsURI")';
				}
				OUTPUT_TYPE='document'
				OUTPUT_DIR_EXPR='getVar("nsFolder").toString()'
				PASSED_ROOT_ELEMENT_EXPR='rootElement'
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				DESCR='namespace component list'
				COND='getBooleanParam("nav.indexFrame.namespace")'
				TEMPLATE_FILE='lib/namespace/namespace-frame.tpl'
				PASSED_PARAMS={
					'$nsURI','getVar("nsURI")';
				}
				OUTPUT_TYPE='document'
				OUTPUT_DIR_EXPR='getVar("nsFolder").toString()'
				SUPPRESS_EMPTY_FILE
				PASSED_ROOT_ELEMENT_EXPR='rootElement'
			</TEMPLATE_CALL>
		</BODY>
	</ELEMENT_ITER>
	<TEMPLATE_CALL>
		COND='getBooleanParam("nav.indexFrame.allcomps")'
		TEMPLATE_FILE='lib/all-components-frame.tpl'
		OUTPUT_TYPE='document'
		OUTPUT_DIR_EXPR='output.docFilesDir'
		SUPPRESS_EMPTY_FILE
	</TEMPLATE_CALL>
	<TEMPLATE_CALL>
		COND='getBooleanParam("nav.overviewFrame")'
		TEMPLATE_FILE='lib/overview-frame.tpl'
		OUTPUT_TYPE='document'
		OUTPUT_DIR_EXPR='output.docFilesDir'
		SUPPRESS_EMPTY_FILE
	</TEMPLATE_CALL>
	<TEMPLATE_CALL>
		COND='getBooleanParam("gen.doc.xmlnsBindings")'
		TEMPLATE_FILE='lib/xml/xmlns-bindings.tpl'
		OUTPUT_TYPE='document'
		OUTPUT_DIR_EXPR='output.docFilesDir'
		SUPPRESS_EMPTY_FILE
	</TEMPLATE_CALL>
</ROOT>
<STOCK_SECTIONS>
	<AREA_SEC>
		SS_NAME='Element Name'
		MATCHING_ET='xs:%element'
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<DATA_CTRL>
						ATTR='name'
						<DOC_HLINK>
							HKEYS={
								'contextElement.id';
								'"detail"';
							}
						</DOC_HLINK>
					</DATA_CTRL>
					<TEMPLATE_CALL_CTRL>
						MATCHING_ET='xs:%localElement'
						TEMPLATE_FILE='lib/xsd/element/localElementExt.tpl'
					</TEMPLATE_CALL_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<FOLDER>
		SS_NAME='Finish'
		MATCHING_ET='#DOCUMENTS'
		<BODY>
			<FOLDER>
				DESCR='Delete temporary files generated by XMLSpy'
				COND='getBooleanParam("integration.XMLSpy") &&
getBooleanParam("integration.XMLSpy.deleteTempDocs")'
				INIT_EXPR='deleteDir (output.docFilesDir + "XMLSpy")'
			</FOLDER>
			<FOLDER>
				DESCR='Delete temporary files generated by Oxygen XML'
				COND='getBooleanParam("integration.OxygenXML") &&
getBooleanParam("integration.OxygenXML.deleteTempFiles")'
				INIT_EXPR='deleteDir (output.docFilesDir + "OxygenXML")'
			</FOLDER>
		</BODY>
	</FOLDER>
	<FOLDER>
		SS_NAME='Init'
		MATCHING_ET='#DOCUMENTS'
		<BODY>
			<TEMPLATE_CALL>
				TEMPLATE_FILE='lib/init.tpl'
				OUTPUT_TYPE='document'
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				COND='getBooleanParam("integration.XMLSpy")'
				TEMPLATE_FILE='lib/integrations/XMLSpy.tpl'
				OUTPUT_TYPE='document'
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				COND='getBooleanParam("integration.OxygenXML")'
				TEMPLATE_FILE='lib/integrations/OxygenXML.tpl'
				OUTPUT_TYPE='document'
			</TEMPLATE_CALL>
		</BODY>
	</FOLDER>
	<FOLDER>
		SS_NAME='Schema'
		MATCHING_ET='xs:schema'
		<BODY>
			<FOLDER>
				DESCR='schema overview / XML source'
				COND='getBooleanParam("gen.doc.xsd.schema")'
				<BODY>
					<TEMPLATE_CALL>
						DESCR='schema overview'
						TEMPLATE_FILE='lib/xsd/schema/schema-overview.tpl'
						OUTPUT_TYPE='document'
						OUTPUT_DIR_EXPR='getStringVar("schemaFolder")'
						ASSOCIATED_FILES_DIR_EXPR='getVar("schemaFolder") + "doc-files"'
					</TEMPLATE_CALL>
					<TEMPLATE_CALL>
						DESCR='schema XML source (as a separate file)'
						COND='getParam("doc.xsd.schema.xml") != "none"
&&
getBooleanParam("doc.xsd.schema.xml.separate")
&&
(getParam("doc.xsd.schema.xml") != "xsd" || ! hasServiceAttr ("embedded"))'
						TEMPLATE_FILE='lib/xsd/schema/schema-source.tpl'
						OUTPUT_TYPE='document'
						OUTPUT_DIR_EXPR='getStringVar("schemaFolder")'
						ASSOCIATED_FILES_DIR_EXPR='getVar("schemaFolder") + "doc-files"'
					</TEMPLATE_CALL>
				</BODY>
			</FOLDER>
			<TEMPLATE_CALL>
				DESCR='schema component list'
				COND='getBooleanParam("nav.indexFrame.schema")'
				TEMPLATE_FILE='lib/xsd/schema/schema-frame.tpl'
				OUTPUT_TYPE='document'
				OUTPUT_DIR_EXPR='getStringVar("schemaFolder")'
				SUPPRESS_EMPTY_FILE
			</TEMPLATE_CALL>
			<FOLDER>
				DESCR='XSD components'
				COND='getBooleanParam("gen.doc.xsd.comp")'
				<BODY>
					<ELEMENT_ITER>
						DESCR='elements'
						COND='getBooleanParam("gen.doc.xsd.comp.element")'
						STEP_EXPR='// in how many schemas is this element defined?

setVar ("schemaCount",
  instanceOf("xs:element") ? 1 // case of global element
  :
  // case of a local element:
  // when it represents a group of local elements unified by type,
  // those elements may be actually defined in different schemas;
  // calculate in how many

  countElementsByKey (
    "xsd-globally-documented-local-elements",
    contextElement.id,
    null,
    FlexQuery (getXMLDocument().id)
  )
)'
						TARGET_ET='xs:%element'
						SCOPE='simple-location-rules'
						RULES={
							'* -> descendant::xs:%element';
						}
						FILTER='instanceOf("xs:element")
||
// otherwise, check if this is a local element
! hasAttr("ref")
&&
// remain it only when it is globally documented directly (not via a unifier)
findElementByKey (
  "xsd-globally-documented-local-elements", contextElement.id
).id == contextElement.id
'
						SORTING='by-expr'
						SORTING_KEY={expr='callStockSection("Element Name")',ascending}
						SORTING_COND='getBooleanParam("gen.doc.sorting.xsd.comps")'
						<BODY>
							<TEMPLATE_CALL>
								TEMPLATE_FILE='lib/xsd/element/element.tpl'
								PASSED_PARAMS={
									'$nsURI','schema = findPredecessorByType ("xs:schema");

// for local elements, their namespace may be not the same
// as the schema\'s target namespace

instanceOf ("xs:element") ? schema.getServiceAttr("targetNamespace") :
  (hasAttr("form") ? getAttrValue("form") :
    schema.getAttrStringValue ("elementFormDefault")) == "qualified" 
      ? schema.getServiceAttr("targetNamespace") : ""';
								}
								OUTPUT_TYPE='document'
								OUTPUT_DIR_EXPR='path = getStringVar ("schemaFolder");

// if this is a local element
instanceOf ("xs:%localElement") ?
{
  // if this is a unified local element
  countElementsByKey ("xsd-globally-documented-local-elements", contextElement.id) > 1 ?
  {
    // if this element is defined in several schemas,
    // store its documentation in the folder of the namespace;
    // otherwise, the element documentation is stored by its schema

    getIntVar ("schemaCount") > 1 ? 
      path = getStringVar ("nsFolder");

  } : {
    // otherwise, this is just a local element

    getBooleanParam("gen.doc.xsd.comp.element.local.storeByParents") ?
    {
      iterate (
        reverseVector (getPredecessorsUntilType (
          "xs:element | xs:complexType | xs:group", true
        )),
        @(GOMElement) el,
        FlexQuery ({
          path = path + (el.instanceOf ("xs:element") ? "elements" :
                           el.instanceOf ("xs:complexType") ? "complexTypes" :
                             el.instanceOf ("xs:group") ? "groups" : "") + "/" +
                 el.getAttrStringValue("name")
        })
      );

      return path
    }
  }
};

path + "elements"'
								FILE_NAME_EXPR='getAttrStringValue("name")'
								ASSOCIATED_FILES_DIR_EXPR='(getIntVar ("schemaCount") > 1 ?
   getStringVar ("nsFolder") : getStringVar ("schemaFolder")) + "doc-files"'
							</TEMPLATE_CALL>
						</BODY>
					</ELEMENT_ITER>
					<ELEMENT_ITER>
						DESCR='complexTypes'
						COND='getBooleanParam("gen.doc.xsd.comp.complexType")'
						TARGET_ET='xs:complexType'
						SCOPE='simple-location-rules'
						RULES={
							'* -> descendant::xs:complexType';
						}
						SORTING='by-attr'
						SORTING_KEY={lpath='@name',ascending}
						SORTING_COND='getBooleanParam("gen.doc.sorting.xsd.comps")'
						<BODY>
							<TEMPLATE_CALL>
								TEMPLATE_FILE='lib/xsd/type/complexType.tpl'
								PASSED_PARAMS={
									'$nsURI','getVar("nsURI")';
								}
								OUTPUT_TYPE='document'
								OUTPUT_DIR_EXPR='getVar("schemaFolder") + "complexTypes"'
								FILE_NAME_EXPR='getAttrStringValue("name")'
								ASSOCIATED_FILES_DIR_EXPR='getVar("schemaFolder") + "doc-files"'
							</TEMPLATE_CALL>
						</BODY>
					</ELEMENT_ITER>
					<ELEMENT_ITER>
						DESCR='simpleTypes'
						COND='getBooleanParam("gen.doc.xsd.comp.simpleType")'
						TARGET_ET='xs:simpleType'
						SCOPE='simple-location-rules'
						RULES={
							'* -> descendant::xs:simpleType';
						}
						SORTING='by-attr'
						SORTING_KEY={lpath='@name',ascending}
						SORTING_COND='getBooleanParam("gen.doc.sorting.xsd.comps")'
						<BODY>
							<TEMPLATE_CALL>
								TEMPLATE_FILE='lib/xsd/type/simpleType.tpl'
								PASSED_PARAMS={
									'$nsURI','getVar("nsURI")';
								}
								OUTPUT_TYPE='document'
								OUTPUT_DIR_EXPR='getVar("schemaFolder") + "simpleTypes"'
								FILE_NAME_EXPR='getAttrStringValue("name")'
								ASSOCIATED_FILES_DIR_EXPR='getVar("schemaFolder") + "doc-files"'
							</TEMPLATE_CALL>
						</BODY>
					</ELEMENT_ITER>
					<ELEMENT_ITER>
						DESCR='element groups'
						COND='getBooleanParam("gen.doc.xsd.comp.group")'
						TARGET_ET='xs:group'
						SCOPE='simple-location-rules'
						RULES={
							'* -> descendant::xs:group';
						}
						SORTING='by-attr'
						SORTING_KEY={lpath='@name',ascending}
						SORTING_COND='getBooleanParam("gen.doc.sorting.xsd.comps")'
						<BODY>
							<TEMPLATE_CALL>
								TEMPLATE_FILE='lib/xsd/groups/group.tpl'
								PASSED_PARAMS={
									'$nsURI','getVar("nsURI")';
								}
								OUTPUT_TYPE='document'
								OUTPUT_DIR_EXPR='getVar("schemaFolder") + "groups"'
								FILE_NAME_EXPR='getAttrStringValue("name")'
								ASSOCIATED_FILES_DIR_EXPR='getVar("schemaFolder") + "doc-files"'
							</TEMPLATE_CALL>
						</BODY>
					</ELEMENT_ITER>
					<ELEMENT_ITER>
						DESCR='global attributes'
						COND='getBooleanParam("gen.doc.xsd.comp.attribute")'
						TARGET_ET='xs:attribute'
						SCOPE='simple-location-rules'
						RULES={
							'* -> xs:attribute';
						}
						SORTING='by-attr'
						SORTING_KEY={lpath='@name',ascending}
						SORTING_COND='getBooleanParam("gen.doc.sorting.xsd.comps")'
						<BODY>
							<TEMPLATE_CALL>
								TEMPLATE_FILE='lib/xsd/attribute/attribute.tpl'
								PASSED_PARAMS={
									'$nsURI','getVar("nsURI")';
								}
								OUTPUT_TYPE='document'
								OUTPUT_DIR_EXPR='getVar("schemaFolder") + "attributes"'
								FILE_NAME_EXPR='getAttrStringValue("name")'
								ASSOCIATED_FILES_DIR_EXPR='getVar("schemaFolder") + "doc-files"'
							</TEMPLATE_CALL>
						</BODY>
					</ELEMENT_ITER>
					<ELEMENT_ITER>
						DESCR='attribute groups'
						COND='getBooleanParam("gen.doc.xsd.comp.attributeGroup")'
						TARGET_ET='xs:attributeGroup'
						SCOPE='simple-location-rules'
						RULES={
							'* -> descendant::xs:attributeGroup';
						}
						SORTING='by-attr'
						SORTING_KEY={lpath='@name',ascending}
						SORTING_COND='getBooleanParam("gen.doc.sorting.xsd.comps")'
						<BODY>
							<TEMPLATE_CALL>
								TEMPLATE_FILE='lib/xsd/groups/attributeGroup.tpl'
								PASSED_PARAMS={
									'$nsURI','getVar("nsURI")';
								}
								OUTPUT_TYPE='document'
								OUTPUT_DIR_EXPR='getVar("schemaFolder") + "attributeGroups"'
								FILE_NAME_EXPR='getAttrStringValue("name")'
								ASSOCIATED_FILES_DIR_EXPR='getVar("schemaFolder") + "doc-files"'
							</TEMPLATE_CALL>
						</BODY>
					</ELEMENT_ITER>
				</BODY>
			</FOLDER>
		</BODY>
	</FOLDER>
</STOCK_SECTIONS>
CHECKSUM='5Ff3T79RMTicLT5CdzaKvfqBkMHV5Lzgl8Ngt0?gNEY'
</DOCFLEX_TEMPLATE>