var Atom_1_0_Module_Factory = function () {
  var Atom_1_0 = {
    name: 'Atom_1_0',
    defaultElementNamespaceURI: 'http:\/\/www.w3.org\/2005\/Atom',
    typeInfos: [{
        type: 'classInfo',
        localName: 'AtomPersonConstruct',
        propertyInfos: [{
            name: 'nameOrUriOrEmail',
            collection: true,
            elementTypeInfos: [{
                elementName: 'uri',
                typeInfo: 'String'
              }, {
                elementName: 'email',
                typeInfo: 'String'
              }, {
                elementName: 'name',
                typeInfo: 'String'
              }],
            type: 'elementRefs'
          }]
      }, {
        type: 'classInfo',
        localName: 'Link',
        propertyInfos: [{
            name: 'href',
            typeInfo: 'String',
            attributeName: 'href',
            type: 'attribute'
          }, {
            name: 'rel',
            typeInfo: 'String',
            attributeName: 'rel',
            type: 'attribute'
          }, {
            name: 'type',
            typeInfo: 'String',
            attributeName: 'type',
            type: 'attribute'
          }, {
            name: 'hreflang',
            typeInfo: 'String',
            attributeName: 'hreflang',
            type: 'attribute'
          }, {
            name: 'title',
            typeInfo: 'String',
            attributeName: 'title',
            type: 'attribute'
          }, {
            name: 'length',
            typeInfo: 'String',
            attributeName: 'length',
            type: 'attribute'
          }]
      }],
    elementInfos: [{
        elementName: 'link',
        typeInfo: 'Atom_1_0.Link'
      }, {
        elementName: 'author',
        typeInfo: 'Atom_1_0.AtomPersonConstruct'
      }, {
        elementName: 'uri',
        typeInfo: 'String'
      }, {
        elementName: 'name',
        typeInfo: 'String'
      }, {
        elementName: 'email',
        typeInfo: 'String'
      }]
  };
  return {
    Atom_1_0: Atom_1_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], Atom_1_0_Module_Factory);
}
else {
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.Atom_1_0 = Atom_1_0_Module_Factory().Atom_1_0;
  }
  else {
    var Atom_1_0 = Atom_1_0_Module_Factory().Atom_1_0;
  }
}