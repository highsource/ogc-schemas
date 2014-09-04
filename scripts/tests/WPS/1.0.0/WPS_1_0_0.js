var Jsonix = require('jsonix').Jsonix;
var XLink_1_0 = require('w3c-schemas').XLink_1_0;
var OWS_1_1_0 = require('../../../ogc-schemas').OWS_1_1_0;
var WPS_1_0_0 = require('../../../ogc-schemas').WPS_1_0_0;

var roundtrip = require('../../roundtrip').roundtrip;
var mappings = [XLink_1_0, OWS_1_1_0, WPS_1_0_0];
module.exports = {
	"Context": function(test) {
		var context = new Jsonix.Context(mappings);
		test.done();
        },
	"Example" : function(test) {
		var context =  new Jsonix.Context([XLink_1_0, OWS_1_1_0, WPS_1_0_0]);
		var unmarshaller = context.createUnmarshaller();
		unmarshaller.unmarshalFile("tests/WPS/1.0.0/Execute-01.xml", function(result) {
			test.equal("geom", result.value.dataInputs.input[0].title.value);
			test.done();
		});
	},
	"Roundtrips" : {
		"Execute-01.xml" : function(test) {roundtrip(test, mappings, "tests/WPS/1.0.0/Execute-01.xml");}
	}
};