var SOS_1_0_0_Module_Factory = function () {
  var SOS_1_0_0 = {
    name: 'SOS_1_0_0',
    defaultElementNamespaceURI: 'http:\/\/www.opengis.net\/sos\/1.0',
    typeInfos: [{
        type: 'classInfo',
        localName: 'DescribeFeatureType',
        baseTypeInfo: 'SOS_1_0_0.RequestBaseType',
        propertyInfos: [{
            type: 'element',
            name: 'featureId',
            elementName: 'FeatureId',
            typeInfo: 'String'
          }]
      }, {
        type: 'classInfo',
        localName: 'RequestBaseType',
        propertyInfos: [{
            name: 'service',
            typeInfo: 'String',
            attributeName: 'service',
            type: 'attribute'
          }, {
            name: 'version',
            typeInfo: 'String',
            attributeName: 'version',
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'RegisterSensorResponse',
        propertyInfos: [{
            type: 'element',
            name: 'assignedSensorId',
            elementName: 'AssignedSensorId',
            typeInfo: 'String'
          }]
      }, {
        type: 'classInfo',
        localName: 'GetResult',
        baseTypeInfo: 'SOS_1_0_0.RequestBaseType',
        propertyInfos: [{
            type: 'element',
            name: 'observationTemplateId',
            elementName: 'ObservationTemplateId',
            typeInfo: 'String'
          }, {
            type: 'element',
            name: 'eventTime',
            collection: true,
            elementName: 'eventTime',
            typeInfo: 'SOS_1_0_0.GetResult.EventTime'
          }]
      }, {
        type: 'classInfo',
        localName: 'GetResult.EventTime',
        propertyInfos: [{
            name: 'temporalOps',
            elementName: {
              localPart: 'temporalOps',
              namespaceURI: 'http:\/\/www.opengis.net\/ogc'
            },
            typeInfo: 'SOS_1_0_0_Filter.TemporalOpsType',
            type: 'elementRef'
          }]
      }, {
        type: 'classInfo',
        localName: 'GetResultResponse',
        propertyInfos: [{
            type: 'element',
            name: 'result',
            elementName: 'result',
            typeInfo: 'SOS_1_0_0.GetResultResponse.Result'
          }]
      }, {
        type: 'classInfo',
        localName: 'GetResultResponse.Result',
        propertyInfos: [{
            name: 'value',
            typeInfo: 'String',
            type: 'value'
          }, {
            name: 'rs',
            typeInfo: 'String',
            attributeName: 'RS',
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'DescribeSensor',
        baseTypeInfo: 'SOS_1_0_0.RequestBaseType',
        propertyInfos: [{
            type: 'element',
            name: 'procedure',
            elementName: 'procedure',
            typeInfo: 'String'
          }, {
            name: 'outputFormat',
            typeInfo: 'String',
            attributeName: 'outputFormat',
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'InsertObservation',
        baseTypeInfo: 'SOS_1_0_0.RequestBaseType',
        propertyInfos: [{
            type: 'element',
            name: 'assignedSensorId',
            elementName: 'AssignedSensorId',
            typeInfo: 'String'
          }, {
            type: 'element',
            name: 'observation',
            elementName: {
              localPart: 'Observation',
              namespaceURI: 'http:\/\/www.opengis.net\/om\/1.0'
            },
            typeInfo: 'OM_1_0_0.ObservationType'
          }]
      }, {
        type: 'classInfo',
        localName: 'GetObservation',
        baseTypeInfo: 'SOS_1_0_0.RequestBaseType',
        propertyInfos: [{
            type: 'element',
            name: 'offering',
            elementName: 'offering',
            typeInfo: 'String'
          }, {
            type: 'element',
            name: 'eventTime',
            collection: true,
            elementName: 'eventTime',
            typeInfo: 'SOS_1_0_0.GetObservation.EventTime'
          }, {
            type: 'element',
            name: 'procedure',
            collection: true,
            elementName: 'procedure',
            typeInfo: 'String'
          }, {
            type: 'element',
            name: 'observedProperty',
            collection: true,
            elementName: 'observedProperty',
            typeInfo: 'String'
          }, {
            type: 'element',
            name: 'featureOfInterest',
            elementName: 'featureOfInterest',
            typeInfo: 'SOS_1_0_0.GetObservation.FeatureOfInterest'
          }, {
            type: 'element',
            name: 'result',
            elementName: 'result',
            typeInfo: 'SOS_1_0_0.GetObservation.Result'
          }, {
            type: 'element',
            name: 'responseFormat',
            elementName: 'responseFormat',
            typeInfo: 'String'
          }, {
            type: 'element',
            name: 'resultModel',
            elementName: 'resultModel',
            typeInfo: 'String'
          }, {
            type: 'element',
            name: 'responseMode',
            elementName: 'responseMode',
            typeInfo: 'String'
          }, {
            name: 'srsName',
            typeInfo: 'String',
            attributeName: 'srsName',
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'GetObservation.EventTime',
        propertyInfos: [{
            name: 'temporalOps',
            elementName: {
              localPart: 'temporalOps',
              namespaceURI: 'http:\/\/www.opengis.net\/ogc'
            },
            typeInfo: 'SOS_1_0_0_Filter.TemporalOpsType',
            type: 'elementRef'
          }]
      }, {
        type: 'classInfo',
        localName: 'GetObservation.FeatureOfInterest',
        propertyInfos: [{
            name: 'spatialOps',
            elementName: {
              localPart: 'spatialOps',
              namespaceURI: 'http:\/\/www.opengis.net\/ogc'
            },
            typeInfo: 'SOS_1_0_0_Filter.SpatialOpsType',
            type: 'elementRef'
          }, {
            type: 'element',
            name: 'objectID',
            collection: true,
            elementName: 'ObjectID',
            typeInfo: 'String'
          }]
      }, {
        type: 'classInfo',
        localName: 'GetObservation.Result',
        propertyInfos: [{
            name: 'comparisonOps',
            elementName: {
              localPart: 'comparisonOps',
              namespaceURI: 'http:\/\/www.opengis.net\/ogc'
            },
            typeInfo: 'SOS_1_0_0_Filter.ComparisonOpsType',
            type: 'elementRef'
          }]
      }, {
        type: 'classInfo',
        localName: 'DescribeObservationType',
        baseTypeInfo: 'SOS_1_0_0.RequestBaseType',
        propertyInfos: [{
            type: 'element',
            name: 'observedProperty',
            elementName: 'observedProperty',
            typeInfo: 'String'
          }]
      }, {
        type: 'classInfo',
        localName: 'Contents',
        propertyInfos: [{
            type: 'element',
            name: 'observationOfferingList',
            elementName: 'ObservationOfferingList',
            typeInfo: 'SOS_1_0_0.Contents.ObservationOfferingList'
          }]
      }, {
        type: 'classInfo',
        localName: 'Contents.ObservationOfferingList',
        propertyInfos: [{
            type: 'element',
            name: 'observationOffering',
            collection: true,
            elementName: 'ObservationOffering',
            typeInfo: 'SOS_1_0_0.ObservationOfferingType'
          }]
      }, {
        type: 'classInfo',
        localName: 'GetCapabilities',
        baseTypeInfo: 'OWS_1_1_0.GetCapabilitiesType',
        propertyInfos: [{
            name: 'service',
            typeInfo: 'String',
            attributeName: 'service',
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'Capabilities',
        baseTypeInfo: 'OWS_1_1_0.CapabilitiesBaseType',
        propertyInfos: [{
            type: 'element',
            name: 'filterCapabilities',
            elementName: 'Filter_Capabilities',
            typeInfo: 'SOS_1_0_0.FilterCapabilities'
          }, {
            type: 'element',
            name: 'contents',
            elementName: 'Contents',
            typeInfo: 'SOS_1_0_0.Contents'
          }]
      }, {
        type: 'classInfo',
        localName: 'FilterCapabilities',
        propertyInfos: [{
            type: 'element',
            name: 'spatialCapabilities',
            elementName: {
              localPart: 'Spatial_Capabilities',
              namespaceURI: 'http:\/\/www.opengis.net\/ogc'
            },
            typeInfo: 'SOS_1_0_0_Filter.SpatialCapabilitiesType'
          }, {
            type: 'element',
            name: 'temporalCapabilities',
            elementName: {
              localPart: 'Temporal_Capabilities',
              namespaceURI: 'http:\/\/www.opengis.net\/ogc'
            },
            typeInfo: 'SOS_1_0_0_Filter.TemporalCapabilitiesType'
          }, {
            type: 'element',
            name: 'scalarCapabilities',
            elementName: {
              localPart: 'Scalar_Capabilities',
              namespaceURI: 'http:\/\/www.opengis.net\/ogc'
            },
            typeInfo: 'SOS_1_0_0_Filter.ScalarCapabilitiesType'
          }, {
            type: 'element',
            name: 'idCapabilities',
            elementName: {
              localPart: 'Id_Capabilities',
              namespaceURI: 'http:\/\/www.opengis.net\/ogc'
            },
            typeInfo: 'SOS_1_0_0_Filter.IdCapabilitiesType'
          }]
      }, {
        type: 'classInfo',
        localName: 'GetFeatureOfInterest',
        baseTypeInfo: 'SOS_1_0_0.RequestBaseType',
        propertyInfos: [{
            type: 'element',
            name: 'featureOfInterestId',
            collection: true,
            elementName: 'FeatureOfInterestId',
            typeInfo: 'String'
          }, {
            type: 'element',
            name: 'location',
            elementName: 'location',
            typeInfo: 'SOS_1_0_0.GetFeatureOfInterest.Location'
          }, {
            type: 'element',
            name: 'eventTime',
            collection: true,
            elementName: 'eventTime',
            typeInfo: 'SOS_1_0_0.GetFeatureOfInterest.EventTime'
          }]
      }, {
        type: 'classInfo',
        localName: 'GetFeatureOfInterest.Location',
        propertyInfos: [{
            name: 'spatialOps',
            elementName: {
              localPart: 'spatialOps',
              namespaceURI: 'http:\/\/www.opengis.net\/ogc'
            },
            typeInfo: 'SOS_1_0_0_Filter.SpatialOpsType',
            type: 'elementRef'
          }]
      }, {
        type: 'classInfo',
        localName: 'GetFeatureOfInterest.EventTime',
        propertyInfos: [{
            name: 'temporalOps',
            elementName: {
              localPart: 'temporalOps',
              namespaceURI: 'http:\/\/www.opengis.net\/ogc'
            },
            typeInfo: 'SOS_1_0_0_Filter.TemporalOpsType',
            type: 'elementRef'
          }]
      }, {
        type: 'classInfo',
        localName: 'DescribeResultModel',
        baseTypeInfo: 'SOS_1_0_0.RequestBaseType',
        propertyInfos: [{
            type: 'element',
            name: 'resultName',
            elementName: 'ResultName',
            typeInfo: 'String'
          }]
      }, {
        type: 'classInfo',
        localName: 'RegisterSensor',
        baseTypeInfo: 'SOS_1_0_0.RequestBaseType',
        propertyInfos: [{
            type: 'element',
            name: 'sensorDescription',
            elementName: 'SensorDescription',
            typeInfo: 'SOS_1_0_0.RegisterSensor.SensorDescription'
          }, {
            type: 'element',
            name: 'observationTemplate',
            elementName: 'ObservationTemplate',
            typeInfo: 'SOS_1_0_0.ObservationTemplate'
          }]
      }, {
        type: 'classInfo',
        localName: 'RegisterSensor.SensorDescription',
        propertyInfos: [{
            name: 'any',
            allowDom: true,
            allowTypedObject: true,
            type: 'anyElement'
          }]
      }, {
        type: 'classInfo',
        localName: 'ObservationTemplate',
        propertyInfos: [{
            type: 'element',
            name: 'observation',
            elementName: {
              localPart: 'Observation',
              namespaceURI: 'http:\/\/www.opengis.net\/om\/1.0'
            },
            typeInfo: 'OM_1_0_0.ObservationType'
          }]
      }, {
        type: 'classInfo',
        localName: 'GetObservationById',
        baseTypeInfo: 'SOS_1_0_0.RequestBaseType',
        propertyInfos: [{
            type: 'element',
            name: 'observationId',
            elementName: 'ObservationId',
            typeInfo: 'String'
          }, {
            type: 'element',
            name: 'responseFormat',
            elementName: 'responseFormat',
            typeInfo: 'String'
          }, {
            type: 'element',
            name: 'resultModel',
            elementName: 'resultModel',
            typeInfo: 'String'
          }, {
            type: 'element',
            name: 'responseMode',
            elementName: 'responseMode',
            typeInfo: 'String'
          }, {
            name: 'srsName',
            typeInfo: 'String',
            attributeName: 'srsName',
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'GetFeatureOfInterestTime',
        baseTypeInfo: 'SOS_1_0_0.RequestBaseType',
        propertyInfos: [{
            type: 'element',
            name: 'featureOfInterestId',
            elementName: 'FeatureOfInterestId',
            typeInfo: 'String'
          }]
      }, {
        type: 'classInfo',
        localName: 'InsertObservationResponse',
        propertyInfos: [{
            type: 'element',
            name: 'assignedObservationId',
            elementName: 'AssignedObservationId',
            typeInfo: 'String'
          }]
      }, {
        type: 'classInfo',
        localName: 'ObservationOfferingBaseType',
        baseTypeInfo: 'GML_3_1_1.AbstractFeatureType',
        propertyInfos: []
      }, {
        type: 'classInfo',
        localName: 'ObservationOfferingType',
        baseTypeInfo: 'SOS_1_0_0.ObservationOfferingBaseType',
        propertyInfos: [{
            type: 'element',
            name: 'intendedApplication',
            collection: true,
            elementName: 'intendedApplication',
            typeInfo: 'String'
          }, {
            type: 'element',
            name: 'time',
            elementName: 'time',
            typeInfo: 'SWE_1_0_1.TimeGeometricPrimitivePropertyType'
          }, {
            type: 'element',
            name: 'procedure',
            collection: true,
            elementName: 'procedure',
            typeInfo: 'GML_3_1_1.ReferenceType'
          }, {
            type: 'element',
            name: 'observedProperty',
            collection: true,
            elementName: 'observedProperty',
            typeInfo: 'SWE_1_0_1.PhenomenonPropertyType'
          }, {
            type: 'element',
            name: 'featureOfInterest',
            collection: true,
            elementName: 'featureOfInterest',
            typeInfo: 'GML_3_1_1.ReferenceType'
          }, {
            type: 'element',
            name: 'responseFormat',
            collection: true,
            elementName: 'responseFormat',
            typeInfo: 'String'
          }, {
            type: 'element',
            name: 'resultModel',
            collection: true,
            elementName: 'resultModel',
            typeInfo: 'String'
          }, {
            type: 'element',
            name: 'responseMode',
            collection: true,
            elementName: 'responseMode',
            typeInfo: 'String'
          }]
      }, {
        type: 'enumInfo',
        localName: 'ResponseModeType',
        baseTypeInfo: 'String',
        values: ['inline', 'attached', 'out-of-band', 'resultTemplate']
      }],
    elementInfos: [{
        elementName: 'DescribeFeatureType',
        typeInfo: 'SOS_1_0_0.DescribeFeatureType'
      }, {
        elementName: 'RegisterSensorResponse',
        typeInfo: 'SOS_1_0_0.RegisterSensorResponse'
      }, {
        elementName: 'GetResult',
        typeInfo: 'SOS_1_0_0.GetResult'
      }, {
        elementName: 'GetResultResponse',
        typeInfo: 'SOS_1_0_0.GetResultResponse'
      }, {
        elementName: 'DescribeSensor',
        typeInfo: 'SOS_1_0_0.DescribeSensor'
      }, {
        elementName: 'InsertObservation',
        typeInfo: 'SOS_1_0_0.InsertObservation'
      }, {
        elementName: 'GetObservation',
        typeInfo: 'SOS_1_0_0.GetObservation'
      }, {
        elementName: 'DescribeObservationType',
        typeInfo: 'SOS_1_0_0.DescribeObservationType'
      }, {
        elementName: 'Contents',
        typeInfo: 'SOS_1_0_0.Contents'
      }, {
        elementName: 'GetCapabilities',
        typeInfo: 'SOS_1_0_0.GetCapabilities'
      }, {
        elementName: 'Capabilities',
        typeInfo: 'SOS_1_0_0.Capabilities'
      }, {
        elementName: 'Filter_Capabilities',
        typeInfo: 'SOS_1_0_0.FilterCapabilities'
      }, {
        elementName: 'GetFeatureOfInterest',
        typeInfo: 'SOS_1_0_0.GetFeatureOfInterest'
      }, {
        elementName: 'DescribeResultModel',
        typeInfo: 'SOS_1_0_0.DescribeResultModel'
      }, {
        elementName: 'RegisterSensor',
        typeInfo: 'SOS_1_0_0.RegisterSensor'
      }, {
        elementName: 'ObservationTemplate',
        typeInfo: 'SOS_1_0_0.ObservationTemplate'
      }, {
        elementName: 'GetObservationById',
        typeInfo: 'SOS_1_0_0.GetObservationById'
      }, {
        elementName: 'GetFeatureOfInterestTime',
        typeInfo: 'SOS_1_0_0.GetFeatureOfInterestTime'
      }, {
        elementName: 'InsertObservationResponse',
        typeInfo: 'SOS_1_0_0.InsertObservationResponse'
      }, {
        elementName: 'srsName',
        typeInfo: 'GML_3_1_1.CodeType',
        substitutionHead: {
          localPart: 'AbstractMetaData',
          namespaceURI: 'http:\/\/www.opengis.net\/ows\/1.1'
        }
      }, {
        elementName: 'supportedSRS',
        typeInfo: 'GML_3_1_1.CodeType',
        substitutionHead: {
          localPart: 'name',
          namespaceURI: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        elementName: 'supportedSensorDescription',
        typeInfo: 'String',
        substitutionHead: {
          localPart: 'AbstractMetaData',
          namespaceURI: 'http:\/\/www.opengis.net\/ows\/1.1'
        }
      }]
  };
  return {
    SOS_1_0_0: SOS_1_0_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], SOS_1_0_0_Module_Factory);
}
else {
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.SOS_1_0_0 = SOS_1_0_0_Module_Factory().SOS_1_0_0;
  }
  else {
    var SOS_1_0_0 = SOS_1_0_0_Module_Factory().SOS_1_0_0;
  }
}