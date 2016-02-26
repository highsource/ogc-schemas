var GML_LR_3_3_Module_Factory = function () {
  var GML_LR_3_3 = {
    n: 'GML_LR_3_3',
    dens: 'http:\/\/www.opengis.net\/gml\/3.3\/lr',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['GML_3_2_1', 'XLink_1_0'],
    tis: [{
        ln: 'DistanceExpressionPropertyType',
        ps: [{
            n: 'distanceExpression',
            rq: true,
            mx: false,
            dom: false,
            en: 'DistanceExpression',
            ti: '.DistanceExpressionType',
            t: 'er'
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
        ln: 'LinearReferencingMethodType',
        bti: 'GML_3_2_1.AbstractGMLType',
        ps: [{
            n: 'linearReferencingMethodName',
            rq: true,
            en: 'name',
            ti: '.LRMNameType'
          }, {
            n: 'type',
            rq: true,
            ti: '.LRMTypeType'
          }, {
            n: 'units',
            rq: true
          }, {
            n: 'constraint'
          }]
      }, {
        ln: 'LRMTypeType',
        bti: 'GML_3_2_1.CodeType'
      }, {
        ln: 'DistanceExpressionType',
        bti: 'GML_3_2_1.AbstractGMLType',
        ps: [{
            n: 'distanceAlong',
            rq: true,
            ti: '.MeasureType'
          }, {
            n: 'referent',
            ti: '.AlongReferentPropertyType'
          }]
      }, {
        ln: 'StartValueType',
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
            n: 'lrm',
            rq: true,
            an: {
              lp: 'lrm'
            },
            t: 'a'
          }]
      }, {
        ln: 'MeasureType',
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
          }]
      }, {
        ln: 'LinearReferencingMethodPropertyType',
        ps: [{
            n: 'linearReferencingMethod',
            rq: true,
            mx: false,
            dom: false,
            en: 'LinearReferencingMethod',
            ti: '.LinearReferencingMethodType',
            t: 'er'
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
        ln: 'LRMNameType',
        bti: 'GML_3_2_1.CodeType'
      }, {
        ln: 'PositionExpressionPropertyType',
        ps: [{
            n: 'positionExpression',
            rq: true,
            en: 'PositionExpression',
            ti: '.PositionExpressionType'
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
        ln: 'ReferentType',
        bti: 'GML_3_2_1.AbstractGMLType',
        ps: [{
            n: 'referentName',
            rq: true,
            en: 'name',
            ti: 'GML_3_2_1.CodeType'
          }, {
            n: 'type',
            rq: true
          }, {
            n: 'position',
            ti: 'GML_3_2_1.PointPropertyType'
          }, {
            n: 'location',
            ti: '.PositionExpressionPropertyType'
          }, {
            n: 'ownedBy',
            rq: true,
            ti: 'GML_3_2_1.FeaturePropertyType'
          }]
      }, {
        ln: 'AlongReferentType',
        bti: 'GML_3_2_1.AbstractGMLType',
        ps: [{
            n: 'fromReferent',
            rq: true,
            ti: '.ReferentPropertyType'
          }]
      }, {
        ln: 'LinearSRSPropertyType',
        ps: [{
            n: 'linearSRS',
            rq: true,
            mx: false,
            dom: false,
            en: 'LinearSRS',
            ti: '.LinearSRSType',
            t: 'er'
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
        ln: 'LinearElementPropertyType',
        ps: [{
            n: 'linearElement',
            rq: true,
            en: 'LinearElement',
            ti: '.LinearElementType'
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
        ln: 'LinearElementType',
        bti: 'GML_3_2_1.AbstractGMLType',
        ps: [{
            n: 'feature',
            rq: true,
            ti: 'GML_3_2_1.FeaturePropertyType'
          }, {
            n: 'curve',
            rq: true,
            ti: 'GML_3_2_1.CurvePropertyType'
          }, {
            n: 'edge',
            rq: true,
            ti: 'GML_3_2_1.DirectedEdgePropertyType'
          }, {
            n: 'defaultLRM',
            rq: true,
            ti: '.LinearReferencingMethodPropertyType'
          }, {
            n: 'measure',
            rq: true,
            ti: 'GML_3_2_1.MeasureType'
          }, {
            n: 'startValue',
            mno: 0,
            col: true,
            ti: '.StartValueType'
          }]
      }, {
        ln: 'PositionExpressionType',
        bti: 'GML_3_2_1.AbstractGMLType',
        ps: [{
            n: 'linearElement',
            rq: true,
            ti: '.LinearElementPropertyType'
          }, {
            n: 'lrm',
            rq: true,
            ti: '.LinearReferencingMethodPropertyType'
          }, {
            n: 'distanceExpression',
            rq: true,
            ti: '.DistanceExpressionPropertyType'
          }]
      }, {
        ln: 'AlongReferentPropertyType',
        ps: [{
            n: 'alongReferent',
            rq: true,
            mx: false,
            dom: false,
            en: 'AlongReferent',
            ti: '.AlongReferentType',
            t: 'er'
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
        ln: 'LinearSRSType',
        bti: 'GML_3_2_1.IdentifiedObjectType',
        ps: [{
            n: 'linearElement',
            rq: true,
            ti: '.LinearElementPropertyType'
          }, {
            n: 'lrm',
            rq: true,
            ti: '.LinearReferencingMethodPropertyType'
          }]
      }, {
        ln: 'ReferentPropertyType',
        ps: [{
            n: 'referent',
            rq: true,
            en: 'Referent',
            ti: '.ReferentType'
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
        t: 'enum',
        ln: 'ReferentTypeType',
        vs: ['referenceMarker', 'intersection', 'boundary', 'landmark']
      }],
    eis: [{
        en: 'LinearSRS',
        ti: '.LinearSRSType',
        sh: {
          lp: 'Definition',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'AlongReferent',
        ti: '.AlongReferentType',
        sh: {
          lp: 'AbstractGML',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'PositionExpression',
        ti: '.PositionExpressionType',
        sh: {
          lp: 'AbstractGML',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'LinearReferencingMethod',
        ti: '.LinearReferencingMethodType',
        sh: {
          lp: 'AbstractGML',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'LinearElement',
        ti: '.LinearElementType',
        sh: {
          lp: 'AbstractGML',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'Referent',
        ti: '.ReferentType',
        sh: {
          lp: 'AbstractGML',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'DistanceExpression',
        ti: '.DistanceExpressionType',
        sh: {
          lp: 'AbstractGML',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }]
  };
  return {
    GML_LR_3_3: GML_LR_3_3
  };
};
if (typeof define === 'function' && define.amd) {
  define([], GML_LR_3_3_Module_Factory);
}
else {
  var GML_LR_3_3_Module = GML_LR_3_3_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.GML_LR_3_3 = GML_LR_3_3_Module.GML_LR_3_3;
  }
  else {
    var GML_LR_3_3 = GML_LR_3_3_Module.GML_LR_3_3;
  }
}