<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2005-03-04 07:50:00'
LAST_UPDATE='2014-07-05 20:02:50'
DESIGNER_TOOL='DocFlex SDK 1.x'
DESIGNER_LICENSE_TYPE='Filigris Works Team'
APP_ID='docflex-xml-xsddoc2'
APP_NAME='DocFlex/XML XSDDoc'
APP_VER='2.8.1'
APP_AUTHOR='Copyright © 2005-2014 Filigris Works, Leonid Rudy Softwareprodukte. All rights reserved.'
TEMPLATE_TYPE='FramesetTemplate'
DSM_TYPE_ID='xsddoc'
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
		param.defaultValue='XML Schema Documentation';
	}
	PARAM={
		param.name='gen.doc';
		param.title='Generate Details';
		param.title.style.bold='true';
		param.description='${include help/params/gen.doc.htm}';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='gen.doc.for.schemas';
		param.title='For Schemas';
		param.title.style.italic='true';
		param.description='${include help/params/gen.doc.for.schemas.htm}';
		param.group='true';
	}
	PARAM={
		param.name='gen.doc.for.schemas.initial';
		param.title='Initial';
		param.title.style.italic='true';
		param.description='${include help/params/gen.doc.for.schemas.initial.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.for.schemas.imported';
		param.title='Imported';
		param.title.style.italic='true';
		param.description='${include help/params/gen.doc.for.schemas.imported.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.for.schemas.included';
		param.title='Included';
		param.title.style.italic='true';
		param.description='${include help/params/gen.doc.for.schemas.included.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.for.schemas.redefined';
		param.title='Redefined';
		param.title.style.italic='true';
		param.description='${include help/params/gen.doc.for.schemas.redefined.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.for.schemas.include';
		param.title='Include';
		param.title.style.italic='true';
		param.description='${include help/params/gen.doc.for.schemas.include.htm}';
		param.featureType='pro';
		param.type='string';
		param.trimSpaces='true';
		param.collapseSpaces='true';
		param.noEmptyString='true';
		param.list='true';
	}
	PARAM={
		param.name='gen.doc.for.schemas.exclude';
		param.title='Exclude';
		param.title.style.italic='true';
		param.description='${include help/params/gen.doc.for.schemas.exclude.htm}';
		param.featureType='pro';
		param.type='string';
		param.trimSpaces='true';
		param.collapseSpaces='true';
		param.noEmptyString='true';
		param.list='true';
	}
	PARAM={
		param.name='gen.doc.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/gen.doc.sorting.htm}';
		param.group='true';
	}
	PARAM={
		param.name='gen.doc.sorting.namespaces';
		param.title='Namespaces';
		param.title.style.italic='true';
		param.description='${include help/params/gen.doc.sorting.namespaces.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.sorting.schemas';
		param.title='Schemas';
		param.title.style.italic='true';
		param.description='${include help/params/gen.doc.sorting.schemas.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.sorting.comps';
		param.title='Components';
		param.title.style.italic='true';
		param.description='${include help/params/gen.doc.sorting.comps.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.overview';
		param.title='Overview Summary';
		param.description='${include help/params/gen.doc.overview.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.allcomps';
		param.title='All Component Summary';
		param.description='${include help/params/gen.doc.allcomps.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.namespace';
		param.title='Namespace Overviews';
		param.description='${include help/params/gen.doc.namespace.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.schema';
		param.title='Schema Overviews';
		param.description='${include help/params/gen.doc.schema.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.element';
		param.title='Elements';
		param.description='${include help/params/gen.doc.element.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("gen.doc.element")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.element.local';
		param.title='Local Elements';
		param.description='${include help/params/gen.doc.element.local.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.defaultState='expanded';
		param.group.enablingExpr='! hasParamValue("gen.doc.element.local", "none")';
		param.type='enum';
		param.enum.values='all;complexType;none';
		param.enum.displayValues='all;with complex type only;none';
	}
	PARAM={
		param.name='gen.doc.element.local.unifyByType';
		param.title='Unify By Type';
		param.title.style.italic='true';
		param.description='${include help/params/gen.doc.element.local.unifyByType.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.element.local.storeByParents';
		param.title='Store By Parents';
		param.title.style.italic='true';
		param.description='${include help/params/gen.doc.element.local.storeByParents.htm}';
		param.enablingExpr='! getBooleanParam("gen.doc.element.local.unifyByType")';
		param.featureType='pro';
		param.type='boolean';
	}
	PARAM={
		param.name='gen.doc.complexType';
		param.title='Complex Types';
		param.description='${include help/params/gen.doc.complexType.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.simpleType';
		param.title='Simple Types';
		param.description='${include help/params/gen.doc.simpleType.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.group';
		param.title='Element Groups';
		param.description='${include help/params/gen.doc.group.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.attribute';
		param.title='Global Attributes';
		param.description='${include help/params/gen.doc.attribute.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.attributeGroup';
		param.title='Attribute Groups';
		param.description='${include help/params/gen.doc.attributeGroup.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='gen.doc.xmlnsBindings';
		param.title='XML Namespace Bindings';
		param.description='${include help/params/gen.doc.xmlnsBindings.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc';
		param.title='Details';
		param.title.style.bold='true';
		param.description='${include help/params/doc.htm}';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='doc.overview';
		param.title='Overview Summary';
		param.title.style.bold='true';
		param.description='${include help/params/doc.overview.htm}';
		param.featureType='pro';
		param.group='true';
	}
	PARAM={
		param.name='doc.overview.title';
		param.title='Title';
		param.description='${include help/params/doc.overview.title.htm}';
		param.featureType='pro';
		param.type='string';
		param.defaultValue.expr='getStringParam("docTitle")';
	}
	PARAM={
		param.name='doc.overview.namespaces';
		param.title='Namespace Summary';
		param.description='${include help/params/doc.overview.namespaces.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.overview.namespaces")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.overview.namespaces.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/doc.overview.namespaces.sorting.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.sorting.namespaces")';
	}
	PARAM={
		param.name='doc.overview.schemas';
		param.title='Schema Summary';
		param.description='${include help/params/doc.overview.schemas.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.overview.schemas")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.overview.schemas.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/doc.overview.schemas.sorting.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.sorting.schemas")';
	}
	PARAM={
		param.name='doc.overview.schemas.annotation';
		param.title='Annotation';
		param.description='${include help/params/doc.overview.schemas.annotation.htm}';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='first_sentence;full;none';
		param.enum.displayValues='first sentence;full;none';
	}
	PARAM={
		param.name='doc.overview.schemas.profile';
		param.title='Schema Profile';
		param.description='${include help/params/doc.schema.profile.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.overview.schemas.profile")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.overview.schemas.profile.targetNamespace';
		param.title='Target Namespace';
		param.description='${include help/params/doc.schema.profile.targetNamespace.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.overview.schemas.profile.version';
		param.title='Version';
		param.description='${include help/params/doc.schema.profile.version.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.overview.schemas.profile.components';
		param.title='Components';
		param.description='${include help/params/doc.schema.profile.components.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.overview.schemas.profile.formDefault';
		param.title='Default NS-Qualified Form';
		param.description='${include help/params/doc.schema.profile.formDefault.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.overview.schemas.profile.blockDefault';
		param.title='Default Block Attribute';
		param.description='${include help/params/doc.schema.profile.blockDefault.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.overview.schemas.profile.blockDefault")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.overview.schemas.profile.blockDefault.value';
		param.title='Value';
		param.description='${include help/params/doc.schema.profile.blockDefault.value.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.overview.schemas.profile.blockDefault.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc.schema.profile.blockDefault.meaning.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.overview.schemas.profile.finalDefault';
		param.title='Default Final Attribute';
		param.description='${include help/params/doc.schema.profile.finalDefault.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.overview.schemas.profile.finalDefault")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.overview.schemas.profile.finalDefault.value';
		param.title='Value';
		param.description='${include help/params/doc.schema.profile.finalDefault.value.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.overview.schemas.profile.finalDefault.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc.schema.profile.finalDefault.meaning.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.overview.schemas.profile.location';
		param.title='Schema Location';
		param.description='${include help/params/doc.schema.profile.location.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.overview.schemas.profile.location")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.overview.schemas.profile.location.relative';
		param.title='Relative Path';
		param.description='${include help/params/doc.schema.profile.location.relative.htm}';
		param.featureType='pro';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.schemas.profile.location.hyperlink';
		param.title='Hyperlink';
		param.description='${include help/params/doc.schema.profile.location.hyperlink.htm}';
		param.featureType='pro';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.overview.schemas.profile.relatedSchemas';
		param.title='Related Schemas';
		param.description='${include help/params/doc.schema.profile.relatedSchemas.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.allcomps';
		param.title='All Component Summary';
		param.title.style.bold='true';
		param.description='${include help/params/doc.allcomps.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.allcomps.item';
		param.title='Summary Item';
		param.title.style.italic='true';
		param.description='${include help/params/doc.allcomps.item.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.allcomps.item.annotation';
		param.title='Annotation';
		param.description='${include help/params/doc.allcomps.item.annotation.htm}';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='first_sentence;full;none';
		param.enum.displayValues='first sentence;full;none';
	}
	PARAM={
		param.name='doc.allcomps.item.profile';
		param.title='Component Profile';
		param.description='${include help/params/doc.allcomps.item.profile.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.allcomps.item.profile")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.namespace';
		param.title='Namespace';
		param.description='${include help/params/doc.comp.profile.namespace.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.type';
		param.title='Type';
		param.description='${include help/params/doc.comp.profile.type.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.content';
		param.title='Content';
		param.description='${include help/params/doc.comp.profile.content.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.abstract';
		param.title='Abstract';
		param.description='${include help/params/doc.comp.profile.abstract.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.block';
		param.title='Block';
		param.description='${include help/params/doc.comp.profile.block.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='! hasParamValue("doc.allcomps.item.profile.block", "none")';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.block.value';
		param.title='Value';
		param.description='${include help/params/doc.comp.profile.block.value.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.block.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc.comp.profile.block.meaning.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.final';
		param.title='Final';
		param.description='${include help/params/doc.comp.profile.final.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='! hasParamValue("doc.allcomps.item.profile.final", "none")';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.final.value';
		param.title='Value';
		param.description='${include help/params/doc.comp.profile.final.value.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.final.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc.comp.profile.final.meaning.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.subst';
		param.title='Subst.Gr';
		param.description='${include help/params/doc.comp.profile.subst.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.allcomps.item.profile.subst")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.subst.heads';
		param.title='List of group heads';
		param.description='${include help/params/doc.comp.profile.subst.heads.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.subst.members';
		param.title='List of group members';
		param.description='${include help/params/doc.comp.profile.subst.members.htm}';
		param.featureType='pro';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.nillable';
		param.title='Nillable';
		param.description='${include help/params/doc.comp.profile.nillable.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.defined';
		param.title='Defined';
		param.description='${include help/params/doc.comp.profile.defined.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.includes';
		param.title='Includes';
		param.description='${include help/params/doc.comp.profile.includes.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.redefines';
		param.title='Redefines';
		param.description='${include help/params/doc.comp.profile.redefines.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.redefined';
		param.title='Redefined';
		param.description='${include help/params/doc.comp.profile.redefined.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.allcomps.item.profile.used';
		param.title='Used';
		param.description='${include help/params/doc.comp.profile.used.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.allcomps.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/doc.allcomps.sorting.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.sorting.comps")';
	}
	PARAM={
		param.name='doc.allcomps.elements';
		param.title='Elements';
		param.description='${include help/params/doc.allcomps.elements.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.allcomps.elements")';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='getBooleanParam("gen.doc.element")';
	}
	PARAM={
		param.name='doc.allcomps.elements.local';
		param.title='Local Elements';
		param.description='${include help/params/doc.allcomps.elements.local.htm}';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='all;complexType;none';
		param.enum.displayValues='all;with complex type;none';
		param.defaultValue.expr='getStringParam("gen.doc.element.local")';
	}
	PARAM={
		param.name='doc.allcomps.complexTypes';
		param.title='Complex Types';
		param.description='${include help/params/doc.allcomps.complexTypes.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='getBooleanParam("gen.doc.complexType")';
	}
	PARAM={
		param.name='doc.allcomps.simpleTypes';
		param.title='Simple Types';
		param.description='${include help/params/doc.allcomps.simpleTypes.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='getBooleanParam("gen.doc.simpleType")';
	}
	PARAM={
		param.name='doc.allcomps.groups';
		param.title='Element Groups';
		param.description='${include help/params/doc.allcomps.groups.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='getBooleanParam("gen.doc.group")';
	}
	PARAM={
		param.name='doc.allcomps.attributes';
		param.title='Global Attributes';
		param.description='${include help/params/doc.allcomps.attributes.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='getBooleanParam("gen.doc.attribute")';
	}
	PARAM={
		param.name='doc.allcomps.attributeGroups';
		param.title='Attribute Groups';
		param.description='${include help/params/doc.allcomps.attributeGroups.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='getBooleanParam("gen.doc.attributeGroup")';
	}
	PARAM={
		param.name='doc.namespace';
		param.title='Namespace Overview';
		param.title.style.bold='true';
		param.description='${include help/params/doc.namespace.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.namespace.profile';
		param.title='Namespace Profile';
		param.description='${include help/params/doc.namespace.profile.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.schemas';
		param.title='Schema Summary';
		param.description='${include help/params/doc.namespace.schemas.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.namespace.schemas")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.schemas.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/doc.overview.schemas.sorting.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.sorting.schemas")';
	}
	PARAM={
		param.name='doc.namespace.schemas.annotation';
		param.title='Annotation';
		param.description='${include help/params/doc.overview.schemas.annotation.htm}';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='first_sentence;full;none';
		param.enum.displayValues='first sentence;full;none';
	}
	PARAM={
		param.name='doc.namespace.schemas.profile';
		param.title='Schema Profile';
		param.description='${include help/params/doc.schema.profile.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.namespace.schemas.profile")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.schemas.profile.targetNamespace';
		param.title='Target Namespace';
		param.description='${include help/params/doc.schema.profile.targetNamespace.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.schemas.profile.version';
		param.title='Version';
		param.description='${include help/params/doc.schema.profile.version.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.schemas.profile.components';
		param.title='Components';
		param.description='${include help/params/doc.schema.profile.components.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.schemas.profile.formDefault';
		param.title='Default NS-Qualified Form';
		param.description='${include help/params/doc.schema.profile.formDefault.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.schemas.profile.blockDefault';
		param.title='Default Block Attribute';
		param.description='${include help/params/doc.schema.profile.blockDefault.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.namespace.schemas.profile.blockDefault")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.schemas.profile.blockDefault.value';
		param.title='Value';
		param.description='${include help/params/doc.schema.profile.blockDefault.value.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.schemas.profile.blockDefault.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc.schema.profile.blockDefault.meaning.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.schemas.profile.finalDefault';
		param.title='Default Final Attribute';
		param.description='${include help/params/doc.schema.profile.finalDefault.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.namespace.schemas.profile.finalDefault")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.schemas.profile.finalDefault.value';
		param.title='Value';
		param.description='${include help/params/doc.schema.profile.finalDefault.value.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.schemas.profile.finalDefault.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc.schema.profile.finalDefault.meaning.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.schemas.profile.location';
		param.title='Schema Location';
		param.description='${include help/params/doc.schema.profile.location.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.namespace.schemas.profile.location")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.schemas.profile.location.relative';
		param.title='Relative Path';
		param.description='${include help/params/doc.schema.profile.location.relative.htm}';
		param.featureType='pro';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.schemas.profile.location.hyperlink';
		param.title='Hyperlink';
		param.description='${include help/params/doc.schema.profile.location.hyperlink.htm}';
		param.featureType='pro';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.schemas.profile.relatedSchemas';
		param.title='Related Schemas';
		param.description='${include help/params/doc.schema.profile.relatedSchemas.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.comps';
		param.title='Component Summaries';
		param.title.style.bold='true';
		param.description='${include help/params/doc.namespace.comps.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.namespace.comps")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.comps.item';
		param.title='Summary Item';
		param.title.style.italic='true';
		param.description='${include help/params/doc.allcomps.item.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.namespace.comps.item.annotation';
		param.title='Annotation';
		param.description='${include help/params/doc.allcomps.item.annotation.htm}';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='first_sentence;full;none';
		param.enum.displayValues='first sentence;full;none';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile';
		param.title='Component Profile';
		param.description='${include help/params/doc.allcomps.item.profile.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.namespace.comps.item.profile")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.namespace';
		param.title='Namespace';
		param.description='${include help/params/doc.comp.profile.namespace.htm}';
		param.featureType='pro';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.type';
		param.title='Type';
		param.description='${include help/params/doc.comp.profile.type.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.content';
		param.title='Content';
		param.description='${include help/params/doc.comp.profile.content.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.abstract';
		param.title='Abstract';
		param.description='${include help/params/doc.comp.profile.abstract.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.block';
		param.title='Block';
		param.description='${include help/params/doc.comp.profile.block.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='! hasParamValue("doc.namespace.comps.item.profile.block", "none")';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.block.value';
		param.title='Value';
		param.description='${include help/params/doc.comp.profile.block.value.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.block.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc.comp.profile.block.meaning.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.final';
		param.title='Final';
		param.description='${include help/params/doc.comp.profile.final.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='! hasParamValue("doc.namespace.comps.item.profile.final", "none")';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.final.value';
		param.title='Value';
		param.description='${include help/params/doc.comp.profile.final.value.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.final.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc.comp.profile.final.meaning.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.subst';
		param.title='Subst.Gr';
		param.description='${include help/params/doc.comp.profile.subst.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.namespace.comps.item.profile.subst")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.subst.heads';
		param.title='List of group heads';
		param.description='${include help/params/doc.comp.profile.subst.heads.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.subst.members';
		param.title='List of group members';
		param.description='${include help/params/doc.comp.profile.subst.members.htm}';
		param.featureType='pro';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.nillable';
		param.title='Nillable';
		param.description='${include help/params/doc.comp.profile.nillable.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.defined';
		param.title='Defined';
		param.description='${include help/params/doc.comp.profile.defined.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.includes';
		param.title='Includes';
		param.description='${include help/params/doc.comp.profile.includes.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.redefines';
		param.title='Redefines';
		param.description='${include help/params/doc.comp.profile.redefines.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.redefined';
		param.title='Redefined';
		param.description='${include help/params/doc.comp.profile.redefined.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.comps.item.profile.used';
		param.title='Used';
		param.description='${include help/params/doc.comp.profile.used.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.namespace.comps.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/doc.allcomps.sorting.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.sorting.comps")';
	}
	PARAM={
		param.name='doc.namespace.comps.elements';
		param.title='Elements';
		param.description='${include help/params/doc.namespace.comps.elements.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.namespace.comps.elements")';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='getBooleanParam("gen.doc.element")';
	}
	PARAM={
		param.name='doc.namespace.comps.elements.local';
		param.title='Local Elements';
		param.description='${include help/params/doc.allcomps.elements.local.htm}';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='all;complexType;none';
		param.enum.displayValues='all;with complex type;none';
		param.defaultValue.expr='getStringParam("gen.doc.element.local")';
	}
	PARAM={
		param.name='doc.namespace.comps.complexTypes';
		param.title='Complex Types';
		param.description='${include help/params/doc.namespace.comps.complexTypes.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='getBooleanParam("gen.doc.complexType")';
	}
	PARAM={
		param.name='doc.namespace.comps.simpleTypes';
		param.title='Simple Types';
		param.description='${include help/params/doc.namespace.comps.simpleTypes.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='getBooleanParam("gen.doc.simpleType")';
	}
	PARAM={
		param.name='doc.namespace.comps.groups';
		param.title='Element Groups';
		param.description='${include help/params/doc.namespace.comps.groups.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='getBooleanParam("gen.doc.group")';
	}
	PARAM={
		param.name='doc.namespace.comps.attributes';
		param.title='Global Attributes';
		param.description='${include help/params/doc.namespace.comps.attributes.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='getBooleanParam("gen.doc.attribute")';
	}
	PARAM={
		param.name='doc.namespace.comps.attributeGroups';
		param.title='Attribute Groups';
		param.description='${include help/params/doc.namespace.comps.attributeGroups.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='getBooleanParam("gen.doc.attributeGroup")';
	}
	PARAM={
		param.name='doc.schema';
		param.title='Schema Overview';
		param.title.style.bold='true';
		param.description='${include help/params/doc.schema.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.schema.profile';
		param.title='Schema Profile';
		param.description='${include help/params/doc.schema.profile.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.schema.profile")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.schema.profile.targetNamespace';
		param.title='Target Namespace';
		param.description='${include help/params/doc.schema.profile.targetNamespace.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.schema.profile.version';
		param.title='Version';
		param.description='${include help/params/doc.schema.profile.version.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.schema.profile.components';
		param.title='Components';
		param.description='${include help/params/doc.schema.profile.components.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.schema.profile.formDefault';
		param.title='Default NS-Qualified Form';
		param.description='${include help/params/doc.schema.profile.formDefault.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.schema.profile.blockDefault';
		param.title='Default Block Attribute';
		param.description='${include help/params/doc.schema.profile.blockDefault.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.schema.profile.blockDefault")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.schema.profile.blockDefault.value';
		param.title='Value';
		param.description='${include help/params/doc.schema.profile.blockDefault.value.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.schema.profile.blockDefault.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc.schema.profile.blockDefault.meaning.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.schema.profile.finalDefault';
		param.title='Default Final Attribute';
		param.description='${include help/params/doc.schema.profile.finalDefault.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.schema.profile.finalDefault")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.schema.profile.finalDefault.value';
		param.title='Value';
		param.description='${include help/params/doc.schema.profile.finalDefault.value.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.schema.profile.finalDefault.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc.schema.profile.finalDefault.meaning.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.schema.profile.location';
		param.title='Schema Location';
		param.description='${include help/params/doc.schema.profile.location.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.schema.profile.location")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.schema.profile.location.relative';
		param.title='Relative Path';
		param.description='${include help/params/doc.schema.profile.location.relative.htm}';
		param.featureType='pro';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.profile.location.hyperlink';
		param.title='Hyperlink';
		param.description='${include help/params/doc.schema.profile.location.hyperlink.htm}';
		param.featureType='pro';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.profile.relatedSchemas';
		param.title='Related Schemas';
		param.description='${include help/params/doc.schema.profile.relatedSchemas.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.schema.annotation';
		param.title='Annotation';
		param.description='${include help/params/doc.schema.annotation.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.schema.comps';
		param.title='Component Summaries';
		param.title.style.bold='true';
		param.description='${include help/params/doc.schema.comps.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.schema.comps")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.schema.comps.item';
		param.title='Summary Item';
		param.title.style.italic='true';
		param.description='${include help/params/doc.allcomps.item.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.schema.comps.item.annotation';
		param.title='Annotation';
		param.description='${include help/params/doc.allcomps.item.annotation.htm}';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='first_sentence;full;none';
		param.enum.displayValues='first sentence;full;none';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile';
		param.title='Component Profile';
		param.description='${include help/params/doc.allcomps.item.profile.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.schema.comps.item.profile")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.namespace';
		param.title='Namespace';
		param.description='${include help/params/doc.comp.profile.namespace.htm}';
		param.featureType='pro';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.type';
		param.title='Type';
		param.description='${include help/params/doc.comp.profile.type.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.content';
		param.title='Content';
		param.description='${include help/params/doc.comp.profile.content.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.abstract';
		param.title='Abstract';
		param.description='${include help/params/doc.comp.profile.abstract.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.block';
		param.title='Block';
		param.description='${include help/params/doc.comp.profile.block.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='! hasParamValue("doc.schema.comps.item.profile.block", "none")';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.block.value';
		param.title='Value';
		param.description='${include help/params/doc.comp.profile.block.value.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.block.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc.comp.profile.block.meaning.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.final';
		param.title='Final';
		param.description='${include help/params/doc.comp.profile.final.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='! hasParamValue("doc.schema.comps.item.profile.final", "none")';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.final.value';
		param.title='Value';
		param.description='${include help/params/doc.comp.profile.final.value.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.final.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc.comp.profile.final.meaning.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.subst';
		param.title='Subst.Gr';
		param.description='${include help/params/doc.comp.profile.subst.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.schema.comps.item.profile.subst")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.subst.heads';
		param.title='List of group heads';
		param.description='${include help/params/doc.comp.profile.subst.heads.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.subst.members';
		param.title='List of group members';
		param.description='${include help/params/doc.comp.profile.subst.members.htm}';
		param.featureType='pro';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.nillable';
		param.title='Nillable';
		param.description='${include help/params/doc.comp.profile.nillable.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.defined';
		param.title='Defined';
		param.description='${include help/params/doc.comp.profile.defined.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.includes';
		param.title='Includes';
		param.description='${include help/params/doc.comp.profile.includes.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.redefines';
		param.title='Redefines';
		param.description='${include help/params/doc.comp.profile.redefines.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.redefined';
		param.title='Redefined';
		param.description='${include help/params/doc.comp.profile.redefined.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.used';
		param.title='Used';
		param.description='${include help/params/doc.comp.profile.used.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.schema.comps.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/doc.schema.comps.sorting.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.sorting.comps")';
	}
	PARAM={
		param.name='doc.schema.comps.elements';
		param.title='Elements';
		param.description='${include help/params/doc.schema.comps.elements.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.schema.comps.elements")';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='getBooleanParam("gen.doc.element")';
	}
	PARAM={
		param.name='doc.schema.comps.elements.local';
		param.title='Local Elements';
		param.description='${include help/params/doc.allcomps.elements.local.htm}';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='all;complexType;none';
		param.enum.displayValues='all;with complex type;none';
		param.defaultValue.expr='getStringParam("gen.doc.element.local")';
	}
	PARAM={
		param.name='doc.schema.comps.complexTypes';
		param.title='Complex Types';
		param.description='${include help/params/doc.schema.comps.complexTypes.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='getBooleanParam("gen.doc.complexType")';
	}
	PARAM={
		param.name='doc.schema.comps.simpleTypes';
		param.title='Simple Types';
		param.description='${include help/params/doc.schema.comps.simpleTypes.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='getBooleanParam("gen.doc.simpleType")';
	}
	PARAM={
		param.name='doc.schema.comps.groups';
		param.title='Element Groups';
		param.description='${include help/params/doc.schema.comps.groups.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='getBooleanParam("gen.doc.group")';
	}
	PARAM={
		param.name='doc.schema.comps.attributes';
		param.title='Global Attributes';
		param.description='${include help/params/doc.schema.comps.attributes.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='getBooleanParam("gen.doc.attribute")';
	}
	PARAM={
		param.name='doc.schema.comps.attributeGroups';
		param.title='Attribute Groups';
		param.description='${include help/params/doc.schema.comps.attributeGroups.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='getBooleanParam("gen.doc.attributeGroup")';
	}
	PARAM={
		param.name='doc.schema.xml';
		param.title='XML Source';
		param.title.style.bold='true';
		param.description='${include help/params/doc.schema.xml.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.schema.xml")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.schema.xml.separate';
		param.title='Separate File';
		param.description='${include help/params/doc.schema.xml.separate.htm}';
		param.featureType='pro';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.xml.box';
		param.title='Enclose in Box';
		param.description='${include help/params/doc.schema.xml.box.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.schema.xml.remove.anns';
		param.title='Remove Annotations';
		param.description='${include help/params/doc.schema.xml.remove.anns.htm}';
		param.featureType='pro';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp';
		param.title='Component Documentation';
		param.title.style.bold='true';
		param.description='${include help/params/doc.comp.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.comp.profile';
		param.title='Component Profile';
		param.description='${include help/params/doc.comp.profile.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.comp.profile")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.profile.namespace';
		param.title='Namespace';
		param.description='${include help/params/doc.comp.profile.namespace.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.profile.type';
		param.title='Type';
		param.description='${include help/params/doc.comp.profile.type.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.profile.content';
		param.title='Content';
		param.description='${include help/params/doc.comp.profile.content.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.profile.abstract';
		param.title='Abstract';
		param.description='${include help/params/doc.comp.profile.abstract.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.profile.block';
		param.title='Block';
		param.description='${include help/params/doc.comp.profile.block.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='! hasParamValue("doc.comp.profile.block", "none")';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
	}
	PARAM={
		param.name='doc.comp.profile.block.value';
		param.title='Value';
		param.description='${include help/params/doc.comp.profile.block.value.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.profile.block.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc.comp.profile.block.meaning.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.profile.final';
		param.title='Final';
		param.description='${include help/params/doc.comp.profile.final.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='! hasParamValue("doc.comp.profile.final", "none")';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
	}
	PARAM={
		param.name='doc.comp.profile.final.value';
		param.title='Value';
		param.description='${include help/params/doc.comp.profile.final.value.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.profile.final.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc.comp.profile.final.meaning.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.profile.subst';
		param.title='Subst.Gr';
		param.description='${include help/params/doc.comp.profile.subst.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.comp.profile.subst")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.profile.subst.heads';
		param.title='List of group heads';
		param.description='${include help/params/doc.comp.profile.subst.heads.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.profile.subst.members';
		param.title='List of group members';
		param.description='${include help/params/doc.comp.profile.subst.members.htm}';
		param.featureType='pro';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.profile.nillable';
		param.title='Nillable';
		param.description='${include help/params/doc.comp.profile.nillable.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.profile.defined';
		param.title='Defined';
		param.description='${include help/params/doc.comp.profile.defined.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.profile.includes';
		param.title='Includes';
		param.description='${include help/params/doc.comp.profile.includes.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.profile.redefines';
		param.title='Redefines';
		param.description='${include help/params/doc.comp.profile.redefines.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.profile.redefined';
		param.title='Redefined';
		param.description='${include help/params/doc.comp.profile.redefined.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.profile.used';
		param.title='Used';
		param.description='${include help/params/doc.comp.profile.used.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.diagram';
		param.title='Diagram';
		param.description='${include help/params/doc.comp.diagram.htm}';
		param.enablingExpr='getBooleanParam("integration.XMLSpy") ||
getBooleanParam("integration.OxygenXML")';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.comp.diagram")';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='getBooleanParam("integration.XMLSpy") ||
getBooleanParam("integration.OxygenXML")';
	}
	PARAM={
		param.name='doc.comp.diagram.links';
		param.title='Hyperlinks';
		param.description='${include help/params/doc.comp.diagram.links.htm}';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='doc.comp.diagram.links.attribute.global';
		param.title='Global Attributes';
		param.description='${include help/params/doc.comp.diagram.links.attribute.global.htm}';
		param.type='enum';
		param.enum.values='global;local';
		param.enum.displayValues='global documentation;local documentation';
	}
	PARAM={
		param.name='doc.comp.diagram.links.element.local';
		param.title='Local Elements';
		param.description='${include help/params/doc.comp.diagram.links.element.local.htm}';
		param.type='enum';
		param.enum.values='global;local';
		param.enum.displayValues='global documentation;local documentation';
	}
	PARAM={
		param.name='doc.comp.xmlRep';
		param.title='XML Representation Summary';
		param.description='${include help/params/doc.comp.xmlRep.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.comp.xmlRep")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.xmlRep.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.xmlRep.for.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.comp.xmlRep.for.element';
		param.title='Elements';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.xmlRep.for.element.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.xmlRep.for.complexType';
		param.title='Complex Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.xmlRep.for.complexType.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.xmlRep.for.simpleType';
		param.title='Simple Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.xmlRep.for.simpleType.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.xmlRep.for.group';
		param.title='Element Groups';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.xmlRep.for.group.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.xmlRep.for.attribute';
		param.title='Global Attributes';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.xmlRep.for.attribute.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.xmlRep.for.attributeGroup';
		param.title='Attribute Groups';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.xmlRep.for.attributeGroup.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.xmlRep.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.xmlRep.sorting.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue.limited='true';
	}
	PARAM={
		param.name='doc.comp.simpleContent';
		param.title='Simple Content Detail';
		param.description='${include help/params/doc.comp.simpleContent.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.comp.simpleContent")';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.limited='false';
	}
	PARAM={
		param.name='doc.comp.simpleContent.restrictions';
		param.title='Restrictions';
		param.description='${include help/params/doc.comp.simpleContent.restrictions.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.comp.simpleContent.restrictions")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.simpleContent.restrictions.annotation';
		param.title='Annotations';
		param.description='${include help/params/doc.comp.simpleContent.restrictions.annotation.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.simpleContent.default';
		param.title='Default Value';
		param.description='${include help/params/doc.comp.simpleContent.default.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.simpleContent.fixed';
		param.title='Fixed Value';
		param.description='${include help/params/doc.comp.simpleContent.fixed.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.lists';
		param.title='Lists of Related Components';
		param.title.style.bold='true';
		param.description='${include help/params/doc.comp.lists.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.comp.lists")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.lists.layout';
		param.title='List Layout';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.lists.layout.htm}';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='flow;one_column;two_columns;optimal';
		param.enum.displayValues='flow;one column;two columns;optimal';
		param.defaultValue='optimal';
		param.defaultValue.limited='flow';
	}
	PARAM={
		param.name='doc.comp.lists.contentElements';
		param.title='Content Elements';
		param.description='${include help/params/doc.comp.lists.contentElements.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.lists.containingElements';
		param.title='Containing Elements';
		param.description='${include help/params/doc.comp.lists.containingElements.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.lists.substitutableElements';
		param.title='Substitutable Elements';
		param.description='${include help/params/doc.comp.lists.substitutableElements.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.limited='false';
		param.defaultValue.expr='! getBooleanParam("doc.comp.profile.subst.heads")';
	}
	PARAM={
		param.name='doc.comp.lists.substitutingElements';
		param.title='Substituting Elements';
		param.description='${include help/params/doc.comp.lists.substitutingElements.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue.limited='false';
		param.defaultValue.expr='! getBooleanParam("doc.comp.profile.subst.members")';
	}
	PARAM={
		param.name='doc.comp.lists.childrenBySubst';
		param.title='Children By Substitutions';
		param.description='${include help/params/doc.comp.lists.childrenBySubst.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.limited='false';
	}
	PARAM={
		param.name='doc.comp.lists.parentsBySubst';
		param.title='Parents By Substitutions';
		param.description='${include help/params/doc.comp.lists.parentsBySubst.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.limited='false';
	}
	PARAM={
		param.name='doc.comp.lists.directSubtypes';
		param.title='Direct Subtypes';
		param.description='${include help/params/doc.comp.lists.directSubtypes.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.lists.indirectSubtypes';
		param.title='Indirect Subtypes';
		param.description='${include help/params/doc.comp.lists.indirectSubtypes.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.lists.basedElements';
		param.title='All Based Elements';
		param.description='${include help/params/doc.comp.lists.basedElements.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.lists.basedAttributes';
		param.title='All Based Attributes';
		param.description='${include help/params/doc.comp.lists.basedAttributes.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.usage';
		param.title='Usage / Definition Locations';
		param.description='${include help/params/doc.comp.usage.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.comp.usage")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.usage.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.usage.for.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.comp.usage.for.element.global';
		param.title='Global Elements';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.usage.for.element.global.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.usage.for.element.local';
		param.title='Local Elements';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.usage.for.element.local.htm}';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='always;multiple;never';
		param.enum.displayValues='always;multiple only;never';
		param.defaultValue='multiple';
	}
	PARAM={
		param.name='doc.comp.usage.for.complexType';
		param.title='Complex Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.usage.for.complexType.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.usage.for.simpleType';
		param.title='Simple Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.usage.for.simpleType.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.usage.for.group';
		param.title='Element Groups';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.usage.for.group.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.usage.for.attribute';
		param.title='Global Attributes';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.usage.for.attribute.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.usage.for.attributeGroup';
		param.title='Attribute Groups';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.usage.for.attributeGroup.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.usage.layout';
		param.title='List Layout';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.usage.layout.htm}';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='flow;one_column;two_columns;optimal';
		param.enum.displayValues='flow;one column;two columns;optimal';
		param.defaultValue='optimal';
		param.defaultValue.limited='flow';
	}
	PARAM={
		param.name='doc.comp.annotation';
		param.title='Annotation';
		param.description='${include help/params/doc.comp.annotation.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.comp.annotation")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.annotation.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.annotation.for.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.comp.annotation.for.element';
		param.title='Elements';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.annotation.for.element.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.annotation.for.complexType';
		param.title='Complex Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.annotation.for.complexType.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.annotation.for.simpleType';
		param.title='Simple Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.annotation.for.simpleType.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.annotation.for.group';
		param.title='Element Groups';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.annotation.for.group.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.annotation.for.attribute';
		param.title='Global Attributes';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.annotation.for.attribute.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.annotation.for.attributeGroup';
		param.title='Attribute Groups';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.annotation.for.attributeGroup.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.type';
		param.title='Type Definition Detail';
		param.title.style.bold='true';
		param.description='${include help/params/doc.comp.type.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.comp.type")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.type.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.type.for.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.comp.type.for.element.type';
		param.title='Elements With Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.type.for.element.type.htm}';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='anonymous;any;none';
	}
	PARAM={
		param.name='doc.comp.type.for.attribute.type';
		param.title='Attributes With Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.type.for.attribute.type.htm}';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='anonymous;any;none';
	}
	PARAM={
		param.name='doc.comp.type.for.type';
		param.title='Global Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.type.for.type.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.type.deriv.tree';
		param.title='Type Derivation Tree';
		param.description='${include help/params/doc.comp.type.deriv.tree.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.type.annotation';
		param.title='Annotation';
		param.description='${include help/params/doc.comp.type.annotation.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.type.deriv.simpleContent';
		param.title='Simple Content Derivation';
		param.description='${include help/params/doc.comp.type.deriv.simpleContent.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='! hasParamValue("doc.comp.type.deriv.simpleContent", "none")';
		param.type='enum';
		param.enum.values='local;full;none';
		param.enum.displayValues='local definition only;full;none';
	}
	PARAM={
		param.name='doc.comp.type.deriv.simpleContent.facets';
		param.title='Facets';
		param.description='${include help/params/doc.comp.type.deriv.simpleContent.facets.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.limited='false';
	}
	PARAM={
		param.name='doc.comp.type.deriv.simpleContent.annotations';
		param.title='Annotations';
		param.description='${include help/params/doc.comp.type.deriv.simpleContent.annotations.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.limited='false';
	}
	PARAM={
		param.name='doc.comp.xml';
		param.title='XML Source';
		param.title.style.bold='true';
		param.description='${include help/params/doc.comp.xml.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.comp.xml")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.xml.box';
		param.title='Enclose in Box';
		param.description='${include help/params/doc.comp.xml.box.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.xml.remove.anns';
		param.title='Remove Annotations';
		param.description='${include help/params/doc.comp.xml.remove.anns.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.limited='false';
	}
	PARAM={
		param.name='doc.comp.attributes';
		param.title='Attribute Detail';
		param.title.style.bold='true';
		param.description='${include help/params/doc.comp.attributes.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.comp.attributes")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.attributes.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.attributes.for.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.comp.attributes.for.element';
		param.title='Elements';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.attributes.for.element.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.attributes.for.complexType';
		param.title='Complex Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.attributes.for.complexType.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.attributes.for.attributeGroup';
		param.title='Attribute Groups';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.attributes.for.attributeGroup.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.attributes.include';
		param.title='Include';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.attributes.include.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.comp.attributes.include.local';
		param.title='Local';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.attributes.include.local.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.attributes.include.references';
		param.title='References';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.attributes.include.references.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.attributes.include.wildcard';
		param.title='Wildcard';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.attributes.include.wildcard.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.attributes.include.prohibitions';
		param.title='Prohibitions';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.attributes.include.prohibitions.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.attributes.include.inherited';
		param.title='Inherited';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.attributes.include.inherited.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue.limited='true';
	}
	PARAM={
		param.name='doc.comp.attributes.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.attributes.sorting.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.attributes.profile';
		param.title='Profile';
		param.description='${include help/params/doc.comp.attributes.profile.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.comp.attributes.profile")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.attributes.profile.form';
		param.title='Form';
		param.description='${include help/params/doc.comp.attributes.profile.form.htm}';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
		param.defaultValue='non_default';
	}
	PARAM={
		param.name='doc.comp.attributes.profile.type';
		param.title='Type';
		param.description='${include help/params/doc.comp.attributes.profile.type.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.attributes.profile.use';
		param.title='Usage';
		param.description='${include help/params/doc.comp.attributes.profile.use.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.attributes.profile.default';
		param.title='Default Value';
		param.description='${include help/params/doc.comp.attributes.profile.default.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='! getBooleanParam("doc.comp.attributes.value") ||
! getBooleanParam("doc.comp.attributes.value.default")';
	}
	PARAM={
		param.name='doc.comp.attributes.profile.fixed';
		param.title='Fixed Value';
		param.description='${include help/params/doc.comp.attributes.profile.fixed.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='! getBooleanParam("doc.comp.attributes.value") ||
! getBooleanParam("doc.comp.attributes.value.fixed")';
	}
	PARAM={
		param.name='doc.comp.attributes.profile.defined';
		param.title='Definition Location';
		param.description='${include help/params/doc.comp.attributes.profile.defined.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.comp.attributes.include.inherited")';
	}
	PARAM={
		param.name='doc.comp.attributes.annotation';
		param.title='Annotation';
		param.description='${include help/params/doc.comp.attributes.annotation.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.attributes.value';
		param.title='Attribute Value';
		param.description='${include help/params/doc.comp.attributes.value.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.comp.attributes.value")';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.limited='false';
	}
	PARAM={
		param.name='doc.comp.attributes.value.model';
		param.title='Datatype Model';
		param.description='${include help/params/doc.comp.attributes.value.model.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.attributes.value.restrictions';
		param.title='Restrictions';
		param.description='${include help/params/doc.comp.attributes.value.restrictions.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.comp.attributes.value.restrictions")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.attributes.value.restrictions.annotation';
		param.title='Annotations';
		param.description='${include help/params/doc.comp.attributes.value.restrictions.annotation.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.attributes.value.default';
		param.title='Default Value';
		param.description='${include help/params/doc.comp.attributes.value.default.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.attributes.value.fixed';
		param.title='Fixed Value';
		param.description='${include help/params/doc.comp.attributes.value.fixed.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.attributes.type';
		param.title='Type Detail';
		param.description='${include help/params/doc.comp.attributes.type.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.comp.attributes.type")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.attributes.type.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.attributes.type.for.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.comp.attributes.type.for.attr';
		param.title='Attributes';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.attributes.type.for.attr.htm}';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='local;any';
		param.enum.displayValues='local only;any';
	}
	PARAM={
		param.name='doc.comp.attributes.type.for.typeDecl';
		param.title='Type Declarations';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.attributes.type.for.typeDecl.htm}';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='anonymous;any';
	}
	PARAM={
		param.name='doc.comp.attributes.type.annotation';
		param.title='Annotation';
		param.description='${include help/params/doc.comp.attributes.type.annotation.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.limited='false';
	}
	PARAM={
		param.name='doc.comp.attributes.type.deriv.tree';
		param.title='Type Derivation Tree';
		param.description='${include help/params/doc.comp.attributes.type.deriv.tree.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.limited='false';
	}
	PARAM={
		param.name='doc.comp.attributes.type.deriv.simpleContent';
		param.title='Simple Content Derivation';
		param.description='${include help/params/doc.comp.attributes.type.deriv.simpleContent.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='! hasParamValue("doc.comp.attributes.type.deriv.simpleContent", "none")';
		param.type='enum';
		param.enum.values='local;full;none';
		param.enum.displayValues='local definition only;full;none';
	}
	PARAM={
		param.name='doc.comp.attributes.type.deriv.simpleContent.facets';
		param.title='Facets';
		param.description='${include help/params/doc.comp.attributes.type.deriv.simpleContent.facets.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.limited='false';
	}
	PARAM={
		param.name='doc.comp.attributes.type.deriv.simpleContent.annotations';
		param.title='Annotations';
		param.description='${include help/params/doc.comp.attributes.type.deriv.simpleContent.annotations.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.limited='false';
	}
	PARAM={
		param.name='doc.comp.attributes.xml';
		param.title='XML Source';
		param.description='${include help/params/doc.comp.attributes.xml.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.comp.attributes.xml")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.attributes.xml.box';
		param.title='Enclose in Box';
		param.description='${include help/params/doc.comp.attributes.xml.box.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.attributes.xml.remove.anns';
		param.title='Remove Annotations';
		param.description='${include help/params/doc.comp.attributes.xml.remove.anns.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.limited='false';
	}
	PARAM={
		param.name='doc.comp.contentElements';
		param.title='Content Element Detail';
		param.title.style.bold='true';
		param.description='${include help/params/doc.comp.contentElements.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.comp.contentElements")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.contentElements.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.contentElements.for.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.comp.contentElements.for.element';
		param.title='Elements';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.contentElements.for.element.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.contentElements.for.complexType';
		param.title='Complex Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.contentElements.for.complexType.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.contentElements.for.group';
		param.title='Element Groups';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.contentElements.for.group.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.contentElements.include';
		param.title='Include';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.contentElements.include.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.comp.contentElements.include.local';
		param.title='Local';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.contentElements.include.local.htm}';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='all;simpleType;none';
		param.enum.displayValues='all;with simple type only;none';
	}
	PARAM={
		param.name='doc.comp.contentElements.include.references';
		param.title='References';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.contentElements.include.references.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.contentElements.include.wildcards';
		param.title='Wildcards';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.contentElements.include.wildcards.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.contentElements.include.inherited';
		param.title='Inherited';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.contentElements.include.inherited.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue.limited='true';
	}
	PARAM={
		param.name='doc.comp.contentElements.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.contentElements.sorting.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.contentElements.profile';
		param.title='Profile';
		param.description='${include help/params/doc.comp.contentElements.profile.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.comp.contentElements.profile")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.contentElements.profile.form';
		param.title='Form';
		param.description='${include help/params/doc.comp.contentElements.profile.form.htm}';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
		param.defaultValue='non_default';
	}
	PARAM={
		param.name='doc.comp.contentElements.profile.type';
		param.title='Type';
		param.description='${include help/params/doc.comp.contentElements.profile.type.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.contentElements.profile.abstract';
		param.title='Abstract';
		param.description='${include help/params/doc.comp.contentElements.profile.abstract.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.contentElements.profile.block';
		param.title='Block';
		param.description='${include help/params/doc.comp.contentElements.profile.block.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='! hasParamValue("doc.comp.contentElements.profile.block", "none")';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
		param.defaultValue='non_default';
	}
	PARAM={
		param.name='doc.comp.contentElements.profile.block.value';
		param.title='Value';
		param.description='${include help/params/doc.comp.contentElements.profile.block.value.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.contentElements.profile.block.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc.comp.contentElements.profile.block.meaning.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.contentElements.profile.final';
		param.title='Final';
		param.description='${include help/params/doc.comp.contentElements.profile.final.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='! hasParamValue("doc.comp.contentElements.profile.final", "none")';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
		param.defaultValue='non_default';
	}
	PARAM={
		param.name='doc.comp.contentElements.profile.final.value';
		param.title='Value';
		param.description='${include help/params/doc.comp.contentElements.profile.final.value.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.contentElements.profile.final.meaning';
		param.title='Meaning';
		param.description='${include help/params/doc.comp.contentElements.profile.final.meaning.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.contentElements.profile.subst';
		param.title='Subst.Gr';
		param.description='${include help/params/doc.comp.contentElements.profile.subst.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.comp.contentElements.profile.subst")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.contentElements.profile.subst.heads';
		param.title='List of group heads';
		param.description='${include help/params/doc.comp.contentElements.profile.subst.heads.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.limited='false';
	}
	PARAM={
		param.name='doc.comp.contentElements.profile.subst.members';
		param.title='List of group members';
		param.description='${include help/params/doc.comp.contentElements.profile.subst.members.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue.limited='false';
	}
	PARAM={
		param.name='doc.comp.contentElements.profile.default';
		param.title='Default Value';
		param.description='${include help/params/doc.comp.contentElements.profile.default.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='! getBooleanParam("doc.comp.contentElements.simpleContent") ||
! getBooleanParam("doc.comp.contentElements.simpleContent.default")';
	}
	PARAM={
		param.name='doc.comp.contentElements.profile.fixed';
		param.title='Fixed Value';
		param.description='${include help/params/doc.comp.contentElements.profile.fixed.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.expr='! getBooleanParam("doc.comp.contentElements.simpleContent") ||
! getBooleanParam("doc.comp.contentElements.simpleContent.fixed")';
	}
	PARAM={
		param.name='doc.comp.contentElements.profile.nillable';
		param.title='Nillable';
		param.description='${include help/params/doc.comp.contentElements.profile.nillable.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.contentElements.profile.defined';
		param.title='Definition Location';
		param.description='${include help/params/doc.comp.contentElements.profile.defined.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("doc.comp.contentElements.include.inherited")';
	}
	PARAM={
		param.name='doc.comp.contentElements.annotation';
		param.title='Annotation';
		param.description='${include help/params/doc.comp.contentElements.annotation.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.contentElements.xmlRep';
		param.title='XML Representation Summary';
		param.description='${include help/params/doc.comp.contentElements.xmlRep.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.comp.contentElements.xmlRep")';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.limited='false';
		param.defaultValue.expr='! getBooleanParam("gen.doc.element") ||
! hasParamValue("gen.doc.element.local", "all")';
	}
	PARAM={
		param.name='doc.comp.contentElements.xmlRep.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.contentElements.xmlRep.for.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.comp.contentElements.xmlRep.for.element';
		param.title='Elements';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.contentElements.xmlRep.for.element.htm}';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='local;any';
		param.enum.displayValues='local only;any';
		param.defaultValue.expr='getBooleanParam("gen.doc.element") ? "local" : "any"';
	}
	PARAM={
		param.name='doc.comp.contentElements.xmlRep.for.type';
		param.title='With Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.contentElements.xmlRep.for.type.htm}';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='complexType;simpleType;any';
		param.enum.displayValues='complex type;simple type;any type';
		param.defaultValue.expr='hasParamValue("gen.doc.element.local", "complexType") ?
 "simpleType" : "any"';
	}
	PARAM={
		param.name='doc.comp.contentElements.xmlRep.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.contentElements.xmlRep.sorting.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.contentElements.xmlRep.heading';
		param.title='Show Heading';
		param.description='${include help/params/doc.comp.contentElements.xmlRep.heading.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.contentElements.simpleContent';
		param.title='Simple Content';
		param.description='${include help/params/doc.comp.contentElements.simpleContent.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.comp.contentElements.simpleContent")';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.limited='false';
	}
	PARAM={
		param.name='doc.comp.contentElements.simpleContent.model';
		param.title='Datatype Model';
		param.description='${include help/params/doc.comp.contentElements.simpleContent.model.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.contentElements.simpleContent.restrictions';
		param.title='Restrictions';
		param.description='${include help/params/doc.comp.contentElements.simpleContent.restrictions.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.comp.contentElements.simpleContent.restrictions")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.contentElements.simpleContent.restrictions.annotation';
		param.title='Annotations';
		param.description='${include help/params/doc.comp.contentElements.simpleContent.restrictions.annotation.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.contentElements.simpleContent.default';
		param.title='Default Value';
		param.description='${include help/params/doc.comp.contentElements.simpleContent.default.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.contentElements.simpleContent.fixed';
		param.title='Fixed Value';
		param.description='${include help/params/doc.comp.contentElements.simpleContent.fixed.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.contentElements.type';
		param.title='Type Detail';
		param.description='${include help/params/doc.comp.contentElements.type.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.comp.contentElements.type")';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.limited='false';
		param.defaultValue.expr='! getBooleanParam("gen.doc.element") ||
! hasParamValue("gen.doc.element.local", "all")';
	}
	PARAM={
		param.name='doc.comp.contentElements.type.for';
		param.title='Generate For';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.contentElements.type.for.htm}';
		param.group='true';
	}
	PARAM={
		param.name='doc.comp.contentElements.type.for.element';
		param.title='Elements';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.contentElements.type.for.element.htm}';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='local;any';
		param.enum.displayValues='local only;any';
		param.defaultValue.expr='getBooleanParam("gen.doc.element") ? "local" : "any"';
	}
	PARAM={
		param.name='doc.comp.contentElements.type.for.type';
		param.title='Types';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.contentElements.type.for.type.htm}';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='simpleType;any';
		param.enum.displayValues='simple type;any';
		param.defaultValue.expr='getBooleanParam("gen.doc.element") &&
  hasParamValue("gen.doc.element.local", "complexType")
