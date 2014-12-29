var SOS_1_0_0_Module_Factory = function () {
  var SOS_1_0_0 = {
    n: 'SOS_1_0_0',
    dens: 'http:\/\/www.opengis.net\/sos\/1.0',
    deps: ['GML_3_1_1', 'GML_3_1_1', 'SWE_1_0_1', 'OWS_1_1_0', 'OM_1_0_0', 'SWE_1_0_1', 'GML_3_1_1', 'SOS_1_0_0_Filter', 'OWS_1_1_0'],
    tis: [{
        ln: 'Contents',
        ps: [{
            n: 'observationOfferingList',
            en: 'ObservationOfferingList',
            ti: '.Contents.ObservationOfferingList'
          }]
      }, {
        ln: 'GetResultResponse',
        ps: [{
            n: 'result',
            ti: '.GetResultResponse.Result'
          }]
      }, {
        ln: 'GetFeatureOfInterest',
        bti: '.RequestBaseType',
        ps: [{
            n: 'featureOfInterestId',
            col: true,
            en: 'FeatureOfInterestId'
          }, {
            n: 'location',
            ti: '.GetFeatureOfInterest.Location'
          }, {
            n: 'eventTime',
            col: true,
            ti: '.GetFeatureOfInterest.EventTime'
          }]
      }, {
        ln: 'GetObservation.Result',
        ps: [{
            n: 'comparisonOps',
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'comparisonOps',
              ns: 'http:\/\/www.opengis.net\/ogc'
            },
            ti: 'SOS_1_0_0_Filter.ComparisonOpsType',
            t: 'er'
          }]
      }, {
        ln: 'GetObservation.EventTime',
        ps: [{
            n: 'temporalOps',
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'temporalOps',
              ns: 'http:\/\/www.opengis.net\/ogc'
            },
            ti: 'SOS_1_0_0_Filter.TemporalOpsType',
            t: 'er'
          }]
      }, {
        ln: 'Capabilities',
        bti: 'OWS_1_1_0.CapabilitiesBaseType',
        ps: [{
            n: 'filterCapabilities',
            en: 'Filter_Capabilities',
            ti: '.FilterCapabilities'
          }, {
            n: 'contents',
            en: 'Contents',
            ti: '.Contents'
          }]
      }, {
        ln: 'GetResult.EventTime',
        ps: [{
            n: 'temporalOps',
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'temporalOps',
              ns: 'http:\/\/www.opengis.net\/ogc'
            },
            ti: 'SOS_1_0_0_Filter.TemporalOpsType',
            t: 'er'
          }]
      }, {
        ln: 'GetFeatureOfInterestTime',
        bti: '.RequestBaseType',
        ps: [{
            n: 'featureOfInterestId',
            en: 'FeatureOfInterestId'
          }]
      }, {
        ln: 'GetObservationById',
        bti: '.RequestBaseType',
        ps: [{
            n: 'observationId',
            en: 'ObservationId'
          }, {
            n: 'responseFormat'
          }, {
            n: 'resultModel',
            ti: 'QName'
          }, {
            n: 'responseMode'
          }, {
            n: 'srsName',
            an: {
              lp: 'srsName'
            },
            t: 'a'
          }]
      }, {
        ln: 'DescribeFeatureType',
        bti: '.RequestBaseType',
        ps: [{
            n: 'featureId',
            en: 'FeatureId'
          }]
      }, {
        ln: 'ObservationOfferingType',
        bti: '.ObservationOfferingBaseType',
        ps: [{
            n: 'intendedApplication',
            col: true
          }, {
            n: 'time',
            ti: 'SWE_1_0_1.TimeGeometricPrimitivePropertyType'
          }, {
            n: 'procedure',
            col: true,
            ti: 'GML_3_1_1.ReferenceType'
          }, {
            n: 'observedProperty',
            col: true,
            ti: 'SWE_1_0_1.PhenomenonPropertyType'
          }, {
            n: 'featureOfInterest',
            col: true,
            ti: 'GML_3_1_1.ReferenceType'
          }, {
            n: 'responseFormat',
            col: true
          }, {
            n: 'resultModel',
            col: true,
            ti: 'QName'
          }, {
            n: 'responseMode',
            col: true
          }]
      }, {
        ln: 'DescribeObservationType',
        bti: '.RequestBaseType',
        ps: [{
            n: 'observedProperty'
          }]
      }, {
        ln: 'InsertObservation',
        bti: '.RequestBaseType',
        ps: [{
            n: 'assignedSensorId',
            en: 'AssignedSensorId'
          }, {
            n: 'observation',
            en: {
              lp: 'Observation',
              ns: 'http:\/\/www.opengis.net\/om\/1.0'
            },
            ti: 'OM_1_0_0.ObservationType'
          }]
      }, {
        ln: 'GetResultResponse.Result',
        ps: [{
            n: 'value',
            t: 'v'
          }, {
            n: 'rs',
            an: {
              lp: 'RS'
            },
            t: 'a'
          }]
      }, {
        ln: 'RegisterSensor.SensorDescription',
        ps: [{
            n: 'any',
            mx: false,
            t: 'ae'
          }]
      }, {
        ln: 'ObservationTemplate',
        ps: [{
            n: 'observation',
            en: {
              lp: 'Observation',
              ns: 'http:\/\/www.opengis.net\/om\/1.0'
            },
            ti: 'OM_1_0_0.ObservationType'
          }]
      }, {
        ln: 'RequestBaseType',
        ps: [{
            n: 'service',
            an: {
              lp: 'service'
            },
            t: 'a'
          }, {
            n: 'version',
            an: {
              lp: 'version'
            },
            t: 'a'
          }]
      }, {
        ln: 'GetCapabilities',
        bti: 'OWS_1_1_0.GetCapabilitiesType',
        ps: [{
            n: 'service',
            an: {
              lp: 'service'
            },
            t: 'a'
          }]
      }, {
        ln: 'DescribeSensor',
        bti: '.RequestBaseType',
        ps: [{
            n: 'procedure'
          }, {
            n: 'outputFormat',
            an: {
              lp: 'outputFormat'
            },
            t: 'a'
          }]
      }, {
        ln: 'GetFeatureOfInterest.Location',
        ps: [{
            n: 'spatialOps',
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'spatialOps',
              ns: 'http:\/\/www.opengis.net\/ogc'
            },
            ti: 'SOS_1_0_0_Filter.SpatialOpsType',
            t: 'er'
          }]
      }, {
        ln: 'RegisterSensor',
        bti: '.RequestBaseType',
        ps: [{
            n: 'sensorDescription',
            en: 'SensorDescription',
            ti: '.RegisterSensor.SensorDescription'
          }, {
            n: 'observationTemplate',
            en: 'ObservationTemplate',
            ti: '.ObservationTemplate'
          }]
      }, {
        ln: 'ObservationOfferingBaseType',
        bti: 'GML_3_1_1.AbstractFeatureType'
      }, {
        ln: 'GetResult',
        bti: '.RequestBaseType',
        ps: [{
            n: 'observationTemplateId',
            en: 'ObservationTemplateId'
          }, {
            n: 'eventTime',
            col: true,
            ti: '.GetResult.EventTime'
          }]
      }, {
        ln: 'GetFeatureOfInterest.EventTime',
        ps: [{
            n: 'temporalOps',
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'temporalOps',
              ns: 'http:\/\/www.opengis.net\/ogc'
            },
            ti: 'SOS_1_0_0_Filter.TemporalOpsType',
            t: 'er'
          }]
      }, {
        ln: 'GetObservation',
        bti: '.RequestBaseType',
        ps: [{
            n: 'offering'
          }, {
            n: 'eventTime',
            col: true,
            ti: '.GetObservation.EventTime'
          }, {
            n: 'procedure',
            col: true
          }, {
            n: 'observedProperty',
            col: true
          }, {
            n: 'featureOfInterest',
            ti: '.GetObservation.FeatureOfInterest'
          }, {
            n: 'result',
            ti: '.GetObservation.Result'
          }, {
            n: 'responseFormat'
          }, {
            n: 'resultModel',
            ti: 'QName'
          }, {
            n: 'responseMode'
          }, {
            n: 'srsName',
            an: {
              lp: 'srsName'
            },
            t: 'a'
          }]
      }, {
        ln: 'Contents.ObservationOfferingList',
        ps: [{
            n: 'observationOffering',
            col: true,
            en: 'ObservationOffering',
            ti: '.ObservationOfferingType'
          }]
      }, {
        ln: 'FilterCapabilities',
        ps: [{
            n: 'spatialCapabilities',
            en: {
              lp: 'Spatial_Capabilities',
              ns: 'http:\/\/www.opengis.net\/ogc'
            },
            ti: 'SOS_1_0_0_Filter.SpatialCapabilitiesType'
          }, {
            n: 'temporalCapabilities',
            en: {
              lp: 'Temporal_Capabilities',
              ns: 'http:\/\/www.opengis.net\/ogc'
            },
            ti: 'SOS_1_0_0_Filter.TemporalCapabilitiesType'
          }, {
            n: 'scalarCapabilities',
            en: {
              lp: 'Scalar_Capabilities',
              ns: 'http:\/\/www.opengis.net\/ogc'
            },
            ti: 'SOS_1_0_0_Filter.ScalarCapabilitiesType'
          }, {
            n: 'idCapabilities',
            en: {
              lp: 'Id_Capabilities',
              ns: 'http:\/\/www.opengis.net\/ogc'
            },
            ti: 'SOS_1_0_0_Filter.IdCapabilitiesType'
          }]
      }, {
        ln: 'InsertObservationResponse',
        ps: [{
            n: 'assignedObservationId',
            en: 'AssignedObservationId'
          }]
      }, {
        ln: 'DescribeResultModel',
        bti: '.RequestBaseType',
        ps: [{
            n: 'resultName',
            en: 'ResultName',
            ti: 'QName'
          }]
      }, {
        ln: 'GetObservation.FeatureOfInterest',
        ps: [{
            n: 'spatialOps',
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'spatialOps',
              ns: 'http:\/\/www.opengis.net\/ogc'
            },
            ti: 'SOS_1_0_0_Filter.SpatialOpsType',
            t: 'er'
          }, {
            n: 'objectID',
            col: true,
            en: 'ObjectID'
          }]
      }, {
        ln: 'RegisterSensorResponse',
        ps: [{
            n: 'assignedSensorId',
            en: 'AssignedSensorId'
          }]
      }, {
        t: 'enum',
        ln: 'ResponseModeType',
        vs: ['inline', 'attached', 'out-of-band', 'resultTemplate']
      }],
    eis: [{
        en: 'InsertObservationResponse',
        ti: '.InsertObservationResponse'
      }, {
        en: 'GetResultResponse',
        ti: '.GetResultResponse'
      }, {
        en: 'GetFeatureOfInterest',
        ti: '.GetFeatureOfInterest'
      }, {
        en: 'supportedSensorDescription',
        ti: 'QName',
        sh: {
          lp: 'AbstractMetaData',
          ns: 'http:\/\/www.opengis.net\/ows\/1.1'
        }
      }, {
        en: 'RegisterSensorResponse',
        ti: '.RegisterSensorResponse'
      }, {
        en: 'DescribeFeatureType',
        ti: '.DescribeFeatureType'
      }, {
        en: 'DescribeObservationType',
        ti: '.DescribeObservationType'
      }, {
        en: 'GetObservationById',
        ti: '.GetObservationById'
      }, {
        en: 'Capabilities',
        ti: '.Capabilities'
      }, {
        en: 'Filter_Capabilities',
        ti: '.FilterCapabilities'
      }, {
        en: 'GetFeatureOfInterestTime',
        ti: '.GetFeatureOfInterestTime'
      }, {
        en: 'RegisterSensor',
        ti: '.RegisterSensor'
      }, {
        en: 'ObservationTemplate',
        ti: '.ObservationTemplate'
      }, {
        en: 'supportedSRS',
        ti: 'GML_3_1_1.CodeType',
        sh: {
          lp: 'name',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'srsName',
        ti: 'GML_3_1_1.CodeType',
        sh: {
          lp: 'AbstractMetaData',
          ns: 'http:\/\/www.opengis.net\/ows\/1.1'
        }
      }, {
        en: 'DescribeSensor',
        ti: '.DescribeSensor'
      }, {
        en: 'DescribeResultModel',
        ti: '.DescribeResultModel'
      }, {
        en: 'Contents',
        ti: '.Contents'
      }, {
        en: 'GetResult',
        ti: '.GetResult'
      }, {
        en: 'InsertObservation',
        ti: '.InsertObservation'
      }, {
        en: 'GetObservation',
        ti: '.GetObservation'
      }, {
        en: 'GetCapabilities',
        ti: '.GetCapabilities'
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
  var SOS_1_0_0_Module = SOS_1_0_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.SOS_1_0_0 = SOS_1_0_0_Module.SOS_1_0_0;
  }
  else {
    var SOS_1_0_0 = SOS_1_0_0_Module.SOS_1_0_0;
  }
}