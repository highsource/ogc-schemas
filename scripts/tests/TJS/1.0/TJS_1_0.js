var Jsonix = require('jsonix').Jsonix;
var XLink_1_0 = require('w3c-schemas').XLink_1_0;
var OWS_1_1_0 = require('../../../ogc-schemas').OWS_1_1_0;
var TJS_1_0 = require('../../../ogc-schemas').TJS_1_0;

var roundtripsWithContext = require('../../roundtrip').roundtripsWithContext;

var mappings = [XLink_1_0, OWS_1_1_0, TJS_1_0];

var context = new Jsonix.Context(mappings, {
	namespacePrefixes : {
		'http://www.opengis.net/tjs/1.0' : ''
	}
});

module.exports = {
	"Context": function(test) {
		new Jsonix.Context(mappings);
		test.done();
        },
	"Roundtrips" : roundtripsWithContext(context, __dirname)
};