? "simpleType" : "any"';
	}
	PARAM={
		param.name='doc.comp.contentElements.type.for.typeDecl';
		param.title='Type Declarations';
		param.title.style.italic='true';
		param.description='${include help/params/doc.comp.contentElements.type.for.typeDecl.htm}';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='anonymous;any';
	}
	PARAM={
		param.name='doc.comp.contentElements.type.annotation';
		param.title='Annotation';
		param.description='${include help/params/doc.comp.contentElements.type.annotation.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.contentElements.type.deriv.tree';
		param.title='Type Derivation Tree';
		param.description='${include help/params/doc.comp.contentElements.type.deriv.tree.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.contentElements.type.deriv.simpleContent';
		param.title='Simple Content Derivation';
		param.description='${include help/params/doc.comp.contentElements.type.deriv.simpleContent.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='! hasParamValue("doc.comp.contentElements.type.deriv.simpleContent", "none")';
		param.type='enum';
		param.enum.values='local;full;none';
		param.enum.displayValues='local definition only;full;none';
	}
	PARAM={
		param.name='doc.comp.contentElements.type.deriv.simpleContent.facets';
		param.title='Facets';
		param.description='${include help/params/doc.comp.contentElements.type.deriv.simpleContent.facets.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.contentElements.type.deriv.simpleContent.annotations';
		param.title='Annotations';
		param.description='${include help/params/doc.comp.contentElements.type.deriv.simpleContent.annotations.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.contentElements.xml';
		param.title='XML Source';
		param.description='${include help/params/doc.comp.contentElements.xml.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("doc.comp.contentElements.xml")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.contentElements.xml.box';
		param.title='Enclose in Box';
		param.description='${include help/params/doc.comp.contentElements.xml.box.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='doc.comp.contentElements.xml.remove.anns';
		param.title='Remove Annotations';
		param.description='${include help/params/doc.comp.contentElements.xml.remove.anns.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.limited='false';
	}
	PARAM={
		param.name='nav';
		param.title='Navigation';
		param.title.style.bold='true';
		param.description='${include help/params/nav.htm}';
		param.group='true';
	}
	PARAM={
		param.name='nav.overviewFrame';
		param.title='Overview Frame';
		param.description='${include help/params/nav.overviewFrame.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("nav.overviewFrame")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='nav.overviewFrame.title';
		param.title='Title';
		param.description='${include help/params/nav.overviewFrame.title.htm}';
		param.featureType='pro';
		param.type='string';
		param.defaultValue.expr='getStringParam("docTitle")';
	}
	PARAM={
		param.name='nav.listFrame';
		param.title='List Frame';
		param.title.style.bold='true';
		param.description='${include help/params/nav.listFrame.htm}';
		param.featureType='pro';
		param.group='true';
		param.type='enum';
		param.enum.values='allcomps;namespace;schema';
		param.enum.displayValues='All Components;Namespace;Schema';
	}
	PARAM={
		param.name='nav.listFrame.toc';
		param.title='Table of Contents';
		param.description='${include help/params/nav.listFrame.toc.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.limited='false';
	}
	PARAM={
		param.name='nav.listFrame.allcomps';
		param.title='All Components';
		param.title.style.bold='true';
		param.description='${include help/params/nav.listFrame.allcomps.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("nav.listFrame.allcomps")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.allcomps")
||
! getBooleanParam("gen.doc.namespace")
&&
! getBooleanParam("gen.doc.schema")';
	}
	PARAM={
		param.name='nav.listFrame.allcomps.linkTo';
		param.title='Link To';
		param.title.style.italic='true';
		param.description='${include help/params/nav.listFrame.allcomps.linkTo.htm}';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='details;xml_source';
		param.enum.displayValues='Component Details;XML Source';
	}
	PARAM={
		param.name='nav.listFrame.allcomps.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/nav.listFrame.allcomps.sorting.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.sorting.comps")';
	}
	PARAM={
		param.name='nav.listFrame.allcomps.elements';
		param.title='Elements';
		param.description='${include help/params/nav.listFrame.allcomps.elements.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("nav.listFrame.allcomps.elements")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.element")';
	}
	PARAM={
		param.name='nav.listFrame.allcomps.elements.local';
		param.title='Local Elements';
		param.description='${include help/params/nav.listFrame.allcomps.elements.local.htm}';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='all;complexType;none';
		param.enum.displayValues='all;with complex type;none';
		param.defaultValue.expr='getStringParam("gen.doc.element.local")';
	}
	PARAM={
		param.name='nav.listFrame.allcomps.complexTypes';
		param.title='Complex Types';
		param.description='${include help/params/nav.listFrame.allcomps.complexTypes.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.complexType")';
	}
	PARAM={
		param.name='nav.listFrame.allcomps.simpleTypes';
		param.title='Simple Types';
		param.description='${include help/params/nav.listFrame.allcomps.simpleTypes.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.simpleType")';
	}
	PARAM={
		param.name='nav.listFrame.allcomps.groups';
		param.title='Element Groups';
		param.description='${include help/params/nav.listFrame.allcomps.groups.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.group")';
	}
	PARAM={
		param.name='nav.listFrame.allcomps.attributes';
		param.title='Global Attributes';
		param.description='${include help/params/nav.listFrame.allcomps.attributes.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.attribute")';
	}
	PARAM={
		param.name='nav.listFrame.allcomps.attributeGroups';
		param.title='Attribute Groups';
		param.description='${include help/params/nav.listFrame.allcomps.attributeGroups.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.attributeGroup")';
	}
	PARAM={
		param.name='nav.listFrame.namespace';
		param.title='Namespace';
		param.title.style.bold='true';
		param.description='${include help/params/nav.listFrame.namespace.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("nav.listFrame.namespace")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.namespace")';
	}
	PARAM={
		param.name='nav.listFrame.namespace.linkTo';
		param.title='Link To';
		param.title.style.italic='true';
		param.description='${include help/params/nav.listFrame.allcomps.linkTo.htm}';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='details;xml_source';
		param.enum.displayValues='Component Details;XML Source';
	}
	PARAM={
		param.name='nav.listFrame.namespace.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/nav.listFrame.allcomps.sorting.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.sorting.comps")';
	}
	PARAM={
		param.name='nav.listFrame.namespace.schemas';
		param.title='Schemas';
		param.description='${include help/params/nav.listFrame.namespace.schemas.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.schema")';
	}
	PARAM={
		param.name='nav.listFrame.namespace.elements';
		param.title='Elements';
		param.description='${include help/params/nav.listFrame.allcomps.elements.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("nav.listFrame.namespace.elements")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.element")';
	}
	PARAM={
		param.name='nav.listFrame.namespace.elements.local';
		param.title='Local Elements';
		param.description='${include help/params/nav.listFrame.allcomps.elements.local.htm}';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='all;complexType;none';
		param.enum.displayValues='all;with complex type;none';
		param.defaultValue.expr='getStringParam("gen.doc.element.local")';
	}
	PARAM={
		param.name='nav.listFrame.namespace.complexTypes';
		param.title='Complex Types';
		param.description='${include help/params/nav.listFrame.allcomps.complexTypes.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.complexType")';
	}
	PARAM={
		param.name='nav.listFrame.namespace.simpleTypes';
		param.title='Simple Types';
		param.description='${include help/params/nav.listFrame.allcomps.simpleTypes.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.simpleType")';
	}
	PARAM={
		param.name='nav.listFrame.namespace.groups';
		param.title='Element Groups';
		param.description='${include help/params/nav.listFrame.allcomps.groups.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.group")';
	}
	PARAM={
		param.name='nav.listFrame.namespace.attributes';
		param.title='Global Attributes';
		param.description='${include help/params/nav.listFrame.allcomps.attributes.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.attribute")';
	}
	PARAM={
		param.name='nav.listFrame.namespace.attributeGroups';
		param.title='Attribute Groups';
		param.description='${include help/params/nav.listFrame.allcomps.attributeGroups.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.attributeGroup")';
	}
	PARAM={
		param.name='nav.listFrame.schema';
		param.title='Schema';
		param.title.style.bold='true';
		param.description='${include help/params/nav.listFrame.schema.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("nav.listFrame.schema")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.schema")';
	}
	PARAM={
		param.name='nav.listFrame.schema.linkTo';
		param.title='Link To';
		param.title.style.italic='true';
		param.description='${include help/params/nav.listFrame.allcomps.linkTo.htm}';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='details;xml_source';
		param.enum.displayValues='Component Details;XML Source';
	}
	PARAM={
		param.name='nav.listFrame.schema.sorting';
		param.title='Sorting';
		param.title.style.italic='true';
		param.description='${include help/params/nav.listFrame.allcomps.sorting.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.sorting.comps")';
	}
	PARAM={
		param.name='nav.listFrame.schema.elements';
		param.title='Elements';
		param.description='${include help/params/nav.listFrame.allcomps.elements.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("nav.listFrame.schema.elements")';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.element")';
	}
	PARAM={
		param.name='nav.listFrame.schema.elements.local';
		param.title='Local Elements';
		param.description='${include help/params/nav.listFrame.allcomps.elements.local.htm}';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='all;complexType;none';
		param.enum.displayValues='all;with complex type;none';
		param.defaultValue.expr='getStringParam("gen.doc.element.local")';
	}
	PARAM={
		param.name='nav.listFrame.schema.complexTypes';
		param.title='Complex Types';
		param.description='${include help/params/nav.listFrame.allcomps.complexTypes.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.complexType")';
	}
	PARAM={
		param.name='nav.listFrame.schema.simpleTypes';
		param.title='Simple Types';
		param.description='${include help/params/nav.listFrame.allcomps.simpleTypes.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.simpleType")';
	}
	PARAM={
		param.name='nav.listFrame.schema.groups';
		param.title='Element Groups';
		param.description='${include help/params/nav.listFrame.allcomps.groups.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.group")';
	}
	PARAM={
		param.name='nav.listFrame.schema.attributes';
		param.title='Global Attributes';
		param.description='${include help/params/nav.listFrame.allcomps.attributes.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.attribute")';
	}
	PARAM={
		param.name='nav.listFrame.schema.attributeGroups';
		param.title='Attribute Groups';
		param.description='${include help/params/nav.listFrame.allcomps.attributeGroups.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue.expr='getBooleanParam("gen.doc.attributeGroup")';
	}
	PARAM={
		param.name='nav.detailFrame';
		param.title='Detail Frame';
		param.description='${include help/params/nav.detailFrame.htm}';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='overview;allcomps;namespace;schema';
		param.enum.displayValues='Overview Summary;All Component Summary;Namespace Overview;Schema Overview';
	}
	PARAM={
		param.name='show';
		param.title='Show';
		param.title.style.bold='true';
		param.description='${include help/params/show.htm}';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='show.linkTitle';
		param.title='Link Titles (Tooltips)';
		param.description='${include help/params/show.linkTitle.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("show.linkTitle")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='show.linkTitle.name';
		param.title='Component Name';
		param.description='${include help/params/show.linkTitle.name.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.limited='false';
	}
	PARAM={
		param.name='show.linkTitle.namespace';
		param.title='Namespace URI';
		param.description='${include help/params/show.linkTitle.namespace.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.limited='false';
	}
	PARAM={
		param.name='show.linkTitle.schema';
		param.title='Defined in Schema';
		param.description='${include help/params/show.linkTitle.schema.htm}';
		param.featureType='pro';
		param.type='boolean';
	}
	PARAM={
		param.name='show.nsPrefix';
		param.title='Namespace Prefixes';
		param.description='${include help/params/show.nsPrefix.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='show.localElementExt';
		param.title='Local Element Extensions';
		param.description='${include help/params/show.localElementExt.htm}';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='always;repeating;never';
		param.enum.displayValues='always;for repeating names only;never';
		param.defaultValue='repeating';
		param.defaultValue.limited='always';
	}
	PARAM={
		param.name='show.about';
		param.title='About (footer)';
		param.description='${include help/params/show.about.htm}';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='full;short;none';
		param.defaultValue='short';
		param.defaultValue.limited='full';
	}
	PARAM={
		param.name='proc';
		param.title='Processing';
		param.title.style.bold='true';
		param.description='${include help/params/proc.htm}';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='proc.annotation';
		param.title='Annotations';
		param.title.style.bold='true';
		param.description='${include help/params/proc.annotation.htm}';
		param.group='true';
	}
	PARAM={
		param.name='proc.annotation.appinfo';
		param.title='<appinfo>';
		param.title.style.bold='true';
		param.description='${include help/params/proc.annotation.appinfo.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("proc.annotation.appinfo")';
		param.type='boolean';
	}
	PARAM={
		param.name='proc.annotation.appinfo.source';
		param.title='Source URI';
		param.description='${include help/params/proc.annotation.appinfo.source.htm}';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='as_see_link;as_title;no';
		param.enum.displayValues='document as see-link;document as annotation title;no processing';
	}
	PARAM={
		param.name='proc.annotation.documentation';
		param.title='<documentation>';
		param.title.style.bold='true';
		param.description='${include help/params/proc.annotation.documentation.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.defaultState='expanded';
		param.group.enablingExpr='getBooleanParam("proc.annotation.documentation")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='proc.annotation.documentation.lang';
		param.title='Language';
		param.description='${include help/params/proc.annotation.documentation.lang.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='! getArrayParam("proc.annotation.documentation.lang").isEmpty()';
		param.type='string';
		param.trimSpaces='true';
		param.noEmptyString='true';
		param.list='true';
		param.list.noEmptyList='true';
	}
	PARAM={
		param.name='proc.annotation.documentation.lang.alt';
		param.title='Alternative Language';
		param.description='${include help/params/proc.annotation.documentation.lang.alt.htm}';
		param.featureType='pro';
		param.type='string';
		param.trimSpaces='true';
		param.noEmptyString='true';
		param.list='true';
		param.list.noEmptyList='true';
	}
	PARAM={
		param.name='proc.annotation.documentation.source';
		param.title='Source URI';
		param.description='${include help/params/proc.annotation.documentation.source.htm}';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='as_see_link;as_title;no';
		param.enum.displayValues='document as see-link;document as annotation title;no processing';
	}
	PARAM={
		param.name='proc.annotation.tags';
		param.title='Tags';
		param.title.style.bold='true';
		param.description='${include help/params/proc.annotation.tags.htm}';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='proc.annotation.tags.xhtml';
		param.title='XHTML';
		param.description='${include help/params/proc.annotation.tags.xhtml.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.defaultState='expanded';
		param.group.enablingExpr='getBooleanParam("proc.annotation.tags.xhtml")';
		param.type='boolean';
		param.defaultValue='true';
		param.defaultValue.limited='false';
	}
	PARAM={
		param.name='proc.annotation.tags.xhtml.schemas';
		param.title='For schemas';
		param.title.style.italic='true';
		param.description='${include help/params/proc.annotation.tags.xhtml.schemas.htm}';
		param.group='true';
	}
	PARAM={
		param.name='proc.annotation.tags.xhtml.schemas.include';
		param.title='Include';
		param.title.style.italic='true';
		param.description='${include help/params/proc.annotation.tags.xhtml.schemas.include.htm}';
		param.featureType='pro';
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
		param.description='${include help/params/proc.annotation.tags.xhtml.schemas.exclude.htm}';
		param.featureType='pro';
		param.type='string';
		param.trimSpaces='true';
		param.collapseSpaces='true';
		param.noEmptyString='true';
		param.list='true';
	}
	PARAM={
		param.name='proc.annotation.tags.xhtml.images';
		param.title='Include Images';
		param.description='${include help/params/proc.annotation.tags.xhtml.images.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.defaultState='expanded';
		param.group.enablingExpr='getBooleanParam("proc.annotation.tags.xhtml.images")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='proc.annotation.tags.xhtml.images.copy';
		param.title='Copy Images';
		param.description='${include help/params/proc.annotation.tags.xhtml.images.copy.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='proc.annotation.tags.other';
		param.title='Other Tags';
		param.description='${include help/params/proc.annotation.tags.other.htm}';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='show;xhtml;no';
		param.enum.displayValues='show;process as XHTML;no processing';
	}
	PARAM={
		param.name='proc.annotation.encode.markup.chars';
		param.title='Encode markup characters';
		param.description='${include help/params/proc.annotation.encode.markup.chars.htm}';
		param.featureType='pro';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='proc.annotation.show.part.headings';
		param.title='Show part headings';
		param.description='${include help/params/proc.annotation.show.part.headings.htm}';
		param.featureType='pro';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("proc.annotation.show.part.headings")';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='proc.annotation.show.part.headings.schemas';
		param.title='For schemas';
		param.title.style.italic='true';
		param.description='${include help/params/proc.annotation.show.part.headings.schemas.htm}';
		param.group='true';
	}
	PARAM={
		param.name='proc.annotation.show.part.headings.schemas.include';
		param.title='Include';
		param.title.style.italic='true';
		param.featureType='pro';
		param.type='string';
		param.trimSpaces='true';
		param.collapseSpaces='true';
		param.noEmptyString='true';
		param.list='true';
	}
	PARAM={
		param.name='proc.annotation.show.part.headings.schemas.exclude';
		param.title='Exclude';
		param.title.style.italic='true';
		param.featureType='pro';
		param.type='string';
		param.trimSpaces='true';
		param.collapseSpaces='true';
		param.noEmptyString='true';
		param.list='true';
	}
	PARAM={
		param.name='integration';
		param.title='Integrations';
		param.title.style.bold='true';
		param.description='${include help/params/integration.htm}';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='integration.XMLSpy';
		param.title='XMLSpy';
		param.title.style.bold='true';
		param.description='${include help/params/integration.XMLSpy.htm}';
		param.enablingExpr='dsmType.hasImageProvider("com.docflex.xml.xmlspy.SpyKit")';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("integration.XMLSpy")';
		param.type='boolean';
		param.defaultValue.expr='dsmType.hasImageProvider("com.docflex.xml.xmlspy.SpyKit")';
	}
	PARAM={
		param.name='integration.XMLSpy.version';
		param.title='XMLSpy Version';
		param.description='${include help/params/integration.XMLSpy.version.htm}';
		param.type='string';
		param.trimSpaces='true';
		param.noEmptyString='true';
		param.suggestedValues='2014;2013;2012;2011;2010;2009;2008;2007;2006;2005;2004';
		param.defaultValue.expr='spyVersion()';
	}
	PARAM={
		param.name='integration.XMLSpy.show';
		param.title='Show XMLSpy';
		param.description='${include help/params/integration.XMLSpy.show.htm}';
		param.type='boolean';
	}
	PARAM={
		param.name='integration.XMLSpy.quit';
		param.title='Quit XMLSpy';
		param.description='${include help/params/integration.XMLSpy.quit.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='integration.XMLSpy.deleteTempDocs';
		param.title='Delete Temporary Docs';
		param.description='${include help/params/integration.XMLSpy.deleteTempDocs.htm}';
		param.type='boolean';
		param.defaultValue='true';
	}
	PARAM={
		param.name='integration.XMLSpy.diagramFormat';
		param.title='Diagram Format';
		param.description='${include help/params/integration.XMLSpy.diagramFormat.htm}';
		param.enablingExpr='version = getStringParam("integration.XMLSpy.version");
version.substring(0,4).toInt() >= 2009';
		param.type='enum';
		param.enum.values='PNG;EMF';
	}
	PARAM={
		param.name='integration.XMLSpy.workarounds';
		param.title='Workarounds';
		param.title.style.bold='true';
		param.description='${include help/params/integration.XMLSpy.workarounds.htm}';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='integration.XMLSpy.workarounds.api';
		param.title='XMLSpy API';
		param.description='${include help/params/integration.XMLSpy.workarounds.api.htm}';
		param.type='enum';
		param.enum.values='old;2012';
		param.enum.displayValues='early version;2012';
		param.defaultValue.expr='version = getStringParam("integration.XMLSpy.version");
version.substring(0,4).toInt() >= 2013 ? "2012" : "old"';
	}
	PARAM={
		param.name='integration.XMLSpy.workarounds.fixCoords';
		param.title='Fix Imagemap Coordinates';
		param.description='${include help/params/integration.XMLSpy.workarounds.fixCoords.htm}';
		param.type='boolean';
		param.defaultValue.expr='true';
	}
	PARAM={
		param.name='integration.XMLSpy.workarounds.useNSPrefixes';
		param.title='Use Namespace Prefixes';
		param.description='${include help/params/integration.XMLSpy.workarounds.useNSPrefixes.htm}';
		param.type='boolean';
		param.defaultValue.expr='version = getStringParam("integration.XMLSpy.version");
version.substring(0,4).toInt() <= 2007';
	}
	PARAM={
		param.name='integration.XMLSpy.workarounds.includeAttributes';
		param.title='Include Attributes';
		param.description='${include help/params/integration.XMLSpy.workarounds.includeAttributes.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("integration.XMLSpy.workarounds.includeAttributes")';
		param.type='boolean';
		param.defaultValue.expr='version = getStringParam("integration.XMLSpy.version");
version.substring(0,4).toInt() >= 2006';
	}
	PARAM={
		param.name='integration.XMLSpy.workarounds.includeAttributes.excludeAttributeGroups';
		param.title='Exclude Attribute Groups';
		param.description='${include help/params/integration.XMLSpy.workarounds.includeAttributes.excludeAttributeGroups.htm}';
		param.type='boolean';
		param.defaultValue.expr='version = getStringParam("integration.XMLSpy.version");
version.substring(0,4).toInt() < 2008';
	}
	PARAM={
		param.name='integration.XMLSpy.workarounds.includeRedefinedComps';
		param.title='Include Redefined Components';
		param.description='${include help/params/integration.XMLSpy.workarounds.includeRedefinedComps.htm}';
		param.type='boolean';
		param.defaultValue.expr='version = getStringParam("integration.XMLSpy.version");
version.substring(0,4).toInt() >= 2007';
	}
	PARAM={
		param.name='integration.OxygenXML';
		param.title='Oxygen XML';
		param.title.style.bold='true';
		param.description='${include help/params/integration.OxygenXML.htm}';
		param.enablingExpr='dsmType.hasImageProvider("com.docflex.xml.OxygenXML.Kit")';
		param.group='true';
		param.group.enablingExpr='getBooleanParam("integration.OxygenXML")';
		param.type='boolean';
		param.defaultValue.expr='dsmType.hasImageProvider("com.docflex.xml.OxygenXML.Kit")';
	}
	PARAM={
		param.name='integration.OxygenXML.multithread';
		param.title='Multithread Processing';
		param.description='${include help/params/integration.OxygenXML.multithread.htm}';
		param.group='true';
		param.group.enablingExpr='getBooleanParam ("integration.OxygenXML.multithread")';
		param.type='boolean';
	}
	PARAM={
		param.name='integration.OxygenXML.multithread.max';
		param.title='Max Number of Threads';
		param.description='${include help/params/integration.OxygenXML.multithread.max.htm}';
		param.type='string';
		param.trimSpaces='true';
		param.noEmptyString='true';
		param.suggestedValues='auto;2;3;4';
		param.defaultValue='auto';
	}
	PARAM={
		param.name='integration.OxygenXML.diagram';
		param.title='Diagrams';
		param.description='${include help/params/integration.OxygenXML.diagram.htm}';
		param.group='true';
	}
	PARAM={
		param.name='integration.OxygenXML.diagram.format';
		param.title='Format';
		param.description='${include help/params/integration.OxygenXML.diagram.format.htm}';
		param.type='enum';
		param.enum.values='PNG;GIF;JPEG';
	}
	PARAM={
		param.name='integration.OxygenXML.diagram.annotations';
		param.title='Show Annotations';
		param.description='${include help/params/integration.OxygenXML.diagram.annotations.htm}';
		param.type='boolean';
	}
	PARAM={
		param.name='integration.OxygenXML.deleteTempFiles';
		param.title='Delete Temporary Files';
		param.description='${include help/params/integration.OxygenXML.deleteTempFiles.htm}';
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
		text.font.name='Arial';
		text.font.size='8.4';
	}
	CHAR_STYLE={
		style.name='Annotation';
		style.id='cs2';
		style.description='The normal font for annotations/decriptions. Used for detailed annotations of components documented globally as well as the annotations of the whole schemas (on schema summary page).

NOTE: Although, this style is reserved here and applied across all sub-templates, it defines no properties, thereby allowing any default font. However, you can change that.';
		style.css.className='ann';
	}
	CHAR_STYLE={
		style.name='Annotation (Small)';
		style.id='cs3';
		style.description='The smaller font for annotations/decriptions. Used in summary tables and content element/attribute details.';
		style.css.className='ann-small';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Annotation (Tiny)';
		style.id='cs4';
		style.description='The smalest font for annotations/decriptions. It is used, for instance, to format annotations of facets, which themselves are documented with a small font. As the actual text size also depends on the font face (name), the font name in this style is fixed as \'Arial\' (to not dependend on the default browser font).';
		style.css.className='ann-tiny';
		text.font.name='Arial';
		text.font.size='8.4';
	}
	CHAR_STYLE={
		style.name='Default Paragraph Font';
		style.id='cs5';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Derivation Method';
		style.id='cs6';
		style.description='Applied to the little texts (typically, one or a few words) describing how a given XSD component was derived from others';
		style.css.className='derivMethod';
		text.font.name='Verdana';
		text.font.size='8.3';
		text.color.foreground='#FF9900';
	}
	PAR_STYLE={
		style.name='Derivation Tree Heading';
		style.id='s1';
		style.description='Formats the heading of Type Derivation Tree';
		style.css.className='derivTreeHead';
		text.font.size='9';
		text.font.style.bold='true';
		text.color.foreground='#990000';
		par.margin.bottom='5.7';
		par.page.keepWithNext='true';
	}
	PAR_STYLE={
		style.name='Derivation Tree Heading (Small)';
		style.id='s2';
		style.description='Formats the heading of Type Derivation Tree (smaller version).

NOTE: Type Derivation Tree may be printed in two versions: normal and smaller. The smaller version is rendered with smaller font sizes. It is used in the details of content model elements and attributes.';
		style.css.className='derivTreeHead-small';
		text.font.size='8.4';
		text.font.style.bold='true';
		text.color.foreground='#990000';
		par.margin.bottom='5.7';
		par.page.keepWithNext='true';
	}
	CHAR_STYLE={
		style.name='Derivation Tree Method';
		style.id='cs7';
		style.description='Highlights a little text (typically 1-2 words) used in Type Derivation Tree to describe how a given type is derived from its ancestor.';
		style.css.className='derivTreeMethod';
		text.font.name='Verdana';
		text.font.size='7';
		text.color.foreground='#F59200';
	}
	CHAR_STYLE={
		style.name='Derivation Tree Method (Small)';
		style.id='cs8';
		style.description='Highlights a little text (typically 1-2 words) used in the smaller version of Type Derivation Tree to describe how a given type is derived from its ancestor.

NOTE: Type Derivation Tree may be printed in two versions: normal and smaller. The smaller version is rendered with smaller font sizes. It is used in the details of content model elements and attributes.';
		style.css.className='derivTreeMethod-small';
		text.font.name='Verdana';
		text.font.size='7';
		text.color.foreground='#F59200';
	}
	CHAR_STYLE={
		style.name='Derivation Tree Type';
		style.id='cs9';
		style.description='Formats the type names in Type Derivation Tree.';
		style.css.className='derivTreeType';
		text.font.name='Courier New';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Derivation Tree Type (Small)';
		style.id='cs10';
		style.description='Formats the type names in the smaller version of Type Derivation Tree.

NOTE: Type Derivation Tree may be printed in two versions: normal and smaller. The smaller version is rendered with smaller font sizes. It is used in the details of content model elements and attributes.';
		style.css.className='derivTreeType-small';
		text.font.name='Courier New';
		text.font.size='7.5';
	}
	PAR_STYLE={
		style.name='Frame Heading 1';
		style.id='s3';
		style.description='Formats the top heading (title) of navigation frames';
		style.css.className='frameHead1';
		text.font.name='Arial';
		text.font.size='9.5';
		text.font.style.bold='true';
		par.margin.bottom='5.8';
		par.option.nowrap='true';
	}
	PAR_STYLE={
		style.name='Frame Heading 2';
		style.id='s4';
		style.description='Formats the heading of groups (lists) in navigation frames, e.g.: "Namespaces", "XML Schemas", "Elements"

NOTE: Some of such headings can be simultaneously latent hyperlinks (which reveal themselves only when mouse cursor hovers over the heading). So, when rendered in HTML, this style may produce two named CSS rules: one for <div> element (to format the heading paragraph) and other for <span> and <a> elements (to format the heading text and the hyperlink). At that, in case of hyperlink, any default hyperlink formatting must be suppressed and normal heading text formatting preserved. That is achieved by specifically setting: no underline; black color';
		style.css.className='frameHead2';
		text.font.name='Arial';
		text.font.size='9';
		text.font.style.bold='true';
		text.decor.underline='false';
		text.color.foreground='#000000';
		par.margin.top='5.8';
		par.margin.bottom='2.5';
		par.option.nowrap='true';
	}
	PAR_STYLE={
		style.name='Frame Heading 2 (Note)';
		style.id='s5';
		style.description='Formats little texts added under group headings (in navigation frames) to provide some extra information about the group, e.g.: "(local elements unified by type)"';
		style.css.className='frameHead2-note';
		text.font.name='Tahoma';
		text.font.size='6';
		text.font.style.bold='true';
		par.margin.top='0';
		par.margin.bottom='3.3';
		par.option.nowrap='true';
	}
	PAR_STYLE={
		style.name='Frame Item';
		style.id='s6';
		style.description='Formats a list item in navigation frames';
		style.css.className='frameItem';
		text.font.name='Arial';
		text.font.size='9';
		par.option.nowrap='true';
	}
	PAR_STYLE={
		style.name='Frame TOC';
		style.id='s7';
		style.description='Formats the Table of Contents box (at the top of navigation frame)';
		style.css.className='frameTOC';
		text.font.name='Arial';
		text.font.size='8';
		par.option.nowrap='true';
	}
	PAR_STYLE={
		style.name='Heading 1';
		style.id='s8';
		style.description='Formats the heading of Overview Summary page. Effectively, it is the heading of the whole documentation.';
		style.css.className='head1';
		text.font.name='Verdana';
		text.font.size='13';
		text.font.style.bold='true';
		text.color.foreground='#4477AA';
		par.bkgr.opaque='true';
		par.bkgr.color='#EEEEEE';
		par.border.style='solid';
		par.border.color='#4477AA';
		par.margin.bottom='1.4';
		par.padding.left='3.3';
		par.padding.right='3.3';
		par.padding.top='2.5';
		par.padding.bottom='2.5';
	}
	PAR_STYLE={
		style.name='Heading 2';
		style.id='s9';
		style.description='Formats the top heading of each documentation page';
		style.css.className='head2';
		text.font.name='Verdana';
		text.font.size='13';
		text.font.style.bold='true';
		text.color.foreground='#4477AA';
		par.bkgr.opaque='true';
		par.bkgr.color='#EEEEEE';
		par.border.style='solid';
		par.border.color='#4477AA';
		par.margin.bottom='6.7';
		par.padding.left='4.2';
		par.padding.right='4.2';
		par.padding.top='2.5';
		par.padding.bottom='2.5';
		par.page.keepWithNext='true';
	}
	PAR_STYLE={
		style.name='Heading 3';
		style.id='s10';
		style.description='Formats the headings of large sections of documentation, like: "Type Details", "XML Source", "Attribute Detail", "Content Element Detail"';
		style.css.className='head3';
		text.font.size='12';
		text.font.style.bold='true';
		par.bkgr.opaque='true';
		par.bkgr.color='#CCCCFF';
		par.border.style='solid';
		par.border.color='#666666';
		par.margin.top='11.7';
		par.margin.bottom='8.3';
		par.padding.left='2.1';
		par.padding.right='2.1';
		par.padding.top='1.7';
		par.padding.bottom='1.7';
		par.page.keepWithNext='true';
	}
	PAR_STYLE={
		style.name='Heading 4';
		style.id='s11';
		style.description='Formats the headings of small sections of documentation, like: "Known Usage Locations", "Annotation"';
		style.css.className='head4';
		text.font.size='10';
		text.font.style.bold='true';
		par.bkgr.opaque='true';
		par.bkgr.color='#EEEEFF';
		par.border.style='solid';
		par.border.color='#666666';
		par.margin.top='10';
		par.margin.bottom='8';
		par.padding.left='2';
		par.padding.right='2';
		par.padding.top='2';
		par.padding.bottom='2';
		par.page.keepWithNext='true';
	}
	PAR_STYLE={
		style.name='Heading 5';
		style.id='s12';
		style.description='Formats the headings of smaller sections of documentation, like: "Simple Content Detail", "Attribute Value Detail" (when they describe the main component that is documented on a given documentation page)';
		style.css.className='head5';
		text.font.size='9';
		text.font.style.bold='true';
		par.margin.top='8.3';
		par.margin.bottom='6.7';
	}
	PAR_STYLE={
		style.name='Heading 6';
		style.id='s13';
		style.description='Formats the heading of larger sections within local documentation of content elements/attributes, like: "Simple Content", "Attribute Value", "Type Detail", "XML Source". Essentially, those sections replicate similar sections of the component global documentation. However, the local documentation is nested in it and, therefore, everything must be smaller.';
		style.css.className='head6';
		text.font.size='9';
		text.font.style.bold='true';
		text.font.style.italic='true';
		text.color.background='#CCCCFF';
		text.color.opaque='true';
		par.margin.top='8.3';
		par.margin.bottom='5';
		par.page.keepWithNext='true';
	}
	PAR_STYLE={
		style.name='Heading 7';
		style.id='s14';
		style.description='Formats the heading used in detail of simple type derivation. That detail consists of a number of similarly organized sections nested in each other recursively (potentially at any depth). Every such a section has a heading, which is formatted with this style.';
		style.css.className='head7';
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
	CHAR_STYLE={
		style.name='Heading Note';
		style.id='cs11';
		style.description='Formats short texts added to some headings (on the level of \'Heading 3\' or \'Summary Heading 1\') to provide more info about the whole section.

For example:

HEADING TEXT: "XML Source"
HEADINT NOTE: "(w/o annotations (1); see within schema source)"

HEADING TEXT: "Attribute Detail"
HEADINT NOTE: "(all declarations; defined within this component only; 1/2)"

The note text must be rendered with a flat compact font to be far less promiminent than the heading text itself. The \'bold\' property is set unselected to neutralize the \'bold\' set for the whole heading.';
		style.css.className='head-note';
		text.font.size='8.4';
		text.font.style.bold='false';
	}
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs12';
		style.description='The formatting of ordinary (normal) hyperlinks. This particular style specifies no properties, thereby allowing the default hyperlink formatting.';
	}
	CHAR_STYLE={
		style.name='Hyperlink (blended in)';
		style.id='cs13';
		style.description='Used to format hyperlinks blended into the text.

Some hyperlinks must not be very prominent. That is, they must look the same as the normal text, yet have something indicating the hyperlink. This is achieved by formatting the hyperlink as ordinary text and adding to it some extra-formatting (indicating the link). 

This style provides that extra formatting. It just specifies the underlining. 

The blended-in formatting itself is achieved through the ordinary text style (acting at that location), which is repeated also as a separate CSS rule for <a> tag, so that its class selector is added to the hyperlink formatting classes.';
		style.css.className='link';
		text.decor.underline='true';
	}
	CHAR_STYLE={
		style.name='Hyperlink (blended in, hover)';
		style.id='cs14';
		style.description='Used to format completely blended-in (latent) hyperlinks.

Certain hyperlinks must look completely the same as ordinary text and reveal themselves only when mouse cursor hovers over such a link. This is achieved by formatting the hyperlink as normal text and adding to it some extra-formatting for hovering. 

This style provides that extra formatting. It just specifies the underlining. 

The blended-in formatting itself is achieved through the ordinary text style (acting at that location), which is repeated also as a separate CSS rule for <a> tag, so that its class selector is added to the hyperlink formatting classes.';
		style.css.className='link-hover';
		text.decor.underline='true';
	}
	CHAR_STYLE={
		style.name='Hyperlink (xml source, hover)';
		style.id='cs15';
		style.description='This style is used to indicate a hyperlink assigned to little piece of XML source (with all markup included). That hyperlink doesn\'t reveal itself until mouse cursor hovers over it. Then, the whole text (XML source) is highlighted with the red-colored underlining, which this style defines.

That feature is used only in the XML Namespace Bindings report.';
		style.css.className='xmlSrcLink-hover';
		text.decor.underline='true';
		text.color.foreground='#990000';
	}
	PAR_STYLE={
		style.name='List Heading 1';
		style.id='s15';
		style.description='Formats headings of various component lists in Component Documentation, e.g.:
"Content Model Elements",
"Included in content model of elements",
"Known Direct Subtypes",
etc.';
		style.css.className='listHead1';
		text.font.size='10';
		text.font.style.bold='true';
		par.margin.top='10';
		par.margin.bottom='6.7';
	}
	PAR_STYLE={
		style.name='List Heading 2';
		style.id='s16';
		style.description='Formats headings of lists in "Known Usage Locations" report (included in Component Documentation), e.g.:
"Within global complexTypes",
"Within anonymous complexTypes of elements",
"Within model groups",
etc.';
		style.css.className='listHead2';
		text.font.size='9';
		text.font.style.bold='true';
		par.margin.bottom='6.7';
	}
	CHAR_STYLE={
		style.name='Mono';
		style.id='cs16';
		style.description='Sets a monospaced font.

This style is used to format component names (to make them more readable/distinguishable) as well as for other things (e.g. spaces), when fixed letter width is required.';
		style.css.className='mono';
		text.font.name='Courier New';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Mono (Small)';
		style.id='cs17';
		style.description='Sets a monospaced font of smaller size. 

This style is used to format component names (to make them more readable/distinguishable) as well as for other things (e.g. spaces), when fixed letter width is required.';
		style.css.className='mono-small';
		text.font.name='Courier New';
		text.font.size='7.5';
	}
	CHAR_STYLE={
		style.name='Mono (Tiny)';
		style.id='cs18';
		style.description='Sets a monospaced font of smallest size. 

This style is used to format component names (to make them more readable/distinguishable) as well as for other things (e.g. spaces), when fixed letter width is required.';
		style.css.className='mono-tiny';
		text.font.name='Courier New';
		text.font.size='7';
	}
	CHAR_STYLE={
		style.name='Name Extension';
		style.id='cs19';
		style.description='Formats extensions of component names.

Some XSD components may have repeating names. That is, several different components of the same type may share the same name within the same namespace. This may happen with locally defined element components and with redefinitions of complexTypes and groups. When such equally named components appear in the same documentation, they must be distinguished from each other. So, a special name extension is generated. Those name extensions may be quite long and should not overwhelm everything else (particularly in component lists). That is achieved by using small yet readable font and faded color, which are specified by this style.

NOTE: The name extension may include hyperlinks, which are formatted with the same font/color and highlighted only with underlining. So, in HTML this style may produce the same named CSS rule for both <span> element (to format text) and <a> element (to format hyperlinks, along with \'blended-in hyperlink\' style).';
		style.css.className='nameExt';
		text.font.name='Verdana';
		text.font.size='7';
		text.font.style.bold='false';
		text.color.foreground='#B2B2B2';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s17';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Profile Item';
		style.id='cs20';
		style.description='The text of schema/namespace profile item.';
		style.css.className='profileItem';
		text.font.size='9';
	}
	PAR_STYLE={
		style.name='Profile Item Title';
		style.id='s18';
		style.description='Formats the title of schema/namespace profile item.

NOTE: Some of such titles can be simultaneously latent hyperlinks (which reveal themselves only when mouse cursor hovers over the heading). So, when rendered in HTML, this style may produce two named CSS rules: one for <div> element (to format the title paragraph) and other for <span> and <a> elements (to format the title text and the hyperlink). At that, in case of hyperlink, any default hyperlink formatting must be suppressed and normal title formatting preserved. That is achieved by specifically setting: no underline; black color';
		style.css.className='profileItemTitle';
		text.font.size='9';
		text.font.style.bold='true';
		text.decor.underline='false';
		text.color.foreground='#000000';
	}
	CHAR_STYLE={
		style.name='Property Note';
		style.id='cs21';
		style.description='Used to format the extra text added to property value to explain its meaning, e.g.:
"(blocks all substitutions of this element or its type)"';
		style.css.className='propNote';
		text.font.name='Tahoma';
		text.font.size='8.3';
		text.font.style.italic='true';
	}
	PAR_STYLE={
		style.name='Property Title';
		style.id='s19';
		style.description='The style for property titles. Besides formatting of text, it specifies also a few paragraph settings to ensure necessary spacing between neighbouring rows and cells.

ABOUT PROPERTIES

Properties (in terms of this XSD documentation) are short pieces of information about particular documented entities (e.g. XSD components, facets etc.) Each property has a title and value. The value may also include additional things, like:
- hyperlinks
- short explanations
- component derivation summary
- a short list of related components, schemas etc.
- a set of related properties (sub-properties)

The documented entity may have a number of different properties that need to be shown together. As properties are typically compact, they are displayed in a single table, whose left column contain property titles and right column - property values.';
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
		style.name='Property Title (Font)';
		style.id='cs22';
		style.description='Specify only font (text formatting) of the property title';
		style.css.className='propTitle-font';
		text.font.name='Arial';
		text.font.size='8.4';
		text.font.style.bold='true';
	}
	PAR_STYLE={
		style.name='Property Value';
		style.id='s20';
		style.description='The base style for property values. Besides formatting of text, it specifies also a few paragraph settings to ensure necessary spacing between neighbouring rows and cells.

ABOUT PROPERTIES

Properties (in terms of this XSD documentation) are short pieces of information about particular documented entities (e.g. XSD components, facets etc.) Each property has a title and value. The value may also include additional things, like:
- hyperlinks
- short explanations
- component derivation summary
- a short list of related components, schemas etc.
- a set of related properties (sub-properties)

The documented entity may have a number of different properties that need to be shown together. As properties are typically compact, they are displayed in a single table, whose left column contain property titles and right column - property values.';
		style.css.className='propValue';
		text.font.name='Verdana';
		text.font.size='8.3';
		par.padding.left='0.3';
		par.padding.right='0.3';
	}
	CHAR_STYLE={
		style.name='Property Value (Font)';
		style.id='cs23';
		style.description='Specify only font (text formatting) of the property value';
		style.css.className='propValue-font';
		text.font.name='Verdana';
		text.font.size='8.3';
	}
	CHAR_STYLE={
		style.name='Summary Heading 1 (Font)';
		style.id='cs24';
		style.description='This style is used for headings of summary tables (when the heading text is placed within the top table cell).
It must be the same as \'Heading 3\'.';
		style.css.className='summaryHead1';
		text.font.size='12';
		text.font.style.bold='true';
	}
	CHAR_STYLE={
		style.name='Summary Item';
		style.id='cs25';
		style.description='Used to display schema file names in the left column of schema summary tables. 

The font must be clear-cut (well readable) and compact (the file names are displayed unwrapped, yet some of them may be quite long strings; so, they should occupy as minimal width as possble).';
		style.css.className='summaryItem';
		text.font.name='Verdana';
		text.font.size='9';
		text.font.style.bold='true';
	}
	CHAR_STYLE={
		style.name='Summary Item (Small)';
		style.id='cs26';
		style.description='Used to display component names in the left column of component summary tables. 

The font must be clear-cut (well readable) and compact (the component names are displayed unwrapped, yet some of them may be quite long strings; so, they should occupy as minimal width as possble).';
		style.css.className='summaryItem-small';
		text.font.name='Verdana';
		text.font.size='8.4';
		text.font.style.bold='true';
	}
	CHAR_STYLE={
		style.name='Timestamp';
		style.id='cs27';
		style.description='Formats the date/time when the documentation has been generated, which is shown beneath the Overview Summary heading.';
		style.css.className='timestamp';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='XML Rep';
		style.id='cs28';
		style.description='The default font for XML Representation Summary.';
		style.css.className='xmlRep';
		text.font.name='Courier New';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='XML Rep (Small)';
		style.id='cs29';
		style.description='The base font for XML Representation Summary (smaller version).

NOTE: XML Representation Summary may be printed in two versions: normal and smaller. The smaller version is rendered with smaller font sizes. It is used in the details of content model elements and attributes.';
		style.css.className='xmlRep-small';
		text.font.name='Courier New';
		text.font.size='7.5';
	}
	CHAR_STYLE={
		style.name='XML Rep Attribute Name';
		style.id='cs30';
		style.description='Formats the attribute names in XML Representation Summary.

NOTE: The attribute names may be simultaneously hyperlinks, which are formatted with the same font/color and highlighted only with underlining. So, in case of HTML, this style will produce the same named CSS rules for both <span> element (to format text) and <a> element (to format hyperlinks, along with \'blended-in hyperlink\' style).';
		style.css.className='xmlRepAttrName';
		text.font.name='Courier New';
		text.font.size='8.3';
		text.color.foreground='#990000';
	}
	CHAR_STYLE={
		style.name='XML Rep Attribute Name (Small)';
		style.id='cs31';
		style.description='Formats the type names in the smaller version of XML Representation Summary.

NOTE: XML Representation Summary may be printed in two versions: normal and smaller. The smaller version is rendered with smaller font sizes. It is used in the details of content model elements and attributes.';
		style.css.className='xmlRepAttrName-small';
		text.font.name='Courier New';
		text.font.size='7.5';
		text.color.foreground='#990000';
	}
	CHAR_STYLE={
		style.name='XML Rep Content Model';
		style.id='cs32';
		style.description='Used to format the representation of the element complex content in XML Representation Summary.';
		style.css.className='xmlRepModel';
		text.font.name='Verdana';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='XML Rep Content Model (Small)';
		style.id='cs33';
		style.description='Used to format the representation of the element complex content in the smaller version of XML Representation Summary.

NOTE: XML Representation Summary may be printed in two versions: normal and smaller. The smaller version is rendered with smaller font sizes. It is used in the details of content model elements and attributes.';
		style.css.className='xmlRepModel-small';
		text.font.name='Verdana';
		text.font.size='8';
	}
	PAR_STYLE={
		style.name='XML Rep Heading';
		style.id='s21';
		style.description='Heading of XML Representation Summary.';
		style.css.className='xmlRepHead';
		text.font.size='10';
		text.font.style.bold='true';
		text.color.foreground='#990000';
		par.margin.bottom='1.7';
	}
	PAR_STYLE={
		style.name='XML Rep Heading (Small)';
		style.id='s22';
		style.description='Heading of XML Representation Summary (smaller version).

NOTE: XML Representation Summary may be printed in two versions: normal and smaller. The smaller version is rendered with smaller font sizes. It is used in the details of content model elements and attributes.';
		style.css.className='xmlRepHead-small';
		text.font.size='9';
		text.font.style.bold='true';
		text.color.foreground='#990000';
		par.margin.bottom='1.7';
	}
	CHAR_STYLE={
		style.name='XML Rep Markup';
		style.id='cs34';
		style.description='The font for XML markup characters (such as angle brackets, quotes etc.) used in XML Representation Summary.';
		style.css.className='xmlRepMarkup';
		text.font.name='Courier New';
		text.font.size='9';
		text.color.foreground='#0000FF';
		text.option.nbsps='true';
	}
	CHAR_STYLE={
		style.name='XML Rep Markup (Small)';
		style.id='cs35';
		style.description='The font for XML markup characters (such as angle brackets, quotes etc.) used in the smaller version of XML Representation Summary.

NOTE: XML Representation Summary may be printed in two versions: normal and smaller. The smaller version is rendered with smaller font sizes. It is used in the details of content model elements and attributes.';
		style.css.className='xmlRepMarkup-small';
		text.font.name='Courier New';
		text.font.size='7.5';
		text.color.foreground='#0000FF';
		text.option.nbsps='true';
	}
	CHAR_STYLE={
		style.name='XML Rep Name';
		style.id='cs36';
		style.description='Used in XML Representation Summary to display the name of the given element (or other component) being represented.';
		style.css.className='xmlRepName';
		text.font.name='Courier New';
		text.font.size='9';
		text.color.foreground='#990000';
	}
	CHAR_STYLE={
		style.name='XML Rep Name (Small)';
		style.id='cs37';
		style.description='Used in the smaller version of XML Representation Summary to display the name of the given element (or other component) being represented.

NOTE: XML Representation Summary may be printed in two versions: normal and smaller. The smaller version is rendered with smaller font sizes. It is used in the details of content model elements and attributes.';
		style.css.className='xmlRepName-small';
		text.font.name='Courier New';
		text.font.size='7.5';
		text.color.foreground='#990000';
	}
	CHAR_STYLE={
		style.name='XML Rep Value';
		style.id='cs38';
		style.description='Used in XML Representation Summary to display the values (i.e. their representations) of attributes and the element\'s simple content.';
		style.css.className='xmlRepValue';
		text.font.name='Courier New';
		text.font.size='8.3';
	}
	CHAR_STYLE={
		style.name='XML Rep Value (Small)';
		style.id='cs39';
		style.description='Used in the smaller version of XML Representation Summary to display the values (i.e. their representations) of attributes and the element\'s simple content.

NOTE: XML Representation Summary may be printed in two versions: normal and smaller. The smaller version is rendered with smaller font sizes. It is used in the details of content model elements and attributes.';
		style.css.className='xmlRepValue-small';
		text.font.name='Courier New';
		text.font.size='7.5';
	}
	CHAR_STYLE={
		style.name='XML Source';
		style.id='cs40';
		style.description='The default font for the reproduced XML source.';
		style.css.className='xml';
		text.font.name='Verdana';
		text.font.size='8.3';
	}
	CHAR_STYLE={
		style.name='XML Source Attribute Name';
		style.id='cs41';
		style.description='The font for the names of attributes in the reproduced XML source.';
		style.css.className='xmlAttrName';
		text.font.name='Verdana';
		text.font.size='8.3';
		text.color.foreground='#990000';
	}
	CHAR_STYLE={
		style.name='XML Source Attribute Name (Reserved)';
		style.id='cs42';
		style.description='The font for reserved attribute names in the reproduced XML source.

Reserved are namespace bindings (e.g. "xmlns:xs") and attributes from the XML namespace (e.g. "xml:lang").';
		style.css.className='xmlAttrName-reserved';
		text.font.name='Verdana';
		text.font.size='8.3';
		text.color.foreground='#FF0000';
	}
	CHAR_STYLE={
		style.name='XML Source Attribute Value';
		style.id='cs43';
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
		style.id='cs44';
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
		style.id='cs45';
		style.description='The font for CDATA section content in the reproduced XML source';
		style.css.className='xmlCDATA';
		text.font.name='Verdana';
		text.font.size='8.3';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='XML Source CDATA Markup';
		style.id='cs46';
		style.description='The font for CDATA section markup ("<![CDATA[" and "]]>") in the reproduced XML source';
		style.css.className='xmlCDATAMrk';
		text.font.name='Verdana';
		text.font.size='8.3';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='XML Source Comment';
		style.id='cs47';
		style.description='The font for XML source comments';
		style.css.className='xmlCom';
		text.font.name='Courier New';
		text.font.size='8.3';
		text.color.foreground='#4D4D4D';
	}
	CHAR_STYLE={
		style.name='XML Source Comment Markup';
		style.id='cs48';
		style.description='The font for XML comment markup ("<!--" and "-->") in the reproduced XML source';
		style.css.className='xmlComMrk';
		text.font.name='Verdana';
		text.font.size='8.3';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='XML Source DOCTYPE';
		style.id='cs49';
		style.description='The font for <!DOCTYPE> declaration (except internal subset) in the reproduced XML source';
		style.css.className='xmlDOCTYPE';
		text.font.name='Verdana';
		text.font.size='8.3';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='XML Source Element Name';
		style.id='cs50';
		style.description='The font for the names of elements in the reproduced XML source.';
		style.css.className='xmlElemName';
		text.font.name='Verdana';
		text.font.size='8.3';
		text.color.foreground='#990000';
	}
	CHAR_STYLE={
		style.name='XML Source Element Value';
		style.id='cs51';
		style.description='The font for the values of elements in the reproduced XML source.';
		style.css.className='xmlElemVal';
		text.font.name='Verdana';
		text.font.size='7';
		text.font.style.bold='true';
	}
	CHAR_STYLE={
		style.name='XML Source Internal Subset';
		style.id='cs52';
		style.description='The font for Internal Subset (embedded in <!DOCTYPE> declaration) in the reproduced XML source.';
		style.css.className='xmlIS';
		text.font.name='Courier New';
		text.font.size='8.3';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='XML Source Internal Subset Markup';
		style.id='cs53';
		style.description='The font for specific XML markup surrounding Internal Subset section in the reproduced XML source';
		style.css.className='xmlSubsetMrk';
		text.font.name='Verdana';
		text.font.size='8.3';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='XML Source Markup';
		style.id='cs54';
		style.description='The font for XML markup characters (such as angle brackets, quotes etc.)';
		style.css.className='xmlMrk';
		text.font.name='Verdana';
		text.font.size='8.3';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='XML Source Processing Instruction';
		style.id='cs55';
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
	doc.hlink.style.link='cs12';
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
   schema-frame"
) != null'
			PERCENT_SIZE=70
			NAME='listFrame'
			SOURCE_EXPR='templateNames = Vector (
  "all-components-frame",
  "namespace-frame",
  "schema-frame"
);

templateNames.moveElement (
  indexOf (
    Array ("allcomps", "namespace", "schema"),
    getStringParam("nav.listFrame")
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
  "schema-overview",
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
    Array ("overview", "allcomps", "namespace", "schema"),
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
		TEMPLATE_FILE='lib/component/all-components-summary.tpl'
		OUTPUT_TYPE='document'
		OUTPUT_DIR_EXPR='output.docFilesDir'
		SUPPRESS_EMPTY_FILE
	</TEMPLATE_CALL>
	<ELEMENT_ITER>
		DESCR='ITERATE BY SCHEMAS'
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
		SORTING_COND='getBooleanParam("gen.doc.sorting.schemas")'
		<BODY>
			<TEMPLATE_CALL>
				DESCR='schema overview'
				COND='getBooleanParam("gen.doc.schema")'
				TEMPLATE_FILE='lib/schema/schema-overview.tpl'
				OUTPUT_TYPE='document'
				OUTPUT_DIR_EXPR='getStringVar("schemaFolder")'
				ASSOCIATED_FILES_DIR_EXPR='getVar("schemaFolder") + "doc-files"'
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				DESCR='schema XML source (as a separate file)'
				COND='getBooleanParam("doc.schema.xml")
&&
getBooleanParam("doc.schema.xml.separate")'
				TEMPLATE_FILE='lib/schema/schema-source.tpl'
				OUTPUT_TYPE='document'
				OUTPUT_DIR_EXPR='getStringVar("schemaFolder")'
				ASSOCIATED_FILES_DIR_EXPR='getVar("schemaFolder") + "doc-files"'
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				DESCR='schema component list'
				COND='getBooleanParam("nav.listFrame.schema")'
				TEMPLATE_FILE='lib/schema/schema-frame.tpl'
				OUTPUT_TYPE='document'
				OUTPUT_DIR_EXPR='getStringVar("schemaFolder")'
				SUPPRESS_EMPTY_FILE
			</TEMPLATE_CALL>
			<ELEMENT_ITER>
				DESCR='elements'
				COND='getBooleanParam("gen.doc.element")'
				STEP_EXPR='// in how many schemas is this element defined?

setVar ("schemaCount",
  instanceOf("xs:element") ? 1 // case of global element
  :
  // case of a local element:
  // when it represents a group of local elements unified by type,
  // those elements may be actually defined in different schemas;
  // calculate in how many

  countElementsByKey (
    "globally-documented-local-elements",
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
  "globally-documented-local-elements", contextElement.id
).id == contextElement.id
'
				SORTING='by-expr'
				SORTING_KEY={expr='callStockSection("Element Name")',ascending}
				SORTING_COND='getBooleanParam("gen.doc.sorting.comps")'
				<BODY>
					<TEMPLATE_CALL>
						TEMPLATE_FILE='lib/element/element.tpl'
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
  countElementsByKey ("globally-documented-local-elements", contextElement.id) > 1 ?
  {
    // if this element is defined in several schemas,
    // store its documentation in the folder of the namespace;
    // otherwise, the element documentation is stored by its schema

    getIntVar ("schemaCount") > 1 ? 
      path = getStringVar ("nsFolder");

  } : {
    // otherwise, this is just a local element

    getBooleanParam("gen.doc.element.local.storeByParents") ?
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
				COND='getBooleanParam("gen.doc.complexType")'
				TARGET_ET='xs:complexType'
				SCOPE='simple-location-rules'
				RULES={
					'* -> descendant::xs:complexType';
				}
				SORTING='by-attr'
				SORTING_KEY={lpath='@name',ascending}
				SORTING_COND='getBooleanParam("gen.doc.sorting.comps")'
				<BODY>
					<TEMPLATE_CALL>
						TEMPLATE_FILE='lib/type/complexType.tpl'
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
				COND='getBooleanParam("gen.doc.simpleType")'
				TARGET_ET='xs:simpleType'
				SCOPE='simple-location-rules'
				RULES={
					'* -> descendant::xs:simpleType';
				}
				SORTING='by-attr'
				SORTING_KEY={lpath='@name',ascending}
				SORTING_COND='getBooleanParam("gen.doc.sorting.comps")'
				<BODY>
					<TEMPLATE_CALL>
						TEMPLATE_FILE='lib/type/simpleType.tpl'
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
				COND='getBooleanParam("gen.doc.group")'
				TARGET_ET='xs:group'
				SCOPE='simple-location-rules'
				RULES={
					'* -> descendant::xs:group';
				}
				SORTING='by-attr'
				SORTING_KEY={lpath='@name',ascending}
				SORTING_COND='getBooleanParam("gen.doc.sorting.comps")'
				<BODY>
					<TEMPLATE_CALL>
						TEMPLATE_FILE='lib/groups/group.tpl'
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
				COND='getBooleanParam("gen.doc.attribute")'
				TARGET_ET='xs:attribute'
				SCOPE='simple-location-rules'
				RULES={
					'* -> xs:attribute';
				}
				SORTING='by-attr'
				SORTING_KEY={lpath='@name',ascending}
				SORTING_COND='getBooleanParam("gen.doc.sorting.comps")'
				<BODY>
					<TEMPLATE_CALL>
						TEMPLATE_FILE='lib/attribute/attribute.tpl'
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
				COND='getBooleanParam("gen.doc.attributeGroup")'
				TARGET_ET='xs:attributeGroup'
				SCOPE='simple-location-rules'
				RULES={
					'* -> descendant::xs:attributeGroup';
				}
				SORTING='by-attr'
				SORTING_KEY={lpath='@name',ascending}
				SORTING_COND='getBooleanParam("gen.doc.sorting.comps")'
				<BODY>
					<TEMPLATE_CALL>
						TEMPLATE_FILE='lib/groups/attributeGroup.tpl'
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
				COND='getBooleanParam("nav.listFrame.namespace")'
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
		COND='getBooleanParam("nav.listFrame.allcomps")'
		TEMPLATE_FILE='lib/component/all-components-frame.tpl'
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
						TEMPLATE_FILE='lib/element/localElementExt.tpl'
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
</STOCK_SECTIONS>
CHECKSUM='U9UCqPEqSK+AqhT2plnbs1qPioTECSmHzyEr5zujcUE'
</DOCFLEX_TEMPLATE>