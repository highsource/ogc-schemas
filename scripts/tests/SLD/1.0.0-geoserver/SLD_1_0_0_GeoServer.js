var Jsonix = require('jsonix').Jsonix;
var XLink_1_0 = require('w3c-schemas').XLink_1_0;
var Filter_1_0_0 = require('../../../ogc-schemas').Filter_1_0_0;
var GML_2_1_2 = require('../../../ogc-schemas').GML_2_1_2;
var SLD_1_0_0 = require('../../../lib/SLD_1_0_0_GeoServer').SLD_1_0_0;

var roundtrips = require('../../roundtrip').roundtrips;
var mappings = [ XLink_1_0, Filter_1_0_0, GML_2_1_2, SLD_1_0_0 ];
module.exports = {
	"Context" : function(test) {
		var context = new Jsonix.Context(mappings);
		test.done();
	},
	"example-sld.xml" : function(test) {
		var context = new Jsonix.Context([ XLink_1_0, Filter_1_0_0, GML_2_1_2,
				SLD_1_0_0 ]);
		var unmarshaller = context.createUnmarshaller();
		unmarshaller
				.unmarshalFile(
						"tests/SLD/1.0.0/example-sld.xml",
						function(result) {
							test
									.equal(
											"GEOSYM",
											result.value.namedLayerOrUserLayer[0].namedStyleOrUserStyle[0].name);
							test.done();
						});
	},
	"example-sld-propertyname.xml" : function(test) {
		var context = new Jsonix.Context([ XLink_1_0, Filter_1_0_0, GML_2_1_2,
				SLD_1_0_0 ]);
		var unmarshaller = context.createUnmarshaller();
		unmarshaller
				.unmarshalFile(
						"tests/SLD/1.0.0/example-sld-propertyname.xml",
						function(result) {
							console.log();
							test
									.equal(
											'name',
											result.value.namedLayerOrUserLayer[0].namedStyleOrUserStyle[0].featureTypeStyle[0].rule[0].symbolizer[1].value.label.content[0].value.content);
							test.done();
						});
	},
	"example-sld-01.xml" : function(test) {
		var context = new Jsonix.Context([ XLink_1_0, Filter_1_0_0, GML_2_1_2,
				SLD_1_0_0 ], {
			namespacePrefixes : {
				'http://www.w3.org/1999/xlink' : 'xlink',
				'http://www.opengis.net/sld' : 'sld'
			}
		});
		var data = {
			"name" : {
				"namespaceURI" : "http://www.opengis.net/sld",
				"localPart" : "StyledLayerDescriptor"
			},
			"value" : {
				"version" : "1.0.0",
				"namedLayerOrUserLayer" : [ {
					"TYPE_NAME" : "SLD_1_0_0.NamedLayer",
					"name" : "simple",
					"namedStyleOrUserStyle" : [ {
						"TYPE_NAME" : "SLD_1_0_0.UserStyle",
						"featureTypeStyle" : [ {
							"rule" : [ {
								"symbolizer" : [ {
									"name" : {
										"localPart" : "PointSymbolizer",
										"namespaceURI" : "http://www.opengis.net/sld"
									},
									"value" : {
										"graphic" : {
											"externalGraphicOrMark" : [ {
												"TYPE_NAME" : "SLD_1_0_0.ExternalGraphic",
												"format" : "image/svg+xml",
												"onlineResource" : {
													"href" : "icon.svg",
													"type" : "simple"
												}
											} ]
										},
										"size" : {
											"content" : [ "10" ]
										}
									}
								} ]
							} ]
						} ]
					} ]
				} ]
			}
		};
		var marshaller = context.createMarshaller();
		var marshalled = marshaller.marshalString(data);
		test.equals(1, marshalled.indexOf('sld:StyledLayerDescriptor'));
		console.log(marshalled);
		test.done();
	},
	"Roundtrips" : roundtrips(mappings, __dirname)
};