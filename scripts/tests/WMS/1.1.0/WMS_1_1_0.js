var Jsonix = require('jsonix').Jsonix;
var WMS_1_1_0 = require('../../../ogc-schemas').WMS_1_1_0;

var roundtrip = require('../../roundtrip').roundtrip;
var mappings = [WMS_1_1_0];
module.exports = {
	"Context": function(test) {
		var context = new Jsonix.Context(mappings);
		test.done();
        },
	"Roundtrips" : {
		"capabilities_1_1_0.xml" : function(test) {roundtrip(test, mappings, "tests/WMS/1.1.0/capabilities_1_1_0.xml");},
		"exception_1_1_0.xml" : function(test) {roundtrip(test, mappings, "tests/WMS/1.1.0/exception_1_1_0.xml");}
	}
};