var DCT_Module_Factory = function () {
  var DCT = {
    n: 'DCT',
    dens: 'http:\/\/purl.org\/dc\/terms\/',
    deps: ['DC_1_1'],
    tis: [],
    eis: [{
        en: 'extent',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'format',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'audience',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'DC-element',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'alternative',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'title',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'modified',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'date',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'educationLevel',
        ti: 'DC_1_1.SimpleLiteral',
        sh: 'audience'
      }, {
        en: 'spatial',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'coverage',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'hasPart',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'relation',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'dateAccepted',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'date',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'hasVersion',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'relation',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'provenance',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'DC-element',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'replaces',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'relation',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'mediator',
        ti: 'DC_1_1.SimpleLiteral',
        sh: 'audience'
      }, {
        en: 'hasFormat',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'relation',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'bibliographicCitation',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'identifier',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'accessRights',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'rights',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'isRequiredBy',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'relation',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'isReplacedBy',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'relation',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'abstract',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'description',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'medium',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'format',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'isVersionOf',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'relation',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'references',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'relation',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'temporal',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'coverage',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'issued',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'date',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'dateSubmitted',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'date',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'isReferencedBy',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'relation',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'license',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'rights',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'requires',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'relation',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'conformsTo',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'relation',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'available',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'date',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'isFormatOf',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'relation',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'isPartOf',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'relation',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'rightsHolder',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'DC-element',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'created',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'date',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'tableOfContents',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'description',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'valid',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'date',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'dateCopyrighted',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'date',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }]
  };
  return {
    DCT: DCT
  };
};
if (typeof define === 'function' && define.amd) {
  define([], DCT_Module_Factory);
}
else {
  var DCT_Module = DCT_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.DCT = DCT_Module.DCT;
  }
  else {
    var DCT = DCT_Module.DCT;
  }
}