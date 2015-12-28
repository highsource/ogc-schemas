var WCS_1_1_Module_Factory = function () {
  var WCS_1_1 = {
    n: 'WCS_1_1',
    dens: 'http:\/\/www.opengis.net\/wcs\/1.1',
    deps: ['OWS_1_1_0', 'XLink_1_0', 'GML_3_1_1'],
    tis: [{
        ln: 'TimeSequenceType',
        ps: [{
            n: 'timePositionOrTimePeriod',
            rq: true,
            col: true,
            etis: [{
                en: {
                  lp: 'timePosition',
                  ns: 'http:\/\/www.opengis.net\/gml'
                },
                ti: 'GML_3_1_1.TimePositionType'
              }, {
                en: 'TimePeriod',
                ti: '.TimePeriodType'
              }],
            t: 'es'
          }]
      }, {
        ln: 'CoveragesType',
        ps: [{
            n: 'coverage',
            rq: true,
            col: true,
            en: 'Coverage',
            ti: 'OWS_1_1_0.ReferenceGroupType'
          }]
      }, {
        ln: 'CoverageDescriptionType',
        bti: 'OWS_1_1_0.DescriptionType',
        ps: [{
            n: 'identifier',
            rq: true,
            en: 'Identifier'
          }, {
            n: 'metadata',
            mno: 0,
            col: true,
            en: {
              lp: 'Metadata',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.MetadataType'
          }, {
            n: 'domain',
            rq: true,
            en: 'Domain',
            ti: '.CoverageDomainType'
          }, {
            n: 'range',
            rq: true,
            en: 'Range',
            ti: '.RangeType'
          }, {
            n: 'supportedCRS',
            mno: 0,
            col: true,
            en: 'SupportedCRS'
          }, {
            n: 'supportedFormat',
            rq: true,
            col: true,
            en: 'SupportedFormat'
          }]
      }, {
        ln: 'CoverageDomainType',
        ps: [{
            n: 'spatialDomain',
            rq: true,
            en: 'SpatialDomain',
            ti: '.SpatialDomainType'
          }, {
            n: 'temporalDomain',
            en: 'TemporalDomain',
            ti: '.TimeSequenceType'
          }]
      }, {
        ln: 'GetCoverage',
        tn: null,
        bti: '.RequestBaseType',
        ps: [{
            n: 'identifier',
            rq: true,
            en: {
              lp: 'Identifier',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.CodeType'
          }, {
            n: 'domainSubset',
            rq: true,
            en: 'DomainSubset',
            ti: '.DomainSubsetType'
          }, {
            n: 'rangeSubset',
            en: 'RangeSubset',
            ti: '.RangeSubsetType'
          }, {
            n: 'output',
            rq: true,
            en: 'Output',
            ti: '.OutputType'
          }]
      }, {
        ln: 'AvailableKeys',
        tn: null,
        ps: [{
            n: 'key',
            rq: true,
            col: true,
            en: 'Key'
          }]
      }, {
        ln: 'TimePeriodType',
        ps: [{
            n: 'beginPosition',
            rq: true,
            en: 'BeginPosition',
            ti: 'GML_3_1_1.TimePositionType'
          }, {
            n: 'endPosition',
            rq: true,
            en: 'EndPosition',
            ti: 'GML_3_1_1.TimePositionType'
          }, {
            n: 'timeResolution',
            en: 'TimeResolution'
          }, {
            n: 'frame',
            an: {
              lp: 'frame'
            },
            t: 'a'
          }]
      }, {
        ln: 'RangeType',
        ps: [{
            n: 'field',
            rq: true,
            col: true,
            en: 'Field',
            ti: '.FieldType'
          }]
      }, {
        ln: 'RequestBaseType',
        ps: [{
            n: 'service',
            rq: true,
            an: {
              lp: 'service'
            },
            t: 'a'
          }, {
            n: 'version',
            rq: true,
            an: {
              lp: 'version'
            },
            t: 'a'
          }]
      }, {
        ln: 'CoverageDescriptions',
        tn: null,
        ps: [{
            n: 'coverageDescription',
            rq: true,
            col: true,
            en: 'CoverageDescription',
            ti: '.CoverageDescriptionType'
          }]
      }, {
        ln: 'RangeSubsetType.FieldSubset',
        tn: null,
        ps: [{
            n: 'identifier',
            rq: true,
            en: {
              lp: 'Identifier',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.CodeType'
          }, {
            n: 'interpolationType',
            en: 'InterpolationType'
          }, {
            n: 'axisSubset',
            mno: 0,
            col: true,
            en: 'AxisSubset',
            ti: '.AxisSubset'
          }]
      }, {
        ln: 'InterpolationMethods',
        tn: null,
        ps: [{
            n: 'interpolationMethod',
            mno: 0,
            col: true,
            en: 'InterpolationMethod',
            ti: '.InterpolationMethodType'
          }, {
            n: '_default',
            rq: true,
            en: 'Default'
          }]
      }, {
        ln: 'InterpolationMethodType',
        bti: '.InterpolationMethodBaseType',
        ps: [{
            n: 'nullResistance',
            an: {
              lp: 'nullResistance'
            },
            t: 'a'
          }]
      }, {
        ln: 'GridCrsType',
        ps: [{
            n: 'srsName',
            en: {
              lp: 'srsName',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.CodeType'
          }, {
            n: 'gridBaseCRS',
            rq: true,
            en: 'GridBaseCRS'
          }, {
            n: 'gridType',
            en: 'GridType'
          }, {
            n: 'gridOrigin',
            en: 'GridOrigin',
            ti: {
              t: 'l',
              bti: 'Double'
            }
          }, {
            n: 'gridOffsets',
            rq: true,
            en: 'GridOffsets',
            ti: {
              t: 'l',
              bti: 'Double'
            }
          }, {
            n: 'gridCS',
            en: 'GridCS'
          }, {
            n: 'id',
            ti: 'ID',
            an: {
              lp: 'id',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            t: 'a'
          }]
      }, {
        ln: 'AxisSubset',
        tn: null,
        ps: [{
            n: 'identifier',
            rq: true,
            en: 'Identifier'
          }, {
            n: 'key',
            rq: true,
            col: true,
            en: 'Key'
          }]
      }, {
        ln: 'CoverageSummaryType',
        bti: 'OWS_1_1_0.DescriptionType',
        ps: [{
            n: 'metadata',
            mno: 0,
            col: true,
            en: {
              lp: 'Metadata',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.MetadataType'
          }, {
            n: 'wgs84BoundingBox',
            mno: 0,
            col: true,
            en: {
              lp: 'WGS84BoundingBox',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.WGS84BoundingBoxType'
          }, {
            n: 'supportedCRS',
            mno: 0,
            col: true,
            en: 'SupportedCRS'
          }, {
            n: 'supportedFormat',
            mno: 0,
            col: true,
            en: 'SupportedFormat'
          }, {
            n: 'coverageSummary',
            rq: true,
            col: true,
            en: 'CoverageSummary',
            ti: '.CoverageSummaryType'
          }, {
            n: 'optionalIdentifier',
            en: 'Identifier'
          }, {
            n: 'identifier',
            rq: true,
            en: 'Identifier'
          }]
      }, {
        ln: 'GetCapabilities',
        tn: null,
        bti: 'OWS_1_1_0.GetCapabilitiesType',
        ps: [{
            n: 'service',
            rq: true,
            an: {
              lp: 'service'
            },
            t: 'a'
          }]
      }, {
        ln: 'DescribeCoverage',
        tn: null,
        bti: '.RequestBaseType',
        ps: [{
            n: 'identifier',
            rq: true,
            col: true,
            en: 'Identifier'
          }]
      }, {
        ln: 'InterpolationMethodBaseType',
        bti: 'OWS_1_1_0.CodeType'
      }, {
        ln: 'ImageCRSRefType',
        ps: [{
            n: 'imageCRS',
            en: {
              lp: 'ImageCRS',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.ImageCRSType'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml'
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
          }]
      }, {
        ln: 'AxisType',
        bti: 'OWS_1_1_0.DescriptionType',
        ps: [{
            n: 'availableKeys',
            rq: true,
            en: 'AvailableKeys',
            ti: '.AvailableKeys'
          }, {
            n: 'meaning',
            en: {
              lp: 'Meaning',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.DomainMetadataType'
          }, {
            n: 'dataType',
            en: {
              lp: 'DataType',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.DomainMetadataType'
          }, {
            n: 'uom',
            rq: true,
            en: {
              lp: 'UOM',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.DomainMetadataType'
          }, {
            n: 'referenceSystem',
            rq: true,
            en: {
              lp: 'ReferenceSystem',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.DomainMetadataType'
          }, {
            n: 'metadata',
            mno: 0,
            col: true,
            en: {
              lp: 'Metadata',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.MetadataType'
          }, {
            n: 'identifier',
            rq: true,
            an: {
              lp: 'identifier'
            },
            t: 'a'
          }]
      }, {
        ln: 'Capabilities',
        tn: null,
        bti: 'OWS_1_1_0.CapabilitiesBaseType',
        ps: [{
            n: 'contents',
            en: 'Contents',
            ti: '.Contents'
          }]
      }, {
        ln: 'DomainSubsetType',
        ps: [{
            n: 'boundingBox',
            rq: true,
            mx: false,
            dom: false,
            en: {
              lp: 'BoundingBox',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.BoundingBoxType',
            t: 'er'
          }, {
            n: 'temporalSubset',
            en: 'TemporalSubset',
            ti: '.TimeSequenceType'
          }]
      }, {
        ln: 'FieldType',
        bti: 'OWS_1_1_0.DescriptionType',
        ps: [{
            n: 'identifier',
            rq: true,
            en: 'Identifier'
          }, {
            n: 'definition',
            rq: true,
            en: 'Definition',
            ti: 'OWS_1_1_0.UnNamedDomainType'
          }, {
            n: 'nullValue',
            mno: 0,
            col: true,
            en: 'NullValue',
            ti: 'OWS_1_1_0.CodeType'
          }, {
            n: 'interpolationMethods',
            rq: true,
            en: 'InterpolationMethods',
            ti: '.InterpolationMethods'
          }, {
            n: 'axis',
            mno: 0,
            col: true,
            en: 'Axis',
            ti: '.AxisType'
          }]
      }, {
        ln: 'Contents',
        tn: null,
        ps: [{
            n: 'coverageSummary',
            mno: 0,
            col: true,
            en: 'CoverageSummary',
            ti: '.CoverageSummaryType'
          }, {
            n: 'supportedCRS',
            mno: 0,
            col: true,
            en: 'SupportedCRS'
          }, {
            n: 'supportedFormat',
            mno: 0,
            col: true,
            en: 'SupportedFormat'
          }, {
            n: 'otherSource',
            mno: 0,
            col: true,
            en: 'OtherSource',
            ti: 'OWS_1_1_0.OnlineResourceType'
          }]
      }, {
        ln: 'OutputType',
        ps: [{
            n: 'gridCRS',
            en: 'GridCRS',
            ti: '.GridCrsType'
          }, {
            n: 'format',
            rq: true,
            an: {
              lp: 'format'
            },
            t: 'a'
          }, {
            n: 'store',
            ti: 'Boolean',
            an: {
              lp: 'store'
            },
            t: 'a'
          }]
      }, {
        ln: 'SpatialDomainType',
        ps: [{
            n: 'boundingBox',
            rq: true,
            col: true,
            mx: false,
            dom: false,
            en: {
              lp: 'BoundingBox',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.BoundingBoxType',
            t: 'er'
          }, {
            n: 'gridCRS',
            en: 'GridCRS',
            ti: '.GridCrsType'
          }, {
            n: 'coordinateOperation',
            mx: false,
            dom: false,
            en: {
              lp: '_CoordinateOperation',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.AbstractCoordinateOperationType',
            t: 'er'
          }, {
            n: 'imageCRS',
            en: 'ImageCRS',
            ti: '.ImageCRSRefType'
          }, {
            n: 'polygon',
            mno: 0,
            col: true,
            en: {
              lp: 'Polygon',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.PolygonType'
          }]
      }, {
        ln: 'RangeSubsetType',
        ps: [{
            n: 'fieldSubset',
            rq: true,
            col: true,
            en: 'FieldSubset',
            ti: '.RangeSubsetType.FieldSubset'
          }]
      }],
    eis: [{
        en: 'Coverages',
        ti: '.CoveragesType'
      }, {
        en: 'DescribeCoverage',
        ti: '.DescribeCoverage'
      }, {
        en: 'GridOrigin',
        ti: {
          t: 'l',
          bti: 'Double'
        }
      }, {
        en: 'GridCS'
      }, {
        en: 'Coverage',
        ti: 'OWS_1_1_0.ReferenceGroupType',
        sh: {
          lp: 'ReferenceGroup',
          ns: 'http:\/\/www.opengis.net\/ows\/1.1'
        }
      }, {
        en: 'InterpolationMethods',
        ti: '.InterpolationMethods'
      }, {
        en: 'Capabilities',
        ti: '.Capabilities'
      }, {
        en: 'GridOffsets',
        ti: {
          t: 'l',
          bti: 'Double'
        }
      }, {
        en: 'AvailableKeys',
        ti: '.AvailableKeys'
      }, {
        en: 'CoverageSummary',
        ti: '.CoverageSummaryType'
      }, {
        en: 'GridCRS',
        ti: '.GridCrsType'
      }, {
        en: 'GridBaseCRS'
      }, {
        en: 'TemporalDomain',
        ti: '.TimeSequenceType'
      }, {
        en: 'AxisSubset',
        ti: '.AxisSubset'
      }, {
        en: 'Contents',
        ti: '.Contents'
      }, {
        en: 'Transformation',
        ti: 'GML_3_1_1.AbstractCoordinateOperationType',
        sh: {
          lp: '_CoordinateOperation',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'GetCoverage',
        ti: '.GetCoverage'
      }, {
        en: 'GridType'
      }, {
        en: 'GetCapabilities',
        ti: '.GetCapabilities'
      }, {
        en: 'TemporalSubset',
        ti: '.TimeSequenceType'
      }, {
        en: 'CoverageDescriptions',
        ti: '.CoverageDescriptions'
      }, {
        en: 'Identifier'
      }]
  };
  return {
    WCS_1_1: WCS_1_1
  };
};
if (typeof define === 'function' && define.amd) {
  define([], WCS_1_1_Module_Factory);
}
else {
  var WCS_1_1_Module = WCS_1_1_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.WCS_1_1 = WCS_1_1_Module.WCS_1_1;
  }
  else {
    var WCS_1_1 = WCS_1_1_Module.WCS_1_1;
  }
}