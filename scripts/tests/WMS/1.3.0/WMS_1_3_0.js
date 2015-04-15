var Jsonix = require('jsonix').Jsonix;
var XLink_1_0 = require('w3c-schemas').XLink_1_0;
var WMS_1_3_0 = require('../../../ogc-schemas').WMS_1_3_0;
var WMS_1_3_0_Exceptions = require('../../../ogc-schemas').WMS_1_3_0_Exceptions;

var roundtrip = require('../../roundtrip').roundtrip;
var mappings = [XLink_1_0, WMS_1_3_0, WMS_1_3_0_Exceptions];
module.exports = {
	"Context": function(test) {
		var context = new Jsonix.Context(mappings);
		test.done();
        },
	"Roundtrips" : {
		"capabilities_1_3_0.xml" : function(test) {roundtrip(test, mappings, "tests/WMS/1.3.0/capabilities_1_3_0.xml");},
		"exceptions_1_3_0.xml" : function(test) {roundtrip(test, mappings, "tests/WMS/1.3.0/exceptions_1_3_0.xml");}
	}
};