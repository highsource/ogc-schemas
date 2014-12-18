var Jsonix = require('jsonix').Jsonix;
var XLink_1_0 = require('w3c-schemas').XLink_1_0;
var OWS_1_1_0 = require('../../../ogc-schemas').OWS_1_1_0;
var WPS_1_0_0 = require('../../../ogc-schemas').WPS_1_0_0;
var Filter_1_1_0 = require('../../../ogc-schemas').Filter_1_1_0;
var OWS_1_0_0 = require('../../../ogc-schemas').OWS_1_0_0;
var SMIL_2_0 = require('../../../ogc-schemas').SMIL_2_0;
var SMIL_2_0_Language = require('../../../ogc-schemas').SMIL_2_0_Language;
var GML_3_1_1 = require('../../../ogc-schemas').GML_3_1_1;
var WFS_1_1_0 = require('../../../ogc-schemas').WFS_1_1_0;

var roundtrip = require('../../roundtrip').roundtrip;
var mappings = [XLink_1_0, OWS_1_1_0, WPS_1_0_0];
module.exports = {
	"Context": function(test) {
		var context = new Jsonix.Context(mappings);
		test.done();
        },
	"Example" : function(test) {
		var context =  new Jsonix.Context([XLink_1_0, OWS_1_1_0, WPS_1_0_0]);
		var unmarshaller = context.createUnmarshaller();
		unmarshaller.unmarshalFile("tests/WPS/1.0.0/Execute-01.xml", function(result) {
			test.equal("geom", result.value.dataInputs.input[0].title.value);
			test.done();
		});
	},
        "MarshalWithQName": function(test) {
                var context = new Jsonix.Context([
                    XLink_1_0,
                    OWS_1_1_0,
                    Filter_1_1_0,
                    OWS_1_0_0,
                    SMIL_2_0,
                    SMIL_2_0_Language,
                    GML_3_1_1,
                    WFS_1_1_0,
                    WPS_1_0_0
                ], {
                    namespacePrefixes : {
                        'http://www.w3.org/1999/xlink' : 'xlink',
                        'http://www.opengis.net/wps/1.0.0' : 'wps',
                        'http://www.opengis.net/ows/1.1' : 'ows',
                        'http://www.opengis.net/wfs': 'wfs',
                        'http://www.opengeospatial.net/cite': 'cite'
                        }
                    }
                );
                var data = {
                              "name": {
                                "localPart": "Execute",
                                "namespaceURI": "http://www.opengis.net/wps/1.0.0"
                              },
                              "value": {
                                "service": "WPS",
                                "version": "1.0.0",
                                "identifier": {
                                  "value": "vec:FeatureClassStats"
                                },
                                "responseForm": {
                                  "rawDataOutput": {
                                    "identifier": {
                                      "value": "results"
                                    }
                                  }
                                },
                                "dataInputs": {
                                  "input": [
                                    {
                                      "identifier": {
                                        "value": "features"
                                      },
                                      "reference": {
                                        "method": "POST",
                                        "mimeType": "text/xml",
                                        "href": "http://geoserver/wfs",
                                        "body": {
                                          "content": [
                                            {
                                              "name": {
                                                "namespaceURI": "http://www.opengis.net/wfs",
                                                "localPart": "GetFeature"
                                              },
                                              "value": {
                                                "outputFormat": "GML2",
                                                "service": "WFS",
                                                "version": "1.1.0",
                                                "query": [
                                                  {
                                                    "typeName": [
                                                      'cite:states'
                                                    ]
                                                  }
                                                ]
                                              }
                                            }
                                          ]
                                        }
                                      }
                                    }
                                  ]
                                }
                              }
                            };
                var marshaller = context.createMarshaller();
                var marshalled = marshaller.marshalString(data);
                test.ok(marshalled.indexOf('xmlns:cite="http://www.opengeospatial.net/cite"' >= 0));
                console.log(marshalled);
                test.done();
        },
	"Roundtrips" : {
		"Execute-01.xml" : function(test) {roundtrip(test, mappings, "tests/WPS/1.0.0/Execute-01.xml");}
	}
};
