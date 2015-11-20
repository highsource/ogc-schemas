var Jsonix = require('jsonix').Jsonix;
//var XLink_1_0 = require('w3c-schemas').XLink_1_0;
//var SMIL_2_0 = require('../../../ogc-schemas').SMIL_2_0;
//var SMIL_2_0_Language = require('../../../ogc-schemas').SMIL_2_0_Language;
//var GML_3_1_1 = require('../../../ogc-schemas').GML_3_1_1;
var IC_2_0 = require('../../../ogc-schemas').IC_2_0;
// var SWE_1_0_1 = require('../../../ogc-schemas').SWE_1_0_1;
//var SensorML_1_0_1 = require('../../../ogc-schemas').SensorML_1_0_1;
var TML_1_0_0 = require('../../../ogc-schemas').TML_1_0_0;

var roundtrips = require('../../roundtrip').roundtrips;

var mappings = [IC_2_0, TML_1_0_0];

module.exports = {
	"Context": function(test) {
		var context = new Jsonix.Context(mappings);
		test.done();
        },
	"Roundtrips" : roundtrips(mappings, __dirname)
};