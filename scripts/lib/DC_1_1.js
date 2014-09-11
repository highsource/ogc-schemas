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
            ti: 'DC_1_1.SimpleLiteral',
            t: 'er'
          }]
      }],
    eis: [{
        en: 'contributor',
        ti: 'DC_1_1.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'rights',
        ti: 'DC_1_1.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'description',
        ti: 'DC_1_1.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'title',
        ti: 'DC_1_1.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'DC-element',
        ti: 'DC_1_1.SimpleLiteral'
      }, {
        en: 'coverage',
        ti: 'DC_1_1.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'creator',
        ti: 'DC_1_1.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'date',
        ti: 'DC_1_1.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'subject',
        ti: 'DC_1_1.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'language',
        ti: 'DC_1_1.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'source',
        ti: 'DC_1_1.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'type',
        ti: 'DC_1_1.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'relation',
        ti: 'DC_1_1.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'publisher',
        ti: 'DC_1_1.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'identifier',
        ti: 'DC_1_1.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'format',
        ti: 'DC_1_1.SimpleLiteral',
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
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.DC_1_1 = DC_1_1_Module_Factory().DC_1_1;
  }
  else {
    var DC_1_1 = DC_1_1_Module_Factory().DC_1_1;
  }
}