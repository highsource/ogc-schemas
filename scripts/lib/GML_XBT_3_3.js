var GML_XBT_3_3_Module_Factory = function () {
  var GML_XBT_3_3 = {
    n: 'GML_XBT_3_3',
    dens: 'http:\/\/www.opengis.net\/gml\/3.3\/xbt',
    dans: 'http:\/\/www.w3.org\/XML\/1998\/namespace',
    deps: ['GML_3_2_1'],
    tis: [{
        ln: 'CodeType',
        bti: '.LanguageStringType',
        ps: [{
            n: 'codeSpace',
            an: {
              lp: 'codeSpace'
            },
            t: 'a'
          }]
      }, {
        ln: 'CodeWithAuthorityType',
        bti: '.CodeType'
      }, {
        ln: 'LanguageStringAuxType',
        bti: 'GML_3_2_1.StringOrRefType',
        ps: [{
            n: 'lang',
            t: 'a'
          }]
      }, {
        ln: 'LanguageStringType',
        ps: [{
            n: 'value',
            t: 'v'
          }, {
            n: 'lang',
            t: 'a'
          }]
      }],
    eis: [{
        en: 'remarks',
        ti: '.LanguageStringType',
        sh: {
          lp: 'remarks',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'description',
        ti: '.LanguageStringAuxType',
        sh: {
          lp: 'description',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }]
  };
  return {
    GML_XBT_3_3: GML_XBT_3_3
  };
};
if (typeof define === 'function' && define.amd) {
  define([], GML_XBT_3_3_Module_Factory);
}
else {
  var GML_XBT_3_3_Module = GML_XBT_3_3_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.GML_XBT_3_3 = GML_XBT_3_3_Module.GML_XBT_3_3;
  }
  else {
    var GML_XBT_3_3 = GML_XBT_3_3_Module.GML_XBT_3_3;
  }
}