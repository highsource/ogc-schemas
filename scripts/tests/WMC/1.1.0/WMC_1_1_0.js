var Jsonix = require('jsonix').Jsonix;
var XLink_1_0 = require('w3c-schemas').XLink_1_0;
var Filter_1_0_0 = require('../../../ogc-schemas').Filter_1_0_0;
var GML_2_1_2 = require('../../../ogc-schemas').GML_2_1_2;
var SLD_1_0_0 = require('../../../ogc-schemas').SLD_1_0_0;
var WMC_1_0_0 = require('../../../ogc-schemas').WMC_1_0_0;

var roundtrips = require('../../roundtrip').roundtrips;

var mappings = [XLink_1_0, Filter_1_0_0, GML_2_1_2, SLD_1_0_0, WMC_1_0_0];

module.exports = {
	"Context": function(test) {
		var context = new Jsonix.Context(mappings);
		test.done();
        },
	"Roundtrips" : roundtrips(mappings, __dirname)
};