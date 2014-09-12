var Jsonix = require('jsonix').Jsonix;
var XLink_1_0 = require('w3c-schemas').XLink_1_0;
var OWS_1_1_0 = require('../../../ogc-schemas').OWS_1_1_0;
var Filter_2_0 = require('../../../ogc-schemas').Filter_2_0;
var WFS_2_0 = require('../../../ogc-schemas').WFS_2_0;

var roundtrips = require('../../roundtrip').roundtrips;
var mappings = [XLink_1_0, OWS_1_1_0, Filter_2_0, WFS_2_0];
module.exports = {
	"Context": function(test) {
		var context = new Jsonix.Context(mappings);
		test.done();
        },
	"Example" : function(test) {
		var context =  new Jsonix.Context(mappings);
		var unmarshaller = context.createUnmarshaller();
		unmarshaller.unmarshalFile("tests/WFS/2.0/GetFeature-01.xml", function(result) {
			test.equal('opengeo:restricted', result.value.abstractQueryExpression[0].value.typeNames[0]);
			test.done();
		});
	},
	"Roundtrips" : roundtrips(mappings, __dirname),
	"QName" : function(test) {
		var context = new Jsonix.Context(mappings, {
			namespacePrefixes : { 'http://opengeo.org' : 'opengeo' }
		});
		var marshaller = context.createMarshaller();
		var data = {
			service : 'WFS',
			version : '1.0.0',
			outputFormat : 'GML2',
			abstractQueryExpression : [
				{
					// TODO this should be reduceable to 'Query'
					name : { ns : 'http://www.opengis.net/wfs/2.0', lp : 'Query', p : 'wfs' },
					value : { typeNames: [ 'opengeo:restricted' ] }
				}
			]
		};
		var result = { name : { ns : 'http://www.opengis.net/wfs/2.0', lp : 'GetFeature', p : 'wfs' } , value : data };
		// TODO Will work in 2.1.1
//		test.ok(marshaller.marshalString(result).indexOf('xmlns:opengeo="http://opengeo.org"') >= 0);
		test.done();
	}

};