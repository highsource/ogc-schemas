var Jsonix = require('jsonix').Jsonix;
var XLink_1_0 = require('w3c-schemas').XLink_1_0;
var GML_3_2_1 = require('../../../ogc-schemas').GML_3_2_1;
var SWE_2_0 = require('../../../ogc-schemas').SWE_2_0;
var OWS_1_1_0 = require('../../../ogc-schemas').OWS_1_1_0;
var WSN_T_1 = require('../../../ogc-schemas').WSN_T_1;
var WS_Addr_1_0_Core = require('w3c-schemas').WS_Addr_1_0_Core;
var SWES_2_0 = require('../../../ogc-schemas').SWES_2_0;
var SPS_2_0 = require('../../../ogc-schemas').SPS_2_0;
var SMIL_2_0 = require('../../../ogc-schemas').SMIL_2_0;
var SMIL_2_0_Language = require('../../../ogc-schemas').SMIL_2_0_Language;
var GML_3_1_1 = require('../../../ogc-schemas').GML_3_1_1;
var EOP_1_0 = require('../../../ogc-schemas').EOP_1_0;
var EOP_ATM_1_0 = require('../../../ogc-schemas').EOP_ATM_1_0;
var EOP_OPT_1_0 = require('../../../ogc-schemas').EOP_OPT_1_0;
var EOP_SAR_1_0 = require('../../../ogc-schemas').EOP_SAR_1_0;
var EOSPS_2_0 = require('../../../ogc-schemas').EOSPS_2_0;

var roundtrips = require('../../roundtrip').roundtrips;

var roundtrip = require('../../roundtrip').roundtrip;
var mappings = [XLink_1_0, GML_3_2_1, SWE_2_0, OWS_1_1_0, WS_Addr_1_0_Core, WSN_T_1, SWES_2_0, SPS_2_0, SMIL_2_0, SMIL_2_0_Language, GML_3_1_1, EOP_1_0, EOP_ATM_1_0, EOP_OPT_1_0, EOP_SAR_1_0, EOSPS_2_0];

module.exports = {
	"Context": function(test) {
		var context = new Jsonix.Context(mappings);
		test.ok(true);
		test.done();
        },
	"Roundtrips" : roundtrips(mappings, __dirname)
};
