var Jsonix = require('jsonix').Jsonix;
var XLink_1_0 = require('w3c-schemas').XLink_1_0;
var GML_3_2_0 = require('../../../ogc-schemas').GML_3_2_0;

var roundtrips = require('../../roundtrip').roundtrips;

var roundtrip = require('../../roundtrip').roundtrip;
var mappings = [XLink_1_0, GML_3_2_0];
module.exports = {
	"Context": function(test) {
		var context = new Jsonix.Context(mappings);
		test.done();
        },
	"Roundtrips" : roundtrips(mappings, __dirname)
};
