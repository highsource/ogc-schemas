var Sampling_2_0_Module_Factory = function () {
  var Sampling_2_0 = {
    n: 'Sampling_2_0',
    dens: 'http:\/\/www.opengis.net\/sampling\/2.0',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['XLink_1_0', 'GML_3_2_1', 'OM_2_0', 'ISO19139_GMD_20070417'],
    tis: [{
        ln: 'SFSamplingFeatureCollectionType',
        tn: 'SF_SamplingFeatureCollectionType',
        bti: 'GML_3_2_1.AbstractFeatureType',
        ps: [{
            n: 'member',
            rq: true,
            col: true,
            ti: '.SFSamplingFeaturePropertyType'
          }]
      }, {
        ln: 'SamplingFeatureComplexType',
        ps: [{
            n: 'role',
            rq: true,
            ti: 'GML_3_2_1.ReferenceType'
          }, {
            n: 'relatedSamplingFeature',
            rq: true,
            ti: '.SFSamplingFeaturePropertyType'
          }]
      }, {
        ln: 'SFProcessPropertyType',
        tn: 'SF_ProcessPropertyType',
        ps: [{
            n: 'any',
            rq: true,
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
        ln: 'SFSamplingFeatureType',
        tn: 'SF_SamplingFeatureType',
        bti: 'GML_3_2_1.AbstractFeatureType',
        ps: [{
            n: 'type',
            ti: 'GML_3_2_1.ReferenceType'
          }, {
            n: 'sampledFeature',
            rq: true,
            col: true,
            ti: 'GML_3_2_1.FeaturePropertyType'
          }, {
            n: 'lineage',
            ti: 'ISO19139_GMD_20070417.LILineagePropertyType'
          }, {
            n: 'relatedObservation',
            mno: 0,
            col: true,
            ti: 'OM_2_0.OMObservationPropertyType'
          }, {
            n: 'relatedSamplingFeature',
            mno: 0,
            col: true,
            ti: '.SamplingFeatureComplexPropertyType'
          }, {
            n: 'parameter',
            mno: 0,
            col: true,
            ti: 'OM_2_0.NamedValuePropertyType'
          }]
      }, {
        ln: 'SFSamplingFeaturePropertyType',
        tn: 'SF_SamplingFeaturePropertyType',
        ps: [{
            n: 'sfSamplingFeature',
            rq: true,
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
        ln: 'SFSamplingFeatureCollectionPropertyType',
        tn: 'SF_SamplingFeatureCollectionPropertyType',
        ps: [{
            n: 'sfSamplingFeatureCollection',
            rq: true,
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
        ln: 'SamplingFeatureComplexPropertyType',
        ps: [{
            n: 'samplingFeatureComplex',
            rq: true,
            en: 'SamplingFeatureComplex',
            ti: '.SamplingFeatureComplexType'
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