var WMC_1_1_0_Module_Factory = function () {
  var WMC_1_1_0 = {
    n: 'WMC_1_1_0',
    dens: 'http:\/\/www.opengis.net\/context',
    deps: ['SLD_1_0_0', 'XLink_1_0'],
    tis: [{
        ln: 'AddressType',
        ps: [{
            n: 'addressType',
            en: 'AddressType'
          }, {
            n: 'address',
            en: 'Address'
          }, {
            n: 'city',
            en: 'City'
          }, {
            n: 'stateOrProvince',
            en: 'StateOrProvince'
          }, {
            n: 'postCode',
            en: 'PostCode'
          }, {
            n: 'country',
            en: 'Country'
          }]
      }, {
        ln: 'ViewContextType',
        ps: [{
            n: 'general',
            en: 'General',
            ti: '.GeneralType'
          }, {
            n: 'layerList',
            en: 'LayerList',
            ti: '.LayerListType'
          }, {
            n: 'version',
            an: {
              lp: 'version'
            },
            t: 'a'
          }, {
            n: 'id',
            an: {
              lp: 'id'
            },
            t: 'a'
          }]
      }, {
        ln: 'StyleListType',
        ps: [{
            n: 'style',
            col: true,
            en: 'Style',
            ti: '.StyleType'
          }]
      }, {
        ln: 'LayerListType',
        ps: [{
            n: 'layer',
            col: true,
            en: 'Layer',
            ti: '.LayerType'
          }]
      }, {
        ln: 'DimensionListType',
        ps: [{
            n: 'dimension',
            col: true,
            en: 'Dimension',
            ti: '.DimensionType'
          }]
      }, {
        ln: 'FormatListType',
        ps: [{
            n: 'format',
            col: true,
            en: 'Format',
            ti: '.FormatType'
          }]
      }, {
        ln: 'ExtensionType',
        ps: [{
            n: 'any',
            dom: false,
            mx: false,
            t: 'ae'
          }]
      }, {
        ln: 'WindowType',
        ps: [{
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
        ln: 'ContactInformationType',
        ps: [{
            n: 'contactPersonPrimary',
            en: 'ContactPersonPrimary',
            ti: '.ContactPersonPrimaryType'
          }, {
            n: 'contactPosition',
            en: 'ContactPosition'
          }, {
            n: 'contactAddress',
            en: 'ContactAddress',
            ti: '.AddressType'
          }, {
            n: 'contactVoiceTelephone',
            en: 'ContactVoiceTelephone'
          }, {
            n: 'contactFacsimileTelephone',
            en: 'ContactFacsimileTelephone'
          }, {
            n: 'contactElectronicMailAddress',
            en: 'ContactElectronicMailAddress'
          }]
      }, {
        ln: 'DimensionType',
        ps: [{
            n: 'value',
            t: 'v'
          }, {
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
          }, {
            n: 'userValue',
            an: {
              lp: 'userValue'
            },
            t: 'a'
          }, {
            n: '_default',
            an: {
              lp: 'default'
            },
            t: 'a'
          }, {
            n: 'multipleValues',
            ti: 'Boolean',
            an: {
              lp: 'multipleValues'
            },
            t: 'a'
          }, {
            n: 'nearestValue',
            ti: 'Boolean',
            an: {
              lp: 'nearestValue'
            },
            t: 'a'
          }, {
            n: 'current',
            ti: 'Boolean',
            an: {
              lp: 'current'
            },
            t: 'a'
          }]
      }, {
        ln: 'ContactPersonPrimaryType',
        ps: [{
            n: 'contactPerson',
            en: 'ContactPerson'
          }, {
            n: 'contactOrganization',
            en: 'ContactOrganization'
          }]
      }, {
        ln: 'SLDType',
        ps: [{
            n: 'name',
            en: 'Name'
          }, {
            n: 'title',
            en: 'Title'
          }, {
            n: 'legendURL',
            en: 'LegendURL',
            ti: '.URLType'
          }, {
            n: 'onlineResource',
            en: 'OnlineResource',
            ti: '.OnlineResourceType'
          }, {
            n: 'styledLayerDescriptor',
            en: {
              lp: 'StyledLayerDescriptor',
              ns: 'http:\/\/www.opengis.net\/sld'
            },
            ti: 'SLD_1_0_0.StyledLayerDescriptor'
          }, {
            n: 'featureTypeStyle',
            en: {
              lp: 'FeatureTypeStyle',
              ns: 'http:\/\/www.opengis.net\/sld'
            },
            ti: 'SLD_1_0_0.FeatureTypeStyle'
          }]
      }, {
        ln: 'FormatType',
        ps: [{
            n: 'value',
            t: 'v'
          }, {
            n: 'current',
            ti: 'Boolean',
            an: {
              lp: 'current'
            },
            t: 'a'
          }]
      }, {
        ln: 'StyleType',
        ps: [{
            n: 'name',
            en: 'Name'
          }, {
            n: 'title',
            en: 'Title'
          }, {
            n: '_abstract',
            en: 'Abstract'
          }, {
            n: 'legendURL',
            en: 'LegendURL',
            ti: '.URLType'
          }, {
            n: 'sld',
            en: 'SLD',
            ti: '.SLDType'
          }, {
            n: 'current',
            ti: 'Boolean',
            an: {
              lp: 'current'
            },
            t: 'a'
          }]
      }, {
        ln: 'ServerType',
        ps: [{
            n: 'onlineResource',
            en: 'OnlineResource',
            ti: '.OnlineResourceType'
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
          }, {
            n: 'title',
            an: {
              lp: 'title'
            },
            t: 'a'
          }]
      }, {
        ln: 'OnlineResourceType',
        ps: [{
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
        ln: 'ContextURLType',
        ps: [{
            n: 'onlineResource',
            en: 'OnlineResource',
            ti: '.OnlineResourceType'
          }]
      }, {
        ln: 'KeywordListType',
        ps: [{
            n: 'keyword',
            col: true,
            en: 'Keyword'
          }]
      }, {
        ln: 'LayerType',
        ps: [{
            n: 'server',
            en: 'Server',
            ti: '.ServerType'
          }, {
            n: 'name',
            en: 'Name'
          }, {
            n: 'title',
            en: 'Title'
          }, {
            n: '_abstract',
            en: 'Abstract'
          }, {
            n: 'dataURL',
            en: 'DataURL',
            ti: '.URLType'
          }, {
            n: 'metadataURL',
            en: 'MetadataURL',
            ti: '.URLType'
          }, {
            n: 'minScaleDenominator',
            en: {
              lp: 'MinScaleDenominator',
              ns: 'http:\/\/www.opengis.net\/sld'
            },
            ti: 'Double'
          }, {
            n: 'maxScaleDenominator',
            en: {
              lp: 'MaxScaleDenominator',
              ns: 'http:\/\/www.opengis.net\/sld'
            },
            ti: 'Double'
          }, {
            n: 'srs',
            col: true,
            en: 'SRS'
          }, {
            n: 'formatList',
            en: 'FormatList',
            ti: '.FormatListType'
          }, {
            n: 'styleList',
            en: 'StyleList',
            ti: '.StyleListType'
          }, {
            n: 'dimensionList',
            en: 'DimensionList',
            ti: '.DimensionListType'
          }, {
            n: 'extension',
            en: 'Extension',
            ti: '.ExtensionType'
          }, {
            n: 'queryable',
            ti: 'Boolean',
            an: {
              lp: 'queryable'
            },
            t: 'a'
          }, {
            n: 'hidden',
            ti: 'Boolean',
            an: {
              lp: 'hidden'
            },
            t: 'a'
          }]
      }, {
        ln: 'ViewContextReferenceType',
        ps: [{
            n: 'title',
            en: 'Title'
          }, {
            n: 'contextURL',
            en: 'ContextURL',
            ti: '.ContextURLType'
          }, {
            n: 'version',
            an: {
              lp: 'version'
            },
            t: 'a'
          }, {
            n: 'id',
            an: {
              lp: 'id'
            },
            t: 'a'
          }]
      }, {
        ln: 'GeneralType',
        ps: [{
            n: 'window',
            en: 'Window',
            ti: '.WindowType'
          }, {
            n: 'boundingBox',
            en: 'BoundingBox',
            ti: '.BoundingBoxType'
          }, {
            n: 'title',
            en: 'Title'
          }, {
            n: 'keywordList',
            en: 'KeywordList',
            ti: '.KeywordListType'
          }, {
            n: '_abstract',
            en: 'Abstract'
          }, {
            n: 'logoURL',
            en: 'LogoURL',
            ti: '.URLType'
          }, {
            n: 'descriptionURL',
            en: 'DescriptionURL',
            ti: '.URLType'
          }, {
            n: 'contactInformation',
            en: 'ContactInformation',
            ti: '.ContactInformationType'
          }, {
            n: 'extension',
            en: 'Extension',
            ti: '.ExtensionType'
          }]
      }, {
        ln: 'ViewContextCollectionType',
        ps: [{
            n: 'viewContextReference',
            col: true,
            en: 'ViewContextReference',
            ti: '.ViewContextReferenceType'
          }, {
            n: 'version',
            an: {
              lp: 'version'
            },
            t: 'a'
          }]
      }, {
        ln: 'URLType',
        ps: [{
            n: 'onlineResource',
            en: 'OnlineResource',
            ti: '.OnlineResourceType'
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
          }, {
            n: 'format',
            an: {
              lp: 'format'
            },
            t: 'a'
          }]
      }, {
        ln: 'BoundingBoxType',
        ps: [{
            n: 'srs',
            an: {
              lp: 'SRS'
            },
            t: 'a'
          }, {
            n: 'minx',
            ti: 'Decimal',
            an: {
              lp: 'minx'
            },
            t: 'a'
          }, {
            n: 'miny',
            ti: 'Decimal',
            an: {
              lp: 'miny'
            },
            t: 'a'
          }, {
            n: 'maxx',
            ti: 'Decimal',
            an: {
              lp: 'maxx'
            },
            t: 'a'
          }, {
            n: 'maxy',
            ti: 'Decimal',
            an: {
              lp: 'maxy'
            },
            t: 'a'
          }]
      }, {
        t: 'enum',
        ln: 'ServiceType',
        vs: ['OGC:WMS', 'OGC:WFS']
      }],
    eis: [{
        en: 'ViewContext',
        ti: '.ViewContextType'
      }, {
        en: 'ViewContextCollection',
        ti: '.ViewContextCollectionType'
      }]
  };
  return {
    WMC_1_1_0: WMC_1_1_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], WMC_1_1_0_Module_Factory);
}
else {
  var WMC_1_1_0_Module = WMC_1_1_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.WMC_1_1_0 = WMC_1_1_0_Module.WMC_1_1_0;
  }
  else {
    var WMC_1_1_0 = WMC_1_1_0_Module.WMC_1_1_0;
  }
}