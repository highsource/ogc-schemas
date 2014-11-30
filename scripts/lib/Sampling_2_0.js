var Sampling_2_0_Module_Factory = function () {
  var Sampling_2_0 = {
    n: 'Sampling_2_0',
    dens: 'http:\/\/www.opengis.net\/sampling\/2.0',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    tis: [{
        ln: 'SamplingFeatureComplexPropertyType',
        ps: [{
            n: 'samplingFeatureComplex',
            en: 'SamplingFeatureComplex',
            ti: '.SamplingFeatureComplexType'
          }]
      }, {
        ln: 'SFSamplingFeatureCollectionType',
        bti: 'GML_3_2_1.AbstractFeatureType',
        ps: [{
            n: 'member',
            col: true,
            ti: '.SFSamplingFeaturePropertyType'
          }]
      }, {
        ln: 'SFSamplingFeaturePropertyType',
        ps: [{
            n: 'sfSamplingFeature',
            en: 'SF_SamplingFeature',
            ti: '.SFSamplingFeatureType'
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
        ln: 'SFProcessPropertyType',
        ps: [{
            n: 'any',
            mx: false,
            t: 'ae'
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
        ln: 'SamplingFeatureComplexType',
        ps: [{
            n: 'role',
            ti: 'GML_3_2_1.ReferenceType'
          }, {
            n: 'relatedSamplingFeature',
            ti: '.SFSamplingFeaturePropertyType'
          }]
      }, {
        ln: 'SFSamplingFeatureCollectionPropertyType',
        ps: [{
            n: 'sfSamplingFeatureCollection',
            en: 'SF_SamplingFeatureCollection',
            ti: '.SFSamplingFeatureCollectionType'
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
        ln: 'SFSamplingFeatureType',
        bti: 'GML_3_2_1.AbstractFeatureType',
        ps: [{
            n: 'type',
            ti: 'GML_3_2_1.ReferenceType'
          }, {
            n: 'sampledFeature',
            col: true,
            ti: 'GML_3_2_1.FeaturePropertyType'
          }, {
            n: 'lineage',
            ti: 'ISO19139_GMD_20070417.LILineagePropertyType'
          }, {
            n: 'relatedObservation',
            col: true,
            ti: 'OM_2_0.OMObservationPropertyType'
          }, {
            n: 'relatedSamplingFeature',
            col: true,
            ti: '.SamplingFeatureComplexPropertyType'
          }, {
            n: 'parameter',
            col: true,
            ti: 'OM_2_0.NamedValuePropertyType'
          }]
      }],
    eis: [{
        en: 'SF_SamplingFeature',
        ti: '.SFSamplingFeatureType',
        sh: {
          lp: 'AbstractFeature',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'SF_SamplingFeatureCollection',
        ti: '.SFSamplingFeatureCollectionType',
        sh: {
          lp: 'AbstractFeature',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'SamplingFeatureComplex',
        ti: '.SamplingFeatureComplexType'
      }]
  };
  return {
    Sampling_2_0: Sampling_2_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], Sampling_2_0_Module_Factory);
}
else {
  var Sampling_2_0_Module = Sampling_2_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.Sampling_2_0 = Sampling_2_0_Module.Sampling_2_0;
  }
  else {
    var Sampling_2_0 = Sampling_2_0_Module.Sampling_2_0;
  }
}