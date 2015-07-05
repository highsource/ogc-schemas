var WMTS_1_0_Module_Factory = function () {
  var WMTS_1_0 = {
    n: 'WMTS_1_0',
    dens: 'http:\/\/www.opengis.net\/wmts\/1.0',
    deps: ['OWS_1_1_0', 'GML_3_1_1'],
    tis: [{
        ln: 'TextPayload',
        tn: null,
        ps: [{
            n: 'format',
            en: 'Format'
          }, {
            n: 'textContent',
            en: 'TextContent'
          }]
      }, {
        ln: 'GetFeatureInfo',
        tn: null,
        ps: [{
            n: 'getTile',
            en: 'GetTile',
            ti: '.GetTile'
          }, {
            n: 'j',
            en: 'J',
            ti: 'Integer'
          }, {
            n: 'i',
            en: 'I',
            ti: 'Integer'
          }, {
            n: 'infoFormat',
            en: 'InfoFormat'
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
        ln: 'LayerType',
        bti: 'OWS_1_1_0.DatasetDescriptionSummaryBaseType',
        ps: [{
            n: 'style',
            col: true,
            en: 'Style',
            ti: '.Style'
          }, {
            n: 'format',
            col: true,
            en: 'Format'
          }, {
            n: 'infoFormat',
            col: true,
            en: 'InfoFormat'
          }, {
            n: 'dimension',
            col: true,
            en: 'Dimension',
            ti: '.Dimension'
          }, {
            n: 'tileMatrixSetLink',
            col: true,
            en: 'TileMatrixSetLink',
            ti: '.TileMatrixSetLink'
          }, {
            n: 'resourceURL',
            col: true,
            en: 'ResourceURL',
            ti: '.URLTemplateType'
          }]
      }, {
        ln: 'TileMatrixSetLink',
        tn: null,
        ps: [{
            n: 'tileMatrixSet',
            en: 'TileMatrixSet'
          }, {
            n: 'tileMatrixSetLimits',
            en: 'TileMatrixSetLimits',
            ti: '.TileMatrixSetLimits'
          }]
      }, {
        ln: 'Theme',
        tn: null,
        bti: 'OWS_1_1_0.DescriptionType',
        ps: [{
            n: 'identifier',
            en: {
              lp: 'Identifier',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.CodeType'
          }, {
            n: 'theme',
            col: true,
            en: 'Theme',
            ti: '.Theme'
          }, {
            n: 'layerRef',
            col: true,
            en: 'LayerRef'
          }]
      }, {
        ln: 'LegendURL',
        tn: null,
        bti: 'OWS_1_1_0.OnlineResourceType',
        ps: [{
            n: 'format',
            an: {
              lp: 'format'
            },
            t: 'a'
          }, {
            n: 'minScaleDenominator',
            ti: 'Double',
            an: {
              lp: 'minScaleDenominator'
            },
            t: 'a'
          }, {
            n: 'maxScaleDenominator',
            ti: 'Double',
            an: {
              lp: 'maxScaleDenominator'
            },
            t: 'a'
          }, {
            n: 'width',
            ti: 'Integer',
            an: {
              lp: 'width'
            },
            t: 'a'
          }, {
            n: 'height',
            ti: 'Integer',
            an: {
              lp: 'height'
            },
            t: 'a'
          }]
      }, {
        ln: 'TileMatrix',
        tn: null,
        bti: 'OWS_1_1_0.DescriptionType',
        ps: [{
            n: 'identifier',
            en: {
              lp: 'Identifier',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.CodeType'
          }, {
            n: 'scaleDenominator',
            en: 'ScaleDenominator',
            ti: 'Double'
          }, {
            n: 'topLeftCorner',
            en: 'TopLeftCorner',
            ti: {
              t: 'l',
              bti: 'Double'
            }
          }, {
            n: 'tileWidth',
            en: 'TileWidth',
            ti: 'Integer'
          }, {
            n: 'tileHeight',
            en: 'TileHeight',
            ti: 'Integer'
          }, {
            n: 'matrixWidth',
            en: 'MatrixWidth',
            ti: 'Integer'
          }, {
            n: 'matrixHeight',
            en: 'MatrixHeight',
            ti: 'Integer'
          }]
      }, {
        ln: 'TileMatrixSet',
        tn: null,
        bti: 'OWS_1_1_0.DescriptionType',
        ps: [{
            n: 'identifier',
            en: {
              lp: 'Identifier',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.CodeType'
          }, {
            n: 'boundingBox',
            mx: false,
            dom: false,
            en: {
              lp: 'BoundingBox',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.BoundingBoxType',
            t: 'er'
          }, {
            n: 'supportedCRS',
            en: {
              lp: 'SupportedCRS',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            }
          }, {
            n: 'wellKnownScaleSet',
            en: 'WellKnownScaleSet'
          }, {
            n: 'tileMatrix',
            col: true,
            en: 'TileMatrix',
            ti: '.TileMatrix'
          }]
      }, {
        ln: 'Themes',
        tn: null,
        ps: [{
            n: 'theme',
            col: true,
            en: 'Theme',
            ti: '.Theme'
          }]
      }, {
        ln: 'FeatureInfoResponse',
        tn: null,
        ps: [{
            n: 'featureCollection',
            en: {
              lp: '_FeatureCollection',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.AbstractFeatureCollectionType'
          }, {
            n: 'textPayload',
            en: 'TextPayload',
            ti: '.TextPayload'
          }, {
            n: 'binaryPayload',
            en: 'BinaryPayload',
            ti: '.BinaryPayload'
          }, {
            n: 'anyContent',
            en: 'AnyContent',
            ti: 'AnyType'
          }]
      }, {
        ln: 'URLTemplateType',
        ps: [{
            n: 'format',
            an: {
              lp: 'format'
            },
            t: 'a'
          }, {
            n: 'resourceType',
            an: {
              lp: 'resourceType'
            },
            t: 'a'
          }, {
            n: 'template',
            an: {
              lp: 'template'
            },
            t: 'a'
          }]
      }, {
        ln: 'Style',
        tn: null,
        bti: 'OWS_1_1_0.DescriptionType',
        ps: [{
            n: 'identifier',
            en: {
              lp: 'Identifier',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.CodeType'
          }, {
            n: 'legendURL',
            col: true,
            en: 'LegendURL',
            ti: '.LegendURL'
          }, {
            n: 'isDefault',
            ti: 'Boolean',
            an: {
              lp: 'isDefault'
            },
            t: 'a'
          }]
      }, {
        ln: 'GetCapabilities',
        tn: null,
        bti: 'OWS_1_1_0.GetCapabilitiesType',
        ps: [{
            n: 'service',
            an: {
              lp: 'service'
            },
            t: 'a'
          }]
      }, {
        ln: 'Dimension',
        tn: null,
        bti: 'OWS_1_1_0.DescriptionType',
        ps: [{
            n: 'identifier',
            en: {
              lp: 'Identifier',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.CodeType'
          }, {
            n: 'uom',
            en: {
              lp: 'UOM',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.DomainMetadataType'
          }, {
            n: 'unitSymbol',
            en: 'UnitSymbol'
          }, {
            n: '_default',
            en: 'Default'
          }, {
            n: 'current',
            en: 'Current',
            ti: 'Boolean'
          }, {
            n: 'value',
            col: true,
            en: 'Value'
          }]
      }, {
        ln: 'ContentsType',
        bti: 'OWS_1_1_0.ContentsBaseType',
        ps: [{
            n: 'tileMatrixSet',
            col: true,
            en: 'TileMatrixSet',
            ti: '.TileMatrixSet'
          }]
      }, {
        ln: 'TileMatrixLimits',
        tn: null,
        ps: [{
            n: 'tileMatrix',
            en: 'TileMatrix'
          }, {
            n: 'minTileRow',
            en: 'MinTileRow',
            ti: 'Integer'
          }, {
            n: 'maxTileRow',
            en: 'MaxTileRow',
            ti: 'Integer'
          }, {
            n: 'minTileCol',
            en: 'MinTileCol',
            ti: 'Integer'
          }, {
            n: 'maxTileCol',
            en: 'MaxTileCol',
            ti: 'Integer'
          }]
      }, {
        ln: 'TileMatrixSetLimits',
        tn: null,
        ps: [{
            n: 'tileMatrixLimits',
            col: true,
            en: 'TileMatrixLimits',
            ti: '.TileMatrixLimits'
          }]
      }, {
        ln: 'GetTile',
        tn: null,
        ps: [{
            n: 'layer',
            en: 'Layer'
          }, {
            n: 'style',
            en: 'Style'
          }, {
            n: 'format',
            en: 'Format'
          }, {
            n: 'dimensionNameValue',
            col: true,
            en: 'DimensionNameValue',
            ti: '.DimensionNameValue'
          }, {
            n: 'tileMatrixSet',
            en: 'TileMatrixSet'
          }, {
            n: 'tileMatrix',
            en: 'TileMatrix'
          }, {
            n: 'tileRow',
            en: 'TileRow',
            ti: 'Integer'
          }, {
            n: 'tileCol',
            en: 'TileCol',
            ti: 'Integer'
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
        ln: 'DimensionNameValue',
        tn: null,
        ps: [{
            n: 'value',
            t: 'v'
          }, {
            n: 'name',
            an: {
              lp: 'name'
            },
            t: 'a'
          }]
      }, {
        ln: 'BinaryPayload',
        tn: null,
        ps: [{
            n: 'format',
            en: 'Format'
          }, {
            n: 'binaryContent',
            en: 'BinaryContent',
            ti: 'Base64Binary'
          }]
      }, {
        ln: 'Capabilities',
        tn: null,
        bti: 'OWS_1_1_0.CapabilitiesBaseType',
        ps: [{
            n: 'contents',
            en: 'Contents',
            ti: '.ContentsType'
          }, {
            n: 'themes',
            col: true,
            en: 'Themes',
            ti: '.Themes'
          }, {
            n: 'wsdl',
            col: true,
            en: 'WSDL',
            ti: 'OWS_1_1_0.OnlineResourceType'
          }, {
            n: 'serviceMetadataURL',
            col: true,
            en: 'ServiceMetadataURL',
            ti: 'OWS_1_1_0.OnlineResourceType'
          }]
      }, {
        t: 'enum',
        ln: 'GetFeatureInfoValueType',
        vs: ['GetFeatureInfo']
      }, {
        t: 'enum',
        ln: 'GetCapabilitiesValueType',
        vs: ['GetCapabilities']
      }, {
        t: 'enum',
        ln: 'VersionType',
        vs: ['1.0.0']
      }, {
        t: 'enum',
        ln: 'GetTileValueType',
        vs: ['GetTile']
      }, {
        t: 'enum',
        ln: 'RequestServiceType',
        vs: ['WMTS']
      }],
    eis: [{
        en: 'BinaryPayload',
        ti: '.BinaryPayload'
      }, {
        en: 'TileMatrixSetLink',
        ti: '.TileMatrixSetLink'
      }, {
        en: 'LegendURL',
        ti: '.LegendURL'
      }, {
        en: 'Style',
        ti: '.Style'
      }, {
        en: 'TextPayload',
        ti: '.TextPayload'
      }, {
        en: 'TileMatrixSet',
        ti: '.TileMatrixSet'
      }, {
        en: 'GetTile',
        ti: '.GetTile'
      }, {
        en: 'TileMatrixSetLimits',
        ti: '.TileMatrixSetLimits'
      }, {
        en: 'GetCapabilities',
        ti: '.GetCapabilities'
      }, {
        en: 'GetFeatureInfo',
        ti: '.GetFeatureInfo'
      }, {
        en: 'TileMatrix',
        ti: '.TileMatrix'
      }, {
        en: 'TileMatrixLimits',
        ti: '.TileMatrixLimits'
      }, {
        en: 'Capabilities',
        ti: '.Capabilities'
      }, {
        en: 'Layer',
        ti: '.LayerType',
        sh: {
          lp: 'DatasetDescriptionSummary',
          ns: 'http:\/\/www.opengis.net\/ows\/1.1'
        }
      }, {
        en: 'FeatureInfoResponse',
        ti: '.FeatureInfoResponse'
      }, {
        en: 'DimensionNameValue',
        ti: '.DimensionNameValue'
      }, {
        en: 'Dimension',
        ti: '.Dimension'
      }, {
        en: 'Theme',
        ti: '.Theme'
      }, {
        en: 'Themes',
        ti: '.Themes'
      }]
  };
  return {
    WMTS_1_0: WMTS_1_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], WMTS_1_0_Module_Factory);
}
else {
  var WMTS_1_0_Module = WMTS_1_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.WMTS_1_0 = WMTS_1_0_Module.WMTS_1_0;
  }
  else {
    var WMTS_1_0 = WMTS_1_0_Module.WMTS_1_0;
  }
}