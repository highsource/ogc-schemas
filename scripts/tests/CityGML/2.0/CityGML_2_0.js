var Jsonix = require('jsonix').Jsonix;
var XLink_1_0 = require('w3c-schemas').XLink_1_0;
var SMIL_2_0 = require('../../../ogc-schemas').SMIL_2_0;
var SMIL_2_0_Language = require('../../../ogc-schemas').SMIL_2_0_Language;
var GML_3_1_1 = require('../../../ogc-schemas').GML_3_1_1;
var CityGML_2_0 = require('../../../ogc-schemas').CityGML_2_0;
var CityGML_Appearance_2_0 = require('../../../ogc-schemas').CityGML_Appearance_2_0;
var CityGML_Bridge_2_0 = require('../../../ogc-schemas').CityGML_Bridge_2_0;
var CityGML_Building_2_0 = require('../../../ogc-schemas').CityGML_Building_2_0;
var CityGML_CityFuntiture_2_0 = require('../../../ogc-schemas').CityGML_CityFuntiture_2_0;
var CityGML_CityObjectGroup_2_0 = require('../../../ogc-schemas').CityGML_CityObjectGroup_2_0;
var CityGML_Generics_2_0 = require('../../../ogc-schemas').CityGML_Generics_2_0;
var CityGML_LandUse_2_0 = require('../../../ogc-schemas').CityGML_LandUse_2_0;
var CityGML_Relief_2_0 = require('../../../ogc-schemas').CityGML_Relief_2_0;
var CityGML_TexturedSurface_2_0 = require('../../../ogc-schemas').CityGML_TexturedSurface_2_0;
var CityGML_Transportation_2_0 = require('../../../ogc-schemas').CityGML_Transportation_2_0;
var CityGML_Tunnel_2_0 = require('../../../ogc-schemas').CityGML_Tunnel_2_0;
var CityGML_Vegetation_2_0 = require('../../../ogc-schemas').CityGML_Vegetation_2_0;
var CityGML_Waterbody_2_0 = require('../../../ogc-schemas').CityGML_Waterbody_2_0;
var xAL_2_0 = require('../../../ogc-schemas').xAL_2_0;

var roundtripsWithContext = require('../../roundtrip').roundtripsWithContext;

var mappings = [XLink_1_0, SMIL_2_0, SMIL_2_0_Language, xAL_2_0, GML_3_1_1, CityGML_2_0, CityGML_Appearance_2_0, CityGML_Bridge_2_0, CityGML_Building_2_0, CityGML_CityFuntiture_2_0, CityGML_CityObjectGroup_2_0, CityGML_Generics_2_0, CityGML_LandUse_2_0, CityGML_Relief_2_0, CityGML_TexturedSurface_2_0, CityGML_Transportation_2_0, CityGML_Tunnel_2_0, CityGML_Vegetation_2_0, CityGML_Waterbody_2_0];

var context = new Jsonix.Context(mappings, {
	namespacePrefixes : {
		'http://www.opengis.net/gml' : 'gml',
		'http://www.w3.org/1999/xlink' : 'xlink',
		'http://www.opengis.net/citygml/2.0' : '',
		'urn:oasis:names:tc:ciq:xsdschema:xAL:2.0' : 'xAL',
		'http://www.opengis.net/citygml/generics/2.0' : 'gen',
		'http://www.opengis.net/citygml/cityobjectgroup/2.0' : 'grp'
	}
});

module.exports = {
	"Roundtrips" : roundtripsWithContext(context, __dirname)
};
