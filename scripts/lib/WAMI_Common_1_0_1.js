var WAMI_Common_1_0_1_Module_Factory = function () {
  var WAMI_Common_1_0_1 = {
    n: 'WAMI_Common_1_0_1',
    tis: [{
        ln: 'CommonAbstractWamiRequestType',
        tn: {
          ns: 'http:\/\/www.pixia.com\/wami\/common',
          lp: 'CommonAbstractWamiRequestType'
        },
        ps: [{
            n: 'service',
            rq: true,
            an: {
              lp: 'service'
            },
            t: 'a'
          }, {
            n: 'request',
            rq: true,
            an: {
              lp: 'request'
            },
            t: 'a'
          }, {
            n: 'version',
            rq: true,
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
    WAMI_Common_1_0_1: WAMI_Common_1_0_1
  };
};
if (typeof define === 'function' && define.amd) {
  define([], WAMI_Common_1_0_1_Module_Factory);
}
else {
  var WAMI_Common_1_0_1_Module = WAMI_Common_1_0_1_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.WAMI_Common_1_0_1 = WAMI_Common_1_0_1_Module.WAMI_Common_1_0_1;
  }
  else {
    var WAMI_Common_1_0_1 = WAMI_Common_1_0_1_Module.WAMI_Common_1_0_1;
  }
}