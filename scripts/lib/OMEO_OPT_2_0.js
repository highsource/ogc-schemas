var OMEO_OPT_2_0_Module_Factory = function () {
  var OMEO_OPT_2_0 = {
    n: 'OMEO_OPT_2_0',
    dens: 'http:\/\/www.opengis.net\/opt\/2.0',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['XLink_1_0', 'OMEO_EOP_2_0', 'GML_3_2_1'],
    tis: [{
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
        ln: 'EarthObservationResultType',
        bti: 'OMEO_EOP_2_0.EarthObservationResultType',
        ps: [{
            n: 'cloudCoverPercentage',
            ti: 'GML_3_2_1.MeasureType'
          }, {
            n: 'cloudCoverPercentageAssessmentConfidence',
            ti: 'GML_3_2_1.MeasureType'
          }, {
            n: 'cloudCoverPercentageQuotationMode',
            ti: 'OMEO_EOP_2_0.EarthObservationResultPropertyType'
          }, {
            n: 'snowCoverPercentage',
            ti: 'GML_3_2_1.MeasureType'
          }, {
            n: 'snowCoverPercentageAssessmentConfidence',
            ti: 'GML_3_2_1.MeasureType'
          }, {
            n: 'snowCoverPercentageQuotationMode',
            ti: 'OMEO_EOP_2_0.EarthObservationResultPropertyType'
          }]
      }, {
        ln: 'EarthObservationType',
        bti: 'OMEO_EOP_2_0.EarthObservationType'
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
        en: 'EarthObservation',
        ti: '.EarthObservationType',
        sh: {
          lp: 'EarthObservation',
          ns: 'http:\/\/www.opengis.net\/eop\/2.0'
        }
      }]
  };
  return {
    OMEO_OPT_2_0: OMEO_OPT_2_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], OMEO_OPT_2_0_Module_Factory);
}
else {
  var OMEO_OPT_2_0_Module = OMEO_OPT_2_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.OMEO_OPT_2_0 = OMEO_OPT_2_0_Module.OMEO_OPT_2_0;
  }
  else {
    var OMEO_OPT_2_0 = OMEO_OPT_2_0_Module.OMEO_OPT_2_0;
  }
}