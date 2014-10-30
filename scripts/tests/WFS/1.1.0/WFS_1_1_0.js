var Jsonix = require('jsonix').Jsonix;
var XLink_1_0 = require('w3c-schemas').XLink_1_0;
var OWS_1_0_0 = require('../../../ogc-schemas').OWS_1_0_0;
var Filter_1_1_0 = require('../../../ogc-schemas').Filter_1_1_0;
var GML_3_1_1 = require('../../../ogc-schemas').GML_3_1_1;
var SMIL_2_0 = require('../../../ogc-schemas').SMIL_2_0;
var SMIL_2_0_Language = require('../../../ogc-schemas').SMIL_2_0_Language;
var WFS_1_1_0 = require('../../../ogc-schemas').WFS_1_1_0;

var roundtrip = require('../../roundtrip').roundtrip;
var mappings = [XLink_1_0, OWS_1_0_0, Filter_1_1_0, GML_3_1_1, SMIL_2_0, SMIL_2_0_Language, WFS_1_1_0];
module.exports = {
	"Context": function(test) {
		var context = new Jsonix.Context(mappings);
		test.done();
        },
	"Example" : function(test) {
		var context =  new Jsonix.Context([XLink_1_0, OWS_1_0_0, Filter_1_1_0, GML_3_1_1, SMIL_2_0, SMIL_2_0_Language, WFS_1_1_0]);
		var unmarshaller = context.createUnmarshaller();
		unmarshaller.unmarshalFile("tests/WFS/1.1.0/GetCapabilities-01.xml", function(result) {
			test.equal("DOCS", result.value.featureTypeList.featureType[0].title);
			test.equal('{http://www.sfmta.com/}asbuilt:DOCS', result.value.featureTypeList.featureType[0].name.string);
			test.done();
		});
	},
	"Unmarshal" : {
		"GetFeature-01.xml" : function(test) {
			var context =  new Jsonix.Context([XLink_1_0, OWS_1_0_0, Filter_1_1_0, GML_3_1_1, SMIL_2_0, SMIL_2_0_Language, WFS_1_1_0]);
			var unmarshaller = context.createUnmarshaller();
			unmarshaller.unmarshalFile("tests/WFS/1.1.0/GetFeature-01.xml", function(result) {
				console.log("Result:");
				console.log(result);
				test.done();
			});
		}
	},
	"Roundtrips" : {
		"GetCapabilities-01.xml" : function(test) {roundtrip(test, mappings, "tests/WFS/1.1.0/GetCapabilities-01.xml");}
	}
};