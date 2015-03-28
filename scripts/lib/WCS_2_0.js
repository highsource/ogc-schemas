var WCS_2_0_Module_Factory = function () {
  var WCS_2_0 = {
    n: 'WCS_2_0',
    dens: 'http:\/\/www.opengis.net\/wcs\/2.0',
    deps: ['OWS_2_0', 'GMLCOV_1_0', 'GML_3_2_1', 'SWE_2_0'],
    tis: [{
        ln: 'GetCapabilitiesType',
        bti: 'OWS_2_0.GetCapabilitiesType',
        ps: [{
            n: 'service',
            an: {
              lp: 'service'
            },
            t: 'a'
          }]
      }, {
        ln: 'CoverageSubtypeParentType',
        ps: [{
            n: 'coverageSubtype',
            en: 'CoverageSubtype',
            ti: 'QName'
          }, {
            n: 'coverageSubtypeParent',
            en: 'CoverageSubtypeParent',
            ti: '.CoverageSubtypeParentType'
          }]
      }, {
        ln: 'CoverageSummaryType',
        bti: 'OWS_2_0.DescriptionType',
        ps: [{
            n: 'wgs84BoundingBox',
            col: true,
            en: {
              lp: 'WGS84BoundingBox',
              ns: 'http:\/\/www.opengis.net\/ows\/2.0'
            },
            ti: 'OWS_2_0.WGS84BoundingBoxType'
          }, {
            n: 'coverageId',
            en: 'CoverageId'
          }, {
            n: 'coverageSubtype',
            en: 'CoverageSubtype',
            ti: 'QName'
          }, {
            n: 'coverageSubtypeParent',
            en: 'CoverageSubtypeParent',
            ti: '.CoverageSubtypeParentType'
          }, {
            n: 'boundingBox',
            col: true,
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'BoundingBox',
              ns: 'http:\/\/www.opengis.net\/ows\/2.0'
            },
            ti: 'OWS_2_0.BoundingBoxType',
            t: 'er'
          }, {
            n: 'metadata',
            col: true,
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'Metadata',
              ns: 'http:\/\/www.opengis.net\/ows\/2.0'
            },
            ti: 'OWS_2_0.MetadataType',
            t: 'er'
          }]
      }, {
        ln: 'GetCoverageType',
        bti: '.RequestBaseType',
        ps: [{
            n: 'coverageId',
            en: 'CoverageId'
          }, {
            n: 'dimensionSubset',
            col: true,
            mx: false,
            dom: false,
            typed: false,
            en: 'DimensionSubset',
            ti: '.DimensionSubsetType',
            t: 'er'
          }, {
            n: 'format'
          }, {
            n: 'mediaType'
          }]
      }, {
        ln: 'DimensionSubsetType',
        ps: [{
            n: 'dimension',
            en: 'Dimension'
          }]
      }, {
        ln: 'ServiceParametersType',
        ps: [{
            n: 'coverageSubtype',
            en: 'CoverageSubtype',
            ti: 'QName'
          }, {
            n: 'coverageSubtypeParent',
            en: 'CoverageSubtypeParent',
            ti: '.CoverageSubtypeParentType'
          }, {
            n: 'nativeFormat'
          }, {
            n: 'extension',
            en: 'Extension',
            ti: '.ExtensionType'
          }]
      }, {
        ln: 'ExtensionType',
        ps: [{
            n: 'any',
            col: true,
            mx: false,
            t: 'ae'
          }]
      }, {
        ln: 'DescribeCoverageType',
        bti: '.RequestBaseType',
        ps: [{
            n: 'coverageId',
            col: true,
            en: 'CoverageId'
          }]
      }, {
        ln: 'CapabilitiesType',
        bti: 'OWS_2_0.CapabilitiesBaseType',
        ps: [{
            n: 'serviceMetadata',
            en: 'ServiceMetadata',
            ti: '.ServiceMetadataType'
          }, {
            n: 'contents',
            en: 'Contents',
            ti: '.ContentsType'
          }]
      }, {
        ln: 'DimensionTrimType',
        bti: '.DimensionSubsetType',
        ps: [{
            n: 'trimLow',
            en: 'TrimLow'
          }, {
            n: 'trimHigh',
            en: 'TrimHigh'
          }]
      }, {
        ln: 'OfferedCoverageType',
        ps: [{
            n: 'abstractCoverage',
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'AbstractCoverage',
              ns: 'http:\/\/www.opengis.net\/gmlcov\/1.0'
            },
            ti: 'GMLCOV_1_0.AbstractCoverageType',
            t: 'er'
          }, {
            n: 'serviceParameters',
            en: 'ServiceParameters',
            ti: '.ServiceParametersType'
          }]
      }, {
        ln: 'CoverageOfferingsType',
        ps: [{
            n: 'serviceMetadata',
            en: 'ServiceMetadata',
            ti: '.ServiceMetadataType'
          }, {
            n: 'offeredCoverage',
            col: true,
            en: 'OfferedCoverage',
            ti: '.OfferedCoverageType'
          }]
      }, {
        ln: 'RequestBaseType',
        ps: [{
            n: 'extension',
            en: 'Extension',
            ti: '.ExtensionType'
          }, {
            n: 'service',
            an: {
              lp: 'service'
            },
            t: 'a'
          }, {
            n: 'version',
            an: {
              lp: 'version'
            },
            t: 'a'
          }]
      }, {
        ln: 'CoverageDescriptionType',
        bti: 'GML_3_2_1.AbstractFeatureType',
        ps: [{
            n: 'coverageId',
            en: 'CoverageId'
          }, {
            n: 'coverageFunction',
            en: {
              lp: 'coverageFunction',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.CoverageFunctionType'
          }, {
            n: 'metadata',
            col: true,
            en: {
              lp: 'metadata',
              ns: 'http:\/\/www.opengis.net\/gmlcov\/1.0'
            },
            ti: 'GMLCOV_1_0.Metadata'
          }, {
            n: 'domainSet',
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'domainSet',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.DomainSetType',
            t: 'er'
          }, {
            n: 'rangeType',
            en: {
              lp: 'rangeType',
              ns: 'http:\/\/www.opengis.net\/gmlcov\/1.0'
            },
            ti: 'SWE_2_0.DataRecordPropertyType'
          }, {
            n: 'serviceParameters',
            en: 'ServiceParameters',
            ti: '.ServiceParametersType'
          }]
      }, {
        ln: 'ContentsType',
        bti: 'OWS_2_0.ContentsBaseType',
        ps: [{
            n: 'coverageSummary',
            col: true,
            en: 'CoverageSummary',
            ti: '.CoverageSummaryType'
          }, {
            n: 'extension',
            en: 'Extension',
            ti: '.ExtensionType'
          }]
      }, {
        ln: 'DimensionSliceType',
        bti: '.DimensionSubsetType',
        ps: [{
            n: 'slicePoint',
            en: 'SlicePoint'
          }]
      }, {
        ln: 'CoverageDescriptionsType',
        ps: [{
            n: 'coverageDescription',
            col: true,
            en: 'CoverageDescription',
            ti: '.CoverageDescriptionType'
          }]
      }, {
        ln: 'ServiceMetadataType',
        ps: [{
            n: 'formatSupported',
            col: true
          }, {
            n: 'extension',
            en: 'Extension',
            ti: '.ExtensionType'
          }]
      }],
    eis: [{
        en: 'ServiceParameters',
        ti: '.ServiceParametersType'
      }, {
        en: 'CoverageId'
      }, {
        en: 'OfferedCoverage',
        ti: '.OfferedCoverageType'
      }, {
        en: 'CoverageSubtype',
        ti: 'QName'
      }, {
        en: 'CoverageOfferings',
        ti: '.CoverageOfferingsType'
      }, {
        en: 'DescribeCoverage',
        ti: '.DescribeCoverageType'
      }, {
        en: 'CoverageDescription',
        ti: '.CoverageDescriptionType',
        sh: {
          lp: 'AbstractFeature',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'CoverageDescriptions',
        ti: '.CoverageDescriptionsType'
      }, {
        en: 'DimensionSlice',
        ti: '.DimensionSliceType',
        sh: 'DimensionSubset'
      }, {
        en: 'Contents',
        ti: '.ContentsType'
      }, {
        en: 'GetCoverage',
        ti: '.GetCoverageType'
      }, {
        en: 'Capabilities',
        ti: '.CapabilitiesType'
      }, {
        en: 'ServiceMetadata',
        ti: '.ServiceMetadataType'
      }, {
        en: 'Extension',
        ti: '.ExtensionType'
      }, {
        en: 'DimensionSubset',
        ti: '.DimensionSubsetType'
      }, {
        en: 'CoverageSummary',
        ti: '.CoverageSummaryType'
      }, {
        en: 'DimensionTrim',
        ti: '.DimensionTrimType',
        sh: 'DimensionSubset'
      }, {
        en: 'CoverageSubtypeParent',
        ti: '.CoverageSubtypeParentType'
      }, {
        en: 'GetCapabilities',
        ti: '.GetCapabilitiesType'
      }]
  };
  return {
    WCS_2_0: WCS_2_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], WCS_2_0_Module_Factory);
}
else {
  var WCS_2_0_Module = WCS_2_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.WCS_2_0 = WCS_2_0_Module.WCS_2_0;
  }
  else {
    var WCS_2_0 = WCS_2_0_Module.WCS_2_0;
  }
}