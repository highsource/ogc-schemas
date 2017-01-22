var IndoorGML_Navigation_1_0_Module_Factory = function () {
  var IndoorGML_Navigation_1_0 = {
    n: 'IndoorGML_Navigation_1_0',
    dens: 'http:\/\/www.opengis.net\/indoorgml\/1.0\/navigation',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['XLink_1_0', 'IndoorGML_Core_1_0', 'GML_3_2_1'],
    tis: [{
        ln: 'RouteNodesType',
        bti: 'GML_3_2_1.AbstractFeatureType',
        ps: [{
            n: 'nodeMember',
            rq: true,
            mno: 2,
            col: true,
            ti: '.RouteNodeMemberType'
          }, {
            n: 'aggregationType',
            ti: 'GML_3_2_1.AggregationType',
            an: {
              lp: 'aggregationType'
            },
            t: 'a'
          }]
      }, {
        ln: 'RouteNodeType',
        bti: 'GML_3_2_1.AbstractFeatureType',
        ps: [{
            n: 'referencedState',
            rq: true,
            ti: 'IndoorGML_Core_1_0.StatePropertyType'
          }, {
            n: 'geometry',
            rq: true,
            ti: 'GML_3_2_1.PointPropertyType'
          }]
      }, {
        ln: 'NavigableBoundaryType',
        bti: 'IndoorGML_Core_1_0.CellSpaceBoundaryType'
      }, {
        ln: 'AnchorSpaceType',
        bti: '.TransferSpaceType'
      }, {
        ln: 'RouteSegmentMemberType',
        bti: 'GML_3_2_1.AbstractFeatureMemberType',
        ps: [{
            n: 'routeSegment',
            rq: true,
            en: 'RouteSegment',
            ti: '.RouteSegmentType'
          }]
      }, {
        ln: 'PathType',
        bti: 'GML_3_2_1.AbstractFeatureType',
        ps: [{
            n: 'routeMember',
            mno: 0,
            col: true,
            ti: '.RouteSegmentMemberType'
          }, {
            n: 'aggregationType',
            ti: 'GML_3_2_1.AggregationType',
            an: {
              lp: 'aggregationType'
            },
            t: 'a'
          }]
      }, {
        ln: 'ConnectionBoundaryType',
        bti: '.TransferBoundaryType'
      }, {
        ln: 'NavigableSpaceType',
        bti: 'IndoorGML_Core_1_0.CellSpaceType',
        ps: [{
            n: 'clazz',
            rq: true,
            en: 'class',
            ti: 'GML_3_2_1.CodeType'
          }, {
            n: 'function',
            rq: true,
            ti: 'GML_3_2_1.CodeType'
          }, {
            n: 'usage',
            rq: true,
            ti: 'GML_3_2_1.CodeType'
          }]
      }, {
        ln: 'ConnectionSpaceType',
        bti: '.TransferSpaceType'
      }, {
        ln: 'RouteNodePropertyType',
        ps: [{
            n: 'routeNode',
            rq: true,
            en: 'RouteNode',
            ti: '.RouteNodeType'
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
        ln: 'AnchorBoundaryType',
        bti: '.TransferBoundaryType'
      }, {
        ln: 'TransitionSpaceType',
        bti: '.TransferSpaceType'
      }, {
        ln: 'RouteNodeMemberType',
        bti: 'GML_3_2_1.AbstractFeatureMemberType',
        ps: [{
            n: 'routeNode',
            rq: true,
            en: 'RouteNode',
            ti: '.RouteNodeType'
          }]
      }, {
        ln: 'GeneralSpaceType',
        bti: '.NavigableSpaceType'
      }, {
        ln: 'TransferSpaceType',
        bti: '.NavigableSpaceType'
      }, {
        ln: 'RouteType',
        bti: 'GML_3_2_1.AbstractFeatureType',
        ps: [{
            n: 'startRouteNode',
            rq: true,
            ti: '.RouteNodePropertyType'
          }, {
            n: 'endRouteNode',
            rq: true,
            ti: '.RouteNodePropertyType'
          }, {
            n: 'routeNodes',
            rq: true,
            ti: '.RouteNodesType'
          }, {
            n: 'path',
            rq: true,
            ti: '.PathType'
          }]
      }, {
        ln: 'RouteSegmentType',
        bti: 'GML_3_2_1.AbstractFeatureType',
        ps: [{
            n: 'weight',
            rq: true,
            ti: 'Double'
          }, {
            n: 'connects',
            rq: true,
            mno: 2,
            mxo: 2,
            col: true,
            ti: '.RouteNodePropertyType'
          }, {
            n: 'referencedTransition',
            rq: true,
            ti: 'IndoorGML_Core_1_0.TransitionPropertyType'
          }, {
            n: 'geometry',
            rq: true,
            ti: 'GML_3_2_1.CurvePropertyType'
          }]
      }, {
        ln: 'TransferBoundaryType',
        bti: '.NavigableBoundaryType'
      }],
    eis: [{
        en: 'NavigableBoundary',
        ti: '.NavigableBoundaryType',
        sh: {
          lp: 'CellSpaceBoundary',
          ns: 'http:\/\/www.opengis.net\/indoorgml\/1.0\/core'
        }
      }, {
        en: 'RouteNode',
        ti: '.RouteNodeType'
      }, {
        en: 'GeneralSpace',
        ti: '.GeneralSpaceType',
        sh: 'NavigableSpace'
      }, {
        en: 'ConnectionBoundary',
        ti: '.ConnectionBoundaryType',
        sh: 'TransferBoundary'
      }, {
        en: 'TransferBoundary',
        ti: '.TransferBoundaryType',
        sh: 'NavigableBoundary'
      }, {
        en: 'Route',
        ti: '.RouteType',
        sh: {
          lp: 'AbstractFeature',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'RouteSegment',
        ti: '.RouteSegmentType'
      }, {
        en: 'TransferSpace',
        ti: '.TransferSpaceType',
        sh: 'NavigableSpace'
      }, {
        en: 'NavigableSpace',
        ti: '.NavigableSpaceType',
        sh: {
          lp: 'CellSpace',
          ns: 'http:\/\/www.opengis.net\/indoorgml\/1.0\/core'
        }
      }, {
        en: 'ConnectionSpace',
        ti: '.ConnectionSpaceType',
        sh: 'TransferSpace'
      }, {
        en: 'TransitionSpace',
        ti: '.TransitionSpaceType',
        sh: 'TransferSpace'
      }, {
        en: 'AnchorSpace',
        ti: '.AnchorSpaceType',
        sh: 'TransferSpace'
      }, {
        en: 'AnchorBoundary',
        ti: '.AnchorBoundaryType',
        sh: 'TransferBoundary'
      }]
  };
  return {
    IndoorGML_Navigation_1_0: IndoorGML_Navigation_1_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], IndoorGML_Navigation_1_0_Module_Factory);
}
else {
  var IndoorGML_Navigation_1_0_Module = IndoorGML_Navigation_1_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.IndoorGML_Navigation_1_0 = IndoorGML_Navigation_1_0_Module.IndoorGML_Navigation_1_0;
  }
  else {
    var IndoorGML_Navigation_1_0 = IndoorGML_Navigation_1_0_Module.IndoorGML_Navigation_1_0;
  }
}