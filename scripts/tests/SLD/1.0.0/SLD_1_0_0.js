var Jsonix = require('jsonix').Jsonix;
var XLink_1_0 = require('w3c-schemas').XLink_1_0;
var Filter_1_0_0 = require('../../../ogc-schemas').Filter_1_0_0;
var GML_2_1_2 = require('../../../ogc-schemas').GML_2_1_2;
var SLD_1_0_0 = require('../../../ogc-schemas').SLD_1_0_0;

var roundtrip = require('../../roundtrip').roundtrip;
var mappings = [XLink_1_0, Filter_1_0_0, GML_2_1_2, SLD_1_0_0];
module.exports = {
	"Context": function(test) {
		var context = new Jsonix.Context(mappings);
		test.done();
        },
	"Example" : function(test) {
		var context =  new Jsonix.Context([XLink_1_0, Filter_1_0_0, GML_2_1_2, SLD_1_0_0]);
		var unmarshaller = context.createUnmarshaller();
		unmarshaller.unmarshalFile("tests/SLD/1.0.0/example-sld.xml", function(result) {
			test.equal("GEOSYM", result.value.namedLayerOrUserLayer[0].namedStyleOrUserStyle[0].name);
			test.done();
		});
	},
	"Roundtrips" : {
		"example-sld.xml" : function(test) {roundtrip(test, mappings, "tests/SLD/1.0.0/example-sld.xml");}
	}
};