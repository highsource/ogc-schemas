var Jsonix = require('jsonix').Jsonix;
var XLink_1_0 = require('w3c-schemas').XLink_1_0;
var SMIL_2_0 = require('../../../ogc-schemas').SMIL_2_0;
var SMIL_2_0_Language = require('../../../ogc-schemas').SMIL_2_0_Language;
var GML_3_1_1 = require('../../../ogc-schemas').GML_3_1_1;
var IC_2_0 = require('../../../ogc-schemas').IC_2_0;
var SWE_1_0_1 = require('../../../ogc-schemas').SWE_1_0_1;
var SensorML_1_0_1 = require('../../../ogc-schemas').SensorML_1_0_1;

var roundtrips = require('../../roundtrip').roundtrips;

var mappings = [XLink_1_0, SMIL_2_0, SMIL_2_0_Language, GML_3_1_1, IC_2_0, SWE_1_0_1, SensorML_1_0_1];

module.exports = {
	"Context": function(test) {
		var context = new Jsonix.Context(mappings);
		test.done();
        },
	"Example" : function(test) {
		var context =  new Jsonix.Context(mappings);
		var unmarshaller = context.createUnmarshaller();
		unmarshaller.unmarshalFile(__dirname +"/SML-DescribeSensor-Network.xml", function(result) {
			test.equal(32.7, result.value.member[0].process.value.boundedBy.envelope.value.lowerCorner.value[0]);
			test.done();
		});
	},
//	"Roundtrips" : {
//		"SML-DescribeSensor-Network.xml" : function(test) {roundtrip(test, mappings, "tests/SensorML/1.0.1/SML-DescribeSensor-Network.xml");},
//		"SML-DescribeSensor-Sensor.xml" : function(test) {roundtrip(test, mappings, "tests/SensorML/1.0.1/SML-DescribeSensor-Sensor.xml");},
//		"SML-DescribeSensor-Station.xml" : function(test) {roundtrip(test, mappings, "tests/SensorML/1.0.1/SML-DescribeSensor-Station.xml");}
//	}
	"Roundtrips" : roundtrips(mappings, __dirname)
};