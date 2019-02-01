var WMS_1_3_0_Exceptions_Module_Factory = function () {
  var WMS_1_3_0_Exceptions = {
    n: 'WMS_1_3_0_Exceptions',
    dens: 'http:\/\/www.opengis.net\/ogc',
    tis: [{
        ln: 'ServiceExceptionType',
        ps: [{
            n: 'value',
            t: 'v'
          }, {
            n: 'code',
            an: {
              lp: 'code'
            },
            t: 'a'
          }, {
            n: 'locator',
            an: {
              lp: 'locator'
            },
            t: 'a'
          }]
      }, {
        ln: 'ServiceExceptionReport',
        tn: null,
        ps: [{
            n: 'serviceException',
            mno: 0,
            col: true,
            en: 'ServiceException',
            ti: '.ServiceExceptionType'
          }, {
            n: 'version',
            an: {
              lp: 'version'
            },
            t: 'a'
          }]
      }],
    eis: [{
        en: 'ServiceExceptionReport',
        ti: '.ServiceExceptionReport'
      }]
  };
  return {
    WMS_1_3_0_Exceptions: WMS_1_3_0_Exceptions
  };
};
if (typeof define === 'function' && define.amd) {
  define([], WMS_1_3_0_Exceptions_Module_Factory);
}
else {
  var WMS_1_3_0_Exceptions_Module = WMS_1_3_0_Exceptions_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.WMS_1_3_0_Exceptions = WMS_1_3_0_Exceptions_Module.WMS_1_3_0_Exceptions;
  }
  else {
    var WMS_1_3_0_Exceptions = WMS_1_3_0_Exceptions_Module.WMS_1_3_0_Exceptions;
  }
}