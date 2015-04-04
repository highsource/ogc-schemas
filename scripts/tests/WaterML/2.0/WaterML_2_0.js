var Jsonix = require('jsonix').Jsonix;
var XLink_1_0 = require('w3c-schemas').XLink_1_0;
var GML_3_2_1 = require('../../../ogc-schemas').GML_3_2_1;
var ISO19139_GMD_20070417 = require('../../../ogc-schemas').ISO19139_GMD_20070417;
var ISO19139_GCO_20070417 = require('../../../ogc-schemas').ISO19139_GCO_20070417;
var ISO19139_GSR_20070417 = require('../../../ogc-schemas').ISO19139_GSR_20070417;
var ISO19139_GSS_20070417 = require('../../../ogc-schemas').ISO19139_GSS_20070417;
var ISO19139_GTS_20070417 = require('../../../ogc-schemas').ISO19139_GTS_20070417;
var OM_2_0 = require('../../../ogc-schemas').OM_2_0;
var Sampling_2_0 = require('../../../ogc-schemas').Sampling_2_0;
var SamplingSpatial_2_0 = require('../../../ogc-schemas').SamplingSpatial_2_0;
var SWE_2_0 = require('../../../ogc-schemas').SWE_2_0;
var WaterML_2_0 = require('../../../ogc-schemas').WaterML_2_0;

var roundtrips = require('../../roundtrip').roundtrips;

var mappings = [XLink_1_0, GML_3_2_1, ISO19139_GMD_20070417, ISO19139_GCO_20070417, ISO19139_GSS_20070417, ISO19139_GTS_20070417, ISO19139_GSR_20070417, OM_2_0, Sampling_2_0, SamplingSpatial_2_0, SWE_2_0, WaterML_2_0];

module.exports = {
	"Context": function(test) {
		var context = new Jsonix.Context(mappings);
		test.equal('object', typeof context);
		test.done();
        },
	"Roundtrips" : roundtrips(mappings, __dirname)
};