var Jsonix = require('jsonix').Jsonix;
var XLink_1_0 = require('w3c-schemas').XLink_1_0;
var OWS_1_0_0 = require('../../../ogc-schemas').OWS_1_0_0;
var Filter_1_0_0 = require('../../../ogc-schemas').Filter_1_0_0;
var GML_2_1_2 = require('../../../ogc-schemas').GML_2_1_2;
var SLD_1_0_0 = require('../../../ogc-schemas').SLD_1_0_0;
var OWC_0_3_1 = require('../../../ogc-schemas').OWC_0_3_1;

var roundtrips = require('../../roundtrip').roundtrips;

var roundtrip = require('../../roundtrip').roundtrip;
var mappings = [XLink_1_0, OWS_1_0_0, Filter_1_0_0, GML_2_1_2, SLD_1_0_0, OWC_0_3_1];
module.exports = {
	"Context": function(test) {
		var context = new Jsonix.Context(mappings);
		test.done();
        },
	"Example" : function(test) {
		var context =  new Jsonix.Context([XLink_1_0, OWS_1_0_0, Filter_1_0_0, GML_2_1_2, SLD_1_0_0, OWC_0_3_1]);
		var unmarshaller = context.createUnmarshaller();
		unmarshaller.unmarshalFile("tests/OWC/0.3.1/example-owsContext.xml", function(result) {
			test.equal("http://sigma.openplans.org:8080/geoserver/wms?SERVICE=WMS", result.value.resourceList.layer[0].server[0].onlineResource[0].href);
			marshaller = context.createMarshaller();
			console.log(marshaller.marshalString(result));
			test.done();
		});
	},
	"ExampleInline" : function(test) {
		var context =  new Jsonix.Context([XLink_1_0, OWS_1_0_0, Filter_1_0_0, GML_2_1_2, SLD_1_0_0, OWC_0_3_1]);
		var unmarshaller = context.createUnmarshaller();
		unmarshaller.unmarshalFile("tests/OWC/0.3.1/example-owsContext_inline.xmltodo", function(result) {
			test.equal(result.value.resourceList.layer[1].document[0].tagName, 'kml:Document');
			test.done();
		});
	},
	"ExampleKML" : function(test) {
		var context =  new Jsonix.Context([XLink_1_0, OWS_1_0_0, Filter_1_0_0, GML_2_1_2, SLD_1_0_0, OWC_0_3_1]);
		var unmarshaller = context.createUnmarshaller();
		unmarshaller.unmarshalFile("tests/OWC/0.3.1/example-owsContext_kml.xml", function(result) {
			test.equal("foo/sundials.kml", result.value.resourceList.layer[1].server[0].onlineResource[0].href);
			test.done();
		});
	},
	"Roundtrips" : roundtrips(mappings, __dirname)
};
