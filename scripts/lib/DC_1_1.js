var DC_1_1_Module_Factory = function () {
  var DC_1_1 = {
    name: 'DC_1_1',
    defaultElementNamespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/',
    typeInfos: [{
        type: 'classInfo',
        localName: 'SimpleLiteral',
        propertyInfos: [{
            name: 'content',
            collection: true,
            mixed: true,
            elementTypeInfos: [],
            type: 'elementRefs'
          }, {
            name: 'scheme',
            typeInfo: 'String',
            attributeName: 'scheme',
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'ElementContainer',
        propertyInfos: [{
            name: 'dcElement',
            collection: true,
            elementName: 'DC-element',
            typeInfo: 'DC_1_1.SimpleLiteral',
            type: 'elementRef'
          }]
      }],
    elementInfos: [{
        elementName: 'contributor',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'rights',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'description',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'title',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'DC-element',
        typeInfo: 'DC_1_1.SimpleLiteral'
      }, {
        elementName: 'coverage',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'creator',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'date',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'subject',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'language',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'source',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'type',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'relation',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'publisher',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'identifier',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'format',
        typeInfo: 'DC_1_1.SimpleLiteral',
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
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.DC_1_1 = DC_1_1_Module_Factory().DC_1_1;
  }
  else {
    var DC_1_1 = DC_1_1_Module_Factory().DC_1_1;
  }
}