var WMS_1_0_0_Module_Factory = function () {
  var WMS_1_0_0 = {
    n: 'WMS_1_0_0',
    tis: [{
        ln: 'GML3',
        tn: null
      }, {
        ln: 'SVG',
        tn: null
      }, {
        ln: 'Service',
        tn: null,
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
        ln: 'Map',
        tn: null,
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
        ln: 'GML2',
        tn: null
      }, {
        ln: 'Format',
        tn: null,
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
        ln: 'PNG',
        tn: null
      }, {
        ln: 'PPM',
        tn: null
      }, {
        ln: 'BLANK',
        tn: null
      }, {
        ln: 'DCPType',
        tn: null,
        ps: [{
            n: 'http',
            en: {
              lp: 'HTTP'
            },
            ti: '.HTTP'
          }]
      }, {
        ln: 'Exception',
        tn: null,
        ps: [{
            n: 'format',
            en: {
              lp: 'Format'
            },
            ti: '.Format'
          }]
      }, {
        ln: 'ScaleHint',
        tn: null,
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
        ln: 'Get',
        tn: null,
        ps: [{
            n: 'onlineResource',
            an: {
              lp: 'onlineResource'
            },
            t: 'a'
          }]
      }, {
        ln: 'WMSXML',
        tn: null
      }, {
        ln: 'WebCGM',
        tn: null
      }, {
        ln: 'WMTMSCapabilities',
        tn: null,
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
        ln: 'TIFF',
        tn: null
      }, {
        ln: 'LatLonBoundingBox',
        tn: null,
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
        ln: 'FeatureInfo',
        tn: null,
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
        tn: null,
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
        ln: 'INIMAGE',
        tn: null
      }, {
        ln: 'GeoTIFF',
        tn: null
      }, {
        ln: 'BoundingBox',
        tn: null,
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
        ln: 'MIME',
        tn: null
      }, {
        ln: 'JPEG',
        tn: null
      }, {
        ln: 'WBMP',
        tn: null
      }, {
        ln: 'GIF',
        tn: null
      }, {
        ln: 'GML1',
        tn: null
      }, {
        ln: 'Post',
        tn: null,
        ps: [{
            n: 'onlineResource',
            an: {
              lp: 'onlineResource'
            },
            t: 'a'
          }]
      }, {
        ln: 'Request',
        tn: null,
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
        ln: 'HTTP',
        tn: null,
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
        ln: 'Style',
        tn: null,
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
        ln: 'VendorSpecificCapabilities',
        tn: null
      }, {
        ln: 'Capabilities',
        tn: null,
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
        ln: 'Capability',
        tn: null,
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
          lp: 'BoundingBox'
        },
        ti: '.BoundingBox'
      }, {
        en: {
          lp: 'Exception'
        },
        ti: '.Exception'
      }, {
        en: {
          lp: 'MIME'
        },
        ti: '.MIME'
      }, {
        en: {
          lp: 'Capabilities'
        },
        ti: '.Capabilities'
      }, {
        en: {
          lp: 'Post'
        },
        ti: '.Post'
      }, {
        en: {
          lp: 'WBMP'
        },
        ti: '.WBMP'
      }, {
        en: {
          lp: 'INIMAGE'
        },
        ti: '.INIMAGE'
      }, {
        en: {
          lp: 'GeoTIFF'
        },
        ti: '.GeoTIFF'
      }, {
        en: {
          lp: 'LatLonBoundingBox'
        },
        ti: '.LatLonBoundingBox'
      }, {
        en: {
          lp: 'GIF'
        },
        ti: '.GIF'
      }, {
        en: {
          lp: 'BLANK'
        },
        ti: '.BLANK'
      }, {
        en: {
          lp: 'GML.2'
        },
        ti: '.GML2'
      }, {
        en: {
          lp: 'Map'
        },
        ti: '.Map'
      }, {
        en: {
          lp: 'Format'
        },
        ti: '.Format'
      }, {
        en: {
          lp: 'VendorSpecificCapabilities'
        },
        ti: '.VendorSpecificCapabilities'
      }, {
        en: {
          lp: 'JPEG'
        },
        ti: '.JPEG'
      }, {
        en: {
          lp: 'WMS_XML'
        },
        ti: '.WMSXML'
      }, {
        en: {
          lp: 'TIFF'
        },
        ti: '.TIFF'
      }, {
        en: {
          lp: 'HTTP'
        },
        ti: '.HTTP'
      }, {
        en: {
          lp: 'Request'
        },
        ti: '.Request'
      }, {
        en: {
          lp: 'Get'
        },
        ti: '.Get'
      }, {
        en: {
          lp: 'SVG'
        },
        ti: '.SVG'
      }, {
        en: {
          lp: 'PNG'
        },
        ti: '.PNG'
      }, {
        en: {
          lp: 'Service'
        },
        ti: '.Service'
      }, {
        en: {
          lp: 'GML.1'
        },
        ti: '.GML1'
      }, {
        en: {
          lp: 'FeatureInfo'
        },
        ti: '.FeatureInfo'
      }, {
        en: {
          lp: 'DCPType'
        },
        ti: '.DCPType'
      }, {
        en: {
          lp: 'Capability'
        },
        ti: '.Capability'
      }, {
        en: {
          lp: 'Layer'
        },
        ti: '.Layer'
      }, {
        en: {
          lp: 'ScaleHint'
        },
        ti: '.ScaleHint'
      }, {
        en: {
          lp: 'WebCGM'
        },
        ti: '.WebCGM'
      }, {
        en: {
          lp: 'PPM'
        },
        ti: '.PPM'
      }, {
        en: {
          lp: 'WMT_MS_Capabilities'
        },
        ti: '.WMTMSCapabilities'
      }, {
        en: {
          lp: 'GML.3'
        },
        ti: '.GML3'
      }, {
        en: {
          lp: 'Style'
        },
        ti: '.Style'
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