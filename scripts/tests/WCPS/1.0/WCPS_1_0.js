var Jsonix = require('jsonix').Jsonix;
var XLink_1_0 = require('w3c-schemas').XLink_1_0;
var SMIL_2_0 = require('../../../ogc-schemas').SMIL_2_0;
var SMIL_2_0_Language = require('../../../ogc-schemas').SMIL_2_0_Language;
var GML_3_1_1 = require('../../../ogc-schemas').GML_3_1_1;
var OWS_1_1_0 = require('../../../ogc-schemas').OWS_1_1_0;
var WCS_1_1 = require('../../../ogc-schemas').WCS_1_1;
var WCPS_1_0 = require('../../../ogc-schemas').WCPS_1_0;

var roundtrips = require('../../roundtrip').roundtrips;

var roundtrip = require('../../roundtrip').roundtrip;

var mappings = [XLink_1_0, SMIL_2_0, SMIL_2_0_Language, GML_3_1_1, OWS_1_1_0, WCS_1_1, WCPS_1_0];

module.exports = {
	"Context": function(test) {
		var context = new Jsonix.Context(mappings);
		test.done();
        },
	"Roundtrips" : roundtrips(mappings, __dirname)
};
