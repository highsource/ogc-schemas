var SMIL_2_0_Module_Factory = function () {
  var SMIL_2_0 = {
    name: 'SMIL_2_0',
    defaultElementNamespaceURI: 'http:\/\/www.w3.org\/2001\/SMIL20\/',
    dependencies: ['SMIL_2_0_Language'],
    typeInfos: [{
        localName: 'AnimateMotionPrototype',
        propertyInfos: [{
            name: 'origin',
            attributeName: {
              localPart: 'origin'
            },
            type: 'attribute'
          }, {
            name: 'additive',
            attributeName: {
              localPart: 'additive'
            },
            type: 'attribute'
          }, {
            name: 'accumulate',
            attributeName: {
              localPart: 'accumulate'
            },
            type: 'attribute'
          }, {
            name: 'from',
            attributeName: {
              localPart: 'from'
            },
            type: 'attribute'
          }, {
            name: 'by',
            attributeName: {
              localPart: 'by'
            },
            type: 'attribute'
          }, {
            name: 'values',
            attributeName: {
              localPart: 'values'
            },
            type: 'attribute'
          }, {
            name: 'to',
            attributeName: {
              localPart: 'to'
            },
            type: 'attribute'
          }]
      }, {
        localName: 'SetPrototype',
        propertyInfos: [{
            name: 'to',
            attributeName: {
              localPart: 'to'
            },
            type: 'attribute'
          }, {
            name: 'attributeName',
            attributeName: {
              localPart: 'attributeName'
            },
            type: 'attribute'
          }, {
            name: 'attributeType',
            attributeName: {
              localPart: 'attributeType'
            },
            type: 'attribute'
          }]
      }, {
        localName: 'AnimateColorPrototype',
        propertyInfos: [{
            name: 'from',
            attributeName: {
              localPart: 'from'
            },
            type: 'attribute'
          }, {
            name: 'by',
            attributeName: {
              localPart: 'by'
            },
            type: 'attribute'
          }, {
            name: 'values',
            attributeName: {
              localPart: 'values'
            },
            type: 'attribute'
          }, {
            name: 'to',
            attributeName: {
              localPart: 'to'
            },
            type: 'attribute'
          }, {
            name: 'attributeName',
            attributeName: {
              localPart: 'attributeName'
            },
            type: 'attribute'
          }, {
            name: 'attributeType',
            attributeName: {
              localPart: 'attributeType'
            },
            type: 'attribute'
          }, {
            name: 'additive',
            attributeName: {
              localPart: 'additive'
            },
            type: 'attribute'
          }, {
            name: 'accumulate',
            attributeName: {
              localPart: 'accumulate'
            },
            type: 'attribute'
          }]
      }, {
        localName: 'AnimatePrototype',
        propertyInfos: [{
            name: 'from',
            attributeName: {
              localPart: 'from'
            },
            type: 'attribute'
          }, {
            name: 'by',
            attributeName: {
              localPart: 'by'
            },
            type: 'attribute'
          }, {
            name: 'values',
            attributeName: {
              localPart: 'values'
            },
            type: 'attribute'
          }, {
            name: 'to',
            attributeName: {
              localPart: 'to'
            },
            type: 'attribute'
          }, {
            name: 'attributeName',
            attributeName: {
              localPart: 'attributeName'
            },
            type: 'attribute'
          }, {
            name: 'attributeType',
            attributeName: {
              localPart: 'attributeType'
            },
            type: 'attribute'
          }, {
            name: 'additive',
            attributeName: {
              localPart: 'additive'
            },
            type: 'attribute'
          }, {
            name: 'accumulate',
            attributeName: {
              localPart: 'accumulate'
            },
            type: 'attribute'
          }]
      }, {
        type: 'enumInfo',
        localName: 'FillTimingAttrsType',
        values: ['remove', 'freeze', 'hold', 'auto', 'default', 'transition']
      }, {
        type: 'enumInfo',
        localName: 'SyncBehaviorDefaultType',
        values: ['canSlip', 'locked', 'independent', 'inherit']
      }, {
        type: 'enumInfo',
        localName: 'SyncBehaviorType',
        values: ['canSlip', 'locked', 'independent', 'default']
      }, {
        type: 'enumInfo',
        localName: 'FillDefaultType',
        values: ['remove', 'freeze', 'hold', 'auto', 'inherit', 'transition']
      }, {
        type: 'enumInfo',
        localName: 'RestartDefaultType',
        values: ['never', 'always', 'whenNotActive', 'inherit']
      }, {
        type: 'enumInfo',
        localName: 'RestartTimingType',
        values: ['never', 'always', 'whenNotActive', 'default']
      }],
    elementInfos: [{
        elementName: 'animate',
        typeInfo: 'SMIL_2_0_Language.AnimateType',
        substitutionHead: {
          localPart: 'animate',
          namespaceURI: 'http:\/\/www.w3.org\/2001\/SMIL20\/Language'
        }
      }, {
        elementName: 'animateColor',
        typeInfo: 'SMIL_2_0_Language.AnimateColorType',
        substitutionHead: {
          localPart: 'animateColor',
          namespaceURI: 'http:\/\/www.w3.org\/2001\/SMIL20\/Language'
        }
      }, {
        elementName: 'set',
        typeInfo: 'SMIL_2_0_Language.SetType',
        substitutionHead: {
          localPart: 'set',
          namespaceURI: 'http:\/\/www.w3.org\/2001\/SMIL20\/Language'
        }
      }, {
        elementName: 'animateMotion',
        typeInfo: 'SMIL_2_0_Language.AnimateMotionType',
        substitutionHead: {
          localPart: 'animateMotion',
          namespaceURI: 'http:\/\/www.w3.org\/2001\/SMIL20\/Language'
        }
      }]
  };
  return {
    SMIL_2_0: SMIL_2_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], SMIL_2_0_Module_Factory);
}
else {
  var SMIL_2_0_Module = SMIL_2_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.SMIL_2_0 = SMIL_2_0_Module.SMIL_2_0;
  }
  else {
    var SMIL_2_0 = SMIL_2_0_Module.SMIL_2_0;
  }
}