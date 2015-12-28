var Jsonix = require('jsonix').Jsonix;
var XLink_1_0 = require('w3c-schemas').XLink_1_0;
var SMIL_2_0 = require('../../../ogc-schemas').SMIL_2_0;
var SMIL_2_0_Language = require('../../../ogc-schemas').SMIL_2_0_Language;
var GML_3_1_1 = require('../../../ogc-schemas').GML_3_1_1;
var EOP_1_0 = require('../../../ogc-schemas').EOP_1_0;
var EOP_OPT_1_0 = require('../../../ogc-schemas').EOP_OPT_1_0;

var roundtrips = require('../../roundtrip').roundtrips;

var mappings = [XLink_1_0, SMIL_2_0, SMIL_2_0_Language, GML_3_1_1, EOP_1_0, EOP_OPT_1_0];

module.exports = {
	"Context": function(test) {
		var context = new Jsonix.Context(mappings);
		test.ok(true);
		test.done();
        },
	"Roundtrips" : roundtrips(mappings, __dirname)
};
