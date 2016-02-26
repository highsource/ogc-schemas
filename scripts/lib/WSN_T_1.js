var WSN_T_1_Module_Factory = function () {
  var WSN_T_1 = {
    n: 'WSN_T_1',
    dens: 'http:\/\/docs.oasis-open.org\/wsn\/t-1',
    tis: [{
        ln: 'TopicNamespaceType',
        bti: '.ExtensibleDocumented',
        ps: [{
            n: 'otherAttributes',
            t: 'aa'
          }, {
            n: 'topic',
            mno: 0,
            col: true,
            en: 'Topic',
            ti: '.TopicNamespaceType.Topic'
          }, {
            n: 'any',
            mno: 0,
            col: true,
            mx: false,
            t: 'ae'
          }, {
            n: 'name',
            ti: 'NCName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'targetNamespace',
            rq: true,
            an: {
              lp: 'targetNamespace'
            },
            t: 'a'
          }, {
            n: '_final',
            ti: 'Boolean',
            an: {
              lp: 'final'
            },
            t: 'a'
          }]
      }, {
        ln: 'ExtensibleDocumented',
        ps: [{
            n: 'otherAttributes',
            t: 'aa'
          }, {
            n: 'documentation',
            ti: '.Documentation'
          }]
      }, {
        ln: 'Documentation',
        ps: [{
            n: 'content',
            col: true,
            t: 'ae'
          }]
      }, {
        ln: 'TopicNamespaceType.Topic',
        tn: null,
        bti: '.TopicType',
        ps: [{
            n: 'otherAttributes',
            t: 'aa'
          }, {
            n: 'parent',
            ti: 'Token',
            an: {
              lp: 'parent'
            },
            t: 'a'
          }]
      }, {
        ln: 'TopicType',
        bti: '.ExtensibleDocumented',
        ps: [{
            n: 'otherAttributes',
            t: 'aa'
          }, {
            n: 'messagePattern',
            en: 'MessagePattern',
            ti: '.QueryExpressionType'
          }, {
            n: 'topic',
            mno: 0,
            col: true,
            en: 'Topic',
            ti: '.TopicType'
          }, {
            n: 'any',
            mno: 0,
            col: true,
            dom: false,
            mx: false,
            t: 'ae'
          }, {
            n: 'name',
            rq: true,
            ti: 'NCName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'messageTypes',
            ti: {
              t: 'l',
              bti: 'QName'
            },
            an: {
              lp: 'messageTypes'
            },
            t: 'a'
          }, {
            n: '_final',
            ti: 'Boolean',
            an: {
              lp: 'final'
            },
            t: 'a'
          }]
      }, {
        ln: 'TopicSetType',
        bti: '.ExtensibleDocumented',
        ps: [{
            n: 'otherAttributes',
            t: 'aa'
          }, {
            n: 'any',
            mno: 0,
            col: true,
            mx: false,
            t: 'ae'
          }]
      }, {
        ln: 'QueryExpressionType',
        ps: [{
            n: 'content',
            col: true,
            t: 'ae'
          }, {
            n: 'dialect',
            rq: true,
            an: {
              lp: 'Dialect'
            },
            t: 'a'
          }]
      }],
    eis: [{
        en: 'TopicSet',
        ti: '.TopicSetType'
      }, {
        en: 'TopicNamespace',
        ti: '.TopicNamespaceType'
      }]
  };
  return {
    WSN_T_1: WSN_T_1
  };
};
if (typeof define === 'function' && define.amd) {
  define([], WSN_T_1_Module_Factory);
}
else {
  var WSN_T_1_Module = WSN_T_1_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.WSN_T_1 = WSN_T_1_Module.WSN_T_1;
  }
  else {
    var WSN_T_1 = WSN_T_1_Module.WSN_T_1;
  }
}