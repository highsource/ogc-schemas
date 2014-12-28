var Jsonix = require('jsonix').Jsonix;
var XLink_1_0 = require('w3c-schemas').XLink_1_0;
var GML_3_2_1 = require('../../../ogc-schemas').GML_3_2_1;
var SWE_2_0 = require('../../../ogc-schemas').SWE_2_0;
var ISO19139_GMD_20070417 = require('../../../ogc-schemas').ISO19139_GMD_20070417;
var ISO19139_GCO_20070417 = require('../../../ogc-schemas').ISO19139_GCO_20070417;
var ISO19139_GSS_20070417 = require('../../../ogc-schemas').ISO19139_GSS_20070417;
var ISO19139_GTS_20070417 = require('../../../ogc-schemas').ISO19139_GTS_20070417;
var ISO19139_GSR_20070417 = require('../../../ogc-schemas').ISO19139_GSR_20070417;
var SensorML_2_0 = require('../../../ogc-schemas').SensorML_2_0;

var roundtrips = require('../../roundtrip').roundtrips;

var mappings = [XLink_1_0, GML_3_2_1, SWE_2_0, ISO19139_GMD_20070417, ISO19139_GCO_20070417, ISO19139_GSS_20070417, ISO19139_GTS_20070417, ISO19139_GSR_20070417, SensorML_2_0];

module.exports = {
	"Context": function(test) {
		var context = new Jsonix.Context(mappings);
		test.done();
        },
/*	"Example" : function(test) {
		var context =  new Jsonix.Context(mappings);
		var unmarshaller = context.createUnmarshaller();
		unmarshaller.unmarshalFile(__dirname +"/SML-DescribeSensor-Network.xml", function(result) {
			test.equal(32.7, result.value.member[0].process.value.boundedBy.envelope.value.lowerCorner.value[0]);
			test.done();
		});
	},*/
	"Roundtrips" : roundtrips(mappings, __dirname)
};