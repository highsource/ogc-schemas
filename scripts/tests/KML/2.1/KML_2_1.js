var Jsonix = require('jsonix').Jsonix;
var KML_2_1 = require('../../../ogc-schemas').KML_2_1;

var mappings = [KML_2_1];

var roundtripsWithContext = require('../../roundtrip').roundtripsWithContext;

var context = new Jsonix.Context(mappings, {
	namespacePrefixes : {
		'http://earth.google.com/kml/2.1' : ''
	}
});


module.exports = {
	"Context": function(test) {
		var context = new Jsonix.Context(mappings);
		test.done();
        },
	"Roundtrips" : roundtripsWithContext(context, __dirname)
};