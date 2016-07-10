var WCS_Interpolation_1_0_Module_Factory = function () {
  var WCS_Interpolation_1_0 = {
    n: 'WCS_Interpolation_1_0',
    dens: 'http:\/\/www.opengis.net\/wcs\/interpolation\/1.0',
    tis: [{
        ln: 'InterpolationType',
        ps: [{
            n: 'globalInterpolation',
            rq: true
          }, {
            n: 'interpolationPerAxis',
            mno: 0,
            col: true,
            en: 'InterpolationPerAxis',
            ti: '.InterpolationPerAxisType'
          }]
      }, {
        ln: 'InterpolationPerAxisType',
        ps: [{
            n: 'axis',
            rq: true
          }, {
            n: 'interpolationMethod',
            rq: true
          }]
      }, {
        ln: 'InterpolationMetadataType',
        ps: [{
            n: 'interpolationSupported',
            mno: 0,
            col: true
          }]
      }],
    eis: [{
        en: 'Interpolation',
        ti: '.InterpolationType'
      }, {
        en: 'InterpolationMetadata',
        ti: '.InterpolationMetadataType'
      }]
  };
  return {
    WCS_Interpolation_1_0: WCS_Interpolation_1_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], WCS_Interpolation_1_0_Module_Factory);
}
else {
  var WCS_Interpolation_1_0_Module = WCS_Interpolation_1_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.WCS_Interpolation_1_0 = WCS_Interpolation_1_0_Module.WCS_Interpolation_1_0;
  }
  else {
    var WCS_Interpolation_1_0 = WCS_Interpolation_1_0_Module.WCS_Interpolation_1_0;
  }
}