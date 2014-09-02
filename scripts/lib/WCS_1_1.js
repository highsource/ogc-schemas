var WCS_1_1_Module_Factory = function () {
  var WCS_1_1 = {
    name: 'WCS_1_1',
    defaultElementNamespaceURI: 'http:\/\/www.opengis.net\/wcs\/1.1',
    typeInfos: [{
        type: 'classInfo',
        localName: 'AxisSubset',
        propertyInfos: [{
            type: 'element',
            name: 'identifier',
            elementName: 'Identifier',
            typeInfo: 'String'
          }, {
            type: 'element',
            name: 'key',
            collection: true,
            elementName: 'Key',
            typeInfo: 'String'
          }]
      }, {
        type: 'classInfo',
        localName: 'TimeSequenceType',
        propertyInfos: [{
            name: 'timePositionOrTimePeriod',
            collection: true,
            elementTypeInfos: [{
                elementName: {
                  localPart: 'timePosition',
                  namespaceURI: 'http:\/\/www.opengis.net\/gml'
                },
                typeInfo: 'GML_3_1_1.TimePositionType'
              }, {
                elementName: 'TimePeriod',
                typeInfo: 'WCS_1_1.TimePeriodType'
              }],
            type: 'elements'
          }]
      }, {
        type: 'classInfo',
        localName: 'AvailableKeys',
        propertyInfos: [{
            type: 'element',
            name: 'key',
            collection: true,
            elementName: 'Key',
            typeInfo: 'String'
          }]
      }, {
        type: 'classInfo',
        localName: 'CoverageSummaryType',
        baseTypeInfo: 'OWS_1_1_0.DescriptionType',
        propertyInfos: [{
            name: 'content',
            collection: true,
            elementTypeInfos: [{
                elementName: {
                  localPart: 'Metadata',
                  namespaceURI: 'http:\/\/www.opengis.net\/ows\/1.1'
                },
                typeInfo: 'OWS_1_1_0.MetadataType'
              }, {
                elementName: 'CoverageSummary',
                typeInfo: 'WCS_1_1.CoverageSummaryType'
              }, {
                elementName: {
                  localPart: 'WGS84BoundingBox',
                  namespaceURI: 'http:\/\/www.opengis.net\/ows\/1.1'
                },
                typeInfo: 'OWS_1_1_0.WGS84BoundingBoxType'
              }, {
                elementName: 'Identifier',
                typeInfo: 'String'
              }, {
                elementName: 'SupportedCRS',
                typeInfo: 'String'
              }, {
                elementName: 'SupportedFormat',
                typeInfo: 'String'
              }],
            type: 'elementRefs'
          }]
      }, {
        type: 'classInfo',
        localName: 'GridCrsType',
        propertyInfos: [{
            type: 'element',
            name: 'srsName',
            elementName: {
              localPart: 'srsName',
              namespaceURI: 'http:\/\/www.opengis.net\/gml'
            },
            typeInfo: 'GML_3_1_1.CodeType'
          }, {
            type: 'element',
            name: 'gridBaseCRS',
            elementName: 'GridBaseCRS',
            typeInfo: 'String'
          }, {
            type: 'element',
            name: 'gridType',
            elementName: 'GridType',
            typeInfo: 'String'
          }, {
            type: 'element',
            name: 'gridOrigin',
            elementName: 'GridOrigin',
            typeInfo: {
              type: 'list',
              typeInfo: 'Double'
            }
          }, {
            type: 'element',
            name: 'gridOffsets',
            elementName: 'GridOffsets',
            typeInfo: {
              type: 'list',
              typeInfo: 'Double'
            }
          }, {
            type: 'element',
            name: 'gridCS',
            elementName: 'GridCS',
            typeInfo: 'String'
          }, {
            name: 'id',
            typeInfo: 'ID',
            attributeName: {
              localPart: 'id',
              namespaceURI: 'http:\/\/www.opengis.net\/gml'
            },
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'InterpolationMethods',
        propertyInfos: [{
            type: 'element',
            name: 'interpolationMethod',
            collection: true,
            elementName: 'InterpolationMethod',
            typeInfo: 'WCS_1_1.InterpolationMethodType'
          }, {
            type: 'element',
            name: '_default',
            elementName: 'Default',
            typeInfo: 'String'
          }]
      }, {
        type: 'classInfo',
        localName: 'InterpolationMethodType',
        baseTypeInfo: 'WCS_1_1.InterpolationMethodBaseType',
        propertyInfos: [{
            name: 'nullResistance',
            typeInfo: 'String',
            attributeName: 'nullResistance',
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'GetCoverage',
        baseTypeInfo: 'WCS_1_1.RequestBaseType',
        propertyInfos: [{
            type: 'element',
            name: 'identifier',
            elementName: {
              localPart: 'Identifier',
              namespaceURI: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            typeInfo: 'OWS_1_1_0.CodeType'
          }, {
            type: 'element',
            name: 'domainSubset',
            elementName: 'DomainSubset',
            typeInfo: 'WCS_1_1.DomainSubsetType'
          }, {
            type: 'element',
            name: 'rangeSubset',
            elementName: 'RangeSubset',
            typeInfo: 'WCS_1_1.RangeSubsetType'
          }, {
            type: 'element',
            name: 'output',
            elementName: 'Output',
            typeInfo: 'WCS_1_1.OutputType'
          }]
      }, {
        type: 'classInfo',
        localName: 'RequestBaseType',
        propertyInfos: [{
            name: 'service',
            typeInfo: 'String',
            attributeName: 'service',
            type: 'attribute'
          }, {
            name: 'version',
            typeInfo: 'String',
            attributeName: 'version',
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'DomainSubsetType',
        propertyInfos: [{
            name: 'boundingBox',
            elementName: {
              localPart: 'BoundingBox',
              namespaceURI: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            typeInfo: 'OWS_1_1_0.BoundingBoxType',
            type: 'elementRef'
          }, {
            type: 'element',
            name: 'temporalSubset',
            elementName: 'TemporalSubset',
            typeInfo: 'WCS_1_1.TimeSequenceType'
          }]
      }, {
        type: 'classInfo',
        localName: 'RangeSubsetType',
        propertyInfos: [{
            type: 'element',
            name: 'fieldSubset',
            collection: true,
            elementName: 'FieldSubset',
            typeInfo: 'WCS_1_1.RangeSubsetType.FieldSubset'
          }]
      }, {
        type: 'classInfo',
        localName: 'OutputType',
        propertyInfos: [{
            type: 'element',
            name: 'gridCRS',
            elementName: 'GridCRS',
            typeInfo: 'WCS_1_1.GridCrsType'
          }, {
            name: 'format',
            typeInfo: 'String',
            attributeName: 'format',
            type: 'attribute'
          }, {
            name: 'store',
            typeInfo: 'Boolean',
            attributeName: 'store',
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'CoveragesType',
        propertyInfos: [{
            type: 'element',
            name: 'coverage',
            collection: true,
            elementName: 'Coverage',
            typeInfo: 'OWS_1_1_0.ReferenceGroupType'
          }]
      }, {
        type: 'classInfo',
        localName: 'Contents',
        propertyInfos: [{
            type: 'element',
            name: 'coverageSummary',
            collection: true,
            elementName: 'CoverageSummary',
            typeInfo: 'WCS_1_1.CoverageSummaryType'
          }, {
            type: 'element',
            name: 'supportedCRS',
            collection: true,
            elementName: 'SupportedCRS',
            typeInfo: 'String'
          }, {
            type: 'element',
            name: 'supportedFormat',
            collection: true,
            elementName: 'SupportedFormat',
            typeInfo: 'String'
          }, {
            type: 'element',
            name: 'otherSource',
            collection: true,
            elementName: 'OtherSource',
            typeInfo: 'OWS_1_1_0.OnlineResourceType'
          }]
      }, {
        type: 'classInfo',
        localName: 'CoverageDescriptions',
        propertyInfos: [{
            type: 'element',
            name: 'coverageDescription',
            collection: true,
            elementName: 'CoverageDescription',
            typeInfo: 'WCS_1_1.CoverageDescriptionType'
          }]
      }, {
        type: 'classInfo',
        localName: 'CoverageDescriptionType',
        baseTypeInfo: 'OWS_1_1_0.DescriptionType',
        propertyInfos: [{
            type: 'element',
            name: 'identifier',
            elementName: 'Identifier',
            typeInfo: 'String'
          }, {
            type: 'element',
            name: 'metadata',
            collection: true,
            elementName: {
              localPart: 'Metadata',
              namespaceURI: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            typeInfo: 'OWS_1_1_0.MetadataType'
          }, {
            type: 'element',
            name: 'domain',
            elementName: 'Domain',
            typeInfo: 'WCS_1_1.CoverageDomainType'
          }, {
            type: 'element',
            name: 'range',
            elementName: 'Range',
            typeInfo: 'WCS_1_1.RangeType'
          }, {
            type: 'element',
            name: 'supportedCRS',
            collection: true,
            elementName: 'SupportedCRS',
            typeInfo: 'String'
          }, {
            type: 'element',
            name: 'supportedFormat',
            collection: true,
            elementName: 'SupportedFormat',
            typeInfo: 'String'
          }]
      }, {
        type: 'classInfo',
        localName: 'DescribeCoverage',
        baseTypeInfo: 'WCS_1_1.RequestBaseType',
        propertyInfos: [{
            type: 'element',
            name: 'identifier',
            collection: true,
            elementName: 'Identifier',
            typeInfo: 'String'
          }]
      }, {
        type: 'classInfo',
        localName: 'GetCapabilities',
        baseTypeInfo: 'OWS_1_1_0.GetCapabilitiesType',
        propertyInfos: [{
            name: 'service',
            typeInfo: 'String',
            attributeName: 'service',
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'Capabilities',
        baseTypeInfo: 'OWS_1_1_0.CapabilitiesBaseType',
        propertyInfos: [{
            type: 'element',
            name: 'contents',
            elementName: 'Contents',
            typeInfo: 'WCS_1_1.Contents'
          }]
      }, {
        type: 'classInfo',
        localName: 'CoverageDomainType',
        propertyInfos: [{
            type: 'element',
            name: 'spatialDomain',
            elementName: 'SpatialDomain',
            typeInfo: 'WCS_1_1.SpatialDomainType'
          }, {
            type: 'element',
            name: 'temporalDomain',
            elementName: 'TemporalDomain',
            typeInfo: 'WCS_1_1.TimeSequenceType'
          }]
      }, {
        type: 'classInfo',
        localName: 'FieldType',
        baseTypeInfo: 'OWS_1_1_0.DescriptionType',
        propertyInfos: [{
            type: 'element',
            name: 'identifier',
            elementName: 'Identifier',
            typeInfo: 'String'
          }, {
            type: 'element',
            name: 'definition',
            elementName: 'Definition',
            typeInfo: 'OWS_1_1_0.UnNamedDomainType'
          }, {
            type: 'element',
            name: 'nullValue',
            collection: true,
            elementName: 'NullValue',
            typeInfo: 'OWS_1_1_0.CodeType'
          }, {
            type: 'element',
            name: 'interpolationMethods',
            elementName: 'InterpolationMethods',
            typeInfo: 'WCS_1_1.InterpolationMethods'
          }, {
            type: 'element',
            name: 'axis',
            collection: true,
            elementName: 'Axis',
            typeInfo: 'WCS_1_1.AxisType'
          }]
      }, {
        type: 'classInfo',
        localName: 'RangeType',
        propertyInfos: [{
            type: 'element',
            name: 'field',
            collection: true,
            elementName: 'Field',
            typeInfo: 'WCS_1_1.FieldType'
          }]
      }, {
        type: 'classInfo',
        localName: 'TimePeriodType',
        propertyInfos: [{
            type: 'element',
            name: 'beginPosition',
            elementName: 'BeginPosition',
            typeInfo: 'GML_3_1_1.TimePositionType'
          }, {
            type: 'element',
            name: 'endPosition',
            elementName: 'EndPosition',
            typeInfo: 'GML_3_1_1.TimePositionType'
          }, {
            type: 'element',
            name: 'timeResolution',
            elementName: 'TimeResolution',
            typeInfo: 'String'
          }, {
            name: 'frame',
            typeInfo: 'String',
            attributeName: 'frame',
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'ImageCRSRefType',
        propertyInfos: [{
            type: 'element',
            name: 'imageCRS',
            elementName: {
              localPart: 'ImageCRS',
              namespaceURI: 'http:\/\/www.opengis.net\/gml'
            },
            typeInfo: 'GML_3_1_1.ImageCRSType'
          }, {
            name: 'remoteSchema',
            typeInfo: 'String',
            attributeName: {
              localPart: 'remoteSchema',
              namespaceURI: 'http:\/\/www.opengis.net\/gml'
            },
            type: 'attribute'
          }, {
            name: 'type',
            typeInfo: 'XLink_1_0.TypeType',
            attributeName: {
              localPart: 'type',
              namespaceURI: 'http:\/\/www.w3.org\/1999\/xlink'
            },
            type: 'attribute'
          }, {
            name: 'href',
            typeInfo: 'String',
            attributeName: {
              localPart: 'href',
              namespaceURI: 'http:\/\/www.w3.org\/1999\/xlink'
            },
            type: 'attribute'
          }, {
            name: 'role',
            typeInfo: 'String',
            attributeName: {
              localPart: 'role',
              namespaceURI: 'http:\/\/www.w3.org\/1999\/xlink'
            },
            type: 'attribute'
          }, {
            name: 'arcrole',
            typeInfo: 'String',
            attributeName: {
              localPart: 'arcrole',
              namespaceURI: 'http:\/\/www.w3.org\/1999\/xlink'
            },
            type: 'attribute'
          }, {
            name: 'title',
            typeInfo: 'String',
            attributeName: {
              localPart: 'title',
              namespaceURI: 'http:\/\/www.w3.org\/1999\/xlink'
            },
            type: 'attribute'
          }, {
            name: 'show',
            typeInfo: 'XLink_1_0.ShowType',
            attributeName: {
              localPart: 'show',
              namespaceURI: 'http:\/\/www.w3.org\/1999\/xlink'
            },
            type: 'attribute'
          }, {
            name: 'actuate',
            typeInfo: 'XLink_1_0.ActuateType',
            attributeName: {
              localPart: 'actuate',
              namespaceURI: 'http:\/\/www.w3.org\/1999\/xlink'
            },
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'AxisType',
        baseTypeInfo: 'OWS_1_1_0.DescriptionType',
        propertyInfos: [{
            type: 'element',
            name: 'availableKeys',
            elementName: 'AvailableKeys',
            typeInfo: 'WCS_1_1.AvailableKeys'
          }, {
            type: 'element',
            name: 'meaning',
            elementName: {
              localPart: 'Meaning',
              namespaceURI: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            typeInfo: 'OWS_1_1_0.DomainMetadataType'
          }, {
            type: 'element',
            name: 'dataType',
            elementName: {
              localPart: 'DataType',
              namespaceURI: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            typeInfo: 'OWS_1_1_0.DomainMetadataType'
          }, {
            type: 'element',
            name: 'uom',
            elementName: {
              localPart: 'UOM',
              namespaceURI: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            typeInfo: 'OWS_1_1_0.DomainMetadataType'
          }, {
            type: 'element',
            name: 'referenceSystem',
            elementName: {
              localPart: 'ReferenceSystem',
              namespaceURI: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            typeInfo: 'OWS_1_1_0.DomainMetadataType'
          }, {
            type: 'element',
            name: 'metadata',
            collection: true,
            elementName: {
              localPart: 'Metadata',
              namespaceURI: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            typeInfo: 'OWS_1_1_0.MetadataType'
          }, {
            name: 'identifier',
            typeInfo: 'String',
            attributeName: 'identifier',
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'InterpolationMethodBaseType',
        baseTypeInfo: 'OWS_1_1_0.CodeType',
        propertyInfos: []
      }, {
        type: 'classInfo',
        localName: 'SpatialDomainType',
        propertyInfos: [{
            name: 'boundingBox',
            collection: true,
            elementName: {
              localPart: 'BoundingBox',
              namespaceURI: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            typeInfo: 'OWS_1_1_0.BoundingBoxType',
            type: 'elementRef'
          }, {
            type: 'element',
            name: 'gridCRS',
            elementName: 'GridCRS',
            typeInfo: 'WCS_1_1.GridCrsType'
          }, {
            name: 'coordinateOperation',
            elementName: {
              localPart: '_CoordinateOperation',
              namespaceURI: 'http:\/\/www.opengis.net\/gml'
            },
            typeInfo: 'GML_3_1_1.AbstractCoordinateOperationType',
            type: 'elementRef'
          }, {
            type: 'element',
            name: 'imageCRS',
            elementName: 'ImageCRS',
            typeInfo: 'WCS_1_1.ImageCRSRefType'
          }, {
            type: 'element',
            name: 'polygon',
            collection: true,
            elementName: {
              localPart: 'Polygon',
              namespaceURI: 'http:\/\/www.opengis.net\/gml'
            },
            typeInfo: 'GML_3_1_1.PolygonType'
          }]
      }, {
        type: 'classInfo',
        localName: 'RangeSubsetType.FieldSubset',
        propertyInfos: [{
            type: 'element',
            name: 'identifier',
            elementName: {
              localPart: 'Identifier',
              namespaceURI: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            typeInfo: 'OWS_1_1_0.CodeType'
          }, {
            type: 'element',
            name: 'interpolationType',
            elementName: 'InterpolationType',
            typeInfo: 'String'
          }, {
            type: 'element',
            name: 'axisSubset',
            collection: true,
            elementName: 'AxisSubset',
            typeInfo: 'WCS_1_1.AxisSubset'
          }]
      }],
    elementInfos: [{
        elementName: 'AxisSubset',
        typeInfo: 'WCS_1_1.AxisSubset'
      }, {
        elementName: 'AvailableKeys',
        typeInfo: 'WCS_1_1.AvailableKeys'
      }, {
        elementName: 'InterpolationMethods',
        typeInfo: 'WCS_1_1.InterpolationMethods'
      }, {
        elementName: 'GetCoverage',
        typeInfo: 'WCS_1_1.GetCoverage'
      }, {
        elementName: 'Contents',
        typeInfo: 'WCS_1_1.Contents'
      }, {
        elementName: 'CoverageDescriptions',
        typeInfo: 'WCS_1_1.CoverageDescriptions'
      }, {
        elementName: 'DescribeCoverage',
        typeInfo: 'WCS_1_1.DescribeCoverage'
      }, {
        elementName: 'GetCapabilities',
        typeInfo: 'WCS_1_1.GetCapabilities'
      }, {
        elementName: 'Capabilities',
        typeInfo: 'WCS_1_1.Capabilities'
      }, {
        elementName: 'GridOffsets',
        typeInfo: {
          type: 'list',
          typeInfo: 'Double'
        }
      }, {
        elementName: 'TemporalSubset',
        typeInfo: 'WCS_1_1.TimeSequenceType'
      }, {
        elementName: 'Coverage',
        typeInfo: 'OWS_1_1_0.ReferenceGroupType',
        substitutionHead: {
          localPart: 'ReferenceGroup',
          namespaceURI: 'http:\/\/www.opengis.net\/ows\/1.1'
        }
      }, {
        elementName: 'TemporalDomain',
        typeInfo: 'WCS_1_1.TimeSequenceType'
      }, {
        elementName: 'CoverageSummary',
        typeInfo: 'WCS_1_1.CoverageSummaryType'
      }, {
        elementName: 'Identifier',
        typeInfo: 'String'
      }, {
        elementName: 'Coverages',
        typeInfo: 'WCS_1_1.CoveragesType'
      }, {
        elementName: 'GridType',
        typeInfo: 'String'
      }, {
        elementName: 'GridCS',
        typeInfo: 'String'
      }, {
        elementName: 'GridOrigin',
        typeInfo: {
          type: 'list',
          typeInfo: 'Double'
        }
      }, {
        elementName: 'GridCRS',
        typeInfo: 'WCS_1_1.GridCrsType'
      }, {
        elementName: 'GridBaseCRS',
        typeInfo: 'String'
      }, {
        elementName: 'Transformation',
        typeInfo: 'GML_3_1_1.AbstractCoordinateOperationType',
        substitutionHead: {
          localPart: '_CoordinateOperation',
          namespaceURI: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        elementName: 'SupportedCRS',
        typeInfo: 'String',
        scope: 'WCS_1_1.CoverageSummaryType'
      }, {
        elementName: 'SupportedFormat',
        typeInfo: 'String',
        scope: 'WCS_1_1.CoverageSummaryType'
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
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.WCS_1_1 = WCS_1_1_Module_Factory().WCS_1_1;
  }
  else {
    var WCS_1_1 = WCS_1_1_Module_Factory().WCS_1_1;
  }
}