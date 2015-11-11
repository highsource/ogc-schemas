var Jsonix = require('jsonix').Jsonix;
var Atom_1_0 = require('w3c-schemas').Atom_1_0;
var xAL_2_0 = require('../../../ogc-schemas').xAL_2_0;
var KML_2_3 = require('../../../ogc-schemas').KML_2_3;

var mappings = [Atom_1_0, xAL_2_0, KML_2_3];

var roundtripsWithContext = require('../../roundtrip').roundtripsWithContext;

var context = new Jsonix.Context(mappings, {
	namespacePrefixes : {
		'http://www.opengis.net/kml/2.2' : 'kml'
	}
});


module.exports = {
	"Context": function(test) {
		var context = new Jsonix.Context(mappings);
		test.done();
        },
	"Roundtrips" : roundtripsWithContext(context, __dirname)
};