var WCS_1_1_Module_Factory = function () {
  var WCS_1_1 = {
    n: 'WCS_1_1',
    dens: 'http:\/\/www.opengis.net\/wcs\/1.1',
    deps: ['GML_3_1_1', 'OWS_1_1_0', 'XLink_1_0'],
    tis: [{
        ln: 'RangeType',
        ps: [{
            n: 'field',
            col: true,
            en: 'Field',
            ti: '.FieldType'
          }]
      }, {
        ln: 'CoveragesType',
        ps: [{
            n: 'coverage',
            col: true,
            en: 'Coverage',
            ti: 'OWS_1_1_0.ReferenceGroupType'
          }]
      }, {
        ln: 'CoverageDomainType',
        ps: [{
            n: 'spatialDomain',
            en: 'SpatialDomain',
            ti: '.SpatialDomainType'
          }, {
            n: 'temporalDomain',
            en: 'TemporalDomain',
            ti: '.TimeSequenceType'
          }]
      }, {
        ln: 'AxisType',
        bti: 'OWS_1_1_0.DescriptionType',
        ps: [{
            n: 'availableKeys',
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
            en: {
              lp: 'UOM',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.DomainMetadataType'
          }, {
            n: 'referenceSystem',
            en: {
              lp: 'ReferenceSystem',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.DomainMetadataType'
          }, {
            n: 'metadata',
            col: true,
            en: {
              lp: 'Metadata',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.MetadataType'
          }, {
            n: 'identifier',
            an: {
              lp: 'identifier'
            },
            t: 'a'
          }]
      }, {
        ln: 'Contents',
        ps: [{
            n: 'coverageSummary',
            col: true,
            en: 'CoverageSummary',
            ti: '.CoverageSummaryType'
          }, {
            n: 'supportedCRS',
            col: true,
            en: 'SupportedCRS'
          }, {
            n: 'supportedFormat',
            col: true,
            en: 'SupportedFormat'
          }, {
            n: 'otherSource',
            col: true,
            en: 'OtherSource',
            ti: 'OWS_1_1_0.OnlineResourceType'
          }]
      }, {
        ln: 'SpatialDomainType',
        ps: [{
            n: 'boundingBox',
            col: true,
            mx: false,
            dom: false,
            typed: false,
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
            typed: false,
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
            col: true,
            en: {
              lp: 'Polygon',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.PolygonType'
          }]
      }, {
        ln: 'RangeSubsetType.FieldSubset',
        ps: [{
            n: 'identifier',
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
            col: true,
            en: 'AxisSubset',
            ti: '.AxisSubset'
          }]
      }, {
        ln: 'InterpolationMethodBaseType',
        bti: 'OWS_1_1_0.CodeType'
      }, {
        ln: 'DomainSubsetType',
        ps: [{
            n: 'boundingBox',
            mx: false,
            dom: false,
            typed: false,
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
        ps: [{
            n: 'identifier',
            en: 'Identifier'
          }, {
            n: 'key',
            col: true,
            en: 'Key'
          }]
      }, {
        ln: 'AvailableKeys',
        ps: [{
            n: 'key',
            col: true,
            en: 'Key'
          }]
      }, {
        ln: 'RequestBaseType',
        ps: [{
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
        ln: 'CoverageSummaryType',
        bti: 'OWS_1_1_0.DescriptionType',
        ps: [{
            n: 'metadata',
            col: true,
            en: {
              lp: 'Metadata',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.MetadataType'
          }, {
            n: 'wgs84BoundingBox',
            col: true,
            en: {
              lp: 'WGS84BoundingBox',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.WGS84BoundingBoxType'
          }, {
            n: 'supportedCRS',
            col: true,
            en: 'SupportedCRS'
          }, {
            n: 'supportedFormat',
            col: true,
            en: 'SupportedFormat'
          }, {
            n: 'coverageSummary',
            col: true,
            en: 'CoverageSummary',
            ti: '.CoverageSummaryType'
          }, {
            n: 'optionalIdentifier',
            en: 'Identifier'
          }, {
            n: 'identifier',
            en: 'Identifier'
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
        ln: 'CoverageDescriptionType',
        bti: 'OWS_1_1_0.DescriptionType',
        ps: [{
            n: 'identifier',
            en: 'Identifier'
          }, {
            n: 'metadata',
            col: true,
            en: {
              lp: 'Metadata',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.MetadataType'
          }, {
            n: 'domain',
            en: 'Domain',
            ti: '.CoverageDomainType'
          }, {
            n: 'range',
            en: 'Range',
            ti: '.RangeType'
          }, {
            n: 'supportedCRS',
            col: true,
            en: 'SupportedCRS'
          }, {
            n: 'supportedFormat',
            col: true,
            en: 'SupportedFormat'
          }]
      }, {
        ln: 'CoverageDescriptions',
        ps: [{
            n: 'coverageDescription',
            col: true,
            en: 'CoverageDescription',
            ti: '.CoverageDescriptionType'
          }]
      }, {
        ln: 'DescribeCoverage',
        bti: '.RequestBaseType',
        ps: [{
            n: 'identifier',
            col: true,
            en: 'Identifier'
          }]
      }, {
        ln: 'TimeSequenceType',
        ps: [{
            n: 'timePositionOrTimePeriod',
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
        ln: 'TimePeriodType',
        ps: [{
            n: 'beginPosition',
            en: 'BeginPosition',
            ti: 'GML_3_1_1.TimePositionType'
          }, {
            n: 'endPosition',
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
        ln: 'FieldType',
        bti: 'OWS_1_1_0.DescriptionType',
        ps: [{
            n: 'identifier',
            en: 'Identifier'
          }, {
            n: 'definition',
            en: 'Definition',
            ti: 'OWS_1_1_0.UnNamedDomainType'
          }, {
            n: 'nullValue',
            col: true,
            en: 'NullValue',
            ti: 'OWS_1_1_0.CodeType'
          }, {
            n: 'interpolationMethods',
            en: 'InterpolationMethods',
            ti: '.InterpolationMethods'
          }, {
            n: 'axis',
            col: true,
            en: 'Axis',
            ti: '.AxisType'
          }]
      }, {
        ln: 'GetCapabilities',
        bti: 'OWS_1_1_0.GetCapabilitiesType',
        ps: [{
            n: 'service',
            an: {
              lp: 'service'
            },
            t: 'a'
          }]
      }, {
        ln: 'InterpolationMethods',
        ps: [{
            n: 'interpolationMethod',
            col: true,
            en: 'InterpolationMethod',
            ti: '.InterpolationMethodType'
          }, {
            n: '_default',
            en: 'Default'
          }]
      }, {
        ln: 'RangeSubsetType',
        ps: [{
            n: 'fieldSubset',
            col: true,
            en: 'FieldSubset',
            ti: '.RangeSubsetType.FieldSubset'
          }]
      }, {
        ln: 'GetCoverage',
        bti: '.RequestBaseType',
        ps: [{
            n: 'identifier',
            en: {
              lp: 'Identifier',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.CodeType'
          }, {
            n: 'domainSubset',
            en: 'DomainSubset',
            ti: '.DomainSubsetType'
          }, {
            n: 'rangeSubset',
            en: 'RangeSubset',
            ti: '.RangeSubsetType'
          }, {
            n: 'output',
            en: 'Output',
            ti: '.OutputType'
          }]
      }, {
        ln: 'Capabilities',
        bti: 'OWS_1_1_0.CapabilitiesBaseType',
        ps: [{
            n: 'contents',
            en: 'Contents',
            ti: '.Contents'
          }]
      }, {
        ln: 'OutputType',
        ps: [{
            n: 'gridCRS',
            en: 'GridCRS',
            ti: '.GridCrsType'
          }, {
            n: 'format',
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
      }],
    eis: [{
        en: 'DescribeCoverage',
        ti: '.DescribeCoverage'
      }, {
        en: 'GetCoverage',
        ti: '.GetCoverage'
      }, {
        en: 'CoverageDescriptions',
        ti: '.CoverageDescriptions'
      }, {
        en: 'Identifier'
      }, {
        en: 'TemporalSubset',
        ti: '.TimeSequenceType'
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
        en: 'GridType'
      }, {
        en: 'GridOffsets',
        ti: {
          t: 'l',
          bti: 'Double'
        }
      }, {
        en: 'CoverageSummary',
        ti: '.CoverageSummaryType'
      }, {
        en: 'TemporalDomain',
        ti: '.TimeSequenceType'
      }, {
        en: 'Transformation',
        ti: 'GML_3_1_1.AbstractCoordinateOperationType',
        sh: {
          lp: '_CoordinateOperation',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'Contents',
        ti: '.Contents'
      }, {
        en: 'AxisSubset',
        ti: '.AxisSubset'
      }, {
        en: 'InterpolationMethods',
        ti: '.InterpolationMethods'
      }, {
        en: 'GridCRS',
        ti: '.GridCrsType'
      }, {
        en: 'GetCapabilities',
        ti: '.GetCapabilities'
      }, {
        en: 'Coverages',
        ti: '.CoveragesType'
      }, {
        en: 'GridBaseCRS'
      }, {
        en: 'AvailableKeys',
        ti: '.AvailableKeys'
      }, {
        en: 'GridOrigin',
        ti: {
          t: 'l',
          bti: 'Double'
        }
      }, {
        en: 'Capabilities',
        ti: '.Capabilities'
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