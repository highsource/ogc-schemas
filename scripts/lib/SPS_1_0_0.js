var SPS_1_0_0_Module_Factory = function () {
  var SPS_1_0_0 = {
    n: 'SPS_1_0_0',
    dens: 'http:\/\/www.opengis.net\/sps\/1.0',
    deps: ['SWE_1_0_0', 'OWS_1_0_0', 'GML_3_1_1'],
    tis: [{
        ln: 'SPSMessage.UpdateResponse',
        tn: null,
        ps: [{
            n: 'inputParameter',
            rq: true,
            col: true,
            en: 'InputParameter',
            ti: '.InputParameterType'
          }]
      }, {
        ln: 'DescribeTaskingRequestType',
        bti: '.RequestBaseType',
        ps: [{
            n: 'sensorID',
            rq: true,
            col: true,
            ti: '.SensorIDType'
          }]
      }, {
        ln: 'DescribeTaskingRequestResponseType.TaskingDescriptor',
        tn: null,
        ps: [{
            n: 'sensorID',
            rq: true,
            ti: '.SensorIDType'
          }, {
            n: 'description',
            en: {
              lp: 'description',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.StringOrRefType'
          }, {
            n: 'inputDescriptor',
            rq: true,
            col: true,
            en: 'InputDescriptor',
            ti: '.InputDescriptor'
          }]
      }, {
        ln: 'SPSContentsType.PhenomenonOfferingList.PhenomenonOffering',
        tn: null,
        ps: [{
            n: 'phenomenon',
            rq: true,
            en: 'Phenomenon'
          }, {
            n: 'sensorID',
            rq: true,
            col: true,
            en: 'SensorID',
            ti: 'Token'
          }]
      }, {
        ln: 'DescribeResultAccessRequestResponse.DataNotAvailable',
        tn: null,
        ps: [{
            n: 'reason',
            rq: true
          }, {
            n: 'description',
            en: {
              lp: 'description',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.StringOrRefType'
          }]
      }, {
        ln: 'SPSContentsType.SensorOfferingList',
        tn: null,
        ps: [{
            n: 'sensorOffering',
            rq: true,
            col: true,
            en: 'SensorOffering',
            ti: '.SensorOfferingType'
          }]
      }, {
        ln: 'SPSMessage.SubmitResponse',
        tn: null,
        ps: [{
            n: 'status',
            rq: true
          }, {
            n: 'description',
            en: {
              lp: 'description',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.StringOrRefType'
          }, {
            n: 'estimatedToC',
            ti: '.EstimatedToC'
          }, {
            n: 'alternative',
            ti: '.SPSMessage.SubmitResponse.Alternative'
          }]
      }, {
        ln: 'LatestResponseTime',
        tn: null,
        ps: [{
            n: 'timeInstant',
            rq: true,
            en: {
              lp: 'TimeInstant',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.TimeInstantType'
          }]
      }, {
        ln: 'CancelRequestType',
        bti: '.RequestBaseType',
        ps: [{
            n: 'taskID',
            rq: true,
            ti: 'Token'
          }]
      }, {
        ln: 'DescribeResultAccessRequestResponse.Service',
        tn: null,
        ps: [{
            n: 'serviceType',
            rq: true,
            en: 'ServiceType'
          }, {
            n: 'serviceURL',
            rq: true,
            en: 'ServiceURL'
          }, {
            n: 'request',
            ti: '.DescribeResultAccessRequestResponse.Service.Request'
          }]
      }, {
        ln: 'TaskMessageDefinitionType',
        bti: 'GML_3_1_1.DefinitionType',
        ps: [{
            n: 'externalDefinition'
          }, {
            n: 'type'
          }, {
            n: 'length',
            ti: 'AnyType'
          }, {
            n: 'min',
            ti: 'AnyType'
          }, {
            n: 'max',
            ti: 'AnyType'
          }, {
            n: 'structureSchema'
          }]
      }, {
        ln: 'InputDescriptorType.Definition.CommonData',
        tn: null,
        ps: [{
            n: 'count',
            rq: true,
            en: {
              lp: 'Count',
              ns: 'http:\/\/www.opengis.net\/swe\/1.0'
            },
            ti: 'SWE_1_0_0.Count'
          }, {
            n: 'quantity',
            rq: true,
            en: {
              lp: 'Quantity',
              ns: 'http:\/\/www.opengis.net\/swe\/1.0'
            },
            ti: 'SWE_1_0_0.Quantity'
          }, {
            n: 'time',
            rq: true,
            en: {
              lp: 'Time',
              ns: 'http:\/\/www.opengis.net\/swe\/1.0'
            },
            ti: 'SWE_1_0_0.Time'
          }, {
            n: '_boolean',
            rq: true,
            en: {
              lp: 'Boolean',
              ns: 'http:\/\/www.opengis.net\/swe\/1.0'
            },
            ti: 'SWE_1_0_0.Boolean'
          }, {
            n: 'category',
            rq: true,
            en: {
              lp: 'Category',
              ns: 'http:\/\/www.opengis.net\/swe\/1.0'
            },
            ti: 'SWE_1_0_0.Category'
          }, {
            n: 'text',
            rq: true,
            en: {
              lp: 'Text',
              ns: 'http:\/\/www.opengis.net\/swe\/1.0'
            },
            ti: 'SWE_1_0_0.Text'
          }, {
            n: 'quantityRange',
            rq: true,
            en: {
              lp: 'QuantityRange',
              ns: 'http:\/\/www.opengis.net\/swe\/1.0'
            },
            ti: 'SWE_1_0_0.QuantityRange'
          }, {
            n: 'countRange',
            rq: true,
            en: {
              lp: 'CountRange',
              ns: 'http:\/\/www.opengis.net\/swe\/1.0'
            },
            ti: 'SWE_1_0_0.CountRange'
          }, {
            n: 'timeRange',
            rq: true,
            en: {
              lp: 'TimeRange',
              ns: 'http:\/\/www.opengis.net\/swe\/1.0'
            },
            ti: 'SWE_1_0_0.TimeRange'
          }, {
            n: 'abstractDataRecord',
            rq: true,
            mx: false,
            dom: false,
            en: {
              lp: 'AbstractDataRecord',
              ns: 'http:\/\/www.opengis.net\/swe\/1.0'
            },
            ti: 'SWE_1_0_0.AbstractDataRecordType',
            t: 'er'
          }, {
            n: 'abstractDataArray',
            rq: true,
            mx: false,
            dom: false,
            en: {
              lp: 'AbstractDataArray',
              ns: 'http:\/\/www.opengis.net\/swe\/1.0'
            },
            ti: 'SWE_1_0_0.AbstractDataArrayType',
            t: 'er'
          }]
      }, {
        ln: 'UpdateRequestResponse.EstimatedToC',
        tn: null,
        ps: [{
            n: 'timeInstant',
            rq: true,
            en: {
              lp: 'TimeInstant',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.TimeInstantType'
          }]
      }, {
        ln: 'SPSMessage.FeasibilityResponse',
        tn: null,
        ps: [{
            n: 'feasibility',
            rq: true
          }, {
            n: 'description',
            en: {
              lp: 'description',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.StringOrRefType'
          }, {
            n: 'alternative',
            ti: '.SPSMessage.FeasibilityResponse.Alternative'
          }]
      }, {
        ln: 'DescribeResultAccessRequestResponse.Service.Request',
        tn: null,
        ps: [{
            n: 'any',
            rq: true,
            dom: false,
            mx: false,
            t: 'ae'
          }]
      }, {
        ln: 'GetStatusRequestResponse',
        tn: null,
        ps: [{
            n: 'taskID',
            rq: true,
            ti: 'Token'
          }, {
            n: 'status',
            rq: true
          }, {
            n: 'description',
            en: {
              lp: 'description',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.StringOrRefType'
          }, {
            n: 'estimatedToC',
            ti: '.EstimatedToC'
          }]
      }, {
        ln: 'SubmitRequestType.SensorParam',
        tn: null,
        ps: [{
            n: 'sensorID',
            rq: true,
            ti: '.SensorIDType'
          }, {
            n: 'parameters',
            rq: true,
            ti: '.ParametersType'
          }]
      }, {
        ln: 'InputDescriptorType',
        ps: [{
            n: 'description',
            en: {
              lp: 'description',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.StringOrRefType'
          }, {
            n: 'definition',
            rq: true,
            ti: '.InputDescriptorType.Definition'
          }, {
            n: 'restriction',
            ti: '.InputDescriptorType.Restriction'
          }, {
            n: 'cardinality'
          }, {
            n: 'parameterID',
            rq: true,
            ti: 'ID',
            an: {
              lp: 'parameterID'
            },
            t: 'a'
          }, {
            n: 'use',
            rq: true,
            an: {
              lp: 'use'
            },
            t: 'a'
          }, {
            n: 'updateable',
            ti: 'Boolean',
            an: {
              lp: 'updateable'
            },
            t: 'a'
          }]
      }, {
        ln: 'DescribeResultAccessRequestType',
        bti: '.RequestBaseType',
        ps: [{
            n: 'taskID',
            rq: true,
            ti: 'Token'
          }, {
            n: 'sensorID',
            rq: true,
            ti: '.SensorIDType'
          }]
      }, {
        ln: 'UpdateRequestResponse',
        tn: null,
        ps: [{
            n: 'taskID',
            rq: true,
            ti: 'Token'
          }, {
            n: 'status',
            rq: true
          }, {
            n: 'description',
            en: {
              lp: 'description',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.StringOrRefType'
          }, {
            n: 'estimatedToC',
            ti: '.UpdateRequestResponse.EstimatedToC'
          }, {
            n: 'missingParameters',
            mno: 0,
            col: true,
            ti: '.UpdateRequestResponse.MissingParameters'
          }]
      }, {
        ln: 'InputParameterType',
        ps: [{
            n: 'value',
            rq: true,
            col: true,
            ti: '.InputParameterType.Value'
          }, {
            n: 'parameterID',
            rq: true,
            ti: 'ID',
            an: {
              lp: 'parameterID'
            },
            t: 'a'
          }]
      }, {
        ln: 'DescribeTaskingRequestResponseType',
        ps: [{
            n: 'taskingDescriptor',
            rq: true,
            col: true,
            ti: '.DescribeTaskingRequestResponseType.TaskingDescriptor'
          }]
      }, {
        ln: 'InputDescriptor',
        tn: null,
        bti: '.InputDescriptorType'
      }, {
        ln: 'InputParameterType.Value',
        tn: null,
        ps: [{
            n: 'any',
            rq: true,
            typed: false,
            mx: false,
            t: 'ae'
          }]
      }, {
        ln: 'ParametersType',
        tn: 'parametersType',
        ps: [{
            n: 'inputParameter',
            rq: true,
            col: true,
            en: 'InputParameter',
            ti: '.InputParameterType'
          }]
      }, {
        ln: 'InputDescriptorType.Restriction',
        tn: null,
        ps: [{
            n: 'inputParameter',
            rq: true,
            en: 'InputParameter',
            ti: '.InputParameterType'
          }]
      }, {
        ln: 'SubmitRequestResponse.Alternative',
        tn: null,
        ps: [{
            n: 'inputParameter',
            rq: true,
            col: true,
            en: 'InputParameter',
            ti: '.InputParameterType'
          }]
      }, {
        ln: 'UpdateRequestType',
        bti: '.RequestBaseType',
        ps: [{
            n: 'taskID',
            rq: true,
            ti: 'Token'
          }, {
            n: 'notificationTarget',
            ti: '.NotificationTargetType'
          }, {
            n: 'parameters',
            ti: '.ParametersType'
          }]
      }, {
        ln: 'SPSMessage.StatusInformation',
        tn: null,
        ps: [{
            n: 'status',
            rq: true
          }, {
            n: 'description',
            en: {
              lp: 'description',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.StringOrRefType'
          }, {
            n: 'estimatedToC',
            ti: '.EstimatedToC'
          }]
      }, {
        ln: 'InputDescriptorType.Definition',
        tn: null,
        ps: [{
            n: 'commonData',
            rq: true,
            ti: '.InputDescriptorType.Definition.CommonData'
          }, {
            n: 'taskMessageDefinition',
            rq: true,
            en: 'TaskMessageDefinition'
          }, {
            n: 'geometryDefinition',
            rq: true,
            en: 'GeometryDefinition',
            ti: 'QName'
          }, {
            n: 'temporalDefinition',
            rq: true,
            en: 'TemporalDefinition',
            ti: 'QName'
          }]
      }, {
        ln: 'GetFeasibilityRequestResponse',
        tn: null,
        ps: [{
            n: 'feasibilityID',
            rq: true
          }, {
            n: 'feasibility',
            rq: true
          }, {
            n: 'description',
            en: {
              lp: 'description',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.StringOrRefType'
          }, {
            n: 'latestResponseTime',
            rq: true,
            en: 'LatestResponseTime',
            ti: '.LatestResponseTime'
          }, {
            n: 'alternative',
            mno: 0,
            col: true,
            ti: '.GetFeasibilityRequestResponse.Alternative'
          }]
      }, {
        ln: 'SPSMessage.FeasibilityResponse.Alternative',
        tn: null,
        ps: [{
            n: 'inputParameter',
            rq: true,
            col: true,
            en: 'InputParameter',
            ti: '.InputParameterType'
          }]
      }, {
        ln: 'SPSMessage.SubmitResponse.Alternative',
        tn: null,
        ps: [{
            n: 'inputParameter',
            rq: true,
            col: true,
            en: 'InputParameter',
            ti: '.InputParameterType'
          }]
      }, {
        ln: 'SensorOfferingType',
        ps: [{
            n: 'areaOfService',
            rq: true,
            en: 'AreaOfService',
            ti: '.AreaOfServiceType'
          }, {
            n: 'phenomenon',
            rq: true,
            en: 'Phenomenon'
          }, {
            n: 'sensorDefinition',
            rq: true,
            en: 'SensorDefinition'
          }, {
            n: 'sensorID',
            rq: true,
            en: 'SensorID',
            ti: 'Token'
          }]
      }, {
        ln: 'SPSMessage.UpdateRequest',
        tn: null,
        ps: [{
            n: 'inputDescriptor',
            rq: true,
            col: true,
            en: 'InputDescriptor',
            ti: '.InputDescriptor'
          }]
      }, {
        ln: 'TimeFrame',
        tn: null,
        ps: [{
            n: 'timeInstant',
            rq: true,
            en: {
              lp: 'TimeInstant',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.TimeInstantType'
          }]
      }, {
        ln: 'NotificationTargetType',
        tn: 'notificationTargetType',
        ps: [{
            n: 'notificationID',
            rq: true,
            ti: 'Token'
          }, {
            n: 'notificationURL',
            rq: true
          }]
      }, {
        ln: 'GetFeasibilityRequestResponse.Alternative',
        tn: null,
        ps: [{
            n: 'inputParameter',
            rq: true,
            col: true,
            en: 'InputParameter',
            ti: '.InputParameterType'
          }]
      }, {
        ln: 'SubmitRequestResponse',
        tn: null,
        ps: [{
            n: 'taskID',
            rq: true,
            ti: 'Token'
          }, {
            n: 'status',
            rq: true
          }, {
            n: 'description',
            en: {
              lp: 'description',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.StringOrRefType'
          }, {
            n: 'latestResponseTime',
            rq: true,
            en: 'LatestResponseTime',
            ti: '.LatestResponseTime'
          }, {
            n: 'estimatedToC',
            ti: '.EstimatedToC'
          }, {
            n: 'alternative',
            mno: 0,
            col: true,
            ti: '.SubmitRequestResponse.Alternative'
          }]
      }, {
        ln: 'GetStatusRequestType',
        bti: '.RequestBaseType',
        ps: [{
            n: 'notificationTarget',
            ti: '.NotificationTargetType'
          }, {
            n: 'taskID',
            rq: true,
            ti: 'Token'
          }]
      }, {
        ln: 'GetFeasibilityRequestType',
        bti: '.RequestBaseType',
        ps: [{
            n: 'notificationTarget',
            rq: true,
            ti: '.NotificationTargetType'
          }, {
            n: 'sensorID',
            rq: true,
            ti: '.SensorIDType'
          }, {
            n: 'parameters',
            rq: true,
            ti: '.ParametersType'
          }, {
            n: 'timeFrame',
            ti: '.TimeFrame'
          }]
      }, {
        ln: 'SensorIDType',
        tn: 'sensorIDType',
        ps: [{
            n: 'value',
            ti: 'Token',
            t: 'v'
          }]
      }, {
        ln: 'CancelRequestResponse',
        tn: null,
        ps: [{
            n: 'taskID',
            rq: true,
            ti: 'Token'
          }, {
            n: 'status',
            rq: true
          }, {
            n: 'description',
            en: {
              lp: 'description',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.StringOrRefType'
          }]
      }, {
        ln: 'SPSContentsType',
        ps: [{
            n: 'sensorOfferingList',
            rq: true,
            en: 'SensorOfferingList',
            ti: '.SPSContentsType.SensorOfferingList'
          }, {
            n: 'phenomenonOfferingList',
            rq: true,
            en: 'PhenomenonOfferingList',
            ti: '.SPSContentsType.PhenomenonOfferingList'
          }]
      }, {
        ln: 'AreaOfServiceType',
        ps: [{
            n: 'boundingBox',
            rq: true,
            mx: false,
            dom: false,
            en: {
              lp: 'BoundingBox',
              ns: 'http:\/\/www.opengis.net\/ows'
            },
            ti: 'OWS_1_0_0.BoundingBoxType',
            t: 'er'
          }, {
            n: 'pos',
            rq: true,
            en: {
              lp: 'pos',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.DirectPositionType'
          }, {
            n: 'polygon',
            rq: true,
            en: {
              lp: 'Polygon',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.PolygonType'
          }, {
            n: 'solid',
            rq: true,
            en: {
              lp: 'Solid',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.SolidType'
          }]
      }, {
        ln: 'DescribeResultAccessRequestResponse',
        tn: null,
        ps: [{
            n: 'service',
            rq: true,
            col: true,
            ti: '.DescribeResultAccessRequestResponse.Service'
          }, {
            n: 'dataNotAvailable',
            rq: true,
            en: 'DataNotAvailable',
            ti: '.DescribeResultAccessRequestResponse.DataNotAvailable'
          }]
      }, {
        ln: 'RequestBaseType',
        ps: [{
            n: 'service',
            rq: true,
            an: {
              lp: 'service'
            },
            t: 'a'
          }, {
            n: 'version',
            rq: true,
            an: {
              lp: 'version'
            },
            t: 'a'
          }]
      }, {
        ln: 'GetCapabilities',
        tn: null,
        bti: 'OWS_1_0_0.GetCapabilitiesType',
        ps: [{
            n: 'service',
            rq: true,
            an: {
              lp: 'service'
            },
            t: 'a'
          }]
      }, {
        ln: 'SPSContentsType.PhenomenonOfferingList',
        tn: null,
        ps: [{
            n: 'phenomenonOffering',
            rq: true,
            col: true,
            en: 'PhenomenonOffering',
            ti: '.SPSContentsType.PhenomenonOfferingList.PhenomenonOffering'
          }]
      }, {
        ln: 'Capabilities',
        tn: null,
        bti: 'OWS_1_0_0.CapabilitiesBaseType',
        ps: [{
            n: 'contents',
            en: 'Contents',
            ti: '.SPSContentsType'
          }]
      }, {
        ln: 'SubmitRequestType',
        bti: '.RequestBaseType',
        ps: [{
            n: 'notificationTarget',
            rq: true,
            ti: '.NotificationTargetType'
          }, {
            n: 'sensorParam',
            rq: true,
            ti: '.SubmitRequestType.SensorParam'
          }, {
            n: 'feasibilityID',
            rq: true
          }, {
            n: 'timeFrame',
            ti: '.TimeFrame'
          }]
      }, {
        ln: 'SPSMessage',
        tn: null,
        ps: [{
            n: 'feasibilityResponse',
            rq: true,
            en: 'FeasibilityResponse',
            ti: '.SPSMessage.FeasibilityResponse'
          }, {
            n: 'submitResponse',
            rq: true,
            en: 'SubmitResponse',
            ti: '.SPSMessage.SubmitResponse'
          }, {
            n: 'statusInformation',
            rq: true,
            en: 'StatusInformation',
            ti: '.SPSMessage.StatusInformation'
          }, {
            n: 'updateRequest',
            rq: true,
            en: 'UpdateRequest',
            ti: '.SPSMessage.UpdateRequest'
          }, {
            n: 'updateResponse',
            rq: true,
            en: 'UpdateResponse',
            ti: '.SPSMessage.UpdateResponse'
          }, {
            n: 'spsCorrID',
            rq: true,
            ti: 'Token',
            an: {
              lp: 'SPSCorrID'
            },
            t: 'a'
          }]
      }, {
        ln: 'EstimatedToC',
        tn: null,
        ps: [{
            n: 'timeInstant',
            rq: true,
            en: {
              lp: 'TimeInstant',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.TimeInstantType'
          }]
      }, {
        ln: 'UpdateRequestResponse.MissingParameters',
        tn: null,
        ps: [{
            n: 'inputDescriptor',
            rq: true,
            en: 'InputDescriptor',
            ti: '.InputDescriptor'
          }]
      }],
    eis: [{
        en: 'Submit',
        ti: '.SubmitRequestType'
      }, {
        en: 'TaskMessageDefinition',
        ti: '.TaskMessageDefinitionType',
        sh: {
          lp: 'Definition',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'feasibilityID'
      }, {
        en: 'TaskMessageDictionary',
        ti: 'GML_3_1_1.DictionaryType'
      }, {
        en: 'CancelRequestResponse',
        ti: '.CancelRequestResponse'
      }, {
        en: 'GetStatusRequestResponse',
        ti: '.GetStatusRequestResponse'
      }, {
        en: 'notificationTarget',
        ti: '.NotificationTargetType'
      }, {
        en: 'InputParameter',
        ti: '.InputParameterType'
      }, {
        en: 'estimatedToC',
        ti: '.EstimatedToC'
      }, {
        en: 'DescribeTasking',
        ti: '.DescribeTaskingRequestType'
      }, {
        en: 'GetStatus',
        ti: '.GetStatusRequestType'
      }, {
        en: 'timeFrame',
        ti: '.TimeFrame'
      }, {
        en: 'Cancel',
        ti: '.CancelRequestType'
      }, {
        en: 'Update',
        ti: '.UpdateRequestType'
      }, {
        en: 'parameters',
        ti: '.ParametersType'
      }, {
        en: 'UpdateRequestResponse',
        ti: '.UpdateRequestResponse'
      }, {
        en: 'InputDescriptor',
        ti: '.InputDescriptor'
      }, {
        en: 'GetCapabilities',
        ti: '.GetCapabilities'
      }, {
        en: 'DescribeTaskingRequestResponse',
        ti: '.DescribeTaskingRequestResponseType'
      }, {
        en: 'SPSMessage',
        ti: '.SPSMessage'
      }, {
        en: 'SubmitRequestResponse',
        ti: '.SubmitRequestResponse'
      }, {
        en: 'GetFeasibilityRequestResponse',
        ti: '.GetFeasibilityRequestResponse'
      }, {
        en: 'taskID',
        ti: 'Token'
      }, {
        en: 'LatestResponseTime',
        ti: '.LatestResponseTime'
      }, {
        en: 'Contents',
        ti: '.SPSContentsType'
      }, {
        en: 'DescribeResultAccess',
        ti: '.DescribeResultAccessRequestType'
      }, {
        en: 'sensorID',
        ti: '.SensorIDType'
      }, {
        en: 'Capabilities',
        ti: '.Capabilities'
      }, {
        en: 'GetFeasibility',
        ti: '.GetFeasibilityRequestType'
      }, {
        en: 'DescribeResultAccessRequestResponse',
        ti: '.DescribeResultAccessRequestResponse'
      }]
  };
  return {
    SPS_1_0_0: SPS_1_0_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], SPS_1_0_0_Module_Factory);
}
else {
  var SPS_1_0_0_Module = SPS_1_0_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.SPS_1_0_0 = SPS_1_0_0_Module.SPS_1_0_0;
  }
  else {
    var SPS_1_0_0 = SPS_1_0_0_Module.SPS_1_0_0;
  }
}