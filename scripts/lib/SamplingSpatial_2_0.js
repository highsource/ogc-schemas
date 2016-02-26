var SamplingSpatial_2_0_Module_Factory = function () {
  var SamplingSpatial_2_0 = {
    n: 'SamplingSpatial_2_0',
    dens: 'http:\/\/www.opengis.net\/samplingSpatial\/2.0',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['XLink_1_0', 'Sampling_2_0', 'ISO19139_GMD_20070417', 'OM_2_0', 'GML_3_2_1'],
    tis: [{
        ln: 'ShapeType',
        tn: 'shapeType',
        ps: [{
            n: 'abstractGeometry',
            rq: true,
            mx: false,
            dom: false,
            en: {
              lp: 'AbstractGeometry',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.AbstractGeometryType',
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
        ln: 'SFSpatialSamplingFeatureType',
        tn: 'SF_SpatialSamplingFeatureType',
        bti: 'Sampling_2_0.SFSamplingFeatureType',
        ps: [{
            n: 'hostedProcedure',
            mno: 0,
            col: true,
            ti: 'OM_2_0.OMProcessPropertyType'
          }, {
            n: 'positionalAccuracy',
            mno: 0,
            mxo: 2,
            col: true,
            ti: 'ISO19139_GMD_20070417.DQPositionalAccuracyPropertyType'
          }, {
            n: 'shape',
            rq: true,
            ti: '.ShapeType'
          }]
      }, {
        ln: 'SFSpatialSamplingFeaturePropertyType',
        tn: 'SF_SpatialSamplingFeaturePropertyType',
        ps: [{
            n: 'sfSpatialSamplingFeature',
            rq: true,
            en: 'SF_SpatialSamplingFeature',
            ti: '.SFSpatialSamplingFeatureType'
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
      }],
    eis: [{
        en: 'SF_SpatialSamplingFeature',
        ti: '.SFSpatialSamplingFeatureType',
        sh: {
          lp: 'SF_SamplingFeature',
          ns: 'http:\/\/www.opengis.net\/sampling\/2.0'
        }
      }, {
        en: 'shape',
        ti: '.ShapeType'
      }]
  };
  return {
    SamplingSpatial_2_0: SamplingSpatial_2_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], SamplingSpatial_2_0_Module_Factory);
}
else {
  var SamplingSpatial_2_0_Module = SamplingSpatial_2_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.SamplingSpatial_2_0 = SamplingSpatial_2_0_Module.SamplingSpatial_2_0;
  }
  else {
    var SamplingSpatial_2_0 = SamplingSpatial_2_0_Module.SamplingSpatial_2_0;
  }
}