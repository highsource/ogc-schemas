var WCS_WCSEO_1_0_Module_Factory = function () {
  var WCS_WCSEO_1_0 = {
    n: 'WCS_WCSEO_1_0',
    dens: 'http:\/\/www.opengis.net\/wcs\/wcseo\/1.0',
    deps: ['OMEO_EOP_2_0', 'OWS_2_0', 'WCS_2_0', 'GML_3_2', 'GMLCOV_1_0'],
    tis: [{
        ln: 'DatasetType',
        tn: 'datasetType',
        ps: [{
            n: 'coverageId',
            rq: true,
            en: {
              lp: 'CoverageId',
              ns: 'http:\/\/www.opengis.net\/wcs\/2.0'
            },
            ti: 'NCName'
          }, {
            n: 'contributingFootprint',
            ti: '.ContributingFootprint'
          }]
      }, {
        ln: 'ContributingFootprint',
        tn: null,
        ps: [{
            n: 'footprint',
            rq: true,
            en: {
              lp: 'Footprint',
              ns: 'http:\/\/www.opengis.net\/eop\/2.0'
            },
            ti: 'OMEO_EOP_2_0.FootprintType'
          }]
      }, {
        ln: 'EOCoverageSetDescriptionType',
        ps: [{
            n: 'coverageDescriptions',
            en: {
              lp: 'CoverageDescriptions',
              ns: 'http:\/\/www.opengis.net\/wcs\/2.0'
            },
            ti: 'WCS_2_0.CoverageDescriptionsType'
          }, {
            n: 'datasetSeriesDescriptions',
            en: 'DatasetSeriesDescriptions',
            ti: '.DatasetSeriesDescriptionsType'
          }, {
            n: 'numberMatched',
            rq: true,
            ti: 'NonNegativeInteger',
            an: {
              lp: 'numberMatched'
            },
            t: 'a'
          }, {
            n: 'numberReturned',
            rq: true,
            ti: 'NonNegativeInteger',
            an: {
              lp: 'numberReturned'
            },
            t: 'a'
          }]
      }, {
        ln: 'DatasetSeriesDescriptionType',
        bti: 'GML_3_2.AbstractFeatureType',
        ps: [{
            n: 'datasetSeriesId',
            rq: true,
            en: 'DatasetSeriesId',
            ti: 'NCName'
          }, {
            n: 'timePeriod',
            rq: true,
            en: {
              lp: 'TimePeriod',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2.TimePeriodType'
          }, {
            n: 'footprint',
            en: {
              lp: 'Footprint',
              ns: 'http:\/\/www.opengis.net\/eop\/2.0'
            },
            ti: 'OMEO_EOP_2_0.FootprintType'
          }, {
            n: 'serviceParameters',
            en: 'ServiceParameters',
            ti: '.ServiceParametersType'
          }]
      }, {
        ln: 'ReferenceableStitchedMosaic',
        tn: null,
        bti: '.AbstractEOCoverageType',
        ps: [{
            n: 'datasets',
            rq: true,
            ti: '.DatasetsType'
          }]
      }, {
        ln: 'DatasetSeriesSummaryType',
        bti: 'OWS_2_0.DescriptionType',
        ps: [{
            n: 'wgs84BoundingBox',
            rq: true,
            en: {
              lp: 'WGS84BoundingBox',
              ns: 'http:\/\/www.opengis.net\/ows\/2.0'
            },
            ti: 'OWS_2_0.WGS84BoundingBoxType'
          }, {
            n: 'datasetSeriesId',
            rq: true,
            en: 'DatasetSeriesId',
            ti: 'NCName'
          }, {
            n: 'timePeriod',
            rq: true,
            en: {
              lp: 'TimePeriod',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2.TimePeriodType'
          }, {
            n: 'metadata',
            mno: 0,
            col: true,
            mx: false,
            dom: false,
            en: {
              lp: 'Metadata',
              ns: 'http:\/\/www.opengis.net\/ows\/2.0'
            },
            ti: 'OWS_2_0.MetadataType',
            t: 'er'
          }]
      }, {
        ln: 'RectifiedStitchedMosaicCommonElement',
        tn: null,
        ps: [{
            n: 'coverageId',
            rq: true,
            en: {
              lp: 'CoverageId',
              ns: 'http:\/\/www.opengis.net\/wcs\/2.0'
            },
            ti: 'NCName'
          }, {
            n: 'reference',
            rq: true,
            mx: false,
            dom: false,
            en: {
              lp: 'Reference',
              ns: 'http:\/\/www.opengis.net\/ows\/2.0'
            },
            ti: 'OWS_2_0.ReferenceType',
            t: 'er'
          }]
      }, {
        ln: 'DatasetSeries',
        tn: null,
        ps: [{
            n: 'datasetSeriesId',
            rq: true,
            en: 'DatasetSeriesId',
            ti: 'NCName'
          }, {
            n: 'reference',
            rq: true,
            mx: false,
            dom: false,
            en: {
              lp: 'Reference',
              ns: 'http:\/\/www.opengis.net\/ows\/2.0'
            },
            ti: 'OWS_2_0.ReferenceType',
            t: 'er'
          }]
      }, {
        ln: 'ServiceParametersType',
        ps: [{
            n: 'rectifiedDataset',
            mno: 0,
            col: true,
            ti: '.RectifiedDataset'
          }, {
            n: 'referenceableDataset',
            mno: 0,
            col: true,
            ti: '.ReferenceableDataset'
          }, {
            n: 'rectifiedStitchedMosaic',
            mno: 0,
            col: true,
            ti: '.RectifiedStitchedMosaicCommonElement'
          }, {
            n: 'referenceableStitchedMosaic',
            mno: 0,
            col: true,
            ti: '.ReferenceableStitchedMosaicCommonElement'
          }, {
            n: 'datasetSeries',
            mno: 0,
            col: true,
            ti: '.DatasetSeries'
          }]
      }, {
        ln: 'RectifiedDataset',
        tn: null,
        ps: [{
            n: 'coverageId',
            rq: true,
            en: {
              lp: 'CoverageId',
              ns: 'http:\/\/www.opengis.net\/wcs\/2.0'
            },
            ti: 'NCName'
          }, {
            n: 'reference',
            rq: true,
            mx: false,
            dom: false,
            en: {
              lp: 'Reference',
              ns: 'http:\/\/www.opengis.net\/ows\/2.0'
            },
            ti: 'OWS_2_0.ReferenceType',
            t: 'er'
          }]
      }, {
        ln: 'ReferenceGetCoverageType',
        tn: 'referenceGetCoverageType',
        ps: [{
            n: 'reference',
            rq: true,
            mx: false,
            dom: false,
            en: {
              lp: 'Reference',
              ns: 'http:\/\/www.opengis.net\/ows\/2.0'
            },
            ti: 'OWS_2_0.ReferenceType',
            t: 'er'
          }]
      }, {
        ln: 'RectifiedStitchedMosaic',
        tn: null,
        bti: '.AbstractEOCoverageType',
        ps: [{
            n: 'datasets',
            rq: true,
            ti: '.DatasetsType'
          }]
      }, {
        ln: 'DatasetsType',
        tn: 'datasetsType',
        ps: [{
            n: 'dataset',
            mno: 0,
            col: true,
            ti: '.DatasetType'
          }]
      }, {
        ln: 'EOMetadataType',
        ps: [{
            n: 'earthObservation',
            rq: true,
            en: {
              lp: 'EarthObservation',
              ns: 'http:\/\/www.opengis.net\/eop\/2.0'
            },
            ti: 'OMEO_EOP_2_0.EarthObservationType'
          }, {
            n: 'reference',
            rq: true,
            mx: false,
            dom: false,
            en: {
              lp: 'Reference',
              ns: 'http:\/\/www.opengis.net\/ows\/2.0'
            },
            ti: 'OWS_2_0.ReferenceType',
            t: 'er'
          }, {
            n: 'lineage',
            mno: 0,
            col: true,
            ti: '.LineageType'
          }]
      }, {
        ln: 'ReferenceableStitchedMosaicCommonElement',
        tn: null,
        ps: [{
            n: 'coverageId',
            rq: true,
            en: {
              lp: 'CoverageId',
              ns: 'http:\/\/www.opengis.net\/wcs\/2.0'
            },
            ti: 'NCName'
          }, {
            n: 'reference',
            rq: true,
            mx: false,
            dom: false,
            en: {
              lp: 'Reference',
              ns: 'http:\/\/www.opengis.net\/ows\/2.0'
            },
            ti: 'OWS_2_0.ReferenceType',
            t: 'er'
          }]
      }, {
        ln: 'Sections',
        tn: null,
        ps: [{
            n: 'section',
            rq: true,
            col: true,
            en: 'Section'
          }]
      }, {
        ln: 'LineageType',
        tn: 'lineageType',
        ps: [{
            n: 'processing',
            rq: true,
            mx: false,
            dom: false,
            ti: 'AnyType',
            t: 'er'
          }, {
            n: 'timePosition',
            en: {
              lp: 'timePosition',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2.TimePositionType'
          }]
      }, {
        ln: 'AbstractEOCoverageType',
        bti: 'GMLCOV_1_0.AbstractDiscreteCoverageType'
      }, {
        ln: 'DescribeEOCoverageSetType',
        bti: 'WCS_2_0.RequestBaseType',
        ps: [{
            n: 'eoId',
            rq: true,
            col: true,
            ti: 'NCName'
          }, {
            n: 'containment'
          }, {
            n: 'sections',
            en: 'Sections',
            ti: '.Sections'
          }, {
            n: 'dimensionTrim',
            mno: 0,
            mxo: 3,
            col: true,
            en: {
              lp: 'DimensionTrim',
              ns: 'http:\/\/www.opengis.net\/wcs\/2.0'
            },
            ti: 'WCS_2_0.DimensionTrimType'
          }, {
            n: 'count',
            ti: 'NonNegativeInteger',
            an: {
              lp: 'count'
            },
            t: 'a'
          }]
      }, {
        ln: 'DatasetSeriesDescriptionsType',
        ps: [{
            n: 'datasetSeriesDescription',
            mno: 0,
            col: true,
            en: 'DatasetSeriesDescription',
            ti: '.DatasetSeriesDescriptionType'
          }]
      }, {
        ln: 'ReferenceableDataset',
        tn: null,
        ps: [{
            n: 'coverageId',
            rq: true,
            en: {
              lp: 'CoverageId',
              ns: 'http:\/\/www.opengis.net\/wcs\/2.0'
            },
            ti: 'NCName'
          }, {
            n: 'reference',
            rq: true,
            mx: false,
            dom: false,
            en: {
              lp: 'Reference',
              ns: 'http:\/\/www.opengis.net\/ows\/2.0'
            },
            ti: 'OWS_2_0.ReferenceType',
            t: 'er'
          }]
      }, {
        ln: 'DatasetSeriesType',
        ps: [{
            n: 'datasetSeriesId',
            rq: true,
            en: 'DatasetSeriesId',
            ti: 'NCName'
          }, {
            n: 'footprint',
            en: {
              lp: 'Footprint',
              ns: 'http:\/\/www.opengis.net\/eop\/2.0'
            },
            ti: 'OMEO_EOP_2_0.FootprintType'
          }, {
            n: 'timePeriod',
            rq: true,
            en: {
              lp: 'TimePeriod',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2.TimePeriodType'
          }, {
            n: 'rectifiedDataset',
            mno: 0,
            col: true,
            ti: '.RectifiedDataset'
          }, {
            n: 'referenceableDataset',
            mno: 0,
            col: true,
            ti: '.ReferenceableDataset'
          }, {
            n: 'rectifiedStitchedMosaic',
            mno: 0,
            col: true,
            ti: '.RectifiedStitchedMosaicCommonElement'
          }, {
            n: 'referenceableStitchedMosaic',
            mno: 0,
            col: true,
            ti: '.ReferenceableStitchedMosaicCommonElement'
          }, {
            n: 'datasetSeries',
            mno: 0,
            col: true,
            ti: '.DatasetSeries'
          }]
      }],
    eis: [{
        en: 'dataset',
        ti: '.DatasetType'
      }, {
        en: 'referenceableStitchedMosaic',
        ti: '.ReferenceableStitchedMosaicCommonElement'
      }, {
        en: 'DatasetSeriesDescription',
        ti: '.DatasetSeriesDescriptionType'
      }, {
        en: 'rectifiedDataset',
        ti: '.RectifiedDataset'
      }, {
        en: 'processing',
        ti: 'AnyType'
      }, {
        en: 'referenceableDataset',
        ti: '.ReferenceableDataset'
      }, {
        en: 'containment'
      }, {
        en: 'DatasetSeriesDescriptions',
        ti: '.DatasetSeriesDescriptionsType'
      }, {
        en: 'rectifiedStitchedMosaic',
        ti: '.RectifiedStitchedMosaicCommonElement'
      }, {
        en: 'referenceGetCoverage',
        ti: '.ReferenceGetCoverageType',
        sh: 'processing'
      }, {
        en: 'datasetSeries',
        ti: '.DatasetSeries'
      }, {
        en: 'RectifiedStitchedMosaic',
        ti: '.RectifiedStitchedMosaic',
        sh: 'RectifiedEOCoverage'
      }, {
        en: 'datasets',
        ti: '.DatasetsType'
      }, {
        en: 'ReferenceableDataset',
        ti: '.AbstractEOCoverageType',
        sh: 'ReferenceableEOCoverage'
      }, {
        en: 'Sections',
        ti: '.Sections'
      }, {
        en: 'eoId',
        ti: 'NCName'
      }, {
        en: 'ServiceParameters',
        ti: '.ServiceParametersType'
      }, {
        en: 'DescribeEOCoverageSet',
        ti: '.DescribeEOCoverageSetType'
      }, {
        en: 'contributingFootprint',
        ti: '.ContributingFootprint'
      }, {
        en: 'RectifiedDataset',
        ti: '.AbstractEOCoverageType',
        sh: 'RectifiedEOCoverage'
      }, {
        en: 'EOMetadata',
        ti: '.EOMetadataType'
      }, {
        en: 'ReferenceableStitchedMosaic',
        ti: '.ReferenceableStitchedMosaic',
        sh: 'ReferenceableEOCoverage'
      }, {
        en: 'Section'
      }, {
        en: 'RectifiedEOCoverage',
        ti: '.AbstractEOCoverageType',
        sh: {
          lp: 'RectifiedGridCoverage',
          ns: 'http:\/\/www.opengis.net\/gmlcov\/1.0'
        }
      }, {
        en: 'DatasetSeries',
        ti: '.DatasetSeriesType'
      }, {
        en: 'lineage',
        ti: '.LineageType'
      }, {
        en: 'EOCoverageSetDescription',
        ti: '.EOCoverageSetDescriptionType'
      }, {
        en: 'DatasetSeriesSummary',
        ti: '.DatasetSeriesSummaryType'
      }, {
        en: 'DatasetSeriesId',
        ti: 'NCName'
      }, {
        en: 'ReferenceableEOCoverage',
        ti: '.AbstractEOCoverageType',
        sh: {
          lp: 'ReferenceableGridCoverage',
          ns: 'http:\/\/www.opengis.net\/gmlcov\/1.0'
        }
      }]
  };
  return {
    WCS_WCSEO_1_0: WCS_WCSEO_1_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], WCS_WCSEO_1_0_Module_Factory);
}
else {
  var WCS_WCSEO_1_0_Module = WCS_WCSEO_1_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.WCS_WCSEO_1_0 = WCS_WCSEO_1_0_Module.WCS_WCSEO_1_0;
  }
  else {
    var WCS_WCSEO_1_0 = WCS_WCSEO_1_0_Module.WCS_WCSEO_1_0;
  }
}