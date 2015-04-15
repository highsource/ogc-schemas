var SPS_2_0_Module_Factory = function () {
  var SPS_2_0 = {
    n: 'SPS_2_0',
    dens: 'http:\/\/www.opengis.net\/sps\/2.0',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['XLink_1_0', 'OWS_1_1_0', 'SWE_2_0', 'SWES_2_0', 'GML_3_2_1'],
    tis: [{
        ln: 'CapabilitiesPropertyType',
        ps: [{
            n: 'capabilities',
            en: 'Capabilities',
            ti: '.CapabilitiesType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'GetCapabilitiesPropertyType',
        ps: [{
            n: 'getCapabilities',
            en: 'GetCapabilities',
            ti: '.GetCapabilitiesType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'DescribeResultAccessResponseType',
        bti: 'SWES_2_0.ExtensibleResponseType',
        ps: [{
            n: 'availability',
            ti: '.DescribeResultAccessResponseType.Availability'
          }]
      }, {
        ln: 'SubmitResponseType',
        bti: '.TaskingResponseType'
      }, {
        ln: 'SPSMetadataPropertyType',
        ps: [{
            n: 'spsMetadata',
            en: 'SPSMetadata',
            ti: '.SPSMetadataType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'GetTaskResponsePropertyType',
        ps: [{
            n: 'getTaskResponse',
            en: 'GetTaskResponse',
            ti: '.GetTaskResponseType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'DescribeTaskingType',
        bti: 'SWES_2_0.ExtensibleRequestType',
        ps: [{
            n: 'procedure'
          }]
      }, {
        ln: 'ReservationReportPropertyType',
        ps: [{
            n: 'reservationReport',
            en: 'ReservationReport',
            ti: '.ReservationReportType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'ConfirmType',
        bti: 'SWES_2_0.ExtensibleRequestType',
        ps: [{
            n: 'task'
          }]
      }, {
        ln: 'DataNotAvailableType',
        ps: [{
            n: 'unavailableCode'
          }, {
            n: 'message',
            col: true,
            ti: 'OWS_1_1_0.LanguageStringType'
          }]
      }, {
        ln: 'DescribeResultAccessPropertyType',
        ps: [{
            n: 'describeResultAccess',
            en: 'DescribeResultAccess',
            ti: '.DescribeResultAccessType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'UpdatePropertyType',
        ps: [{
            n: 'update',
            en: 'Update',
            ti: '.UpdateType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'PointOrPolygonPropertyType.ByPolygon',
        tn: null,
        ps: [{
            n: 'polygon',
            en: {
              lp: 'Polygon',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.PolygonType'
          }]
      }, {
        ln: 'SubmitPropertyType',
        ps: [{
            n: 'submit',
            en: 'Submit',
            ti: '.SubmitType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'DescribeResultAccessResponseType.Availability',
        tn: null,
        ps: [{
            n: 'available',
            ti: '.AvailableOrNotPropertyType.Available'
          }, {
            n: 'unavailable',
            ti: '.AvailableOrNotPropertyType.Unavailable'
          }]
      }, {
        ln: 'GetStatusResponseType',
        bti: 'SWES_2_0.ExtensibleResponseType',
        ps: [{
            n: 'status',
            col: true,
            ti: '.GetStatusResponseType.Status'
          }]
      }, {
        ln: 'ReserveResponsePropertyType',
        ps: [{
            n: 'reserveResponse',
            en: 'ReserveResponse',
            ti: '.ReserveResponseType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'GetTaskResponseType.Task',
        tn: null,
        ps: [{
            n: 'task',
            en: 'Task',
            ti: '.TaskType'
          }]
      }, {
        ln: 'GetStatusPropertyType',
        ps: [{
            n: 'getStatus',
            en: 'GetStatus',
            ti: '.GetStatusType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'ConfirmPropertyType',
        ps: [{
            n: 'confirm',
            en: 'Confirm',
            ti: '.ConfirmType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'StatusReportType.Alternative',
        tn: null,
        ps: [{
            n: 'alternative',
            en: 'Alternative',
            ti: '.AlternativeType'
          }]
      }, {
        ln: 'DescribeTaskingResponseType',
        bti: 'SWES_2_0.ExtensibleResponseType',
        ps: [{
            n: 'taskingParameters',
            ti: '.DescribeTaskingResponseType.TaskingParameters'
          }]
      }, {
        ln: 'GetStatusResponsePropertyType',
        ps: [{
            n: 'getStatusResponse',
            en: 'GetStatusResponse',
            ti: '.GetStatusResponseType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'DataAvailablePropertyType',
        ps: [{
            n: 'dataAvailable',
            en: 'DataAvailable',
            ti: '.DataAvailableType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'TaskPropertyType',
        ps: [{
            n: 'task',
            en: 'Task',
            ti: '.TaskType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'AvailableOrNotPropertyType',
        ps: [{
            n: 'available',
            ti: '.AvailableOrNotPropertyType.Available'
          }, {
            n: 'unavailable',
            ti: '.AvailableOrNotPropertyType.Unavailable'
          }, {
            n: 'unionSemantics',
            an: {
              lp: 'unionSemantics'
            },
            t: 'a'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'SensorOfferingType',
        bti: 'SWES_2_0.AbstractOfferingType',
        ps: [{
            n: 'observableArea',
            ti: '.SensorOfferingType.ObservableArea'
          }]
      }, {
        ln: 'ParameterDataType',
        ps: [{
            n: 'encoding',
            ti: '.ParameterDataType.Encoding'
          }, {
            n: 'values',
            ti: 'AnyType'
          }]
      }, {
        ln: 'SubmitResponsePropertyType',
        ps: [{
            n: 'submitResponse',
            en: 'SubmitResponse',
            ti: '.SubmitResponseType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'StatusReportPropertyType',
        ps: [{
            n: 'statusReport',
            mx: false,
            dom: false,
            en: 'StatusReport',
            ti: '.StatusReportType',
            t: 'er'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'GetTaskType',
        bti: 'SWES_2_0.ExtensibleRequestType',
        ps: [{
            n: 'task',
            col: true
          }]
      }, {
        ln: 'AvailableOrNotPropertyType.Available',
        tn: null,
        ps: [{
            n: 'dataAvailable',
            en: 'DataAvailable',
            ti: '.DataAvailableType'
          }]
      }, {
        ln: 'ParameterDataPropertyType',
        ps: [{
            n: 'parameterData',
            en: 'ParameterData',
            ti: '.ParameterDataType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'GetFeasibilityType',
        bti: '.TaskingRequestType'
      }, {
        ln: 'AvailableOrNotPropertyType.Unavailable',
        tn: null,
        ps: [{
            n: 'dataNotAvailable',
            en: 'DataNotAvailable',
            ti: '.DataNotAvailableType'
          }]
      }, {
        ln: 'DescribeResultAccessResponsePropertyType',
        ps: [{
            n: 'describeResultAccessResponse',
            en: 'DescribeResultAccessResponse',
            ti: '.DescribeResultAccessResponseType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'TaskingRequestType',
        bti: 'SWES_2_0.ExtensibleRequestType',
        ps: [{
            n: 'procedure'
          }, {
            n: 'taskingParameters',
            ti: '.TaskingRequestType.TaskingParameters'
          }, {
            n: 'latestResponseTime',
            ti: 'Calendar'
          }]
      }, {
        ln: 'CancelResponsePropertyType',
        ps: [{
            n: 'cancelResponse',
            en: 'CancelResponse',
            ti: '.CancelResponseType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'CapabilitiesType',
        bti: 'OWS_1_1_0.CapabilitiesBaseType',
        ps: [{
            n: 'notifications',
            ti: '.CapabilitiesType.Notifications'
          }, {
            n: 'contents',
            ti: '.CapabilitiesType.Contents'
          }, {
            n: 'extension',
            col: true,
            ti: 'AnyType'
          }]
      }, {
        ln: 'TaskType',
        bti: 'SWES_2_0.AbstractSWESType',
        ps: [{
            n: 'status',
            col: true,
            ti: '.StatusReportPropertyType'
          }]
      }, {
        ln: 'AlternativePropertyType',
        ps: [{
            n: 'alternative',
            en: 'Alternative',
            ti: '.AlternativeType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'SubmitType',
        bti: '.TaskingRequestType'
      }, {
        ln: 'TaskingResponsePropertyType',
        ps: [{
            n: 'taskingResponse',
            mx: false,
            dom: false,
            en: 'TaskingResponse',
            ti: '.TaskingResponseType',
            t: 'er'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'DescribeTaskingPropertyType',
        ps: [{
            n: 'describeTasking',
            en: 'DescribeTasking',
            ti: '.DescribeTaskingType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'AlternativeType.TaskingParameters',
        tn: null,
        ps: [{
            n: 'parameterData',
            en: 'ParameterData',
            ti: '.ParameterDataType'
          }]
      }, {
        ln: 'TaskingResponseType',
        bti: 'SWES_2_0.ExtensibleResponseType',
        ps: [{
            n: 'latestResponseTime',
            ti: 'Calendar'
          }, {
            n: 'result',
            ti: '.TaskingResponseType.Result'
          }]
      }, {
        ln: 'DescribeTaskingResponsePropertyType',
        ps: [{
            n: 'describeTaskingResponse',
            en: 'DescribeTaskingResponse',
            ti: '.DescribeTaskingResponseType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'GetFeasibilityResponseType',
        bti: '.TaskingResponseType'
      }, {
        ln: 'StatusReportType',
        bti: 'SWES_2_0.AbstractSWESType',
        ps: [{
            n: 'task'
          }, {
            n: 'estimatedToC',
            ti: 'Calendar'
          }, {
            n: 'event'
          }, {
            n: 'percentCompletion',
            ti: 'Double'
          }, {
            n: 'procedure'
          }, {
            n: 'requestStatus'
          }, {
            n: 'statusMessage',
            col: true,
            ti: 'OWS_1_1_0.LanguageStringType'
          }, {
            n: 'taskStatus'
          }, {
            n: 'updateTime',
            ti: 'Calendar'
          }, {
            n: 'alternative',
            col: true,
            ti: '.StatusReportType.Alternative'
          }, {
            n: 'taskingParameters',
            ti: '.ParameterDataPropertyType'
          }]
      }, {
        ln: 'SPSMetadataType',
        ps: [{
            n: 'dataAccessType'
          }]
      }, {
        ln: 'GetTaskResponseType',
        bti: 'SWES_2_0.ExtensibleResponseType',
        ps: [{
            n: 'task',
            col: true,
            ti: '.GetTaskResponseType.Task'
          }]
      }, {
        ln: 'DataAvailableType.DataReference',
        tn: null,
        ps: [{
            n: 'referenceGroup',
            en: {
              lp: 'ReferenceGroup',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.ReferenceGroupType'
          }]
      }, {
        ln: 'DataNotAvailablePropertyType',
        ps: [{
            n: 'dataNotAvailable',
            en: 'DataNotAvailable',
            ti: '.DataNotAvailableType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'CapabilitiesType.Contents',
        tn: null,
        ps: [{
            n: 'spsContents',
            en: 'SPSContents',
            ti: '.SPSContentsType'
          }]
      }, {
        ln: 'SPSContentsType',
        bti: 'SWES_2_0.AbstractContentsType',
        ps: [{
            n: 'minStatusTime'
          }, {
            n: 'supportedEncoding',
            col: true
          }]
      }, {
        ln: 'GetFeasibilityPropertyType',
        ps: [{
            n: 'getFeasibility',
            en: 'GetFeasibility',
            ti: '.GetFeasibilityType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'ReservePropertyType',
        ps: [{
            n: 'reserve',
            en: 'Reserve',
            ti: '.ReserveType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'GetFeasibilityResponsePropertyType',
        ps: [{
            n: 'getFeasibilityResponse',
            en: 'GetFeasibilityResponse',
            ti: '.GetFeasibilityResponseType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'TaskingRequestPropertyType',
        ps: [{
            n: 'taskingRequest',
            mx: false,
            dom: false,
            en: 'TaskingRequest',
            ti: '.TaskingRequestType',
            t: 'er'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'DescribeResultAccessType',
        bti: 'SWES_2_0.ExtensibleRequestType',
        ps: [{
            n: 'target',
            ti: '.DescribeResultAccessType.Target'
          }]
      }, {
        ln: 'DataAvailableType',
        ps: [{
            n: 'dataReference',
            col: true,
            ti: '.DataAvailableType.DataReference'
          }]
      }, {
        ln: 'TaskingResponseType.Result',
        tn: null,
        ps: [{
            n: 'statusReport',
            mx: false,
            dom: false,
            en: 'StatusReport',
            ti: '.StatusReportType',
            t: 'er'
          }]
      }, {
        ln: 'CancelPropertyType',
        ps: [{
            n: 'cancel',
            en: 'Cancel',
            ti: '.CancelType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'ParameterDataType.Encoding',
        tn: null,
        ps: [{
            n: 'abstractEncoding',
            mx: false,
            dom: false,
            en: {
              lp: 'AbstractEncoding',
              ns: 'http:\/\/www.opengis.net\/swe\/2.0'
            },
            ti: 'SWE_2_0.AbstractEncodingType',
            t: 'er'
          }]
      }, {
        ln: 'CancelResponseType.Result',
        tn: null,
        ps: [{
            n: 'statusReport',
            mx: false,
            dom: false,
            en: 'StatusReport',
            ti: '.StatusReportType',
            t: 'er'
          }]
      }, {
        ln: 'GetTaskPropertyType',
        ps: [{
            n: 'getTask',
            en: 'GetTask',
            ti: '.GetTaskType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'AlternativeType',
        bti: 'SWES_2_0.AbstractSWESType',
        ps: [{
            n: 'alternativeDescription',
            col: true,
            en: 'description',
            ti: 'OWS_1_1_0.LanguageStringType'
          }, {
            n: 'taskingParameters',
            ti: '.AlternativeType.TaskingParameters'
          }]
      }, {
        ln: 'ReservationReportType',
        bti: '.StatusReportType',
        ps: [{
            n: 'reservationExpiration',
            ti: 'Calendar'
          }]
      }, {
        ln: 'GetCapabilitiesType',
        bti: 'OWS_1_1_0.GetCapabilitiesType',
        ps: [{
            n: 'extension',
            col: true,
            ti: 'AnyType'
          }, {
            n: 'service',
            an: {
              lp: 'service'
            },
            t: 'a'
          }]
      }, {
        ln: 'ConfirmResponseType.Result',
        tn: null,
        ps: [{
            n: 'statusReport',
            mx: false,
            dom: false,
            en: 'StatusReport',
            ti: '.StatusReportType',
            t: 'er'
          }]
      }, {
        ln: 'CancelType',
        bti: 'SWES_2_0.ExtensibleRequestType',
        ps: [{
            n: 'task'
          }]
      }, {
        ln: 'GetStatusResponseType.Status',
        tn: null,
        ps: [{
            n: 'statusReport',
            mx: false,
            dom: false,
            en: 'StatusReport',
            ti: '.StatusReportType',
            t: 'er'
          }]
      }, {
        ln: 'ConfirmResponsePropertyType',
        ps: [{
            n: 'confirmResponse',
            en: 'ConfirmResponse',
            ti: '.ConfirmResponseType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'UpdateResponseType',
        bti: '.TaskingResponseType',
        ps: [{
            n: 'targetTask'
          }]
      }, {
        ln: 'UpdateType',
        bti: '.TaskingRequestType',
        ps: [{
            n: 'targetTask'
          }]
      }, {
        ln: 'PointOrPolygonPropertyType.ByPoint',
        tn: null,
        ps: [{
            n: 'point',
            en: {
              lp: 'Point',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.PointType'
          }]
      }, {
        ln: 'SensorOfferingType.ObservableArea',
        tn: null,
        ps: [{
            n: 'byPoint',
            ti: '.PointOrPolygonPropertyType.ByPoint'
          }, {
            n: 'byPolygon',
            ti: '.PointOrPolygonPropertyType.ByPolygon'
          }]
      }, {
        ln: 'ConfirmResponseType',
        bti: 'SWES_2_0.ExtensibleResponseType',
        ps: [{
            n: 'result',
            ti: '.ConfirmResponseType.Result'
          }]
      }, {
        ln: 'TaskOrProcessPropertyType',
        ps: [{
            n: 'task'
          }, {
            n: 'procedure'
          }, {
            n: 'unionSemantics',
            an: {
              lp: 'unionSemantics'
            },
            t: 'a'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'DescribeTaskingResponseType.TaskingParameters',
        tn: null,
        ps: [{
            n: 'abstractDataComponent',
            mx: false,
            dom: false,
            en: {
              lp: 'AbstractDataComponent',
              ns: 'http:\/\/www.opengis.net\/swe\/2.0'
            },
            ti: 'SWE_2_0.AbstractDataComponentType',
            t: 'er'
          }, {
            n: 'name',
            an: {
              lp: 'name'
            },
            t: 'a'
          }]
      }, {
        ln: 'UpdateResponsePropertyType',
        ps: [{
            n: 'updateResponse',
            en: 'UpdateResponse',
            ti: '.UpdateResponseType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'CapabilitiesType.Notifications',
        tn: null,
        ps: [{
            n: 'notificationProducerMetadata',
            mx: false,
            dom: false,
            en: {
              lp: 'NotificationProducerMetadata',
              ns: 'http:\/\/www.opengis.net\/swes\/2.0'
            },
            ti: 'SWES_2_0.NotificationProducerMetadataType',
            t: 'er'
          }]
      }, {
        ln: 'DescribeResultAccessType.Target',
        tn: null,
        ps: [{
            n: 'task'
          }, {
            n: 'procedure'
          }]
      }, {
        ln: 'TaskingRequestType.TaskingParameters',
        tn: null,
        ps: [{
            n: 'parameterData',
            en: 'ParameterData',
            ti: '.ParameterDataType'
          }]
      }, {
        ln: 'ReserveResponseType',
        bti: '.TaskingResponseType'
      }, {
        ln: 'PointOrPolygonPropertyType',
        ps: [{
            n: 'byPoint',
            ti: '.PointOrPolygonPropertyType.ByPoint'
          }, {
            n: 'byPolygon',
            ti: '.PointOrPolygonPropertyType.ByPolygon'
          }, {
            n: 'unionSemantics',
            an: {
              lp: 'unionSemantics'
            },
            t: 'a'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'GetStatusType',
        bti: 'SWES_2_0.ExtensibleRequestType',
        ps: [{
            n: 'task'
          }, {
            n: 'since',
            ti: 'Calendar'
          }]
      }, {
        ln: 'SensorOfferingPropertyType',
        ps: [{
            n: 'sensorOffering',
            en: 'SensorOffering',
            ti: '.SensorOfferingType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'ReserveType',
        bti: '.TaskingRequestType',
        ps: [{
            n: 'reservationExpiration',
            ti: 'Calendar'
          }]
      }, {
        ln: 'SPSContentsPropertyType',
        ps: [{
            n: 'spsContents',
            en: 'SPSContents',
            ti: '.SPSContentsType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'CancelResponseType',
        bti: 'SWES_2_0.ExtensibleResponseType',
        ps: [{
            n: 'result',
            ti: '.CancelResponseType.Result'
          }]
      }, {
        t: 'enum',
        ln: 'TaskStatusCodeEnumerationType',
        vs: ['Cancelled', 'Completed', 'Expired', 'Failed', 'InExecution', 'Reserved']
      }, {
        t: 'enum',
        ln: 'AvailableOrNotUnionSemantics',
        vs: ['available', 'unavailable']
      }, {
        t: 'enum',
        ln: 'TaskOrProcessUnionSemantics',
        vs: ['task', 'procedure']
      }, {
        t: 'enum',
        ln: 'PointOrPolygonUnionSemantics',
        vs: ['byPoint', 'byPolygon']
      }, {
        t: 'enum',
        ln: 'EventCodeEnumerationType',
        vs: ['DataPublished', 'ReservationExpired', 'TaskCancelled', 'TaskCompleted', 'TaskConfirmed', 'TaskFailed', 'TaskingRequestExpired', 'TaskReserved', 'TaskSubmitted', 'TaskUpdated']
      }, {
        t: 'enum',
        ln: 'TaskingRequestStatusCodeEnumerationType',
        vs: ['Accepted', 'Pending', 'Rejected']
      }, {
        t: 'enum',
        ln: 'UnavailableCodeEnumerationType',
        vs: ['DataNotAvailable', 'DataServiceUnavailable']
      }],
    eis: [{
        en: 'Reserve',
        ti: '.ReserveType',
        sh: 'TaskingRequest'
      }, {
        en: 'DescribeTaskingResponse',
        ti: '.DescribeTaskingResponseType',
        sh: {
          lp: 'ExtensibleResponse',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'GetFeasibilityResponse',
        ti: '.GetFeasibilityResponseType',
        sh: 'TaskingResponse'
      }, {
        en: 'DescribeResultAccess',
        ti: '.DescribeResultAccessType',
        sh: {
          lp: 'ExtensibleRequest',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'GetStatus',
        ti: '.GetStatusType',
        sh: {
          lp: 'ExtensibleRequest',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'SPSMetadata',
        ti: '.SPSMetadataType',
        sh: {
          lp: 'AbstractMetaData',
          ns: 'http:\/\/www.opengis.net\/ows\/1.1'
        }
      }, {
        en: 'GetFeasibility',
        ti: '.GetFeasibilityType',
        sh: 'TaskingRequest'
      }, {
        en: 'DescribeResultAccessResponse',
        ti: '.DescribeResultAccessResponseType',
        sh: {
          lp: 'ExtensibleResponse',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'Capabilities',
        ti: '.CapabilitiesType'
      }, {
        en: 'TaskingRequest',
        ti: '.TaskingRequestType',
        sh: {
          lp: 'ExtensibleRequest',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'SPSContents',
        ti: '.SPSContentsType',
        sh: {
          lp: 'AbstractContents',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'ReservationReport',
        ti: '.ReservationReportType',
        sh: 'StatusReport'
      }, {
        en: 'Alternative',
        ti: '.AlternativeType',
        sh: {
          lp: 'AbstractSWES',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'UpdateResponse',
        ti: '.UpdateResponseType',
        sh: 'TaskingResponse'
      }, {
        en: 'SensorOffering',
        ti: '.SensorOfferingType',
        sh: {
          lp: 'AbstractOffering',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'GetTask',
        ti: '.GetTaskType',
        sh: {
          lp: 'ExtensibleRequest',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'CancelResponse',
        ti: '.CancelResponseType',
        sh: {
          lp: 'ExtensibleResponse',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'ReserveResponse',
        ti: '.ReserveResponseType',
        sh: 'TaskingResponse'
      }, {
        en: 'DataNotAvailable',
        ti: '.DataNotAvailableType'
      }, {
        en: 'Task',
        ti: '.TaskType',
        sh: {
          lp: 'AbstractSWES',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'GetTaskResponse',
        ti: '.GetTaskResponseType',
        sh: {
          lp: 'ExtensibleResponse',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'TaskingResponse',
        ti: '.TaskingResponseType',
        sh: {
          lp: 'ExtensibleResponse',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'Cancel',
        ti: '.CancelType',
        sh: {
          lp: 'ExtensibleRequest',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'DescribeTasking',
        ti: '.DescribeTaskingType',
        sh: {
          lp: 'ExtensibleRequest',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'StatusReport',
        ti: '.StatusReportType',
        sh: {
          lp: 'AbstractSWES',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'GetStatusResponse',
        ti: '.GetStatusResponseType',
        sh: {
          lp: 'ExtensibleResponse',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'SubmitResponse',
        ti: '.SubmitResponseType',
        sh: 'TaskingResponse'
      }, {
        en: 'Update',
        ti: '.UpdateType',
        sh: 'TaskingRequest'
      }, {
        en: 'DataAvailable',
        ti: '.DataAvailableType'
      }, {
        en: 'ConfirmResponse',
        ti: '.ConfirmResponseType',
        sh: {
          lp: 'ExtensibleResponse',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'GetCapabilities',
        ti: '.GetCapabilitiesType',
        sh: {
          lp: 'GetCapabilities',
          ns: 'http:\/\/www.opengis.net\/ows\/1.1'
        }
      }, {
        en: 'Submit',
        ti: '.SubmitType',
        sh: 'TaskingRequest'
      }, {
        en: 'Confirm',
        ti: '.ConfirmType',
        sh: {
          lp: 'ExtensibleRequest',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'ParameterData',
        ti: '.ParameterDataType'
      }]
  };
  return {
    SPS_2_0: SPS_2_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], SPS_2_0_Module_Factory);
}
else {
  var SPS_2_0_Module = SPS_2_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.SPS_2_0 = SPS_2_0_Module.SPS_2_0;
  }
  else {
    var SPS_2_0 = SPS_2_0_Module.SPS_2_0;
  }
}