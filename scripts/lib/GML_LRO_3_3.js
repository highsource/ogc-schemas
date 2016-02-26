var GML_LRO_3_3_Module_Factory = function () {
  var GML_LRO_3_3 = {
    n: 'GML_LRO_3_3',
    dens: 'http:\/\/www.opengis.net\/gml\/3.3\/lro',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['GML_3_2_1', 'XLink_1_0', 'GML_LR_3_3'],
    tis: [{
        ln: 'LateralOffsetLinearSRSType',
        bti: 'GML_3_2_1.IdentifiedObjectType',
        ps: [{
            n: 'linearElement',
            rq: true,
            ti: 'GML_LR_3_3.LinearElementPropertyType'
          }, {
            n: 'lrm',
            rq: true,
            ti: '.LRMWithOffsetPropertyType'
          }]
      }, {
        ln: 'LateralOffsetDistanceExpressionType',
        bti: 'GML_LR_3_3.DistanceExpressionType',
        ps: [{
            n: 'lateralOffsetExpression',
            ti: '.LateralOffsetExpressionType'
          }, {
            n: 'verticalOffsetExpression',
            ti: '.VerticalOffsetExpressionType'
          }]
      }, {
        ln: 'LateralOffsetLinearSRSPropertyType',
        ps: [{
            n: 'lateralOffsetLinearSRS',
            rq: true,
            en: 'LateralOffsetLinearSRS',
            ti: '.LateralOffsetLinearSRSType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'LRMWithOffsetPropertyType',
        ps: [{
            n: 'lrmWithOffset',
            rq: true,
            en: 'LRMWithOffset',
            ti: '.LRMWithOffsetType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'LRMWithOffsetType',
        bti: 'GML_LR_3_3.LinearReferencingMethodType',
        ps: [{
            n: 'offsetUnits',
            rq: true
          }, {
            n: 'positiveLateralOffsetDirection'
          }, {
            n: 'positiveVerticalOffsetDirection'
          }]
      }, {
        ln: 'LateralOffsetExpressionType',
        ps: [{
            n: 'value',
            ti: 'Double',
            t: 'v'
          }, {
            n: 'uom',
            an: {
              lp: 'uom'
            },
            t: 'a'
          }, {
            n: 'lateralOffsetReferent',
            an: {
              lp: 'lateralOffsetReferent'
            },
            t: 'a'
          }, {
            n: 'featureGeometry',
            an: {
              lp: 'featureGeometry'
            },
            t: 'a'
          }]
      }, {
        ln: 'VerticalOffsetExpressionType',
        ps: [{
            n: 'value',
            ti: 'Double',
            t: 'v'
          }, {
            n: 'uom',
            an: {
              lp: 'uom'
            },
            t: 'a'
          }, {
            n: 'verticalOffsetReferent',
            an: {
              lp: 'verticalOffsetReferent'
            },
            t: 'a'
          }, {
            n: 'featureGeometry',
            an: {
              lp: 'featureGeometry'
            },
            t: 'a'
          }]
      }, {
        t: 'enum',
        ln: 'VerticalOffsetDirectionType',
        vs: ['up', 'down']
      }, {
        t: 'enum',
        ln: 'LateralOffsetDirectionType',
        vs: ['left', 'right']
      }],
    eis: [{
        en: 'LateralOffsetLinearSRS',
        ti: '.LateralOffsetLinearSRSType',
        sh: {
          lp: 'Definition',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'LateralOffsetDistanceExpression',
        ti: '.LateralOffsetDistanceExpressionType',
        sh: {
          lp: 'DistanceExpression',
          ns: 'http:\/\/www.opengis.net\/gml\/3.3\/lr'
        }
      }, {
        en: 'LRMWithOffset',
        ti: '.LRMWithOffsetType',
        sh: {
          lp: 'LinearReferencingMethod',
          ns: 'http:\/\/www.opengis.net\/gml\/3.3\/lr'
        }
      }]
  };
  return {
    GML_LRO_3_3: GML_LRO_3_3
  };
};
if (typeof define === 'function' && define.amd) {
  define([], GML_LRO_3_3_Module_Factory);
}
else {
  var GML_LRO_3_3_Module = GML_LRO_3_3_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.GML_LRO_3_3 = GML_LRO_3_3_Module.GML_LRO_3_3;
  }
  else {
    var GML_LRO_3_3 = GML_LRO_3_3_Module.GML_LRO_3_3;
  }
}