var Jsonix = require('jsonix').Jsonix;
var XLink_1_0 = require('w3c-schemas').XLink_1_0;
var GML_3_2_1 = require('../../../ogc-schemas').GML_3_2_1;
var ISO19139_GMD_20070417 = require('../../../ogc-schemas').ISO19139_GMD_20070417;
var ISO19139_GCO_20070417 = require('../../../ogc-schemas').ISO19139_GCO_20070417;
var ISO19139_GSR_20070417 = require('../../../ogc-schemas').ISO19139_GSR_20070417;
var ISO19139_GSS_20070417 = require('../../../ogc-schemas').ISO19139_GSS_20070417;
var ISO19139_GTS_20070417 = require('../../../ogc-schemas').ISO19139_GTS_20070417;
var OM_2_0 = require('../../../ogc-schemas').OM_2_0;
var SMIL_2_0 = require('../../../ogc-schemas').SMIL_2_0;
var SMIL_2_0_Language = require('../../../ogc-schemas').SMIL_2_0_Language;
var GML_3_1_1 = require('../../../ogc-schemas').GML_3_1_1;
var SWE_1_0_0 = require('../../../ogc-schemas').SWE_1_0_0;
var OWS_2_0 = require('../../../ogc-schemas').OWS_2_0;
var OMEO_EOP_2_0 = require('../../../ogc-schemas').OMEO_EOP_2_0;

var roundtrips = require('../../roundtrip').roundtrips;

var mappings = [XLink_1_0, GML_3_2_1, ISO19139_GMD_20070417, ISO19139_GCO_20070417, ISO19139_GSS_20070417, ISO19139_GTS_20070417, ISO19139_GSR_20070417, OM_2_0, SMIL_2_0, SMIL_2_0_Language, GML_3_1_1, SWE_1_0_0, OWS_2_0, OMEO_EOP_2_0];

module.exports = {
	"Context": function(test) {
		var context = new Jsonix.Context(mappings);
		test.ok(true);
		test.done();
        },
	"Roundtrips" : roundtrips(mappings, __dirname)
};
