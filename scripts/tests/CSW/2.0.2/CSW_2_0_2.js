var Jsonix = require('jsonix').Jsonix;
var XLink_1_0 = require('w3c-schemas').XLink_1_0;
var OWS_1_0_0 = require('../../../ogc-schemas').OWS_1_0_0;
var Filter_1_1_0 = require('../../../ogc-schemas').Filter_1_1_0;
var SMIL_2_0 = require('../../../ogc-schemas').SMIL_2_0;
var SMIL_2_0_Language = require('../../../ogc-schemas').SMIL_2_0_Language;
var GML_3_1_1 = require('../../../ogc-schemas').GML_3_1_1;
var DC_1_1 = require('../../../ogc-schemas').DC_1_1;
var DCT = require('../../../ogc-schemas').DCT;
var CSW_2_0_2 = require('../../../ogc-schemas').CSW_2_0_2;

var roundtrip = require('../../roundtrip').roundtrip;

var mappings = [XLink_1_0, OWS_1_0_0, DC_1_1, DCT, CSW_2_0_2];

module.exports = {
	"Context": function(test) {
		var context = new Jsonix.Context(mappings);
		test.done();
        },
	"Example" : function(test) {
		var context =  new Jsonix.Context(mappings);
		var unmarshaller = context.createUnmarshaller();
		unmarshaller.unmarshalFile("tests/CSW/2.0.2/Clause_6.3.3_Example01_Response.xml", function(result) {
			test.equal(-108.44, result.value.boundingBox[0].value.lowerCorner[0]);
			test.done();
		});
	},
	"Roundtrips" : {
		"Clause_6.3.3_Example01_Response.xml" : function(test) {roundtrip(test, mappings, "tests/CSW/2.0.2/Clause_6.3.3_Example01_Response.xml");}
	}
};