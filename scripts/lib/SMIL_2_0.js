var SMIL_2_0_Module_Factory = function () {
  var SMIL_2_0 = {
    n: 'SMIL_2_0',
    dens: 'http:\/\/www.w3.org\/2001\/SMIL20\/',
    tis: [{
        ln: 'SetPrototype',
        ps: [{
            n: 'attributeName',
            t: 'a'
          }, {
            n: 'attributeType',
            t: 'a'
          }, {
            n: 'to',
            t: 'a'
          }]
      }, {
        ln: 'AnimateColorPrototype',
        ps: [{
            n: 'from',
            t: 'a'
          }, {
            n: 'by',
            t: 'a'
          }, {
            n: 'values',
            t: 'a'
          }, {
            n: 'to',
            t: 'a'
          }, {
            n: 'additive',
            t: 'a'
          }, {
            n: 'accumulate',
            t: 'a'
          }, {
            n: 'attributeName',
            t: 'a'
          }, {
            n: 'attributeType',
            t: 'a'
          }]
      }, {
        ln: 'AnimateMotionPrototype',
        ps: [{
            n: 'origin',
            t: 'a'
          }, {
            n: 'from',
            t: 'a'
          }, {
            n: 'by',
            t: 'a'
          }, {
            n: 'values',
            t: 'a'
          }, {
            n: 'to',
            t: 'a'
          }, {
            n: 'additive',
            t: 'a'
          }, {
            n: 'accumulate',
            t: 'a'
          }]
      }, {
        ln: 'AnimatePrototype',
        ps: [{
            n: 'attributeName',
            t: 'a'
          }, {
            n: 'attributeType',
            t: 'a'
          }, {
            n: 'additive',
            t: 'a'
          }, {
            n: 'accumulate',
            t: 'a'
          }, {
            n: 'from',
            t: 'a'
          }, {
            n: 'by',
            t: 'a'
          }, {
            n: 'values',
            t: 'a'
          }, {
            n: 'to',
            t: 'a'
          }]
      }, {
        t: 'enum',
        ln: 'RestartDefaultType',
        vs: ['never', 'always', 'whenNotActive', 'inherit']
      }, {
        t: 'enum',
        ln: 'FillDefaultType',
        vs: ['remove', 'freeze', 'hold', 'auto', 'inherit', 'transition']
      }, {
        t: 'enum',
        ln: 'FillTimingAttrsType',
        vs: ['remove', 'freeze', 'hold', 'auto', 'default', 'transition']
      }, {
        t: 'enum',
        ln: 'RestartTimingType',
        vs: ['never', 'always', 'whenNotActive', 'default']
      }, {
        t: 'enum',
        ln: 'SyncBehaviorType',
        vs: ['canSlip', 'locked', 'independent', 'default']
      }, {
        t: 'enum',
        ln: 'SyncBehaviorDefaultType',
        vs: ['canSlip', 'locked', 'independent', 'inherit']
      }],
    eis: [{
        en: 'animate',
        ti: 'SMIL_2_0_Language.AnimateType',
        sh: {
          lp: 'animate',
          ns: 'http:\/\/www.w3.org\/2001\/SMIL20\/Language'
        }
      }, {
        en: 'animateMotion',
        ti: 'SMIL_2_0_Language.AnimateMotionType',
        sh: {
          lp: 'animateMotion',
          ns: 'http:\/\/www.w3.org\/2001\/SMIL20\/Language'
        }
      }, {
        en: 'set',
        ti: 'SMIL_2_0_Language.SetType',
        sh: {
          lp: 'set',
          ns: 'http:\/\/www.w3.org\/2001\/SMIL20\/Language'
        }
      }, {
        en: 'animateColor',
        ti: 'SMIL_2_0_Language.AnimateColorType',
        sh: {
          lp: 'animateColor',
          ns: 'http:\/\/www.w3.org\/2001\/SMIL20\/Language'
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