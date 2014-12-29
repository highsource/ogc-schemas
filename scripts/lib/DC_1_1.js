var DC_1_1_Module_Factory = function () {
  var DC_1_1 = {
    n: 'DC_1_1',
    dens: 'http:\/\/purl.org\/dc\/elements\/1.1\/',
    tis: [{
        ln: 'SimpleLiteral',
        ps: [{
            n: 'content',
            col: true,
            dom: false,
            typed: false,
            t: 'ers'
          }, {
            n: 'scheme',
            an: {
              lp: 'scheme'
            },
            t: 'a'
          }]
      }, {
        ln: 'ElementContainer',
        ps: [{
            n: 'dcElement',
            col: true,
            mx: false,
            dom: false,
            typed: false,
            en: 'DC-element',
            ti: '.SimpleLiteral',
            t: 'er'
          }]
      }],
    eis: [{
        en: 'title',
        ti: '.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'date',
        ti: '.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'source',
        ti: '.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'DC-element',
        ti: '.SimpleLiteral'
      }, {
        en: 'language',
        ti: '.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'contributor',
        ti: '.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'relation',
        ti: '.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'creator',
        ti: '.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'type',
        ti: '.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'format',
        ti: '.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'identifier',
        ti: '.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'rights',
        ti: '.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'description',
        ti: '.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'subject',
        ti: '.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'coverage',
        ti: '.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'publisher',
        ti: '.SimpleLiteral',
        sh: 'DC-element'
      }]
  };
  return {
    DC_1_1: DC_1_1
  };
};
if (typeof define === 'function' && define.amd) {
  define([], DC_1_1_Module_Factory);
}
else {
  var DC_1_1_Module = DC_1_1_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.DC_1_1 = DC_1_1_Module.DC_1_1;
  }
  else {
    var DC_1_1 = DC_1_1_Module.DC_1_1;
  }
}