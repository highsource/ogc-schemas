var Jsonix = require('jsonix').Jsonix;
var XLink_1_0 = require('w3c-schemas').XLink_1_0;
var GML_3_2_1 = require('../../../ogc-schemas').GML_3_2_1;
var SWE_2_0 = require('../../../ogc-schemas').SWE_2_0;
var GMLCOV_1_0 = require('../../../ogc-schemas').GMLCOV_1_0;
var GMLCOV_GeoTIFF_1_0 = require('../../../ogc-schemas').GMLCOV_GeoTIFF_1_0;
var WCS_2_0 = require('../../../ogc-schemas').WCS_2_0;
var OWS_2_0 = require('../../../ogc-schemas').OWS_2_0;

var roundtrips = require('../../roundtrip').roundtrips;

var roundtrip = require('../../roundtrip').roundtrip;

var mappings = [XLink_1_0, GML_3_2_1, SWE_2_0, GMLCOV_1_0, GMLCOV_GeoTIFF_1_0, OWS_2_0, WCS_2_0];
module.exports = {
	"Context": function(test) {
		var context = new Jsonix.Context(mappings);
		test.done();
        },
	"Roundtrips" : roundtrips(mappings, __dirname)
};
