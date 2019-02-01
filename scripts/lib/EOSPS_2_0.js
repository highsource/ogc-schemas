var EOSPS_2_0_Module_Factory = function () {
  var EOSPS_2_0 = {
    n: 'EOSPS_2_0',
    dens: 'http:\/\/www.opengis.net\/eosps\/2.0',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['XLink_1_0', 'SWES_2_0', 'GML_3_2_1', 'EOP_1_0', 'SPS_2_0'],
    tis: [{
        ln: 'GridCellType',
        ps: [{
            n: 'footprint',
            rq: true,
            ti: '.GridCellType.Footprint'
          }, {
            n: 'status',
            rq: true
          }, {
            n: 'successRate',
            rq: true,
            ti: 'Double'
          }, {
            n: 'estimatedSuccessDate',
            ti: 'DateTime'
          }, {
            n: 'lastAttemptDate',
            ti: 'DateTime'
          }, {
            n: 'nextAttemptDate',
            ti: 'DateTime'
          }, {
            n: 'remainingAttempts',
            ti: 'Integer'
          }, {
            n: 'extension',
            mno: 0,
            col: true,
            ti: 'AnyType'
          }, {
            n: 'id',
            rq: true,
            ti: 'ID',
            an: {
              lp: 'id',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }]
      }, {
        ln: 'SegmentType',
        ps: [{
            n: 'footprint',
            rq: true,
            ti: '.SegmentType.Footprint'
          }, {
            n: 'acquisitionStartTime',
            rq: true,
            ti: 'DateTime'
          }, {
            n: 'acquisitionStopTime',
            rq: true,
            ti: 'DateTime'
          }, {
            n: 'acquisitionMethod',
            rq: true,
            ti: 'EOP_1_0.EarthObservationEquipmentPropertyType'
          }, {
            n: 'status',
            rq: true
          }, {
            n: 'relatedSegment',
            mno: 0,
            col: true,
            ti: 'GML_3_2_1.ReferenceType'
          }, {
            n: 'extension',
            mno: 0,
            col: true,
            ti: 'AnyType'
          }, {
            n: 'id',
            rq: true,
            ti: 'ID',
            an: {
              lp: 'id',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }]
      }, {
        ln: 'GetSensorAvailabilityType',
        bti: 'SWES_2_0.ExtensibleRequestType',
        ps: [{
            n: 'sensor',
            rq: true
          }, {
            n: 'requestPeriod',
            rq: true,
            ti: '.GetSensorAvailabilityType.RequestPeriod'
          }]
      }, {
        ln: 'ValidatePropertyType',
        ps: [{
            n: 'validate',
            rq: true,
            en: 'Validate',
            ti: '.ValidateType'
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
        ln: 'GridCellPropertyType',
        ps: [{
            n: 'gridCell',
            rq: true,
            en: 'GridCell',
            ti: '.GridCellType'
          }]
      }, {
        ln: 'FeasibilityStudyType',
        ps: [{
            n: 'expirationDate',
            rq: true,
            ti: 'DateTime'
          }, {
            n: 'estimatedCost',
            ti: 'GML_3_2_1.MeasureType'
          }, {
            n: 'successRate',
            rq: true,
            ti: 'Double'
          }, {
            n: 'informationUsed',
            rq: true,
            col: true
          }, {
            n: 'extension',
            mno: 0,
            col: true,
            ti: 'AnyType'
          }, {
            n: 'segment',
            mno: 0,
            col: true,
            ti: '.SegmentPropertyType'
          }, {
            n: 'cell',
            mno: 0,
            col: true,
            ti: '.GridCellPropertyType'
          }, {
            n: 'id',
            ti: 'ID',
            an: {
              lp: 'id',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }]
      }, {
        ln: 'ProgrammingStatusType',
        ps: [{
            n: 'extension',
            mno: 0,
            col: true,
            ti: 'AnyType'
          }, {
            n: 'segment',
            rq: true,
            col: true,
            ti: '.SegmentPropertyType'
          }, {
            n: 'cell',
            mno: 0,
            col: true,
            ti: '.GridCellPropertyType'
          }, {
            n: 'id',
            ti: 'ID',
            an: {
              lp: 'id',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }]
      }, {
        ln: 'GetSensorAvailabilityResponseType.ResponsePeriod',
        tn: null,
        ps: [{
            n: 'timePeriod',
            rq: true,
            en: {
              lp: 'TimePeriod',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.TimePeriodType'
          }]
      }, {
        ln: 'GridCellType.Footprint',
        tn: null,
        ps: [{
            n: 'polygon',
            rq: true,
            en: {
              lp: 'Polygon',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.PolygonType'
          }]
      }, {
        ln: 'ValidateResponseType',
        bti: 'SWES_2_0.ExtensibleResponseType',
        ps: [{
            n: 'result',
            rq: true,
            ti: 'SPS_2_0.StatusReportPropertyType'
          }]
      }, {
        ln: 'GetSensorAvailabilityResponsePropertyType',
        ps: [{
            n: 'getSensorAvailabilityResponse',
            rq: true,
            en: 'GetSensorAvailabilityResponse',
            ti: '.GetSensorAvailabilityResponseType'
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
        ln: 'SubmitSegmentByIDPropertyType',
        ps: [{
            n: 'submitSegmentByID',
            rq: true,
            en: 'SubmitSegmentByID',
            ti: '.SubmitSegmentByIDType'
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
        ln: 'GetSensorAvailabilityPropertyType',
        ps: [{
            n: 'getSensorAvailability',
            rq: true,
            en: 'GetSensorAvailability',
            ti: '.GetSensorAvailabilityType'
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
        ln: 'FeasibilityStudyPropertyType',
        ps: [{
            n: 'feasibilityStudy',
            rq: true,
            en: 'FeasibilityStudy',
            ti: '.FeasibilityStudyType'
          }]
      }, {
        ln: 'SegmentPropertyType',
        ps: [{
            n: 'segment',
            rq: true,
            en: 'Segment',
            ti: '.SegmentType'
          }]
      }, {
        ln: 'GetSensorAvailabilityResponseType.AvailabilityPeriod',
        tn: null,
        ps: [{
            n: 'timePeriod',
            rq: true,
            en: {
              lp: 'TimePeriod',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.TimePeriodType'
          }]
      }, {
        ln: 'GetSensorAvailabilityType.RequestPeriod',
        tn: null,
        ps: [{
            n: 'timePeriod',
            rq: true,
            en: {
              lp: 'TimePeriod',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.TimePeriodType'
          }]
      }, {
        ln: 'GetSensorAvailabilityResponseType',
        bti: 'SWES_2_0.ExtensibleResponseType',
        ps: [{
            n: 'responsePeriod',
            rq: true,
            ti: '.GetSensorAvailabilityResponseType.ResponsePeriod'
          }, {
            n: 'availabilityPeriod',
            mno: 0,
            col: true,
            ti: '.GetSensorAvailabilityResponseType.AvailabilityPeriod'
          }]
      }, {
        ln: 'ProgrammingStatusPropertyType',
        ps: [{
            n: 'programmingStatus',
            rq: true,
            en: 'ProgrammingStatus',
            ti: '.ProgrammingStatusType'
          }]
      }, {
        ln: 'ValidateType',
        bti: 'SWES_2_0.ExtensibleRequestType',
        ps: [{
            n: 'task',
            rq: true
          }, {
            n: 'segmentID',
            rq: true,
            col: true,
            ti: 'NCName'
          }]
      }, {
        ln: 'ValidateResponsePropertyType',
        ps: [{
            n: 'validateResponse',
            rq: true,
            en: 'ValidateResponse',
            ti: '.ValidateResponseType'
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
        ln: 'SubmitSegmentByIDType',
        bti: 'SWES_2_0.ExtensibleRequestType',
        ps: [{
            n: 'task',
            rq: true
          }, {
            n: 'segmentID',
            rq: true,
            col: true,
            ti: 'NCName'
          }]
      }, {
        ln: 'SegmentType.Footprint',
        tn: null,
        ps: [{
            n: 'polygon',
            rq: true,
            en: {
              lp: 'Polygon',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.PolygonType'
          }]
      }, {
        t: 'enum',
        ln: 'InformationTypeEnumerationType',
        vs: ['KINEMATIC MODEL', 'CLIMATE STATISTICS', 'WEATHER FORECAST', 'ESTIMATED WORKLOAD', 'REAL WORKLOAD']
      }, {
        t: 'enum',
        ln: 'StatusCodeEnumerationType',
        vs: ['PLANNED', 'POTENTIAL', 'ACQUIRED', 'VALIDATED', 'CANCELLED', 'FAILED', 'REJECTED']
      }, {
        t: 'enum',
        ln: 'FeasibilityLevelEnumerationType',
        vs: ['SIMPLE', 'COMPLETE']
      }],
    eis: [{
        en: 'GridCell',
        ti: '.GridCellType',
        sh: {
          lp: 'AbstractObject',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'GetSensorAvailability',
        ti: '.GetSensorAvailabilityType',
        sh: {
          lp: 'ExtensibleRequest',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'ValidateResponse',
        ti: '.ValidateResponseType',
        sh: {
          lp: 'ExtensibleResponse',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'GetSensorAvailabilityResponse',
        ti: '.GetSensorAvailabilityResponseType',
        sh: {
          lp: 'ExtensibleResponse',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'SubmitSegmentByID',
        ti: '.SubmitSegmentByIDType',
        sh: {
          lp: 'ExtensibleRequest',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'ReferenceFeasibilityID'
      }, {
        en: 'Validate',
        ti: '.ValidateType',
        sh: {
          lp: 'ExtensibleRequest',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'FeasibilityLevel'
      }, {
        en: 'Segment',
        ti: '.SegmentType',
        sh: {
          lp: 'AbstractObject',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'FeasibilityStudy',
        ti: '.FeasibilityStudyType',
        sh: {
          lp: 'AbstractObject',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'ManualValidation',
        ti: 'Boolean'
      }, {
        en: 'ProgrammingStatus',
        ti: '.ProgrammingStatusType',
        sh: {
          lp: 'AbstractObject',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }]
  };
  return {
    EOSPS_2_0: EOSPS_2_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], EOSPS_2_0_Module_Factory);
}
else {
  var EOSPS_2_0_Module = EOSPS_2_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.EOSPS_2_0 = EOSPS_2_0_Module.EOSPS_2_0;
  }
  else {
    var EOSPS_2_0 = EOSPS_2_0_Module.EOSPS_2_0;
  }
}