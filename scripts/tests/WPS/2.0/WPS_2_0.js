var Jsonix = require('jsonix').Jsonix;
var XLink_1_0 = require('w3c-schemas').XLink_1_0;
var OWS_2_0 = require('../../../ogc-schemas').OWS_2_0;
var WPS_2_0 = require('../../../ogc-schemas').WPS_2_0;
/*var Filter_1_1_0 = require('../../../ogc-schemas').Filter_1_1_0;
var OWS_1_0_0 = require('../../../ogc-schemas').OWS_1_0_0;
var SMIL_2_0 = require('../../../ogc-schemas').SMIL_2_0;
var SMIL_2_0_Language = require('../../../ogc-schemas').SMIL_2_0_Language;
var GML_3_1_1 = require('../../../ogc-schemas').GML_3_1_1;
var WFS_1_1_0 = require('../../../ogc-schemas').WFS_1_1_0;*/

var roundtrips = require('../../roundtrip').roundtrips;

var mappings = [XLink_1_0, OWS_2_0, WPS_2_0];

module.exports = {
	"Context": function(test) {
		var context = new Jsonix.Context(mappings);
		test.done();
        },
	"Roundtrips" : roundtrips(mappings, __dirname)
};
