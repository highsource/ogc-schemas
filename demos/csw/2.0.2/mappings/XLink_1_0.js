var XLink_1_0_Module_Factory = function () {
  var XLink_1_0 = {
    name: 'XLink_1_0',
    defaultElementNamespaceURI: 'http:\/\/www.w3.org\/1999\/xlink',
    defaultAttributeNamespaceURI: 'http:\/\/www.w3.org\/1999\/xlink',
    typeInfos: [{
        localName: 'TitleEltType',
        propertyInfos: [{
            name: 'content',
            collection: true,
            type: 'anyElement'
          }, {
            name: 'type',
            type: 'attribute'
          }, {
            name: 'lang',
            attributeName: {
              localPart: 'lang',
              namespaceURI: 'http:\/\/www.w3.org\/XML\/1998\/namespace'
            },
            type: 'attribute'
          }]
      }, {
        localName: 'LocatorType',
        propertyInfos: [{
            name: 'locatorTitle',
            collection: true,
            elementName: 'title',
            typeInfo: '.TitleEltType'
          }, {
            name: 'type',
            type: 'attribute'
          }, {
            name: 'href',
            type: 'attribute'
          }, {
            name: 'role',
            type: 'attribute'
          }, {
            name: 'title',
            type: 'attribute'
          }, {
            name: 'label',
            type: 'attribute'
          }]
      }, {
        localName: 'ResourceType',
        propertyInfos: [{
            name: 'content',
            collection: true,
            type: 'anyElement'
          }, {
            name: 'type',
            type: 'attribute'
          }, {
            name: 'role',
            type: 'attribute'
          }, {
            name: 'title',
            type: 'attribute'
          }, {
            name: 'label',
            type: 'attribute'
          }]
      }, {
        localName: 'Extended',
        propertyInfos: [{
            name: 'extendedModel',
            collection: true,
            elementTypeInfos: [{
                elementName: 'title',
                typeInfo: '.TitleEltType'
              }, {
                elementName: 'resource',
                typeInfo: '.ResourceType'
              }, {
                elementName: 'locator',
                typeInfo: '.LocatorType'
              }, {
                elementName: 'arc',
                typeInfo: '.ArcType'
              }],
            type: 'elements'
          }, {
            name: 'type',
            type: 'attribute'
          }, {
            name: 'role',
            type: 'attribute'
          }, {
            name: 'title',
            type: 'attribute'
          }]
      }, {
        localName: 'ArcType',
        propertyInfos: [{
            name: 'locatorTitle',
            collection: true,
            elementName: 'title',
            typeInfo: '.TitleEltType'
          }, {
            name: 'type',
            type: 'attribute'
          }, {
            name: 'arcrole',
            type: 'attribute'
          }, {
            name: 'title',
            type: 'attribute'
          }, {
            name: 'show',
            type: 'attribute'
          }, {
            name: 'actuate',
            type: 'attribute'
          }, {
            name: 'from',
            type: 'attribute'
          }, {
            name: 'to',
            type: 'attribute'
          }]
      }, {
        localName: 'Simple',
        propertyInfos: [{
            name: 'content',
            collection: true,
            type: 'anyElement'
          }, {
            name: 'type',
            type: 'attribute'
          }, {
            name: 'href',
            type: 'attribute'
          }, {
            name: 'role',
            type: 'attribute'
          }, {
            name: 'arcrole',
            type: 'attribute'
          }, {
            name: 'title',
            type: 'attribute'
          }, {
            name: 'show',
            type: 'attribute'
          }, {
            name: 'actuate',
            type: 'attribute'
          }]
      }, {
        type: 'enumInfo',
        localName: 'ActuateType',
        values: ['onLoad', 'onRequest', 'other', 'none']
      }, {
        type: 'enumInfo',
        localName: 'TypeType',
        values: ['simple', 'extended', 'title', 'resource', 'locator', 'arc']
      }, {
        type: 'enumInfo',
        localName: 'ShowType',
        values: ['new', 'replace', 'embed', 'other', 'none']
      }],
    elementInfos: [{
        elementName: 'arc',
        typeInfo: '.ArcType'
      }, {
        elementName: 'title',
        typeInfo: '.TitleEltType'
      }, {
        elementName: 'locator',
        typeInfo: '.LocatorType'
      }, {
        elementName: 'resource',
        typeInfo: '.ResourceType'
      }]
  };
  return {
    XLink_1_0: XLink_1_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], XLink_1_0_Module_Factory);
}
else {
  var XLink_1_0_Module = XLink_1_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.XLink_1_0 = XLink_1_0_Module.XLink_1_0;
  }
  else {
    var XLink_1_0 = XLink_1_0_Module.XLink_1_0;
  }
}