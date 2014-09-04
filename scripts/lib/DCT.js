var DCT_Module_Factory = function () {
  var DCT = {
    name: 'DCT',
    defaultElementNamespaceURI: 'http:\/\/purl.org\/dc\/terms\/',
    typeInfos: [],
    elementInfos: [{
        elementName: 'modified',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'date',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'isVersionOf',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'relation',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'issued',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'date',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'spatial',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'coverage',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'isReplacedBy',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'relation',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'temporal',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'coverage',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'extent',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'format',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'rightsHolder',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'DC-element',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'isFormatOf',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'relation',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'references',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'relation',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'available',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'date',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'license',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'rights',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'bibliographicCitation',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'identifier',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'conformsTo',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'relation',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'mediator',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: 'audience'
      }, {
        elementName: 'tableOfContents',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'description',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'dateSubmitted',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'date',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'requires',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'relation',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'audience',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'DC-element',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'hasPart',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'relation',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'created',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'date',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'isPartOf',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'relation',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'isReferencedBy',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'relation',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'valid',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'date',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'provenance',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'DC-element',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'educationLevel',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: 'audience'
      }, {
        elementName: 'hasVersion',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'relation',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'dateAccepted',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'date',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'medium',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'format',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'dateCopyrighted',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'date',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'accessRights',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'rights',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'isRequiredBy',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'relation',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'hasFormat',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'relation',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'replaces',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'relation',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'alternative',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'title',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'abstract',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'description',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
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
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.DCT = DCT_Module_Factory().DCT;
  }
  else {
    var DCT = DCT_Module_Factory().DCT;
  }
}