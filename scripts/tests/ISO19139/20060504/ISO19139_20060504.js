var Jsonix = require('jsonix').Jsonix;
var XLink_1_0 = require('w3c-schemas').XLink_1_0;
var GML_3_2_0 = require('../../../ogc-schemas').GML_3_2_0;
var ISO19139_GCO_20060504 = require('../../../ogc-schemas').ISO19139_GCO_20060504;
var ISO19139_GMD_20060504 = require('../../../ogc-schemas').ISO19139_GMD_20060504;
var ISO19139_GMX_20060504 = require('../../../ogc-schemas').ISO19139_GMX_20060504;
var ISO19139_GSR_20060504 = require('../../../ogc-schemas').ISO19139_GSR_20060504;
var ISO19139_GSS_20060504 = require('../../../ogc-schemas').ISO19139_GSS_20060504;
var ISO19139_GTS_20060504 = require('../../../ogc-schemas').ISO19139_GTS_20060504;

var roundtrips = require('../../roundtrip').roundtrips;

var mappings = [XLink_1_0, GML_3_2_0, ISO19139_GCO_20060504, ISO19139_GMD_20060504, ISO19139_GMX_20060504, ISO19139_GSS_20060504, ISO19139_GTS_20060504, ISO19139_GSR_20060504];

module.exports = {
	"Context": function(test) {
		var context = new Jsonix.Context(mappings);
		test.done();
        },
	"Roundtrips" : roundtrips(mappings, __dirname)
};