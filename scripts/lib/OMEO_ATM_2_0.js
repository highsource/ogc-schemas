var OMEO_ATM_2_0_Module_Factory = function () {
  var OMEO_ATM_2_0 = {
    n: 'OMEO_ATM_2_0',
    dens: 'http:\/\/www.opengis.net\/atm\/2.0',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['XLink_1_0', 'GML_3_2_1', 'OMEO_EOP_2_0'],
    tis: [{
        ln: 'EarthObservationEquipmentType',
        bti: 'OMEO_EOP_2_0.EarthObservationEquipmentType',
        ps: [{
            n: 'acquisition',
            ti: 'OMEO_EOP_2_0.AcquisitionPropertyType'
          }]
      }, {
        ln: 'EarthObservationType',
        bti: 'OMEO_EOP_2_0.EarthObservationType'
      }, {
        ln: 'AcquisitionPropertyType',
        ps: [{
            n: 'acquisition',
            rq: true,
            en: 'Acquisition',
            ti: '.AcquisitionType'
          }, {
            n: 'owns',
            ti: 'Boolean',
            an: {
              lp: 'owns'
            },
            t: 'a'
          }]
      }, {
        ln: 'AcquisitionType',
        bti: 'OMEO_EOP_2_0.AcquisitionType',
        ps: [{
            n: 'multiViewAngles',
            rq: true,
            ti: 'GML_3_2_1.MeasureOrNilReasonListType'
          }, {
            n: 'centreViewAngles',
            rq: true,
            ti: 'GML_3_2_1.MeasureOrNilReasonListType'
          }]
      }, {
        ln: 'EarthObservationResultType',
        bti: 'OMEO_EOP_2_0.EarthObservationResultType',
        ps: [{
            n: 'dataLayers',
            mno: 0,
            col: true,
            ti: '.DataLayerPropertyType'
          }, {
            n: 'cloudCoverPercentage',
            ti: 'GML_3_2_1.MeasureType'
          }, {
            n: 'cloudCoverPercentageAssessmentConfidence',
            ti: 'GML_3_2_1.MeasureType'
          }, {
            n: 'cloudCoverPercentageQuotationMode'
          }, {
            n: 'snowCoverPercentage',
            ti: 'GML_3_2_1.MeasureType'
          }, {
            n: 'snowCoverPercentageAssessmentConfidence',
            ti: 'GML_3_2_1.MeasureType'
          }, {
            n: 'snowCoverPercentageQuotationMode'
          }]
      }, {
        ln: 'EarthObservationPropertyType',
        ps: [{
            n: 'earthObservation',
            rq: true,
            en: 'EarthObservation',
            ti: '.EarthObservationType'
          }, {
            n: 'owns',
            ti: 'Boolean',
            an: {
              lp: 'owns'
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
        ln: 'EarthObservationResultPropertyType',
        ps: [{
            n: 'earthObservationResult',
            rq: true,
            en: 'EarthObservationResult',
            ti: '.EarthObservationResultType'
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
          }, {
            n: 'owns',
            ti: 'Boolean',
            an: {
              lp: 'owns'
            },
            t: 'a'
          }]
      }, {
        ln: 'EarthObservationEquipmentPropertyType',
        ps: [{
            n: 'earthObservationEquipment',
            rq: true,
            en: 'EarthObservationEquipment',
            ti: '.EarthObservationEquipmentType'
          }, {
            n: 'owns',
            ti: 'Boolean',
            an: {
              lp: 'owns'
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
        ln: 'DataLayerPropertyType',
        ps: [{
            n: 'dataLayer',
            rq: true,
            en: 'DataLayer',
            ti: '.DataLayerType'
          }, {
            n: 'owns',
            ti: 'Boolean',
            an: {
              lp: 'owns'
            },
            t: 'a'
          }]
      }, {
        ln: 'DataLayerType',
        ps: [{
            n: 'speciesError',
            ti: 'GML_3_2_1.MeasureType'
          }, {
            n: 'unit'
          }, {
            n: 'verticalRange',
            ti: 'GML_3_2_1.DirectPositionListType'
          }, {
            n: 'species'
          }, {
            n: 'algorithmName'
          }, {
            n: 'algorithmVersion'
          }]
      }, {
        t: 'enum',
        ln: 'PercentageCoverQuotationModeValueEnumerationType',
        vs: ['AUTOMATIC', 'MANUAL']
      }],
    eis: [{
        en: 'EarthObservationResult',
        ti: '.EarthObservationResultType',
        sh: {
          lp: 'EarthObservationResult',
          ns: 'http:\/\/www.opengis.net\/eop\/2.0'
        }
      }, {
        en: 'DataLayer',
        ti: '.DataLayerType',
        sh: {
          lp: 'AbstractObject',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'EarthObservationEquipment',
        ti: '.EarthObservationEquipmentType',
        sh: {
          lp: 'EarthObservationEquipment',
          ns: 'http:\/\/www.opengis.net\/eop\/2.0'
        }
      }, {
        en: 'EarthObservation',
        ti: '.EarthObservationType',
        sh: {
          lp: 'EarthObservation',
          ns: 'http:\/\/www.opengis.net\/eop\/2.0'
        }
      }, {
        en: 'Acquisition',
        ti: '.AcquisitionType',
        sh: {
          lp: 'Acquisition',
          ns: 'http:\/\/www.opengis.net\/eop\/2.0'
        }
      }]
  };
  return {
    OMEO_ATM_2_0: OMEO_ATM_2_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], OMEO_ATM_2_0_Module_Factory);
}
else {
  var OMEO_ATM_2_0_Module = OMEO_ATM_2_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.OMEO_ATM_2_0 = OMEO_ATM_2_0_Module.OMEO_ATM_2_0;
  }
  else {
    var OMEO_ATM_2_0 = OMEO_ATM_2_0_Module.OMEO_ATM_2_0;
  }
}