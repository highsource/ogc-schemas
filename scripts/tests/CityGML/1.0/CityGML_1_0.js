var Jsonix = require('jsonix').Jsonix;
var XLink_1_0 = require('w3c-schemas').XLink_1_0;
var SMIL_2_0 = require('../../../ogc-schemas').SMIL_2_0;
var SMIL_2_0_Language = require('../../../ogc-schemas').SMIL_2_0_Language;
var GML_3_1_1 = require('../../../ogc-schemas').GML_3_1_1;
var CityGML_1_0 = require('../../../ogc-schemas').CityGML_1_0;
var CityGML_Appearance_1_0 = require('../../../ogc-schemas').CityGML_Appearance_1_0;
var CityGML_Building_1_0 = require('../../../ogc-schemas').CityGML_Building_1_0;
var CityGML_CityFuntiture_1_0 = require('../../../ogc-schemas').CityGML_CityFuntiture_1_0;
var CityGML_CityObjectGroup_1_0 = require('../../../ogc-schemas').CityGML_CityObjectGroup_1_0;
var CityGML_Generics_1_0 = require('../../../ogc-schemas').CityGML_Generics_1_0;
var CityGML_LandUse_1_0 = require('../../../ogc-schemas').CityGML_LandUse_1_0;
var CityGML_Relief_1_0 = require('../../../ogc-schemas').CityGML_Relief_1_0;
var CityGML_TexturedSurface_1_0 = require('../../../ogc-schemas').CityGML_TexturedSurface_1_0;
var CityGML_Transportation_1_0 = require('../../../ogc-schemas').CityGML_Transportation_1_0;
var CityGML_Vegetation_1_0 = require('../../../ogc-schemas').CityGML_Vegetation_1_0;
var CityGML_Waterbody_1_0 = require('../../../ogc-schemas').CityGML_Waterbody_1_0;
var xAL_2_0 = require('../../../ogc-schemas').xAL_2_0;

var roundtripsWithContext = require('../../roundtrip').roundtripsWithContext;

var mappings = [XLink_1_0, SMIL_2_0, SMIL_2_0_Language, xAL_2_0, GML_3_1_1, CityGML_1_0, CityGML_Appearance_1_0, CityGML_Building_1_0, CityGML_CityFuntiture_1_0, CityGML_CityObjectGroup_1_0, CityGML_Generics_1_0, CityGML_LandUse_1_0, CityGML_Relief_1_0, CityGML_TexturedSurface_1_0, CityGML_Transportation_1_0, CityGML_Vegetation_1_0, CityGML_Waterbody_1_0];

var context = new Jsonix.Context(mappings, {
	namespacePrefixes : {
		'http://www.opengis.net/citygml/1.0' : '',
		'http://www.opengis.net/gml' : 'gml',
		'http://www.w3.org/1999/xlink' : 'xlink',
		'urn:oasis:names:tc:ciq:xsdschema:xAL:2.0' : 'xAL'
	}
});

module.exports = {
	"Roundtrips" : roundtripsWithContext(context, __dirname)
};
