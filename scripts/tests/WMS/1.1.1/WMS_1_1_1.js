var Jsonix = require('jsonix').Jsonix;
var WMS_1_1_1 = require('../../../ogc-schemas').WMS_1_1_1;

var roundtrip = require('../../roundtrip').roundtrip;
var mappings = [WMS_1_1_1];
module.exports = {
	"Context": function(test) {
		var context = new Jsonix.Context(mappings);
		test.done();
        },
	"Roundtrips" : {
		"capabilities_1_1_1.xml" : function(test) {roundtrip(test, mappings, "tests/WMS/1.1.1/capabilities_1_1_1.xml");},
		"exceptions_1_1_1.xml" : function(test) {roundtrip(test, mappings, "tests/WMS/1.1.1/exception_1_1_1.xml");}
	}
};