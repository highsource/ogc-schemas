var WMS_1_1_1_Module_Factory = function () {
  var WMS_1_1_1 = {
    n: 'WMS_1_1_1',
    tis: [{
        ln: 'PutStyles',
        ps: [{
            n: 'format',
            col: true,
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
        ln: 'GetLegendGraphic',
        ps: [{
            n: 'format',
            col: true,
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
        ln: 'LogoURL',
        ps: [{
            n: 'width',
            an: {
              lp: 'width'
            },
            t: 'a'
          }, {
            n: 'height',
            an: {
              lp: 'height'
            },
            t: 'a'
          }, {
            n: 'format',
            en: {
              lp: 'Format'
            },
            ti: '.Format'
          }, {
            n: 'onlineResource',
            en: {
              lp: 'OnlineResource'
            },
            ti: '.OnlineResource'
          }]
      }, {
        ln: 'Request',
        ps: [{
            n: 'getCapabilities',
            en: {
              lp: 'GetCapabilities'
            },
            ti: '.GetCapabilities'
          }, {
            n: 'getMap',
            en: {
              lp: 'GetMap'
            },
            ti: '.GetMap'
          }, {
            n: 'getFeatureInfo',
            en: {
              lp: 'GetFeatureInfo'
            },
            ti: '.GetFeatureInfo'
          }, {
            n: 'describeLayer',
            en: {
              lp: 'DescribeLayer'
            },
            ti: '.DescribeLayer'
          }, {
            n: 'getLegendGraphic',
            en: {
              lp: 'GetLegendGraphic'
            },
            ti: '.GetLegendGraphic'
          }, {
            n: 'getStyles',
            en: {
              lp: 'GetStyles'
            },
            ti: '.GetStyles'
          }, {
            n: 'putStyles',
            en: {
              lp: 'PutStyles'
            },
            ti: '.PutStyles'
          }]
      }, {
        ln: 'ServiceException',
        ps: [{
            n: 'code',
            an: {
              lp: 'code'
            },
            t: 'a'
          }, {
            n: 'value',
            t: 'v'
          }]
      }, {
        ln: 'StyleSheetURL',
        ps: [{
            n: 'format',
            en: {
              lp: 'Format'
            },
            ti: '.Format'
          }, {
            n: 'onlineResource',
            en: {
              lp: 'OnlineResource'
            },
            ti: '.OnlineResource'
          }]
      }, {
        ln: 'Extent',
        ps: [{
            n: 'name',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: '_default',
            an: {
              lp: 'default'
            },
            t: 'a'
          }, {
            n: 'nearestValue',
            an: {
              lp: 'nearestValue'
            },
            t: 'a'
          }, {
            n: 'multipleValues',
            an: {
              lp: 'multipleValues'
            },
            t: 'a'
          }, {
            n: 'current',
            an: {
              lp: 'current'
            },
            t: 'a'
          }, {
            n: 'value',
            t: 'v'
          }]
      }, {
        ln: 'GetCapabilities',
        ps: [{
            n: 'format',
            col: true,
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
        ln: 'Attribution',
        ps: [{
            n: 'title',
            en: {
              lp: 'Title'
            }
          }, {
            n: 'onlineResource',
            en: {
              lp: 'OnlineResource'
            },
            ti: '.OnlineResource'
          }, {
            n: 'logoURL',
            en: {
              lp: 'LogoURL'
            },
            ti: '.LogoURL'
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
            n: 'cascaded',
            an: {
              lp: 'cascaded'
            },
            t: 'a'
          }, {
            n: 'opaque',
            an: {
              lp: 'opaque'
            },
            t: 'a'
          }, {
            n: 'noSubsets',
            an: {
              lp: 'noSubsets'
            },
            t: 'a'
          }, {
            n: 'fixedWidth',
            an: {
              lp: 'fixedWidth'
            },
            t: 'a'
          }, {
            n: 'fixedHeight',
            an: {
              lp: 'fixedHeight'
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
            n: 'keywordList',
            en: {
              lp: 'KeywordList'
            },
            ti: '.KeywordList'
          }, {
            n: 'srs',
            col: true,
            en: {
              lp: 'SRS'
            },
            ti: '.SRS'
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
            n: 'dimension',
            col: true,
            en: {
              lp: 'Dimension'
            },
            ti: '.Dimension'
          }, {
            n: 'extent',
            col: true,
            en: {
              lp: 'Extent'
            },
            ti: '.Extent'
          }, {
            n: 'attribution',
            en: {
              lp: 'Attribution'
            },
            ti: '.Attribution'
          }, {
            n: 'authorityURL',
            col: true,
            en: {
              lp: 'AuthorityURL'
            },
            ti: '.AuthorityURL'
          }, {
            n: 'identifier',
            col: true,
            en: {
              lp: 'Identifier'
            },
            ti: '.Identifier'
          }, {
            n: 'metadataURL',
            col: true,
            en: {
              lp: 'MetadataURL'
            },
            ti: '.MetadataURL'
          }, {
            n: 'dataURL',
            col: true,
            en: {
              lp: 'DataURL'
            },
            ti: '.DataURL'
          }, {
            n: 'featureListURL',
            col: true,
            en: {
              lp: 'FeatureListURL'
            },
            ti: '.FeatureListURL'
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
        ln: 'ContactPersonPrimary',
        ps: [{
            n: 'contactPerson',
            en: {
              lp: 'ContactPerson'
            }
          }, {
            n: 'contactOrganization',
            en: {
              lp: 'ContactOrganization'
            }
          }]
      }, {
        ln: 'DataURL',
        ps: [{
            n: 'format',
            en: {
              lp: 'Format'
            },
            ti: '.Format'
          }, {
            n: 'onlineResource',
            en: {
              lp: 'OnlineResource'
            },
            ti: '.OnlineResource'
          }]
      }, {
        ln: 'LayerDescription',
        ps: [{
            n: 'name',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'wfs',
            an: {
              lp: 'wfs'
            },
            t: 'a'
          }, {
            n: 'owsType',
            an: {
              lp: 'owsType'
            },
            t: 'a'
          }, {
            n: 'owsURL',
            an: {
              lp: 'owsURL'
            },
            t: 'a'
          }, {
            n: 'query',
            col: true,
            en: {
              lp: 'Query'
            },
            ti: '.Query'
          }]
      }, {
        ln: 'GetStyles',
        ps: [{
            n: 'format',
            col: true,
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
        ln: 'DCPType',
        ps: [{
            n: 'http',
            en: {
              lp: 'HTTP'
            },
            ti: '.HTTP'
          }]
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
            n: 'userDefinedSymbolization',
            en: {
              lp: 'UserDefinedSymbolization'
            },
            ti: '.UserDefinedSymbolization'
          }, {
            n: 'layer',
            en: {
              lp: 'Layer'
            },
            ti: '.Layer'
          }]
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
        ln: 'MetadataURL',
        ps: [{
            n: 'type',
            an: {
              lp: 'type'
            },
            t: 'a'
          }, {
            n: 'format',
            en: {
              lp: 'Format'
            },
            ti: '.Format'
          }, {
            n: 'onlineResource',
            en: {
              lp: 'OnlineResource'
            },
            ti: '.OnlineResource'
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
        ln: 'Exception',
        ps: [{
            n: 'format',
            col: true,
            en: {
              lp: 'Format'
            },
            ti: '.Format'
          }]
      }, {
        ln: 'Format',
        ps: [{
            n: 'value',
            t: 'v'
          }]
      }, {
        ln: 'VendorSpecificCapabilities'
      }, {
        ln: 'Query',
        ps: [{
            n: 'typeName',
            an: {
              lp: 'typeName'
            },
            t: 'a'
          }]
      }, {
        ln: 'GetFeatureInfo',
        ps: [{
            n: 'format',
            col: true,
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
        ln: 'Keyword',
        ps: [{
            n: 'value',
            t: 'v'
          }]
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
            n: 'keywordList',
            en: {
              lp: 'KeywordList'
            },
            ti: '.KeywordList'
          }, {
            n: 'onlineResource',
            en: {
              lp: 'OnlineResource'
            },
            ti: '.OnlineResource'
          }, {
            n: 'contactInformation',
            en: {
              lp: 'ContactInformation'
            },
            ti: '.ContactInformation'
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
        ln: 'StyleURL',
        ps: [{
            n: 'format',
            en: {
              lp: 'Format'
            },
            ti: '.Format'
          }, {
            n: 'onlineResource',
            en: {
              lp: 'OnlineResource'
            },
            ti: '.OnlineResource'
          }]
      }, {
        ln: 'LegendURL',
        ps: [{
            n: 'width',
            an: {
              lp: 'width'
            },
            t: 'a'
          }, {
            n: 'height',
            an: {
              lp: 'height'
            },
            t: 'a'
          }, {
            n: 'format',
            en: {
              lp: 'Format'
            },
            ti: '.Format'
          }, {
            n: 'onlineResource',
            en: {
              lp: 'OnlineResource'
            },
            ti: '.OnlineResource'
          }]
      }, {
        ln: 'ContactAddress',
        ps: [{
            n: 'addressType',
            en: {
              lp: 'AddressType'
            }
          }, {
            n: 'address',
            en: {
              lp: 'Address'
            }
          }, {
            n: 'city',
            en: {
              lp: 'City'
            }
          }, {
            n: 'stateOrProvince',
            en: {
              lp: 'StateOrProvince'
            }
          }, {
            n: 'postCode',
            en: {
              lp: 'PostCode'
            }
          }, {
            n: 'country',
            en: {
              lp: 'Country'
            }
          }]
      }, {
        ln: 'AuthorityURL',
        ps: [{
            n: 'name',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'onlineResource',
            en: {
              lp: 'OnlineResource'
            },
            ti: '.OnlineResource'
          }]
      }, {
        ln: 'GetMap',
        ps: [{
            n: 'format',
            col: true,
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
        ln: 'FeatureListURL',
        ps: [{
            n: 'format',
            en: {
              lp: 'Format'
            },
            ti: '.Format'
          }, {
            n: 'onlineResource',
            en: {
              lp: 'OnlineResource'
            },
            ti: '.OnlineResource'
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
        ln: 'Dimension',
        ps: [{
            n: 'name',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'units',
            an: {
              lp: 'units'
            },
            t: 'a'
          }, {
            n: 'unitSymbol',
            an: {
              lp: 'unitSymbol'
            },
            t: 'a'
          }]
      }, {
        ln: 'SRS',
        ps: [{
            n: 'value',
            t: 'v'
          }]
      }, {
        ln: 'Identifier',
        ps: [{
            n: 'authority',
            an: {
              lp: 'authority'
            },
            t: 'a'
          }, {
            n: 'value',
            t: 'v'
          }]
      }, {
        ln: 'UserDefinedSymbolization',
        ps: [{
            n: 'supportSLD',
            an: {
              lp: 'SupportSLD'
            },
            t: 'a'
          }, {
            n: 'userLayer',
            an: {
              lp: 'UserLayer'
            },
            t: 'a'
          }, {
            n: 'userStyle',
            an: {
              lp: 'UserStyle'
            },
            t: 'a'
          }, {
            n: 'remoteWFS',
            an: {
              lp: 'RemoteWFS'
            },
            t: 'a'
          }]
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
          }, {
            n: 'resx',
            an: {
              lp: 'resx'
            },
            t: 'a'
          }, {
            n: 'resy',
            an: {
              lp: 'resy'
            },
            t: 'a'
          }]
      }, {
        ln: 'Post',
        ps: [{
            n: 'onlineResource',
            en: {
              lp: 'OnlineResource'
            },
            ti: '.OnlineResource'
          }]
      }, {
        ln: 'ServiceExceptionReport',
        ps: [{
            n: 'version',
            an: {
              lp: 'version'
            },
            t: 'a'
          }, {
            n: 'serviceException',
            col: true,
            en: {
              lp: 'ServiceException'
            },
            ti: '.ServiceException'
          }]
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
        ln: 'Get',
        ps: [{
            n: 'onlineResource',
            en: {
              lp: 'OnlineResource'
            },
            ti: '.OnlineResource'
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
            n: 'legendURL',
            col: true,
            en: {
              lp: 'LegendURL'
            },
            ti: '.LegendURL'
          }, {
            n: 'styleSheetURL',
            en: {
              lp: 'StyleSheetURL'
            },
            ti: '.StyleSheetURL'
          }, {
            n: 'styleURL',
            en: {
              lp: 'StyleURL'
            },
            ti: '.StyleURL'
          }]
      }, {
        ln: 'KeywordList',
        ps: [{
            n: 'keyword',
            col: true,
            en: {
              lp: 'Keyword'
            },
            ti: '.Keyword'
          }]
      }, {
        ln: 'OnlineResource',
        ps: [{
            n: 'xmlnsXlink',
            an: {
              lp: 'xmlns:xlink'
            },
            t: 'a'
          }, {
            n: 'xlinkType',
            an: {
              lp: 'xlink:type'
            },
            t: 'a'
          }, {
            n: 'xlinkHref',
            an: {
              lp: 'xlink:href'
            },
            t: 'a'
          }]
      }, {
        ln: 'ContactInformation',
        ps: [{
            n: 'contactPersonPrimary',
            en: {
              lp: 'ContactPersonPrimary'
            },
            ti: '.ContactPersonPrimary'
          }, {
            n: 'contactPosition',
            en: {
              lp: 'ContactPosition'
            }
          }, {
            n: 'contactAddress',
            en: {
              lp: 'ContactAddress'
            },
            ti: '.ContactAddress'
          }, {
            n: 'contactVoiceTelephone',
            en: {
              lp: 'ContactVoiceTelephone'
            }
          }, {
            n: 'contactFacsimileTelephone',
            en: {
              lp: 'ContactFacsimileTelephone'
            }
          }, {
            n: 'contactElectronicMailAddress',
            en: {
              lp: 'ContactElectronicMailAddress'
            }
          }]
      }, {
        ln: 'WMSDescribeLayerResponse',
        ps: [{
            n: 'version',
            an: {
              lp: 'version'
            },
            t: 'a'
          }, {
            n: 'layerDescription',
            col: true,
            en: {
              lp: 'LayerDescription'
            },
            ti: '.LayerDescription'
          }]
      }, {
        ln: 'DescribeLayer',
        ps: [{
            n: 'format',
            col: true,
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
      }],
    eis: [{
        en: {
          lp: 'LogoURL'
        },
        ti: '.LogoURL'
      }, {
        en: {
          lp: 'GetLegendGraphic'
        },
        ti: '.GetLegendGraphic'
      }, {
        en: {
          lp: 'ServiceException'
        },
        ti: '.ServiceException'
      }, {
        en: {
          lp: 'Capability'
        },
        ti: '.Capability'
      }, {
        en: {
          lp: 'HTTP'
        },
        ti: '.HTTP'
      }, {
        en: {
          lp: 'GetFeatureInfo'
        },
        ti: '.GetFeatureInfo'
      }, {
        en: {
          lp: 'Exception'
        },
        ti: '.Exception'
      }, {
        en: {
          lp: 'ContactInformation'
        },
        ti: '.ContactInformation'
      }, {
        en: {
          lp: 'Attribution'
        },
        ti: '.Attribution'
      }, {
        en: {
          lp: 'Format'
        },
        ti: '.Format'
      }, {
        en: {
          lp: 'Keyword'
        },
        ti: '.Keyword'
      }, {
        en: {
          lp: 'VendorSpecificCapabilities'
        },
        ti: '.VendorSpecificCapabilities'
      }, {
        en: {
          lp: 'AuthorityURL'
        },
        ti: '.AuthorityURL'
      }, {
        en: {
          lp: 'WMS_DescribeLayerResponse'
        },
        ti: '.WMSDescribeLayerResponse'
      }, {
        en: {
          lp: 'GetStyles'
        },
        ti: '.GetStyles'
      }, {
        en: {
          lp: 'DataURL'
        },
        ti: '.DataURL'
      }, {
        en: {
          lp: 'WMT_MS_Capabilities'
        },
        ti: '.WMTMSCapabilities'
      }, {
        en: {
          lp: 'OnlineResource'
        },
        ti: '.OnlineResource'
      }, {
        en: {
          lp: 'LayerDescription'
        },
        ti: '.LayerDescription'
      }, {
        en: {
          lp: 'SRS'
        },
        ti: '.SRS'
      }, {
        en: {
          lp: 'FeatureListURL'
        },
        ti: '.FeatureListURL'
      }, {
        en: {
          lp: 'KeywordList'
        },
        ti: '.KeywordList'
      }, {
        en: {
          lp: 'Service'
        },
        ti: '.Service'
      }, {
        en: {
          lp: 'DCPType'
        },
        ti: '.DCPType'
      }, {
        en: {
          lp: 'StyleSheetURL'
        },
        ti: '.StyleSheetURL'
      }, {
        en: {
          lp: 'StyleURL'
        },
        ti: '.StyleURL'
      }, {
        en: {
          lp: 'ContactAddress'
        },
        ti: '.ContactAddress'
      }, {
        en: {
          lp: 'Layer'
        },
        ti: '.Layer'
      }, {
        en: {
          lp: 'Request'
        },
        ti: '.Request'
      }, {
        en: {
          lp: 'BoundingBox'
        },
        ti: '.BoundingBox'
      }, {
        en: {
          lp: 'ContactPersonPrimary'
        },
        ti: '.ContactPersonPrimary'
      }, {
        en: {
          lp: 'UserDefinedSymbolization'
        },
        ti: '.UserDefinedSymbolization'
      }, {
        en: {
          lp: 'LatLonBoundingBox'
        },
        ti: '.LatLonBoundingBox'
      }, {
        en: {
          lp: 'MetadataURL'
        },
        ti: '.MetadataURL'
      }, {
        en: {
          lp: 'LegendURL'
        },
        ti: '.LegendURL'
      }, {
        en: {
          lp: 'PutStyles'
        },
        ti: '.PutStyles'
      }, {
        en: {
          lp: 'Style'
        },
        ti: '.Style'
      }, {
        en: {
          lp: 'GetCapabilities'
        },
        ti: '.GetCapabilities'
      }, {
        en: {
          lp: 'Extent'
        },
        ti: '.Extent'
      }, {
        en: {
          lp: 'Post'
        },
        ti: '.Post'
      }, {
        en: {
          lp: 'Query'
        },
        ti: '.Query'
      }, {
        en: {
          lp: 'ScaleHint'
        },
        ti: '.ScaleHint'
      }, {
        en: {
          lp: 'DescribeLayer'
        },
        ti: '.DescribeLayer'
      }, {
        en: {
          lp: 'Dimension'
        },
        ti: '.Dimension'
      }, {
        en: {
          lp: 'GetMap'
        },
        ti: '.GetMap'
      }, {
        en: {
          lp: 'Get'
        },
        ti: '.Get'
      }, {
        en: {
          lp: 'Identifier'
        },
        ti: '.Identifier'
      }, {
        en: {
          lp: 'ServiceExceptionReport'
        },
        ti: '.ServiceExceptionReport'
      }]
  };
  return {
    WMS_1_1_1: WMS_1_1_1
  };
};
if (typeof define === 'function' && define.amd) {
  define([], WMS_1_1_1_Module_Factory);
}
else {
  var WMS_1_1_1_Module = WMS_1_1_1_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.WMS_1_1_1 = WMS_1_1_1_Module.WMS_1_1_1;
  }
  else {
    var WMS_1_1_1 = WMS_1_1_1_Module.WMS_1_1_1;
  }
}