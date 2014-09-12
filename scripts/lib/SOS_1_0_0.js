var SOS_1_0_0_Module_Factory = function () {
  var SOS_1_0_0 = {
    n: 'SOS_1_0_0',
    dens: 'http:\/\/www.opengis.net\/sos\/1.0',
    tis: [{
        ln: 'DescribeFeatureType',
        bti: 'SOS_1_0_0.RequestBaseType',
        ps: [{
            n: 'featureId',
            en: 'FeatureId'
          }]
      }, {
        ln: 'RequestBaseType',
        ps: [{
            n: 'service',
            t: 'a'
          }, {
            n: 'version',
            t: 'a'
          }]
      }, {
        ln: 'RegisterSensorResponse',
        ps: [{
            n: 'assignedSensorId',
            en: 'AssignedSensorId'
          }]
      }, {
        ln: 'GetResult',
        bti: 'SOS_1_0_0.RequestBaseType',
        ps: [{
            n: 'observationTemplateId',
            en: 'ObservationTemplateId'
          }, {
            n: 'eventTime',
            col: true,
            ti: 'SOS_1_0_0.GetResult.EventTime'
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
        ln: 'GetResultResponse',
        ps: [{
            n: 'result',
            ti: 'SOS_1_0_0.GetResultResponse.Result'
          }]
      }, {
        ln: 'GetResultResponse.Result',
        ps: [{
            n: 'value',
            t: 'v'
          }, {
            n: 'rs',
            an: 'RS',
            t: 'a'
          }]
      }, {
        ln: 'DescribeSensor',
        bti: 'SOS_1_0_0.RequestBaseType',
        ps: [{
            n: 'procedure'
          }, {
            n: 'outputFormat',
            t: 'a'
          }]
      }, {
        ln: 'InsertObservation',
        bti: 'SOS_1_0_0.RequestBaseType',
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
        ln: 'GetObservation',
        bti: 'SOS_1_0_0.RequestBaseType',
        ps: [{
            n: 'offering'
          }, {
            n: 'eventTime',
            col: true,
            ti: 'SOS_1_0_0.GetObservation.EventTime'
          }, {
            n: 'procedure',
            col: true
          }, {
            n: 'observedProperty',
            col: true
          }, {
            n: 'featureOfInterest',
            ti: 'SOS_1_0_0.GetObservation.FeatureOfInterest'
          }, {
            n: 'result',
            ti: 'SOS_1_0_0.GetObservation.Result'
          }, {
            n: 'responseFormat'
          }, {
            n: 'resultModel',
            ti: 'QName'
          }, {
            n: 'responseMode'
          }, {
            n: 'srsName',
            t: 'a'
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
        ln: 'DescribeObservationType',
        bti: 'SOS_1_0_0.RequestBaseType',
        ps: [{
            n: 'observedProperty'
          }]
      }, {
        ln: 'Contents',
        ps: [{
            n: 'observationOfferingList',
            en: 'ObservationOfferingList',
            ti: 'SOS_1_0_0.Contents.ObservationOfferingList'
          }]
      }, {
        ln: 'Contents.ObservationOfferingList',
        ps: [{
            n: 'observationOffering',
            col: true,
            en: 'ObservationOffering',
            ti: 'SOS_1_0_0.ObservationOfferingType'
          }]
      }, {
        ln: 'GetCapabilities',
        bti: 'OWS_1_1_0.GetCapabilitiesType',
        ps: [{
            n: 'service',
            t: 'a'
          }]
      }, {
        ln: 'Capabilities',
        bti: 'OWS_1_1_0.CapabilitiesBaseType',
        ps: [{
            n: 'filterCapabilities',
            en: 'Filter_Capabilities',
            ti: 'SOS_1_0_0.FilterCapabilities'
          }, {
            n: 'contents',
            en: 'Contents',
            ti: 'SOS_1_0_0.Contents'
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
        ln: 'GetFeatureOfInterest',
        bti: 'SOS_1_0_0.RequestBaseType',
        ps: [{
            n: 'featureOfInterestId',
            col: true,
            en: 'FeatureOfInterestId'
          }, {
            n: 'location',
            ti: 'SOS_1_0_0.GetFeatureOfInterest.Location'
          }, {
            n: 'eventTime',
            col: true,
            ti: 'SOS_1_0_0.GetFeatureOfInterest.EventTime'
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
        ln: 'DescribeResultModel',
        bti: 'SOS_1_0_0.RequestBaseType',
        ps: [{
            n: 'resultName',
            en: 'ResultName',
            ti: 'QName'
          }]
      }, {
        ln: 'RegisterSensor',
        bti: 'SOS_1_0_0.RequestBaseType',
        ps: [{
            n: 'sensorDescription',
            en: 'SensorDescription',
            ti: 'SOS_1_0_0.RegisterSensor.SensorDescription'
          }, {
            n: 'observationTemplate',
            en: 'ObservationTemplate',
            ti: 'SOS_1_0_0.ObservationTemplate'
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
        ln: 'GetObservationById',
        bti: 'SOS_1_0_0.RequestBaseType',
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
            t: 'a'
          }]
      }, {
        ln: 'GetFeatureOfInterestTime',
        bti: 'SOS_1_0_0.RequestBaseType',
        ps: [{
            n: 'featureOfInterestId',
            en: 'FeatureOfInterestId'
          }]
      }, {
        ln: 'InsertObservationResponse',
        ps: [{
            n: 'assignedObservationId',
            en: 'AssignedObservationId'
          }]
      }, {
        ln: 'ObservationOfferingBaseType',
        bti: 'GML_3_1_1.AbstractFeatureType'
      }, {
        ln: 'ObservationOfferingType',
        bti: 'SOS_1_0_0.ObservationOfferingBaseType',
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
        t: 'enum',
        ln: 'ResponseModeType',
        vs: ['inline', 'attached', 'out-of-band', 'resultTemplate']
      }],
    eis: [{
        en: 'DescribeFeatureType',
        ti: 'SOS_1_0_0.DescribeFeatureType'
      }, {
        en: 'RegisterSensorResponse',
        ti: 'SOS_1_0_0.RegisterSensorResponse'
      }, {
        en: 'GetResult',
        ti: 'SOS_1_0_0.GetResult'
      }, {
        en: 'GetResultResponse',
        ti: 'SOS_1_0_0.GetResultResponse'
      }, {
        en: 'DescribeSensor',
        ti: 'SOS_1_0_0.DescribeSensor'
      }, {
        en: 'InsertObservation',
        ti: 'SOS_1_0_0.InsertObservation'
      }, {
        en: 'GetObservation',
        ti: 'SOS_1_0_0.GetObservation'
      }, {
        en: 'DescribeObservationType',
        ti: 'SOS_1_0_0.DescribeObservationType'
      }, {
        en: 'Contents',
        ti: 'SOS_1_0_0.Contents'
      }, {
        en: 'GetCapabilities',
        ti: 'SOS_1_0_0.GetCapabilities'
      }, {
        en: 'Capabilities',
        ti: 'SOS_1_0_0.Capabilities'
      }, {
        en: 'Filter_Capabilities',
        ti: 'SOS_1_0_0.FilterCapabilities'
      }, {
        en: 'GetFeatureOfInterest',
        ti: 'SOS_1_0_0.GetFeatureOfInterest'
      }, {
        en: 'DescribeResultModel',
        ti: 'SOS_1_0_0.DescribeResultModel'
      }, {
        en: 'RegisterSensor',
        ti: 'SOS_1_0_0.RegisterSensor'
      }, {
        en: 'ObservationTemplate',
        ti: 'SOS_1_0_0.ObservationTemplate'
      }, {
        en: 'GetObservationById',
        ti: 'SOS_1_0_0.GetObservationById'
      }, {
        en: 'GetFeatureOfInterestTime',
        ti: 'SOS_1_0_0.GetFeatureOfInterestTime'
      }, {
        en: 'InsertObservationResponse',
        ti: 'SOS_1_0_0.InsertObservationResponse'
      }, {
        en: 'srsName',
        ti: 'GML_3_1_1.CodeType',
        sh: {
          lp: 'AbstractMetaData',
          ns: 'http:\/\/www.opengis.net\/ows\/1.1'
        }
      }, {
        en: 'supportedSRS',
        ti: 'GML_3_1_1.CodeType',
        sh: {
          lp: 'name',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'supportedSensorDescription',
        ti: 'QName',
        sh: {
          lp: 'AbstractMetaData',
          ns: 'http:\/\/www.opengis.net\/ows\/1.1'
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