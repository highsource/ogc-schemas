var GML_RGRID_3_3_Module_Factory = function () {
  var GML_RGRID_3_3 = {
    n: 'GML_RGRID_3_3',
    dens: 'http:\/\/www.opengis.net\/gml\/3.3\/rgrid',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['GML_3_2', 'XLink_1_0'],
    tis: [{
        ln: 'GeneralGridAxisPropertyType',
        ps: [{
            n: 'generalGridAxis',
            rq: true,
            en: 'GeneralGridAxis',
            ti: '.GeneralGridAxisType'
          }, {
            n: 'owns',
            ti: 'Boolean',
            an: {
              lp: 'owns'
            },
            t: 'a'
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
        ln: 'GeneralGridAxisType',
        ps: [{
            n: 'offsetVector',
            rq: true,
            ti: 'GML_3_2.VectorType'
          }, {
            n: 'coefficients',
            rq: true,
            ti: {
              t: 'l',
              bti: 'Double'
            }
          }, {
            n: 'gridAxesSpanned',
            rq: true,
            ti: {
              t: 'l',
              bti: 'NCName'
            }
          }, {
            n: 'sequenceRule',
            rq: true,
            ti: 'GML_3_2.SequenceRuleType'
          }]
      }, {
        ln: 'ReferenceableGridByTransformationType',
        bti: '.AbstractReferenceableGridType',
        ps: [{
            n: 'transformation',
            rq: true,
            ti: 'GML_3_2.TransformationPropertyType'
          }, {
            n: 'concatenatedOperation',
            rq: true,
            ti: 'GML_3_2.ConcatenatedOperationPropertyType'
          }]
      }, {
        ln: 'ReferenceableGridPropertyType',
        ps: [{
            n: 'abstractReferenceableGrid',
            rq: true,
            mx: false,
            dom: false,
            en: 'AbstractReferenceableGrid',
            ti: '.AbstractReferenceableGridType',
            t: 'er'
          }, {
            n: 'owns',
            ti: 'Boolean',
            an: {
              lp: 'owns'
            },
            t: 'a'
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
        ln: 'GridCRSPropertyType',
        ps: [{
            n: 'abstractCRS',
            rq: true,
            mx: false,
            dom: false,
            en: {
              lp: 'AbstractCRS',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2.AbstractCRSType',
            t: 'er'
          }]
      }, {
        ln: 'ReferenceableGridByArrayType',
        bti: '.AbstractReferenceableGridType',
        ps: [{
            n: 'posList',
            rq: true,
            en: {
              lp: 'posList',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2.DirectPositionListType'
          }, {
            n: 'geometricPositionGroup',
            rq: true,
            col: true,
            etis: [{
                en: {
                  lp: 'pos',
                  ns: 'http:\/\/www.opengis.net\/gml\/3.2'
                },
                ti: 'GML_3_2.DirectPositionType'
              }, {
                en: {
                  lp: 'pointProperty',
                  ns: 'http:\/\/www.opengis.net\/gml\/3.2'
                },
                ti: 'GML_3_2.PointPropertyType'
              }],
            t: 'es'
          }, {
            n: 'sequenceRule',
            rq: true,
            ti: 'GML_3_2.SequenceRuleType'
          }]
      }, {
        ln: 'ReferenceableGridByVectorsType',
        bti: '.AbstractReferenceableGridType',
        ps: [{
            n: 'origin',
            rq: true,
            ti: 'GML_3_2.PointPropertyType'
          }, {
            n: 'generalGridAxis',
            rq: true,
            col: true,
            ti: '.GeneralGridAxisPropertyType'
          }]
      }, {
        ln: 'AbstractReferenceableGridType',
        bti: 'GML_3_2.GridType',
        ps: [{
            n: 'gridCRS',
            ti: '.GridCRSPropertyType'
          }]
      }],
    eis: [{
        en: 'ReferenceableGridByTransformation',
        ti: '.ReferenceableGridByTransformationType',
        sh: 'AbstractReferenceableGrid'
      }, {
        en: 'AbstractReferenceableGrid',
        ti: '.AbstractReferenceableGridType',
        sh: {
          lp: 'Grid',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'referenceableGridProperty',
        ti: '.ReferenceableGridPropertyType'
      }, {
        en: 'ReferenceableGridByVectors',
        ti: '.ReferenceableGridByVectorsType',
        sh: 'AbstractReferenceableGrid'
      }, {
        en: 'ReferenceableGridByArray',
        ti: '.ReferenceableGridByArrayType',
        sh: 'AbstractReferenceableGrid'
      }, {
        en: 'GeneralGridAxis',
        ti: '.GeneralGridAxisType'
      }, {
        en: 'gridCRS',
        ti: '.GridCRSPropertyType'
      }]
  };
  return {
    GML_RGRID_3_3: GML_RGRID_3_3
  };
};
if (typeof define === 'function' && define.amd) {
  define([], GML_RGRID_3_3_Module_Factory);
}
else {
  var GML_RGRID_3_3_Module = GML_RGRID_3_3_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.GML_RGRID_3_3 = GML_RGRID_3_3_Module.GML_RGRID_3_3;
  }
  else {
    var GML_RGRID_3_3 = GML_RGRID_3_3_Module.GML_RGRID_3_3;
  }
}