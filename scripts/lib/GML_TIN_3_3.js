var GML_TIN_3_3_Module_Factory = function () {
  var GML_TIN_3_3 = {
    n: 'GML_TIN_3_3',
    dens: 'http:\/\/www.opengis.net\/gml\/3.3\/tin',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['GML_3_2_1', 'XLink_1_0'],
    tis: [{
        ln: 'SimpleTrianglePatchType',
        bti: 'GML_3_2_1.AbstractSurfacePatchType',
        ps: [{
            n: 'posOrPointProperty',
            rq: true,
            mno: 3,
            mxo: 3,
            col: true,
            etis: [{
                en: {
                  lp: 'pos',
                  ns: 'http:\/\/www.opengis.net\/gml\/3.2'
                },
                ti: 'GML_3_2_1.DirectPositionType'
              }, {
                en: {
                  lp: 'pointProperty',
                  ns: 'http:\/\/www.opengis.net\/gml\/3.2'
                },
                ti: 'GML_3_2_1.PointPropertyType'
              }],
            t: 'es'
          }, {
            n: 'posList',
            rq: true,
            en: {
              lp: 'posList',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.DirectPositionListType'
          }, {
            n: 'interpolation',
            ti: 'GML_3_2_1.SurfaceInterpolationType',
            an: {
              lp: 'interpolation'
            },
            t: 'a'
          }]
      }, {
        ln: 'TINType',
        bti: 'GML_3_2_1.SurfaceType',
        ps: [{
            n: 'tinElement',
            mno: 0,
            col: true,
            ti: '.TINElementPropertyType'
          }, {
            n: 'maxLength',
            ti: 'GML_3_2_1.LengthType'
          }]
      }, {
        ln: 'TINElementPropertyType',
        ps: [{
            n: 'tinElement',
            rq: true,
            en: 'TINElement',
            ti: '.TINElementType'
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
        ln: 'TINElementType',
        bti: 'GML_3_2_1.AbstractFeatureType',
        ps: [{
            n: 'elementType',
            rq: true
          }, {
            n: 'elementID',
            ti: 'Integer'
          }, {
            n: 'elementTag'
          }, {
            n: 'elementGeometry',
            rq: true,
            ti: 'GML_3_2_1.GeometryPropertyType'
          }]
      }],
    eis: [{
        en: 'TIN',
        ti: '.TINType',
        sh: 'TriangulatedSurface'
      }, {
        en: 'TINElement',
        ti: '.TINElementType',
        sh: {
          lp: 'AbstractObject',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'SimpleTrianglePatch',
        ti: '.SimpleTrianglePatchType',
        sh: {
          lp: 'AbstractSurfacePatch',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'TriangulatedSurface',
        ti: 'GML_3_2_1.SurfaceType',
        sh: {
          lp: 'Surface',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }]
  };
  return {
    GML_TIN_3_3: GML_TIN_3_3
  };
};
if (typeof define === 'function' && define.amd) {
  define([], GML_TIN_3_3_Module_Factory);
}
else {
  var GML_TIN_3_3_Module = GML_TIN_3_3_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.GML_TIN_3_3 = GML_TIN_3_3_Module.GML_TIN_3_3;
  }
  else {
    var GML_TIN_3_3 = GML_TIN_3_3_Module.GML_TIN_3_3;
  }
}