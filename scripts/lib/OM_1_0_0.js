var OM_1_0_0_Module_Factory = function () {
  var OM_1_0_0 = {
    name: 'OM_1_0_0',
    defaultElementNamespaceURI: 'http:\/\/www.opengis.net\/om\/1.0',
    defaultAttributeNamespaceURI: 'http:\/\/www.w3.org\/1999\/xlink',
    typeInfos: [{
        type: 'classInfo',
        localName: 'ObservationType',
        baseTypeInfo: 'GML_3_1_1.AbstractFeatureType',
        propertyInfos: [{
            type: 'element',
            name: 'metadata',
            elementName: 'metadata',
            typeInfo: 'OM_1_0_0.AnyOrReferenceType'
          }, {
            type: 'element',
            name: 'samplingTime',
            elementName: 'samplingTime',
            typeInfo: 'SWE_1_0_1.TimeObjectPropertyType'
          }, {
            type: 'element',
            name: 'resultTime',
            elementName: 'resultTime',
            typeInfo: 'SWE_1_0_1.TimeObjectPropertyType'
          }, {
            type: 'element',
            name: 'procedure',
            elementName: 'procedure',
            typeInfo: 'OM_1_0_0.ProcessPropertyType'
          }, {
            type: 'element',
            name: 'resultQuality',
            elementName: 'resultQuality',
            typeInfo: 'OM_1_0_0.AnyOrReferenceType'
          }, {
            type: 'element',
            name: 'observedProperty',
            elementName: 'observedProperty',
            typeInfo: 'SWE_1_0_1.PhenomenonPropertyType'
          }, {
            type: 'element',
            name: 'featureOfInterest',
            elementName: 'featureOfInterest',
            typeInfo: 'GML_3_1_1.FeaturePropertyType'
          }, {
            type: 'element',
            name: 'parameter',
            collection: true,
            elementName: 'parameter',
            typeInfo: 'SWE_1_0_1.AnyDataPropertyType'
          }, {
            type: 'element',
            name: 'result',
            elementName: 'result',
            typeInfo: 'AnyType'
          }]
      }, {
        type: 'classInfo',
        localName: 'ObservationCollectionType',
        baseTypeInfo: 'GML_3_1_1.AbstractFeatureType',
        propertyInfos: [{
            type: 'element',
            name: 'member',
            collection: true,
            elementName: 'member',
            typeInfo: 'OM_1_0_0.ObservationPropertyType'
          }]
      }, {
        type: 'classInfo',
        localName: 'ObservationPropertyType',
        propertyInfos: [{
            type: 'element',
            name: 'observation',
            elementName: 'Observation',
            typeInfo: 'OM_1_0_0.ObservationType'
          }, {
            name: 'remoteSchema',
            typeInfo: 'String',
            attributeName: {
              localPart: 'remoteSchema',
              namespaceURI: 'http:\/\/www.opengis.net\/gml'
            },
            type: 'attribute'
          }, {
            name: 'type',
            typeInfo: 'XLink_1_0.TypeType',
            attributeName: 'type',
            type: 'attribute'
          }, {
            name: 'href',
            typeInfo: 'String',
            attributeName: 'href',
            type: 'attribute'
          }, {
            name: 'role',
            typeInfo: 'String',
            attributeName: 'role',
            type: 'attribute'
          }, {
            name: 'arcrole',
            typeInfo: 'String',
            attributeName: 'arcrole',
            type: 'attribute'
          }, {
            name: 'title',
            typeInfo: 'String',
            attributeName: 'title',
            type: 'attribute'
          }, {
            name: 'show',
            typeInfo: 'XLink_1_0.ShowType',
            attributeName: 'show',
            type: 'attribute'
          }, {
            name: 'actuate',
            typeInfo: 'XLink_1_0.ActuateType',
            attributeName: 'actuate',
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'ProcessPropertyType',
        propertyInfos: [{
            name: 'content',
            collection: true,
            elementTypeInfos: [{
                elementName: {
                  localPart: '_Process',
                  namespaceURI: 'http:\/\/www.opengis.net\/sensorML\/1.0.1'
                },
                typeInfo: 'SensorML_1_0_1.AbstractProcessType'
              }, {
                elementName: 'Process',
                typeInfo: 'AnyType'
              }],
            type: 'elementRefs'
          }, {
            name: 'remoteSchema',
            typeInfo: 'String',
            attributeName: {
              localPart: 'remoteSchema',
              namespaceURI: 'http:\/\/www.opengis.net\/gml'
            },
            type: 'attribute'
          }, {
            name: 'type',
            typeInfo: 'XLink_1_0.TypeType',
            attributeName: 'type',
            type: 'attribute'
          }, {
            name: 'href',
            typeInfo: 'String',
            attributeName: 'href',
            type: 'attribute'
          }, {
            name: 'role',
            typeInfo: 'String',
            attributeName: 'role',
            type: 'attribute'
          }, {
            name: 'arcrole',
            typeInfo: 'String',
            attributeName: 'arcrole',
            type: 'attribute'
          }, {
            name: 'title',
            typeInfo: 'String',
            attributeName: 'title',
            type: 'attribute'
          }, {
            name: 'show',
            typeInfo: 'XLink_1_0.ShowType',
            attributeName: 'show',
            type: 'attribute'
          }, {
            name: 'actuate',
            typeInfo: 'XLink_1_0.ActuateType',
            attributeName: 'actuate',
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'AnyOrReferenceType',
        propertyInfos: [{
            name: 'any',
            allowTypedObject: true,
            type: 'anyElement'
          }, {
            name: 'remoteSchema',
            typeInfo: 'String',
            attributeName: {
              localPart: 'remoteSchema',
              namespaceURI: 'http:\/\/www.opengis.net\/gml'
            },
            type: 'attribute'
          }, {
            name: 'type',
            typeInfo: 'XLink_1_0.TypeType',
            attributeName: 'type',
            type: 'attribute'
          }, {
            name: 'href',
            typeInfo: 'String',
            attributeName: 'href',
            type: 'attribute'
          }, {
            name: 'role',
            typeInfo: 'String',
            attributeName: 'role',
            type: 'attribute'
          }, {
            name: 'arcrole',
            typeInfo: 'String',
            attributeName: 'arcrole',
            type: 'attribute'
          }, {
            name: 'title',
            typeInfo: 'String',
            attributeName: 'title',
            type: 'attribute'
          }, {
            name: 'show',
            typeInfo: 'XLink_1_0.ShowType',
            attributeName: 'show',
            type: 'attribute'
          }, {
            name: 'actuate',
            typeInfo: 'XLink_1_0.ActuateType',
            attributeName: 'actuate',
            type: 'attribute'
          }]
      }],
    elementInfos: [{
        elementName: 'Observation',
        typeInfo: 'OM_1_0_0.ObservationType',
        substitutionHead: {
          localPart: '_Feature',
          namespaceURI: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        elementName: 'ObservationCollection',
        typeInfo: 'OM_1_0_0.ObservationCollectionType',
        substitutionHead: {
          localPart: '_Feature',
          namespaceURI: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        elementName: 'Process',
        typeInfo: 'AnyType',
        scope: 'OM_1_0_0.ProcessPropertyType'
      }]
  };
  return {
    OM_1_0_0: OM_1_0_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], OM_1_0_0_Module_Factory);
}
else {
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.OM_1_0_0 = OM_1_0_0_Module_Factory().OM_1_0_0;
  }
  else {
    var OM_1_0_0 = OM_1_0_0_Module_Factory().OM_1_0_0;
  }
}