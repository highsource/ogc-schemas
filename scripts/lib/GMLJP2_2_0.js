var GMLJP2_2_0_Module_Factory = function () {
  var GMLJP2_2_0 = {
    n: 'GMLJP2_2_0',
    dens: 'http:\/\/www.opengis.net\/gmljp2\/2.0',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['XLink_1_0', 'GMLCOV_1_0', 'GML_3_2_1'],
    tis: [{
        ln: 'GMLJP2CoverageType',
        bti: 'GMLCOV_1_0.AbstractDiscreteCoverageType',
        ps: [{
            n: 'feature',
            mno: 0,
            col: true,
            ti: 'GML_3_2_1.FeaturePropertyType'
          }, {
            n: 'annotation',
            mno: 0,
            col: true,
            ti: '.GenericWithAssocPropertyType'
          }, {
            n: 'style',
            mno: 0,
            col: true,
            ti: '.GenericWithAssocPropertyType'
          }, {
            n: 'extension',
            mno: 0,
            col: true,
            ti: '.GenericWithAssocPropertyType'
          }]
      }, {
        ln: 'GenericWithAssocPropertyType',
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
        ln: 'GMLJP2FeaturesType.Feature',
        tn: null,
        bti: 'GML_3_2_1.AbstractFeatureMemberType',
        ps: [{
            n: 'abstractFeature',
            mno: 0,
            col: true,
            mx: false,
            dom: false,
            en: {
              lp: 'AbstractFeature',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.AbstractFeatureType',
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
        ln: 'GMLJP2CoverageCollectionType',
        bti: 'GMLCOV_1_0.AbstractCoverageType',
        ps: [{
            n: 'featureMember',
            rq: true,
            col: true,
            ti: '.GMLJP2CoverageCollectionType.FeatureMember'
          }, {
            n: 'style',
            mno: 0,
            col: true,
            ti: '.GenericWithAssocPropertyType'
          }, {
            n: 'extension',
            mno: 0,
            col: true,
            ti: '.GenericWithAssocPropertyType'
          }]
      }, {
        ln: 'GMLJP2FeaturesType',
        bti: 'GML_3_2_1.AbstractFeatureType',
        ps: [{
            n: 'feature',
            rq: true,
            ti: '.GMLJP2FeaturesType.Feature'
          }, {
            n: 'style',
            mno: 0,
            col: true,
            ti: '.GenericWithAssocPropertyType'
          }, {
            n: 'extension',
            mno: 0,
            col: true,
            ti: '.GenericWithAssocPropertyType'
          }]
      }, {
        ln: 'GenericMetadataType',
        bti: 'GMLCOV_1_0.ExtensionType'
      }, {
        ln: 'GMLJP2CoverageCollectionType.FeatureMember',
        tn: null,
        bti: 'GML_3_2_1.AbstractFeatureMemberType',
        ps: [{
            n: 'gmljp2GridCoverageOrGMLJP2RectifiedGridCoverageOrGMLJP2ReferenceableGridCoverage',
            rq: true,
            col: true,
            mx: false,
            dom: false,
            etis: [{
                en: 'GMLJP2RectifiedGridCoverage',
                ti: '.GMLJP2CoverageType'
              }, {
                en: 'GMLJP2ReferenceableGridCoverage',
                ti: '.GMLJP2CoverageType'
              }, {
                en: 'GMLJP2GridCoverage',
                ti: '.GMLJP2CoverageType'
              }, {
                en: 'GMLJP2Features',
                ti: '.GMLJP2FeaturesType'
              }],
            t: 'ers'
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
        en: 'GMLJP2GridCoverage',
        ti: '.GMLJP2CoverageType',
        sh: {
          lp: 'GridCoverage',
          ns: 'http:\/\/www.opengis.net\/gmlcov\/1.0'
        }
      }, {
        en: 'GMLJP2CoverageCollection',
        ti: '.GMLJP2CoverageCollectionType',
        sh: {
          lp: 'AbstractCoverage',
          ns: 'http:\/\/www.opengis.net\/gmlcov\/1.0'
        }
      }, {
        en: 'GMLJP2RectifiedGridCoverage',
        ti: '.GMLJP2CoverageType',
        sh: {
          lp: 'RectifiedGridCoverage',
          ns: 'http:\/\/www.opengis.net\/gmlcov\/1.0'
        }
      }, {
        en: 'GMLJP2ReferenceableGridCoverage',
        ti: '.GMLJP2CoverageType',
        sh: {
          lp: 'ReferenceableGridCoverage',
          ns: 'http:\/\/www.opengis.net\/gmlcov\/1.0'
        }
      }, {
        en: 'Metadata',
        ti: '.GenericMetadataType',
        sh: {
          lp: 'Extension',
          ns: 'http:\/\/www.opengis.net\/gmlcov\/1.0'
        }
      }, {
        en: 'GMLJP2Features',
        ti: '.GMLJP2FeaturesType',
        sh: {
          lp: 'AbstractFeature',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }]
  };
  return {
    GMLJP2_2_0: GMLJP2_2_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], GMLJP2_2_0_Module_Factory);
}
else {
  var GMLJP2_2_0_Module = GMLJP2_2_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.GMLJP2_2_0 = GMLJP2_2_0_Module.GMLJP2_2_0;
  }
  else {
    var GMLJP2_2_0 = GMLJP2_2_0_Module.GMLJP2_2_0;
  }
}