var WMC_1_1_0_Module_Factory = function () {
  var WMC_1_1_0 = {
    n: 'WMC_1_1_0',
    dens: 'http:\/\/www.opengis.net\/context',
    deps: ['XLink_1_0', 'SLD_1_0_0'],
    tis: [{
        ln: 'WindowType',
        ps: [{
            n: 'width',
            rq: true,
            ti: 'Integer',
            an: {
              lp: 'width'
            },
            t: 'a'
          }, {
            n: 'height',
            rq: true,
            ti: 'Integer',
            an: {
              lp: 'height'
            },
            t: 'a'
          }]
      }, {
        ln: 'ServerType',
        ps: [{
            n: 'onlineResource',
            rq: true,
            en: 'OnlineResource',
            ti: '.OnlineResourceType'
          }, {
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
          }, {
            n: 'title',
            an: {
              lp: 'title'
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
        ln: 'ViewContextCollectionType',
        ps: [{
            n: 'viewContextReference',
            rq: true,
            col: true,
            en: 'ViewContextReference',
            ti: '.ViewContextReferenceType'
          }, {
            n: 'version',
            rq: true,
            an: {
              lp: 'version'
            },
            t: 'a'
          }]
      }, {
        ln: 'DimensionType',
        ps: [{
            n: 'value',
            t: 'v'
          }, {
            n: 'name',
            rq: true,
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'units',
            rq: true,
            an: {
              lp: 'units'
            },
            t: 'a'
          }, {
            n: 'unitSymbol',
            rq: true,
            an: {
              lp: 'unitSymbol'
            },
            t: 'a'
          }, {
            n: 'userValue',
            rq: true,
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
        ln: 'DimensionListType',
        ps: [{
            n: 'dimension',
            rq: true,
            col: true,
            en: 'Dimension',
            ti: '.DimensionType'
          }]
      }, {
        ln: 'ViewContextReferenceType',
        ps: [{
            n: 'title',
            rq: true,
            en: 'Title'
          }, {
            n: 'contextURL',
            rq: true,
            en: 'ContextURL',
            ti: '.ContextURLType'
          }, {
            n: 'version',
            rq: true,
            ti: 'AnySimpleType',
            an: {
              lp: 'version'
            },
            t: 'a'
          }, {
            n: 'id',
            rq: true,
            ti: 'AnySimpleType',
            an: {
              lp: 'id'
            },
            t: 'a'
          }]
      }, {
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
        ln: 'GeneralType',
        ps: [{
            n: 'window',
            en: 'Window',
            ti: '.WindowType'
          }, {
            n: 'boundingBox',
            rq: true,
            en: 'BoundingBox',
            ti: '.BoundingBoxType'
          }, {
            n: 'title',
            rq: true,
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
        ln: 'StyleType',
        ps: [{
            n: 'name',
            rq: true,
            en: 'Name'
          }, {
            n: 'title',
            rq: true,
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
        ln: 'BoundingBoxType',
        ps: [{
            n: 'srs',
            rq: true,
            an: {
              lp: 'SRS'
            },
            t: 'a'
          }, {
            n: 'minx',
            rq: true,
            ti: 'Decimal',
            an: {
              lp: 'minx'
            },
            t: 'a'
          }, {
            n: 'miny',
            rq: true,
            ti: 'Decimal',
            an: {
              lp: 'miny'
            },
            t: 'a'
          }, {
            n: 'maxx',
            rq: true,
            ti: 'Decimal',
            an: {
              lp: 'maxx'
            },
            t: 'a'
          }, {
            n: 'maxy',
            rq: true,
            ti: 'Decimal',
            an: {
              lp: 'maxy'
            },
            t: 'a'
          }]
      }, {
        ln: 'KeywordListType',
        ps: [{
            n: 'keyword',
            rq: true,
            col: true,
            en: 'Keyword'
          }]
      }, {
        ln: 'URLType',
        ps: [{
            n: 'onlineResource',
            rq: true,
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
            rq: true,
            en: 'OnlineResource',
            ti: '.OnlineResourceType'
          }, {
            n: 'styledLayerDescriptor',
            rq: true,
            en: {
              lp: 'StyledLayerDescriptor',
              ns: 'http:\/\/www.opengis.net\/sld'
            },
            ti: 'SLD_1_0_0.StyledLayerDescriptor'
          }, {
            n: 'featureTypeStyle',
            rq: true,
            en: {
              lp: 'FeatureTypeStyle',
              ns: 'http:\/\/www.opengis.net\/sld'
            },
            ti: 'SLD_1_0_0.FeatureTypeStyle'
          }]
      }, {
        ln: 'ContextURLType',
        ps: [{
            n: 'onlineResource',
            rq: true,
            en: 'OnlineResource',
            ti: '.OnlineResourceType'
          }]
      }, {
        ln: 'FormatListType',
        ps: [{
            n: 'format',
            rq: true,
            col: true,
            en: 'Format',
            ti: '.FormatType'
          }]
      }, {
        ln: 'ExtensionType',
        ps: [{
            n: 'any',
            rq: true,
            dom: false,
            mx: false,
            t: 'ae'
          }]
      }, {
        ln: 'LayerType',
        ps: [{
            n: 'server',
            rq: true,
            en: 'Server',
            ti: '.ServerType'
          }, {
            n: 'name',
            rq: true,
            en: 'Name'
          }, {
            n: 'title',
            rq: true,
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
            mno: 0,
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
            rq: true,
            ti: 'Boolean',
            an: {
              lp: 'queryable'
            },
            t: 'a'
          }, {
            n: 'hidden',
            rq: true,
            ti: 'Boolean',
            an: {
              lp: 'hidden'
            },
            t: 'a'
          }]
      }, {
        ln: 'LayerListType',
        ps: [{
            n: 'layer',
            rq: true,
            col: true,
            en: 'Layer',
            ti: '.LayerType'
          }]
      }, {
        ln: 'StyleListType',
        ps: [{
            n: 'style',
            mno: 0,
            col: true,
            en: 'Style',
            ti: '.StyleType'
          }]
      }, {
        ln: 'ViewContextType',
        ps: [{
            n: 'general',
            rq: true,
            en: 'General',
            ti: '.GeneralType'
          }, {
            n: 'layerList',
            rq: true,
            en: 'LayerList',
            ti: '.LayerListType'
          }, {
            n: 'version',
            rq: true,
            an: {
              lp: 'version'
            },
            t: 'a'
          }, {
            n: 'id',
            rq: true,
            an: {
              lp: 'id'
            },
            t: 'a'
          }]
      }, {
        t: 'enum',
        ln: 'ServiceType',
        vs: ['OGC:WMS', 'OGC:WFS']
      }],
    eis: [{
        en: 'ViewContextCollection',
        ti: '.ViewContextCollectionType'
      }, {
        en: 'ViewContext',
        ti: '.ViewContextType'
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