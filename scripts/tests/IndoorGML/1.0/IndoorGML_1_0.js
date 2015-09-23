var Jsonix = require('jsonix').Jsonix;
var XLink_1_0 = require('w3c-schemas').XLink_1_0;
var GML_3_2_1 = require('../../../ogc-schemas').GML_3_2_1;
var IndoorGML_Core_1_0 = require('../../../ogc-schemas').IndoorGML_Core_1_0;
var IndoorGML_Navigation_1_0 = require('../../../ogc-schemas').IndoorGML_Navigation_1_0;

var roundtripsWithContext = require('../../roundtrip').roundtripsWithContext;

var mappings = [XLink_1_0, GML_3_2_1, IndoorGML_Core_1_0, IndoorGML_Navigation_1_0];

var context = new Jsonix.Context(mappings, {
	namespacePrefixes : {
		'http://www.opengis.net/gml/3.2' : 'gml',
		'http://www.w3.org/1999/xlink' : 'xlink',
		'http://www.opengis.net/indoorgml/1.0/core' : ''
	}
});

module.exports = {
	"Roundtrips" : roundtripsWithContext(context, __dirname)
};