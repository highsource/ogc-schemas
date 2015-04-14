var WAMI_Common_1_0_0_Module_Factory = function () {
  var WAMI_Common_1_0_0 = {
    n: 'WAMI_Common_1_0_0',
    tis: [{
        ln: 'CommonAbstractWamiRequestType',
        tn: {
          ns: 'http:\/\/www.pixia.com\/wami\/common',
          lp: 'CommonAbstractWamiRequestType'
        },
        ps: [{
            n: 'service',
            an: {
              lp: 'service'
            },
            t: 'a'
          }, {
            n: 'request',
            an: {
              lp: 'request'
            },
            t: 'a'
          }, {
            n: 'version',
            an: {
              lp: 'version'
            },
            t: 'a'
          }]
      }, {
        t: 'enum',
        ln: 'ServiceNameType',
        vs: ['CS', 'IS', 'VS', 'RS', 'QS', 'VCSS', 'VFS']
      }],
    eis: []
  };
  return {
    WAMI_Common_1_0_0: WAMI_Common_1_0_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], WAMI_Common_1_0_0_Module_Factory);
}
else {
  var WAMI_Common_1_0_0_Module = WAMI_Common_1_0_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.WAMI_Common_1_0_0 = WAMI_Common_1_0_0_Module.WAMI_Common_1_0_0;
  }
  else {
    var WAMI_Common_1_0_0 = WAMI_Common_1_0_0_Module.WAMI_Common_1_0_0;
  }
}