var GML_LRTR_3_3_Module_Factory = function () {
  var GML_LRTR_3_3 = {
    n: 'GML_LRTR_3_3',
    dens: 'http:\/\/www.opengis.net\/gml\/3.3\/lrtr',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['GML_LR_3_3', 'XLink_1_0'],
    tis: [{
        ln: 'DualAlongReferentPropertyType',
        ps: [{
            n: 'dualAlongReferent',
            rq: true,
            en: 'DualAlongReferent',
            ti: '.DualAlongReferentType'
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
        ln: 'DualAlongReferentType',
        bti: 'GML_LR_3_3.AlongReferentType',
        ps: [{
            n: 'towardsReferent',
            ti: 'GML_LR_3_3.ReferentPropertyType'
          }]
      }],
    eis: [{
        en: 'DualAlongReferent',
        ti: '.DualAlongReferentType',
        sh: {
          lp: 'AlongReferent',
          ns: 'http:\/\/www.opengis.net\/gml\/3.3\/lr'
        }
      }]
  };
  return {
    GML_LRTR_3_3: GML_LRTR_3_3
  };
};
if (typeof define === 'function' && define.amd) {
  define([], GML_LRTR_3_3_Module_Factory);
}
else {
  var GML_LRTR_3_3_Module = GML_LRTR_3_3_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.GML_LRTR_3_3 = GML_LRTR_3_3_Module.GML_LRTR_3_3;
  }
  else {
    var GML_LRTR_3_3 = GML_LRTR_3_3_Module.GML_LRTR_3_3;
  }
}