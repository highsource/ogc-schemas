var Jsonix = require('jsonix').Jsonix;
var XLink_1_0 = require('w3c-schemas').XLink_1_0;
var WS_Addr_1_0_Core = require('w3c-schemas').WS_Addr_1_0_Core;
var GML_3_2_1 = require('../../../ogc-schemas').GML_3_2_1;
var OWS_1_1_0 = require('../../../ogc-schemas').OWS_1_1_0;
var SWE_2_0 = require('../../../ogc-schemas').SWE_2_0;
var SWES_2_0 = require('../../../ogc-schemas').SWES_2_0;
var WSN_T_1 = require('../../../ogc-schemas').WSN_T_1;
var ISO19139_GMD_20070417 = require('../../../ogc-schemas').ISO19139_GMD_20070417;
var ISO19139_GCO_20070417 = require('../../../ogc-schemas').ISO19139_GCO_20070417;
var ISO19139_GSR_20070417 = require('../../../ogc-schemas').ISO19139_GSR_20070417;
var ISO19139_GSS_20070417 = require('../../../ogc-schemas').ISO19139_GSS_20070417;
var ISO19139_GTS_20070417 = require('../../../ogc-schemas').ISO19139_GTS_20070417;
var OM_2_0 = require('../../../ogc-schemas').OM_2_0;
var Filter_2_0 = require('../../../ogc-schemas').Filter_2_0;
var SOS_2_0 = require('../../../ogc-schemas').SOS_2_0;

var roundtrips = require('../../roundtrip').roundtrips;

var mappings = [XLink_1_0, GML_3_2_1, OWS_1_1_0, SWE_2_0, SWES_2_0, WSN_T_1, WS_Addr_1_0_Core, OM_2_0, ISO19139_GMD_20070417, ISO19139_GCO_20070417, ISO19139_GSS_20070417, ISO19139_GTS_20070417, ISO19139_GSR_20070417, Filter_2_0, SOS_2_0];

module.exports = {
	"Context": function(test) {
		var context = new Jsonix.Context(mappings);
		test.done();
        },
	"Roundtrips" : roundtrips(mappings, __dirname)
};