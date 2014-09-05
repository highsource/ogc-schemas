var SMIL_2_0_Module_Factory = function () {
  var SMIL_2_0 = {
    name: 'SMIL_2_0',
    defaultElementNamespaceURI: 'http:\/\/www.w3.org\/2001\/SMIL20\/',
    typeInfos: [{
        type: 'classInfo',
        localName: 'SetPrototype',
        propertyInfos: [{
            name: 'attributeName',
            typeInfo: 'String',
            attributeName: 'attributeName',
            type: 'attribute'
          }, {
            name: 'attributeType',
            typeInfo: 'String',
            attributeName: 'attributeType',
            type: 'attribute'
          }, {
            name: 'to',
            typeInfo: 'String',
            attributeName: 'to',
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'AnimateColorPrototype',
        propertyInfos: [{
            name: 'attributeName',
            typeInfo: 'String',
            attributeName: 'attributeName',
            type: 'attribute'
          }, {
            name: 'attributeType',
            typeInfo: 'String',
            attributeName: 'attributeType',
            type: 'attribute'
          }, {
            name: 'additive',
            typeInfo: 'String',
            attributeName: 'additive',
            type: 'attribute'
          }, {
            name: 'accumulate',
            typeInfo: 'String',
            attributeName: 'accumulate',
            type: 'attribute'
          }, {
            name: 'from',
            typeInfo: 'String',
            attributeName: 'from',
            type: 'attribute'
          }, {
            name: 'by',
            typeInfo: 'String',
            attributeName: 'by',
            type: 'attribute'
          }, {
            name: 'values',
            typeInfo: 'String',
            attributeName: 'values',
            type: 'attribute'
          }, {
            name: 'to',
            typeInfo: 'String',
            attributeName: 'to',
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'AnimateMotionPrototype',
        propertyInfos: [{
            name: 'origin',
            typeInfo: 'String',
            attributeName: 'origin',
            type: 'attribute'
          }, {
            name: 'additive',
            typeInfo: 'String',
            attributeName: 'additive',
            type: 'attribute'
          }, {
            name: 'accumulate',
            typeInfo: 'String',
            attributeName: 'accumulate',
            type: 'attribute'
          }, {
            name: 'from',
            typeInfo: 'String',
            attributeName: 'from',
            type: 'attribute'
          }, {
            name: 'by',
            typeInfo: 'String',
            attributeName: 'by',
            type: 'attribute'
          }, {
            name: 'values',
            typeInfo: 'String',
            attributeName: 'values',
            type: 'attribute'
          }, {
            name: 'to',
            typeInfo: 'String',
            attributeName: 'to',
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'AnimatePrototype',
        propertyInfos: [{
            name: 'from',
            typeInfo: 'String',
            attributeName: 'from',
            type: 'attribute'
          }, {
            name: 'by',
            typeInfo: 'String',
            attributeName: 'by',
            type: 'attribute'
          }, {
            name: 'values',
            typeInfo: 'String',
            attributeName: 'values',
            type: 'attribute'
          }, {
            name: 'to',
            typeInfo: 'String',
            attributeName: 'to',
            type: 'attribute'
          }, {
            name: 'additive',
            typeInfo: 'String',
            attributeName: 'additive',
            type: 'attribute'
          }, {
            name: 'accumulate',
            typeInfo: 'String',
            attributeName: 'accumulate',
            type: 'attribute'
          }, {
            name: 'attributeName',
            typeInfo: 'String',
            attributeName: 'attributeName',
            type: 'attribute'
          }, {
            name: 'attributeType',
            typeInfo: 'String',
            attributeName: 'attributeType',
            type: 'attribute'
          }]
      }, {
        type: 'enumInfo',
        localName: 'RestartDefaultType',
        baseTypeInfo: 'String',
        values: ['never', 'always', 'whenNotActive', 'inherit']
      }, {
        type: 'enumInfo',
        localName: 'FillDefaultType',
        baseTypeInfo: 'String',
        values: ['remove', 'freeze', 'hold', 'auto', 'inherit', 'transition']
      }, {
        type: 'enumInfo',
        localName: 'FillTimingAttrsType',
        baseTypeInfo: 'String',
        values: ['remove', 'freeze', 'hold', 'auto', 'default', 'transition']
      }, {
        type: 'enumInfo',
        localName: 'RestartTimingType',
        baseTypeInfo: 'String',
        values: ['never', 'always', 'whenNotActive', 'default']
      }, {
        type: 'enumInfo',
        localName: 'SyncBehaviorType',
        baseTypeInfo: 'String',
        values: ['canSlip', 'locked', 'independent', 'default']
      }, {
        type: 'enumInfo',
        localName: 'SyncBehaviorDefaultType',
        baseTypeInfo: 'String',
        values: ['canSlip', 'locked', 'independent', 'inherit']
      }],
    elementInfos: [{
        elementName: 'animate',
        typeInfo: 'SMIL_2_0_Language.AnimateType',
        substitutionHead: {
          localPart: 'animate',
          namespaceURI: 'http:\/\/www.w3.org\/2001\/SMIL20\/Language'
        }
      }, {
        elementName: 'animateMotion',
        typeInfo: 'SMIL_2_0_Language.AnimateMotionType',
        substitutionHead: {
          localPart: 'animateMotion',
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
        elementName: 'animateColor',
        typeInfo: 'SMIL_2_0_Language.AnimateColorType',
        substitutionHead: {
          localPart: 'animateColor',
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
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.SMIL_2_0 = SMIL_2_0_Module_Factory().SMIL_2_0;
  }
  else {
    var SMIL_2_0 = SMIL_2_0_Module_Factory().SMIL_2_0;
  }
}