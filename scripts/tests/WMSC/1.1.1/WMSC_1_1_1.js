var Jsonix = require('jsonix').Jsonix;
var WMSC_1_1_1 = require('../../../ogc-schemas').WMSC_1_1_1;

var roundtrips = require('../../roundtrip').roundtrips;
var mappings = [WMSC_1_1_1];
module.exports = {
	"Context": function(test) {
		var context = new Jsonix.Context(mappings);
		test.done();
        },
	"Roundtrips" : roundtrips(mappings, __dirname)
};