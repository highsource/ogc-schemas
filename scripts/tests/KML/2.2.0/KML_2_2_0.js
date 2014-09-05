var Jsonix = require('jsonix').Jsonix;
var Atom_1_0 = require('../../../ogc-schemas').Atom_1_0;
var xAL_2_0 = require('../../../ogc-schemas').xAL_2_0;
var KML_2_2_0 = require('../../../ogc-schemas').KML_2_2_0;

var roundtrip = require('../../roundtrip').roundtrip;
var mappings = [Atom_1_0, xAL_2_0, KML_2_2_0];
module.exports = {
	"Context": function(test) {
		var context = new Jsonix.Context(mappings);
		test.done();
        },
	"Example" : function(test) {
		var context =  new Jsonix.Context([Atom_1_0, xAL_2_0, KML_2_2_0]);
		var unmarshaller = context.createUnmarshaller();
		unmarshaller.unmarshalFile("tests/KML/2.2.0/states.kml", function(result) {
			test.equal("DOCS", result.value.featureTypeList.featureType[0].title);
			test.done();
		});
	},
	"Roundtrips" : {
		"states.kml" : function(test) {roundtrip(test, mappings, "tests/KML/2.2.0/states.kml");}
	}
};