var SMIL_2_0_Language_Module_Factory = function () {
  var SMIL_2_0_Language = {
    name: 'SMIL_2_0_Language',
    defaultElementNamespaceURI: 'http:\/\/www.w3.org\/2001\/SMIL20\/Language',
    dependencies: ['SMIL_2_0'],
    typeInfos: [{
        localName: 'AnimateMotionType',
        baseTypeInfo: 'SMIL_2_0.AnimateMotionPrototype',
        propertyInfos: [{
            name: 'otherAttributes',
            type: 'anyAttribute'
          }, {
            name: 'any',
            collection: true,
            mixed: false,
            type: 'anyElement'
          }, {
            name: 'calcMode',
            attributeName: {
              localPart: 'calcMode'
            },
            type: 'attribute'
          }, {
            name: 'skipContent',
            typeInfo: 'Boolean',
            attributeName: {
              localPart: 'skip-content'
            },
            type: 'attribute'
          }, {
            name: 'id',
            typeInfo: 'ID',
            attributeName: {
              localPart: 'id'
            },
            type: 'attribute'
          }, {
            name: 'clazz',
            attributeName: {
              localPart: 'class'
            },
            type: 'attribute'
          }, {
            name: 'lang',
            attributeName: {
              localPart: 'lang',
              namespaceURI: 'http:\/\/www.w3.org\/XML\/1998\/namespace'
            },
            type: 'attribute'
          }, {
            name: 'alt',
            attributeName: {
              localPart: 'alt'
            },
            type: 'attribute'
          }, {
            name: 'longdesc',
            attributeName: {
              localPart: 'longdesc'
            },
            type: 'attribute'
          }, {
            name: 'targetElement',
            typeInfo: 'IDREF',
            attributeName: {
              localPart: 'targetElement'
            },
            type: 'attribute'
          }, {
            name: 'fillDefault',
            attributeName: {
              localPart: 'fillDefault'
            },
            type: 'attribute'
          }, {
            name: 'restartDefault',
            attributeName: {
              localPart: 'restartDefault'
            },
            type: 'attribute'
          }, {
            name: 'syncBehaviorDefault',
            attributeName: {
              localPart: 'syncBehaviorDefault'
            },
            type: 'attribute'
          }, {
            name: 'syncToleranceDefault',
            attributeName: {
              localPart: 'syncToleranceDefault'
            },
            type: 'attribute'
          }, {
            name: 'syncBehavior',
            attributeName: {
              localPart: 'syncBehavior'
            },
            type: 'attribute'
          }, {
            name: 'syncTolerance',
            attributeName: {
              localPart: 'syncTolerance'
            },
            type: 'attribute'
          }, {
            name: 'fill',
            attributeName: {
              localPart: 'fill'
            },
            type: 'attribute'
          }, {
            name: 'min',
            attributeName: {
              localPart: 'min'
            },
            type: 'attribute'
          }, {
            name: 'max',
            attributeName: {
              localPart: 'max'
            },
            type: 'attribute'
          }, {
            name: 'repeat',
            typeInfo: 'Integer',
            attributeName: {
              localPart: 'repeat'
            },
            type: 'attribute'
          }, {
            name: 'dur',
            attributeName: {
              localPart: 'dur'
            },
            type: 'attribute'
          }, {
            name: 'repeatDur',
            attributeName: {
              localPart: 'repeatDur'
            },
            type: 'attribute'
          }, {
            name: 'repeatCount',
            typeInfo: 'Decimal',
            attributeName: {
              localPart: 'repeatCount'
            },
            type: 'attribute'
          }, {
            name: 'begin',
            attributeName: {
              localPart: 'begin'
            },
            type: 'attribute'
          }, {
            name: 'end',
            attributeName: {
              localPart: 'end'
            },
            type: 'attribute'
          }, {
            name: 'restart',
            attributeName: {
              localPart: 'restart'
            },
            type: 'attribute'
          }]
      }, {
        localName: 'SetType',
        baseTypeInfo: 'SMIL_2_0.SetPrototype',
        propertyInfos: [{
            name: 'otherAttributes',
            type: 'anyAttribute'
          }, {
            name: 'any',
            collection: true,
            mixed: false,
            type: 'anyElement'
          }, {
            name: 'id',
            typeInfo: 'ID',
            attributeName: {
              localPart: 'id'
            },
            type: 'attribute'
          }, {
            name: 'clazz',
            attributeName: {
              localPart: 'class'
            },
            type: 'attribute'
          }, {
            name: 'lang',
            attributeName: {
              localPart: 'lang',
              namespaceURI: 'http:\/\/www.w3.org\/XML\/1998\/namespace'
            },
            type: 'attribute'
          }, {
            name: 'alt',
            attributeName: {
              localPart: 'alt'
            },
            type: 'attribute'
          }, {
            name: 'longdesc',
            attributeName: {
              localPart: 'longdesc'
            },
            type: 'attribute'
          }, {
            name: 'fillDefault',
            attributeName: {
              localPart: 'fillDefault'
            },
            type: 'attribute'
          }, {
            name: 'restartDefault',
            attributeName: {
              localPart: 'restartDefault'
            },
            type: 'attribute'
          }, {
            name: 'syncBehaviorDefault',
            attributeName: {
              localPart: 'syncBehaviorDefault'
            },
            type: 'attribute'
          }, {
            name: 'syncToleranceDefault',
            attributeName: {
              localPart: 'syncToleranceDefault'
            },
            type: 'attribute'
          }, {
            name: 'syncBehavior',
            attributeName: {
              localPart: 'syncBehavior'
            },
            type: 'attribute'
          }, {
            name: 'syncTolerance',
            attributeName: {
              localPart: 'syncTolerance'
            },
            type: 'attribute'
          }, {
            name: 'fill',
            attributeName: {
              localPart: 'fill'
            },
            type: 'attribute'
          }, {
            name: 'min',
            attributeName: {
              localPart: 'min'
            },
            type: 'attribute'
          }, {
            name: 'max',
            attributeName: {
              localPart: 'max'
            },
            type: 'attribute'
          }, {
            name: 'repeat',
            typeInfo: 'Integer',
            attributeName: {
              localPart: 'repeat'
            },
            type: 'attribute'
          }, {
            name: 'dur',
            attributeName: {
              localPart: 'dur'
            },
            type: 'attribute'
          }, {
            name: 'repeatDur',
            attributeName: {
              localPart: 'repeatDur'
            },
            type: 'attribute'
          }, {
            name: 'repeatCount',
            typeInfo: 'Decimal',
            attributeName: {
              localPart: 'repeatCount'
            },
            type: 'attribute'
          }, {
            name: 'begin',
            attributeName: {
              localPart: 'begin'
            },
            type: 'attribute'
          }, {
            name: 'end',
            attributeName: {
              localPart: 'end'
            },
            type: 'attribute'
          }, {
            name: 'restart',
            attributeName: {
              localPart: 'restart'
            },
            type: 'attribute'
          }, {
            name: 'skipContent',
            typeInfo: 'Boolean',
            attributeName: {
              localPart: 'skip-content'
            },
            type: 'attribute'
          }, {
            name: 'targetElement',
            typeInfo: 'IDREF',
            attributeName: {
              localPart: 'targetElement'
            },
            type: 'attribute'
          }]
      }, {
        localName: 'AnimateColorType',
        baseTypeInfo: 'SMIL_2_0.AnimateColorPrototype',
        propertyInfos: [{
            name: 'otherAttributes',
            type: 'anyAttribute'
          }, {
            name: 'any',
            collection: true,
            mixed: false,
            type: 'anyElement'
          }, {
            name: 'fillDefault',
            attributeName: {
              localPart: 'fillDefault'
            },
            type: 'attribute'
          }, {
            name: 'restartDefault',
            attributeName: {
              localPart: 'restartDefault'
            },
            type: 'attribute'
          }, {
            name: 'syncBehaviorDefault',
            attributeName: {
              localPart: 'syncBehaviorDefault'
            },
            type: 'attribute'
          }, {
            name: 'syncToleranceDefault',
            attributeName: {
              localPart: 'syncToleranceDefault'
            },
            type: 'attribute'
          }, {
            name: 'syncBehavior',
            attributeName: {
              localPart: 'syncBehavior'
            },
            type: 'attribute'
          }, {
            name: 'syncTolerance',
            attributeName: {
              localPart: 'syncTolerance'
            },
            type: 'attribute'
          }, {
            name: 'fill',
            attributeName: {
              localPart: 'fill'
            },
            type: 'attribute'
          }, {
            name: 'min',
            attributeName: {
              localPart: 'min'
            },
            type: 'attribute'
          }, {
            name: 'max',
            attributeName: {
              localPart: 'max'
            },
            type: 'attribute'
          }, {
            name: 'repeat',
            typeInfo: 'Integer',
            attributeName: {
              localPart: 'repeat'
            },
            type: 'attribute'
          }, {
            name: 'dur',
            attributeName: {
              localPart: 'dur'
            },
            type: 'attribute'
          }, {
            name: 'repeatDur',
            attributeName: {
              localPart: 'repeatDur'
            },
            type: 'attribute'
          }, {
            name: 'repeatCount',
            typeInfo: 'Decimal',
            attributeName: {
              localPart: 'repeatCount'
            },
            type: 'attribute'
          }, {
            name: 'begin',
            attributeName: {
              localPart: 'begin'
            },
            type: 'attribute'
          }, {
            name: 'end',
            attributeName: {
              localPart: 'end'
            },
            type: 'attribute'
          }, {
            name: 'restart',
            attributeName: {
              localPart: 'restart'
            },
            type: 'attribute'
          }, {
            name: 'calcMode',
            attributeName: {
              localPart: 'calcMode'
            },
            type: 'attribute'
          }, {
            name: 'skipContent',
            typeInfo: 'Boolean',
            attributeName: {
              localPart: 'skip-content'
            },
            type: 'attribute'
          }, {
            name: 'id',
            typeInfo: 'ID',
            attributeName: {
              localPart: 'id'
            },
            type: 'attribute'
          }, {
            name: 'clazz',
            attributeName: {
              localPart: 'class'
            },
            type: 'attribute'
          }, {
            name: 'lang',
            attributeName: {
              localPart: 'lang',
              namespaceURI: 'http:\/\/www.w3.org\/XML\/1998\/namespace'
            },
            type: 'attribute'
          }, {
            name: 'alt',
            attributeName: {
              localPart: 'alt'
            },
            type: 'attribute'
          }, {
            name: 'longdesc',
            attributeName: {
              localPart: 'longdesc'
            },
            type: 'attribute'
          }, {
            name: 'targetElement',
            typeInfo: 'IDREF',
            attributeName: {
              localPart: 'targetElement'
            },
            type: 'attribute'
          }]
      }, {
        localName: 'AnimateType',
        baseTypeInfo: 'SMIL_2_0.AnimatePrototype',
        propertyInfos: [{
            name: 'otherAttributes',
            type: 'anyAttribute'
          }, {
            name: 'any',
            collection: true,
            mixed: false,
            type: 'anyElement'
          }, {
            name: 'skipContent',
            typeInfo: 'Boolean',
            attributeName: {
              localPart: 'skip-content'
            },
            type: 'attribute'
          }, {
            name: 'id',
            typeInfo: 'ID',
            attributeName: {
              localPart: 'id'
            },
            type: 'attribute'
          }, {
            name: 'clazz',
            attributeName: {
              localPart: 'class'
            },
            type: 'attribute'
          }, {
            name: 'lang',
            attributeName: {
              localPart: 'lang',
              namespaceURI: 'http:\/\/www.w3.org\/XML\/1998\/namespace'
            },
            type: 'attribute'
          }, {
            name: 'alt',
            attributeName: {
              localPart: 'alt'
            },
            type: 'attribute'
          }, {
            name: 'longdesc',
            attributeName: {
              localPart: 'longdesc'
            },
            type: 'attribute'
          }, {
            name: 'fillDefault',
            attributeName: {
              localPart: 'fillDefault'
            },
            type: 'attribute'
          }, {
            name: 'restartDefault',
            attributeName: {
              localPart: 'restartDefault'
            },
            type: 'attribute'
          }, {
            name: 'syncBehaviorDefault',
            attributeName: {
              localPart: 'syncBehaviorDefault'
            },
            type: 'attribute'
          }, {
            name: 'syncToleranceDefault',
            attributeName: {
              localPart: 'syncToleranceDefault'
            },
            type: 'attribute'
          }, {
            name: 'syncBehavior',
            attributeName: {
              localPart: 'syncBehavior'
            },
            type: 'attribute'
          }, {
            name: 'syncTolerance',
            attributeName: {
              localPart: 'syncTolerance'
            },
            type: 'attribute'
          }, {
            name: 'fill',
            attributeName: {
              localPart: 'fill'
            },
            type: 'attribute'
          }, {
            name: 'min',
            attributeName: {
              localPart: 'min'
            },
            type: 'attribute'
          }, {
            name: 'max',
            attributeName: {
              localPart: 'max'
            },
            type: 'attribute'
          }, {
            name: 'repeat',
            typeInfo: 'Integer',
            attributeName: {
              localPart: 'repeat'
            },
            type: 'attribute'
          }, {
            name: 'dur',
            attributeName: {
              localPart: 'dur'
            },
            type: 'attribute'
          }, {
            name: 'repeatDur',
            attributeName: {
              localPart: 'repeatDur'
            },
            type: 'attribute'
          }, {
            name: 'repeatCount',
            typeInfo: 'Decimal',
            attributeName: {
              localPart: 'repeatCount'
            },
            type: 'attribute'
          }, {
            name: 'begin',
            attributeName: {
              localPart: 'begin'
            },
            type: 'attribute'
          }, {
            name: 'end',
            attributeName: {
              localPart: 'end'
            },
            type: 'attribute'
          }, {
            name: 'restart',
            attributeName: {
              localPart: 'restart'
            },
            type: 'attribute'
          }, {
            name: 'targetElement',
            typeInfo: 'IDREF',
            attributeName: {
              localPart: 'targetElement'
            },
            type: 'attribute'
          }, {
            name: 'calcMode',
            attributeName: {
              localPart: 'calcMode'
            },
            type: 'attribute'
          }]
      }],
    elementInfos: [{
        elementName: 'animate',
        typeInfo: '.AnimateType'
      }, {
        elementName: 'set',
        typeInfo: '.SetType'
      }, {
        elementName: 'animateMotion',
        typeInfo: '.AnimateMotionType'
      }, {
        elementName: 'animateColor',
        typeInfo: '.AnimateColorType'
      }]
  };
  return {
    SMIL_2_0_Language: SMIL_2_0_Language
  };
};
if (typeof define === 'function' && define.amd) {
  define([], SMIL_2_0_Language_Module_Factory);
}
else {
  var SMIL_2_0_Language_Module = SMIL_2_0_Language_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.SMIL_2_0_Language = SMIL_2_0_Language_Module.SMIL_2_0_Language;
  }
  else {
    var SMIL_2_0_Language = SMIL_2_0_Language_Module.SMIL_2_0_Language;
  }
}