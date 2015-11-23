var Jsonix = require('jsonix').Jsonix;
var XLink_1_0 = require('w3c-schemas').XLink_1_0;
var GML_3_2_1 = require('../../../ogc-schemas').GML_3_2_1;
var SWE_2_0 = require('../../../ogc-schemas').SWE_2_0;
var OWS_1_1_0 = require('../../../ogc-schemas').OWS_1_1_0;
var OWS_2_0 = require('../../../ogc-schemas').OWS_2_0;
var WSN_T_1 = require('../../../ogc-schemas').WSN_T_1;
var WS_Addr_1_0_Core = require('w3c-schemas').WS_Addr_1_0_Core;
var SWES_2_0 = require('../../../ogc-schemas').SWES_2_0;
var OSEO_1_0 = require('../../../ogc-schemas').OSEO_1_0;

var roundtripsWithContext = require('../../roundtrip').roundtripsWithContext;

var mappings = [XLink_1_0, GML_3_2_1, SWE_2_0, OWS_1_1_0, OWS_2_0, WS_Addr_1_0_Core, WSN_T_1, SWES_2_0, OSEO_1_0];

var context = new Jsonix.Context(mappings, {
	namespacePrefixes : {
		'http://www.opengis.net/oseo/1.0' :  ''
	}
});



module.exports = {
	"Context": function(test) {
		new Jsonix.Context(mappings);
		test.done();
        },
	"Roundtrips" : roundtripsWithContext(context, __dirname)
};
