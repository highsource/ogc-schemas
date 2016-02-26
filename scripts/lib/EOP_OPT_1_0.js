var EOP_OPT_1_0_Module_Factory = function () {
  var EOP_OPT_1_0 = {
    n: 'EOP_OPT_1_0',
    dens: 'http:\/\/earth.esa.int\/opt',
    deps: ['EOP_1_0', 'GML_3_1_1'],
    tis: [{
        ln: 'EarthObservationResultType',
        bti: 'EOP_1_0.EarthObservationResultType',
        ps: [{
            n: 'cloudCoverPercentage',
            ti: 'GML_3_1_1.MeasureType'
          }, {
            n: 'cloudCoverPercentageAssessmentConfidence',
            ti: 'GML_3_1_1.MeasureType'
          }, {
            n: 'cloudCoverPercentageQuotationMode'
          }, {
            n: 'snowCoverPercentage',
            ti: 'GML_3_1_1.MeasureType'
          }, {
            n: 'snowCoverPercentageAssessmentConfidence',
            ti: 'GML_3_1_1.MeasureType'
          }, {
            n: 'snowCoverPercentageQuotationMode'
          }]
      }, {
        ln: 'EarthObservationType',
        bti: 'EOP_1_0.EarthObservationType'
      }, {
        ln: 'AcquisitionType',
        bti: 'EOP_1_0.AcquisitionType',
        ps: [{
            n: 'illuminationAzimuthAngle',
            ti: 'GML_3_1_1.AngleType'
          }, {
            n: 'illuminationElevationAngle',
            ti: 'GML_3_1_1.AngleType'
          }]
      }],
    eis: [{
        en: 'EarthObservation',
        ti: '.EarthObservationType',
        sh: {
          lp: 'EarthObservation',
          ns: 'http:\/\/earth.esa.int\/eop'
        }
      }, {
        en: 'Acquisition',
        ti: '.AcquisitionType',
        sh: {
          lp: 'Acquisition',
          ns: 'http:\/\/earth.esa.int\/eop'
        }
      }, {
        en: 'EarthObservationResult',
        ti: '.EarthObservationResultType',
        sh: {
          lp: 'EarthObservationResult',
          ns: 'http:\/\/earth.esa.int\/eop'
        }
      }]
  };
  return {
    EOP_OPT_1_0: EOP_OPT_1_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], EOP_OPT_1_0_Module_Factory);
}
else {
  var EOP_OPT_1_0_Module = EOP_OPT_1_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.EOP_OPT_1_0 = EOP_OPT_1_0_Module.EOP_OPT_1_0;
  }
  else {
    var EOP_OPT_1_0 = EOP_OPT_1_0_Module.EOP_OPT_1_0;
  }
}