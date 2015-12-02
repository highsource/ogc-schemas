var Jsonix = require('jsonix').Jsonix;
var XLink_1_0 = require('w3c-schemas').XLink_1_0;
var GML_3_2_1 = require('../../../ogc-schemas').GML_3_2_1;
var GML_CE_3_3 = require('../../../ogc-schemas').GML_CE_3_3;
var GML_EXR_3_3 = require('../../../ogc-schemas').GML_EXR_3_3;
var GML_LR_3_3 = require('../../../ogc-schemas').GML_LR_3_3;
var GML_LRO_3_3 = require('../../../ogc-schemas').GML_LRO_3_3;
var GML_LROV_3_3 = require('../../../ogc-schemas').GML_LROV_3_3;
var GML_LRTR_3_3 = require('../../../ogc-schemas').GML_LRTR_3_3;
var GML_RGRID_3_3 = require('../../../ogc-schemas').GML_RGRID_3_3;
var GML_TIN_3_3 = require('../../../ogc-schemas').GML_TIN_3_3;
var GML_XBT_3_3 = require('../../../ogc-schemas').GML_XBT_3_3;

var roundtrips = require('../../roundtrip').roundtrips;

var roundtrip = require('../../roundtrip').roundtrip;
var mappings = [XLink_1_0, GML_3_2_1, GML_CE_3_3, GML_EXR_3_3, GML_LR_3_3, GML_LRO_3_3, GML_LROV_3_3, GML_LRTR_3_3, GML_RGRID_3_3, GML_TIN_3_3, GML_XBT_3_3];
module.exports = {
	"Context": function(test) {
		var context = new Jsonix.Context(mappings);
		test.done();
        },
	"Roundtrips" : roundtrips(mappings, __dirname)
};
