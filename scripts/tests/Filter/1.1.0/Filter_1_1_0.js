var Jsonix = require('jsonix').Jsonix;

var XLink_1_0 = require('w3c-schemas').XLink_1_0;
var SMIL_2_0 = require('../../../ogc-schemas').SMIL_2_0;
var SMIL_2_0_Language = require('../../../ogc-schemas').SMIL_2_0_Language;
var GML_3_1_1 = require('../../../ogc-schemas').GML_3_1_1;
var Filter_1_1_0 = require('../../../ogc-schemas').Filter_1_1_0;

var roundtrips = require('../../roundtrip').roundtrips;
var roundtrip = require('../../roundtrip').roundtrip;

var mappings = [XLink_1_0, SMIL_2_0, SMIL_2_0_Language, GML_3_1_1, Filter_1_1_0];

module.exports = {
	"Context": function(test) {
		var context = new Jsonix.Context(mappings);
		test.done();
        },
        "Equals01.xml": function(test) {
		var context = new Jsonix.Context(mappings);
		var unmarshaller = context.createUnmarshaller();
		unmarshaller.unmarshalFile(__dirname + "/Equals01.xml", function (result)
		{
			test.equal('test1', result.value.spatialOps.value.propertyName[0].content[0]);
			test.equal('test2', result.value.spatialOps.value.propertyName[1].content[0]);
			test.done();
		});
        }
};
