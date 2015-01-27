var Jsonix = require('jsonix').Jsonix;
var XLink_1_0 = require('../../../lib/CSW_2_0_2_Full').XLink_1_0;
var OWS_1_0_0 = require('../../../lib/CSW_2_0_2_Full').OWS_1_0_0;
var GML_3_1_1 = require('../../../lib/CSW_2_0_2_Full').GML_3_1_1;
var Filter_1_1_0 = require('../../../lib/CSW_2_0_2_Full').Filter_1_1_0;
var DC_1_1 = require('../../../lib/CSW_2_0_2_Full').DC_1_1;
var DCT = require('../../../lib/CSW_2_0_2_Full').DCT;
var CSW_2_0_2 = require('../../../lib/CSW_2_0_2_Full').CSW_2_0_2;

var roundtrip = require('../../roundtrip').roundtrip;
var roundtrips = require('../../roundtrip').roundtrips;

var mappings = [OWS_1_0_0, DC_1_1, DCT, XLink_1_0, GML_3_1_1, Filter_1_1_0, CSW_2_0_2];

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
		"Clause_6.3.3_Example01_Response.xml" : function(test) {roundtrip(test, mappings, "tests/CSW/2.0.2/Clause_6.3.3_Example01_Response.xml");},
		"GetRecords.xml" : function(test) {roundtrip(test, mappings, "tests/CSW/2.0.2/GetRecords.xml");},
		"GetRecordsResponse.xml" : function(test) {roundtrip(test, mappings, "tests/CSW/2.0.2/GetRecordsResponse.xml");}
	}
	//"Roundtrips" : roundtrips(mappings, __dirname)

};