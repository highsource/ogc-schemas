var DC_1_1_Module_Factory = function () {
  var DC_1_1 = {
    name: 'DC_1_1',
    defaultElementNamespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/',
    typeInfos: [{
        localName: 'ElementContainer',
        propertyInfos: [{
            name: 'dcElement',
            collection: true,
            mixed: false,
            allowDom: false,
            allowTypedObject: false,
            elementName: 'DC-element',
            typeInfo: '.SimpleLiteral',
            type: 'elementRef'
          }]
      }, {
        localName: 'SimpleLiteral',
        propertyInfos: [{
            name: 'content',
            collection: true,
            allowDom: false,
            allowTypedObject: false,
            type: 'elementRefs'
          }, {
            name: 'scheme',
            attributeName: {
              localPart: 'scheme'
            },
            type: 'attribute'
          }]
      }],
    elementInfos: [{
        elementName: 'coverage',
        typeInfo: '.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'type',
        typeInfo: '.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'source',
        typeInfo: '.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'DC-element',
        typeInfo: '.SimpleLiteral'
      }, {
        elementName: 'format',
        typeInfo: '.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'title',
        typeInfo: '.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'subject',
        typeInfo: '.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'identifier',
        typeInfo: '.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'rights',
        typeInfo: '.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'description',
        typeInfo: '.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'language',
        typeInfo: '.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'contributor',
        typeInfo: '.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'date',
        typeInfo: '.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'creator',
        typeInfo: '.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'relation',
        typeInfo: '.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'publisher',
        typeInfo: '.SimpleLiteral',
        substitutionHead: 'DC-element'
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