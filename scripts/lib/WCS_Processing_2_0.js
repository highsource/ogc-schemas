var WCS_Processing_2_0_Module_Factory = function () {
  var WCS_Processing_2_0 = {
    n: 'WCS_Processing_2_0',
    dens: 'http:\/\/www.opengis.net\/wcs\/processing\/2.0',
    deps: ['WCS_2_0'],
    tis: [{
        ln: 'ProcessCoveragesType',
        bti: 'WCS_2_0.RequestBaseType',
        ps: [{
            n: 'query',
            rq: true
          }, {
            n: 'any',
            mno: 0,
            col: true,
            mx: false,
            t: 'ae'
          }]
      }],
    eis: [{
        en: 'ProcessCoverages',
        ti: '.ProcessCoveragesType'
      }]
  };
  return {
    WCS_Processing_2_0: WCS_Processing_2_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], WCS_Processing_2_0_Module_Factory);
}
else {
  var WCS_Processing_2_0_Module = WCS_Processing_2_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.WCS_Processing_2_0 = WCS_Processing_2_0_Module.WCS_Processing_2_0;
  }
  else {
    var WCS_Processing_2_0 = WCS_Processing_2_0_Module.WCS_Processing_2_0;
  }
}