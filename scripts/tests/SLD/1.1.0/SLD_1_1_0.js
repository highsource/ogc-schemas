var Jsonix = require('jsonix').Jsonix;
var XLink_1_0 = require('w3c-schemas').XLink_1_0;
var OWS_1_0_0 = require('../../../ogc-schemas').OWS_1_0_0;
var SMIL_2_0 = require('../../../ogc-schemas').SMIL_2_0;
var SMIL_2_0_Language = require('../../../ogc-schemas').SMIL_2_0_Language;
var GML_3_1_1 = require('../../../ogc-schemas').GML_3_1_1;
var Filter_1_1_0 = require('../../../ogc-schemas').Filter_1_1_0;
var SE_1_1_0 = require('../../../ogc-schemas').SE_1_1_0;
var WMS_1_3_0 = require('../../../ogc-schemas').WMS_1_3_0;
var SLD_1_1_0 = require('../../../ogc-schemas').SLD_1_1_0;

var roundtripsWithContext = require('../../roundtrip').roundtripsWithContext;

var mappings = [XLink_1_0, OWS_1_0_0, SMIL_2_0, SMIL_2_0_Language, GML_3_1_1, Filter_1_1_0, SE_1_1_0, WMS_1_3_0, SLD_1_1_0];

var context = new Jsonix.Context(mappings, {
	namespacePrefixes : {
		'http://www.opengis.net/sld' : '',
//		'http://www.opengis.net/ogc' : 'ogc'
	}
});

module.exports = {
	"Context": function(test) {
		var context = new Jsonix.Context(mappings);
		test.done();
        },
	"Roundtrips" : roundtripsWithContext(context, __dirname)
};
