var Jsonix = require('jsonix').Jsonix;
var XLink_1_0 = require('w3c-schemas').XLink_1_0;
var GML_3_2_1 = require('../../../ogc-schemas').GML_3_2_1;
var SWE_2_0 = require('../../../ogc-schemas').SWE_2_0;
var GMLCOV_1_0 = require('../../../ogc-schemas').GMLCOV_1_0;
var GMLJP2_2_0 = require('../../../ogc-schemas').GMLJP2_2_0;

var roundtripsWithContext = require('../../roundtrip').roundtripsWithContext;

var mappings = [XLink_1_0, GML_3_2_1, SWE_2_0, GMLCOV_1_0, GMLJP2_2_0];

var context = new Jsonix.Context(mappings, {
	namespacePrefixes : {
		'http://www.opengis.net/gml/3.2' : ''
	}
});

module.exports = {
	"Context": function(test) {
		var ctx = new Jsonix.Context(mappings);
		test.done();
        },
	"Roundtrips" : roundtripsWithContext(context, __dirname)
};
