var WCS_Scaling_1_0_Module_Factory = function () {
  var WCS_Scaling_1_0 = {
    n: 'WCS_Scaling_1_0',
    dens: 'http:\/\/www.opengis.net\/WCS_service-extension_scaling\/1.0',
    tis: [{
        ln: 'TargetAxisSizeType',
        ps: [{
            n: 'axis',
            rq: true
          }, {
            n: 'targetSize',
            rq: true,
            ti: 'Decimal'
          }]
      }, {
        ln: 'ScalingType',
        ps: [{
            n: 'scaleByFactor',
            rq: true,
            en: 'ScaleByFactor',
            ti: '.ScaleByFactorType'
          }, {
            n: 'scaleAxesByFactor',
            rq: true,
            en: 'ScaleAxesByFactor',
            ti: '.ScaleAxesByFactorType'
          }, {
            n: 'scaleToSize',
            rq: true,
            en: 'ScaleToSize',
            ti: '.ScaleToSizeType'
          }, {
            n: 'scaleToExtent',
            rq: true,
            en: 'ScaleToExtent',
            ti: '.ScaleToExtentType'
          }]
      }, {
        ln: 'ScaleToExtentType',
        ps: [{
            n: 'targetAxisExtent',
            rq: true,
            col: true,
            en: 'TargetAxisExtent',
            ti: '.TargetAxisExtentType'
          }]
      }, {
        ln: 'ScaleToSizeType',
        ps: [{
            n: 'targetAxisSize',
            rq: true,
            col: true,
            en: 'TargetAxisSize',
            ti: '.TargetAxisSizeType'
          }]
      }, {
        ln: 'ScaleByFactorType',
        ps: [{
            n: 'scaleFactor',
            rq: true,
            ti: 'Decimal'
          }]
      }, {
        ln: 'TargetAxisExtentType',
        ps: [{
            n: 'axis',
            rq: true
          }, {
            n: 'low',
            rq: true,
            ti: 'Decimal'
          }, {
            n: 'high',
            rq: true,
            ti: 'Decimal'
          }]
      }, {
        ln: 'ScaleAxisType',
        ps: [{
            n: 'axis',
            rq: true
          }, {
            n: 'scaleFactor',
            rq: true,
            ti: 'Decimal'
          }]
      }, {
        ln: 'ScaleAxesByFactorType',
        ps: [{
            n: 'scaleAxis',
            rq: true,
            col: true,
            en: 'ScaleAxis',
            ti: '.ScaleAxisType'
          }]
      }],
    eis: [{
        en: 'Scaling',
        ti: '.ScalingType'
      }]
  };
  return {
    WCS_Scaling_1_0: WCS_Scaling_1_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], WCS_Scaling_1_0_Module_Factory);
}
else {
  var WCS_Scaling_1_0_Module = WCS_Scaling_1_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.WCS_Scaling_1_0 = WCS_Scaling_1_0_Module.WCS_Scaling_1_0;
  }
  else {
    var WCS_Scaling_1_0 = WCS_Scaling_1_0_Module.WCS_Scaling_1_0;
  }
}