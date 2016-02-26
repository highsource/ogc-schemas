var GML_CE_3_3_Module_Factory = function () {
  var GML_CE_3_3 = {
    n: 'GML_CE_3_3',
    dens: 'http:\/\/www.opengis.net\/gml\/3.2',
    deps: ['GML_3_2_1', 'XLink_1_0'],
    tis: [{
        ln: 'SimpleArcStringByBulgeType',
        tn: {
          ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce',
          lp: 'SimpleArcStringByBulgeType'
        },
        bti: 'GML_3_2_1.AbstractCurveType',
        ps: [{
            n: 'posOrPointProperty',
            rq: true,
            mno: 2,
            col: true,
            etis: [{
                en: 'pos',
                ti: 'GML_3_2_1.DirectPositionType'
              }, {
                en: 'pointProperty',
                ti: 'GML_3_2_1.PointPropertyType'
              }],
            t: 'es'
          }, {
            n: 'posList',
            rq: true,
            ti: 'GML_3_2_1.DirectPositionListType'
          }, {
            n: 'bulge',
            rq: true,
            col: true,
            en: {
              lp: 'bulge',
              ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce'
            },
            ti: 'Double'
          }, {
            n: 'normal',
            rq: true,
            col: true,
            en: {
              lp: 'normal',
              ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce'
            },
            ti: 'GML_3_2_1.VectorType'
          }, {
            n: 'interpolation',
            ti: 'GML_3_2_1.CurveInterpolationType',
            an: {
              lp: 'interpolation'
            },
            t: 'a'
          }, {
            n: 'numArc',
            ti: 'Integer',
            an: {
              lp: 'numArc'
            },
            t: 'a'
          }]
      }, {
        ln: 'SimpleMultiPointType',
        tn: {
          ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce',
          lp: 'SimpleMultiPointType'
        },
        bti: 'GML_3_2_1.AbstractGeometricAggregateType',
        ps: [{
            n: 'posList',
            rq: true,
            ti: 'GML_3_2_1.DirectPositionListType'
          }]
      }, {
        ln: 'SimpleArcByBulgeType',
        tn: {
          ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce',
          lp: 'SimpleArcByBulgeType'
        },
        bti: 'GML_3_2_1.AbstractCurveType',
        ps: [{
            n: 'posOrPointProperty',
            rq: true,
            mno: 2,
            mxo: 2,
            col: true,
            etis: [{
                en: 'pos',
                ti: 'GML_3_2_1.DirectPositionType'
              }, {
                en: 'pointProperty',
                ti: 'GML_3_2_1.PointPropertyType'
              }],
            t: 'es'
          }, {
            n: 'posList',
            rq: true,
            ti: 'GML_3_2_1.DirectPositionListType'
          }, {
            n: 'bulge',
            rq: true,
            col: true,
            en: {
              lp: 'bulge',
              ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce'
            },
            ti: 'Double'
          }, {
            n: 'normal',
            rq: true,
            col: true,
            en: {
              lp: 'normal',
              ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce'
            },
            ti: 'GML_3_2_1.VectorType'
          }, {
            n: 'interpolation',
            ti: 'GML_3_2_1.CurveInterpolationType',
            an: {
              lp: 'interpolation'
            },
            t: 'a'
          }, {
            n: 'numARC',
            ti: 'Integer',
            an: {
              lp: 'numArc'
            },
            t: 'a'
          }]
      }, {
        ln: 'SimplePolygonType',
        tn: {
          ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce',
          lp: 'SimplePolygonType'
        },
        bti: 'GML_3_2_1.AbstractSurfaceType',
        ps: [{
            n: 'posOrPointProperty',
            rq: true,
            mno: 3,
            col: true,
            etis: [{
                en: 'pos',
                ti: 'GML_3_2_1.DirectPositionType'
              }, {
                en: 'pointProperty',
                ti: 'GML_3_2_1.PointPropertyType'
              }],
            t: 'es'
          }, {
            n: 'posList',
            rq: true,
            ti: 'GML_3_2_1.DirectPositionListType'
          }]
      }, {
        ln: 'SimpleRectangleType',
        tn: {
          ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce',
          lp: 'SimpleRectangleType'
        },
        bti: 'GML_3_2_1.AbstractSurfaceType',
        ps: [{
            n: 'posOrPointProperty',
            rq: true,
            mno: 4,
            mxo: 4,
            col: true,
            etis: [{
                en: 'pos',
                ti: 'GML_3_2_1.DirectPositionType'
              }, {
                en: 'pointProperty',
                ti: 'GML_3_2_1.PointPropertyType'
              }],
            t: 'es'
          }, {
            n: 'posList',
            rq: true,
            ti: 'GML_3_2_1.DirectPositionListType'
          }]
      }, {
        ln: 'SimpleArcType',
        tn: {
          ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce',
          lp: 'SimpleArcType'
        },
        bti: 'GML_3_2_1.AbstractCurveType',
        ps: [{
            n: 'posOrPointProperty',
            rq: true,
            mno: 3,
            mxo: 3,
            col: true,
            etis: [{
                en: 'pos',
                ti: 'GML_3_2_1.DirectPositionType'
              }, {
                en: 'pointProperty',
                ti: 'GML_3_2_1.PointPropertyType'
              }],
            t: 'es'
          }, {
            n: 'posList',
            rq: true,
            ti: 'GML_3_2_1.DirectPositionListType'
          }, {
            n: 'interpolation',
            ti: 'GML_3_2_1.CurveInterpolationType',
            an: {
              lp: 'interpolation'
            },
            t: 'a'
          }, {
            n: 'numARC',
            ti: 'Integer',
            an: {
              lp: 'numArc'
            },
            t: 'a'
          }]
      }, {
        ln: 'MultiPointPropertyType',
        tn: {
          ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce',
          lp: 'MultiPointPropertyType'
        },
        ps: [{
            n: 'multiPoint',
            rq: true,
            en: 'MultiPoint',
            ti: 'GML_3_2_1.MultiPointType'
          }, {
            n: 'simpleMultiPoint',
            rq: true,
            en: {
              lp: 'SimpleMultiPoint',
              ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce'
            },
            ti: '.SimpleMultiPointType'
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
            an: {
              lp: 'type',
              ns: 'http:\/\/www.w3.org\/1999\/xlink'
            },
            t: 'a'
          }, {
            n: 'href',
            an: {
              lp: 'href',
              ns: 'http:\/\/www.w3.org\/1999\/xlink'
            },
            t: 'a'
          }, {
            n: 'role',
            an: {
              lp: 'role',
              ns: 'http:\/\/www.w3.org\/1999\/xlink'
            },
            t: 'a'
          }, {
            n: 'arcrole',
            an: {
              lp: 'arcrole',
              ns: 'http:\/\/www.w3.org\/1999\/xlink'
            },
            t: 'a'
          }, {
            n: 'title',
            an: {
              lp: 'title',
              ns: 'http:\/\/www.w3.org\/1999\/xlink'
            },
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            an: {
              lp: 'show',
              ns: 'http:\/\/www.w3.org\/1999\/xlink'
            },
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            an: {
              lp: 'actuate',
              ns: 'http:\/\/www.w3.org\/1999\/xlink'
            },
            t: 'a'
          }, {
            n: 'owns',
            ti: 'Boolean',
            an: {
              lp: 'owns'
            },
            t: 'a'
          }]
      }, {
        ln: 'SimpleArcByCenterPointType',
        tn: {
          ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce',
          lp: 'SimpleArcByCenterPointType'
        },
        bti: 'GML_3_2_1.AbstractCurveType',
        ps: [{
            n: 'pos',
            rq: true,
            ti: 'GML_3_2_1.DirectPositionType'
          }, {
            n: 'pointProperty',
            rq: true,
            ti: 'GML_3_2_1.PointPropertyType'
          }, {
            n: 'posList',
            rq: true,
            ti: 'GML_3_2_1.DirectPositionListType'
          }, {
            n: 'radius',
            rq: true,
            en: {
              lp: 'radius',
              ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce'
            },
            ti: 'GML_3_2_1.LengthType'
          }, {
            n: 'startAngle',
            rq: true,
            en: {
              lp: 'startAngle',
              ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce'
            },
            ti: 'GML_3_2_1.AngleType'
          }, {
            n: 'endAngle',
            rq: true,
            en: {
              lp: 'endAngle',
              ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce'
            },
            ti: 'GML_3_2_1.AngleType'
          }, {
            n: 'interpolation',
            ti: 'GML_3_2_1.CurveInterpolationType',
            an: {
              lp: 'interpolation'
            },
            t: 'a'
          }, {
            n: 'numARC',
            rq: true,
            ti: 'Integer',
            an: {
              lp: 'numArc'
            },
            t: 'a'
          }]
      }, {
        ln: 'SimpleTriangleType',
        tn: {
          ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce',
          lp: 'SimpleTriangleType'
        },
        bti: 'GML_3_2_1.AbstractSurfaceType',
        ps: [{
            n: 'posOrPointProperty',
            rq: true,
            mno: 3,
            mxo: 3,
            col: true,
            etis: [{
                en: 'pos',
                ti: 'GML_3_2_1.DirectPositionType'
              }, {
                en: 'pointProperty',
                ti: 'GML_3_2_1.PointPropertyType'
              }],
            t: 'es'
          }, {
            n: 'posList',
            rq: true,
            ti: 'GML_3_2_1.DirectPositionListType'
          }]
      }, {
        ln: 'SimpleArcStringType',
        tn: {
          ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce',
          lp: 'SimpleArcStringType'
        },
        bti: 'GML_3_2_1.AbstractCurveType',
        ps: [{
            n: 'posOrPointProperty',
            rq: true,
            mno: 3,
            col: true,
            etis: [{
                en: 'pos',
                ti: 'GML_3_2_1.DirectPositionType'
              }, {
                en: 'pointProperty',
                ti: 'GML_3_2_1.PointPropertyType'
              }],
            t: 'es'
          }, {
            n: 'posList',
            rq: true,
            ti: 'GML_3_2_1.DirectPositionListType'
          }, {
            n: 'interpolation',
            ti: 'GML_3_2_1.CurveInterpolationType',
            an: {
              lp: 'interpolation'
            },
            t: 'a'
          }, {
            n: 'numArc',
            ti: 'Integer',
            an: {
              lp: 'numArc'
            },
            t: 'a'
          }]
      }],
    eis: [{
        en: {
          lp: 'SimplePolygon',
          ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce'
        },
        ti: '.SimplePolygonType',
        sh: {
          lp: 'AbstractSimplePolygon',
          ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce'
        }
      }, {
        en: {
          lp: 'SimpleTriangle',
          ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce'
        },
        ti: '.SimpleTriangleType',
        sh: {
          lp: 'AbstractSimplePolygon',
          ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce'
        }
      }, {
        en: {
          lp: 'SimpleArcByCenterPoint',
          ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce'
        },
        ti: '.SimpleArcByCenterPointType',
        sh: {
          lp: 'AbstractSimpleArcString',
          ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce'
        }
      }, {
        en: {
          lp: 'SimpleArcByBulge',
          ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce'
        },
        ti: '.SimpleArcByBulgeType',
        sh: {
          lp: 'AbstractSimpleArcString',
          ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce'
        }
      }, {
        en: {
          lp: 'SimpleArcStringByBulge',
          ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce'
        },
        ti: '.SimpleArcStringByBulgeType',
        sh: {
          lp: 'AbstractSimpleArcString',
          ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce'
        }
      }, {
        en: {
          lp: 'SimpleRectangle',
          ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce'
        },
        ti: '.SimpleRectangleType',
        sh: {
          lp: 'AbstractSimplePolygon',
          ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce'
        }
      }, {
        en: {
          lp: 'SimpleArcString',
          ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce'
        },
        ti: '.SimpleArcStringType',
        sh: {
          lp: 'AbstractSimpleArcString',
          ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce'
        }
      }, {
        en: {
          lp: 'AbstractSimplePolygon',
          ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce'
        },
        ti: 'GML_3_2_1.AbstractSurfaceType',
        sh: 'AbstractSurface'
      }, {
        en: {
          lp: 'SimpleCircleByCenterPoint',
          ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce'
        },
        ti: '.SimpleArcByCenterPointType',
        sh: {
          lp: 'AbstractSimpleArcString',
          ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce'
        }
      }, {
        en: {
          lp: 'SimpleMultiPoint',
          ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce'
        },
        ti: '.SimpleMultiPointType',
        sh: 'AbstractGeometricAggregate'
      }, {
        en: {
          lp: 'AbstractSimpleArcString',
          ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce'
        },
        ti: 'GML_3_2_1.AbstractCurveType',
        sh: 'AbstractCurve'
      }, {
        en: {
          lp: 'SimpleCircle',
          ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce'
        },
        ti: '.SimpleArcType',
        sh: {
          lp: 'AbstractSimpleArcString',
          ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce'
        }
      }, {
        en: {
          lp: 'SimpleArc',
          ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce'
        },
        ti: '.SimpleArcType',
        sh: {
          lp: 'AbstractSimpleArcString',
          ns: 'http:\/\/www.opengis.net\/gml\/3.3\/ce'
        }
      }]
  };
  return {
    GML_CE_3_3: GML_CE_3_3
  };
};
if (typeof define === 'function' && define.amd) {
  define([], GML_CE_3_3_Module_Factory);
}
else {
  var GML_CE_3_3_Module = GML_CE_3_3_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.GML_CE_3_3 = GML_CE_3_3_Module.GML_CE_3_3;
  }
  else {
    var GML_CE_3_3 = GML_CE_3_3_Module.GML_CE_3_3;
  }
}