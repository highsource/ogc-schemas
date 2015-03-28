var WMS_1_0_0_Module_Factory = function () {
  var WMS_1_0_0 = {
    n: 'WMS_1_0_0',
    tis: [{
        ln: 'Capabilities',
        ps: [{
            n: 'format',
            en: {
              lp: 'Format'
            },
            ti: '.Format'
          }, {
            n: 'dcpType',
            col: true,
            en: {
              lp: 'DCPType'
            },
            ti: '.DCPType'
          }]
      }, {
        ln: 'MIME'
      }, {
        ln: 'BLANK'
      }, {
        ln: 'GML1'
      }, {
        ln: 'GeoTIFF'
      }, {
        ln: 'WMTMSCapabilities',
        ps: [{
            n: 'version',
            an: {
              lp: 'version'
            },
            t: 'a'
          }, {
            n: 'updateSequence',
            an: {
              lp: 'updateSequence'
            },
            t: 'a'
          }, {
            n: 'service',
            en: {
              lp: 'Service'
            },
            ti: '.Service'
          }, {
            n: 'capability',
            en: {
              lp: 'Capability'
            },
            ti: '.Capability'
          }]
      }, {
        ln: 'TIFF'
      }, {
        ln: 'HTTP',
        ps: [{
            n: 'getOrPost',
            col: true,
            etis: [{
                en: {
                  lp: 'Get'
                },
                ti: '.Get'
              }, {
                en: {
                  lp: 'Post'
                },
                ti: '.Post'
              }],
            t: 'es'
          }]
      }, {
        ln: 'PPM'
      }, {
        ln: 'Request',
        ps: [{
            n: 'mapOrCapabilitiesOrFeatureInfo',
            col: true,
            etis: [{
                en: {
                  lp: 'Map'
                },
                ti: '.Map'
              }, {
                en: {
                  lp: 'Capabilities'
                },
                ti: '.Capabilities'
              }, {
                en: {
                  lp: 'FeatureInfo'
                },
                ti: '.FeatureInfo'
              }],
            t: 'es'
          }]
      }, {
        ln: 'LatLonBoundingBox',
        ps: [{
            n: 'minx',
            an: {
              lp: 'minx'
            },
            t: 'a'
          }, {
            n: 'miny',
            an: {
              lp: 'miny'
            },
            t: 'a'
          }, {
            n: 'maxx',
            an: {
              lp: 'maxx'
            },
            t: 'a'
          }, {
            n: 'maxy',
            an: {
              lp: 'maxy'
            },
            t: 'a'
          }]
      }, {
        ln: 'SVG'
      }, {
        ln: 'WMSXML'
      }, {
        ln: 'WBMP'
      }, {
        ln: 'DCPType',
        ps: [{
            n: 'http',
            en: {
              lp: 'HTTP'
            },
            ti: '.HTTP'
          }]
      }, {
        ln: 'Format',
        ps: [{
            n: 'gifOrJPEGOrPNGOrWebCGMOrSVGOrGML1OrGML2OrGML3OrWBMPOrWMSXMLOrMIMEOrINIMAGEOrTIFFOrGeoTIFFOrPPMOrBLANK',
            col: true,
            etis: [{
                en: {
                  lp: 'GIF'
                },
                ti: '.GIF'
              }, {
                en: {
                  lp: 'JPEG'
                },
                ti: '.JPEG'
              }, {
                en: {
                  lp: 'PNG'
                },
                ti: '.PNG'
              }, {
                en: {
                  lp: 'WebCGM'
                },
                ti: '.WebCGM'
              }, {
                en: {
                  lp: 'SVG'
                },
                ti: '.SVG'
              }, {
                en: {
                  lp: 'GML.1'
                },
                ti: '.GML1'
              }, {
                en: {
                  lp: 'GML.2'
                },
                ti: '.GML2'
              }, {
                en: {
                  lp: 'GML.3'
                },
                ti: '.GML3'
              }, {
                en: {
                  lp: 'WBMP'
                },
                ti: '.WBMP'
              }, {
                en: {
                  lp: 'WMS_XML'
                },
                ti: '.WMSXML'
              }, {
                en: {
                  lp: 'MIME'
                },
                ti: '.MIME'
              }, {
                en: {
                  lp: 'INIMAGE'
                },
                ti: '.INIMAGE'
              }, {
                en: {
                  lp: 'TIFF'
                },
                ti: '.TIFF'
              }, {
                en: {
                  lp: 'GeoTIFF'
                },
                ti: '.GeoTIFF'
              }, {
                en: {
                  lp: 'PPM'
                },
                ti: '.PPM'
              }, {
                en: {
                  lp: 'BLANK'
                },
                ti: '.BLANK'
              }],
            t: 'es'
          }]
      }, {
        ln: 'Map',
        ps: [{
            n: 'format',
            en: {
              lp: 'Format'
            },
            ti: '.Format'
          }, {
            n: 'dcpType',
            col: true,
            en: {
              lp: 'DCPType'
            },
            ti: '.DCPType'
          }]
      }, {
        ln: 'FeatureInfo',
        ps: [{
            n: 'format',
            en: {
              lp: 'Format'
            },
            ti: '.Format'
          }, {
            n: 'dcpType',
            col: true,
            en: {
              lp: 'DCPType'
            },
            ti: '.DCPType'
          }]
      }, {
        ln: 'Layer',
        ps: [{
            n: 'queryable',
            an: {
              lp: 'queryable'
            },
            t: 'a'
          }, {
            n: 'name',
            en: {
              lp: 'Name'
            }
          }, {
            n: 'title',
            en: {
              lp: 'Title'
            }
          }, {
            n: '_abstract',
            en: {
              lp: 'Abstract'
            }
          }, {
            n: 'keywords',
            en: {
              lp: 'Keywords'
            }
          }, {
            n: 'srs',
            en: {
              lp: 'SRS'
            }
          }, {
            n: 'latLonBoundingBox',
            en: {
              lp: 'LatLonBoundingBox'
            },
            ti: '.LatLonBoundingBox'
          }, {
            n: 'boundingBox',
            col: true,
            en: {
              lp: 'BoundingBox'
            },
            ti: '.BoundingBox'
          }, {
            n: 'dataURL',
            en: {
              lp: 'DataURL'
            }
          }, {
            n: 'style',
            col: true,
            en: {
              lp: 'Style'
            },
            ti: '.Style'
          }, {
            n: 'scaleHint',
            en: {
              lp: 'ScaleHint'
            },
            ti: '.ScaleHint'
          }, {
            n: 'layer',
            col: true,
            en: {
              lp: 'Layer'
            },
            ti: '.Layer'
          }]
      }, {
        ln: 'GML2'
      }, {
        ln: 'Get',
        ps: [{
            n: 'onlineResource',
            an: {
              lp: 'onlineResource'
            },
            t: 'a'
          }]
      }, {
        ln: 'Style',
        ps: [{
            n: 'name',
            en: {
              lp: 'Name'
            }
          }, {
            n: 'title',
            en: {
              lp: 'Title'
            }
          }, {
            n: '_abstract',
            en: {
              lp: 'Abstract'
            }
          }, {
            n: 'styleURL',
            en: {
              lp: 'StyleURL'
            }
          }]
      }, {
        ln: 'GML3'
      }, {
        ln: 'JPEG'
      }, {
        ln: 'VendorSpecificCapabilities'
      }, {
        ln: 'Exception',
        ps: [{
            n: 'format',
            en: {
              lp: 'Format'
            },
            ti: '.Format'
          }]
      }, {
        ln: 'ScaleHint',
        ps: [{
            n: 'min',
            an: {
              lp: 'min'
            },
            t: 'a'
          }, {
            n: 'max',
            an: {
              lp: 'max'
            },
            t: 'a'
          }]
      }, {
        ln: 'Post',
        ps: [{
            n: 'onlineResource',
            an: {
              lp: 'onlineResource'
            },
            t: 'a'
          }]
      }, {
        ln: 'WebCGM'
      }, {
        ln: 'Service',
        ps: [{
            n: 'name',
            en: {
              lp: 'Name'
            }
          }, {
            n: 'title',
            en: {
              lp: 'Title'
            }
          }, {
            n: '_abstract',
            en: {
              lp: 'Abstract'
            }
          }, {
            n: 'keywords',
            en: {
              lp: 'Keywords'
            }
          }, {
            n: 'onlineResource',
            en: {
              lp: 'OnlineResource'
            }
          }, {
            n: 'fees',
            en: {
              lp: 'Fees'
            }
          }, {
            n: 'accessConstraints',
            en: {
              lp: 'AccessConstraints'
            }
          }]
      }, {
        ln: 'GIF'
      }, {
        ln: 'INIMAGE'
      }, {
        ln: 'BoundingBox',
        ps: [{
            n: 'srs',
            an: {
              lp: 'SRS'
            },
            t: 'a'
          }, {
            n: 'minx',
            an: {
              lp: 'minx'
            },
            t: 'a'
          }, {
            n: 'miny',
            an: {
              lp: 'miny'
            },
            t: 'a'
          }, {
            n: 'maxx',
            an: {
              lp: 'maxx'
            },
            t: 'a'
          }, {
            n: 'maxy',
            an: {
              lp: 'maxy'
            },
            t: 'a'
          }]
      }, {
        ln: 'PNG'
      }, {
        ln: 'Capability',
        ps: [{
            n: 'request',
            en: {
              lp: 'Request'
            },
            ti: '.Request'
          }, {
            n: 'exception',
            en: {
              lp: 'Exception'
            },
            ti: '.Exception'
          }, {
            n: 'vendorSpecificCapabilities',
            en: {
              lp: 'VendorSpecificCapabilities'
            },
            ti: '.VendorSpecificCapabilities'
          }, {
            n: 'layer',
            en: {
              lp: 'Layer'
            },
            ti: '.Layer'
          }]
      }],
    eis: [{
        en: {
          lp: 'Map'
        },
        ti: '.Map'
      }, {
        en: {
          lp: 'FeatureInfo'
        },
        ti: '.FeatureInfo'
      }, {
        en: {
          lp: 'PNG'
        },
        ti: '.PNG'
      }, {
        en: {
          lp: 'BoundingBox'
        },
        ti: '.BoundingBox'
      }, {
        en: {
          lp: 'Post'
        },
        ti: '.Post'
      }, {
        en: {
          lp: 'Layer'
        },
        ti: '.Layer'
      }, {
        en: {
          lp: 'Service'
        },
        ti: '.Service'
      }, {
        en: {
          lp: 'Request'
        },
        ti: '.Request'
      }, {
        en: {
          lp: 'MIME'
        },
        ti: '.MIME'
      }, {
        en: {
          lp: 'WBMP'
        },
        ti: '.WBMP'
      }, {
        en: {
          lp: 'VendorSpecificCapabilities'
        },
        ti: '.VendorSpecificCapabilities'
      }, {
        en: {
          lp: 'GML.3'
        },
        ti: '.GML3'
      }, {
        en: {
          lp: 'LatLonBoundingBox'
        },
        ti: '.LatLonBoundingBox'
      }, {
        en: {
          lp: 'WMT_MS_Capabilities'
        },
        ti: '.WMTMSCapabilities'
      }, {
        en: {
          lp: 'ScaleHint'
        },
        ti: '.ScaleHint'
      }, {
        en: {
          lp: 'Capability'
        },
        ti: '.Capability'
      }, {
        en: {
          lp: 'Capabilities'
        },
        ti: '.Capabilities'
      }, {
        en: {
          lp: 'GeoTIFF'
        },
        ti: '.GeoTIFF'
      }, {
        en: {
          lp: 'PPM'
        },
        ti: '.PPM'
      }, {
        en: {
          lp: 'Get'
        },
        ti: '.Get'
      }, {
        en: {
          lp: 'WMS_XML'
        },
        ti: '.WMSXML'
      }, {
        en: {
          lp: 'WebCGM'
        },
        ti: '.WebCGM'
      }, {
        en: {
          lp: 'GML.2'
        },
        ti: '.GML2'
      }, {
        en: {
          lp: 'JPEG'
        },
        ti: '.JPEG'
      }, {
        en: {
          lp: 'BLANK'
        },
        ti: '.BLANK'
      }, {
        en: {
          lp: 'HTTP'
        },
        ti: '.HTTP'
      }, {
        en: {
          lp: 'GIF'
        },
        ti: '.GIF'
      }, {
        en: {
          lp: 'Style'
        },
        ti: '.Style'
      }, {
        en: {
          lp: 'GML.1'
        },
        ti: '.GML1'
      }, {
        en: {
          lp: 'DCPType'
        },
        ti: '.DCPType'
      }, {
        en: {
          lp: 'Format'
        },
        ti: '.Format'
      }, {
        en: {
          lp: 'SVG'
        },
        ti: '.SVG'
      }, {
        en: {
          lp: 'INIMAGE'
        },
        ti: '.INIMAGE'
      }, {
        en: {
          lp: 'TIFF'
        },
        ti: '.TIFF'
      }, {
        en: {
          lp: 'Exception'
        },
        ti: '.Exception'
      }]
  };
  return {
    WMS_1_0_0: WMS_1_0_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], WMS_1_0_0_Module_Factory);
}
else {
  var WMS_1_0_0_Module = WMS_1_0_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.WMS_1_0_0 = WMS_1_0_0_Module.WMS_1_0_0;
  }
  else {
    var WMS_1_0_0 = WMS_1_0_0_Module.WMS_1_0_0;
  }
}