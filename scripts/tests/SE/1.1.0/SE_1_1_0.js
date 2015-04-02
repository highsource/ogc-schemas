var Jsonix = require('jsonix').Jsonix;
var XLink_1_0 = require('w3c-schemas').XLink_1_0;
var SMIL_2_0 = require('../../../ogc-schemas').SMIL_2_0;
var SMIL_2_0_Language = require('../../../ogc-schemas').SMIL_2_0_Language;
var GML_3_1_1 = require('../../../ogc-schemas').GML_3_1_1;
var Filter_1_1_0 = require('../../../ogc-schemas').Filter_1_1_0;
var SE_1_1_0 = require('../../../ogc-schemas').SE_1_1_0;

var roundtripsWithContext = require('../../roundtrip').roundtripsWithContext;

var mappings = [XLink_1_0, SMIL_2_0, SMIL_2_0_Language, GML_3_1_1, Filter_1_1_0, SE_1_1_0];

var context = new Jsonix.Context(mappings, {
	namespacePrefixes : {
		'http://www.opengis.net/se' : '',
		'http://www.opengis.net/ogc' : 'ogc'
	}
});

module.exports = {
	"Context": function(test) {
		var context = new Jsonix.Context(mappings);
		test.done();
        },
	"Roundtrips" : roundtripsWithContext(context, __dirname)
};