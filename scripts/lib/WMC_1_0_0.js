var WMC_1_0_0_Module_Factory = function () {
  var WMC_1_0_0 = {
    n: 'WMC_1_0_0',
    dens: 'http:\/\/www.opengis.net\/context',
    deps: ['SLD_1_0_0', 'XLink_1_0'],
    tis: [{
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
        ln: 'ContactPersonPrimaryType',
        ps: [{
            n: 'contactPerson',
            rq: true,
            en: 'ContactPerson'
          }, {
            n: 'contactOrganization',
            rq: true,
            en: 'ContactOrganization'
          }]
      }, {
        ln: 'AddressType',
        ps: [{
            n: 'addressType',
            rq: true,
            en: 'AddressType'
          }, {
            n: 'address',
            rq: true,
            en: 'Address'
          }, {
            n: 'city',
            rq: true,
            en: 'City'
          }, {
            n: 'stateOrProvince',
            rq: true,
            en: 'StateOrProvince'
          }, {
            n: 'postCode',
            rq: true,
            en: 'PostCode'
          }, {
            n: 'country',
            rq: true,
            en: 'Country'
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
        ln: 'LayerListType',
        ps: [{
            n: 'layer',
            rq: true,
            col: true,
            en: 'Layer',
            ti: '.LayerType'
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
            n: 'srs',
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
        ln: 'StyleListType',
        ps: [{
            n: 'style',
            rq: true,
            col: true,
            en: 'Style',
            ti: '.StyleType'
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
        ln: 'ContactInformationType',
        ps: [{
            n: 'contactPersonPrimary',
            rq: true,
            en: 'ContactPersonPrimary',
            ti: '.ContactPersonPrimaryType'
          }, {
            n: 'contactPosition',
            rq: true,
            en: 'ContactPosition'
          }, {
            n: 'contactAddress',
            rq: true,
            en: 'ContactAddress',
            ti: '.AddressType'
          }, {
            n: 'contactVoiceTelephone',
            rq: true,
            en: 'ContactVoiceTelephone'
          }, {
            n: 'contactFacsimileTelephone',
            rq: true,
            en: 'ContactFacsimileTelephone'
          }, {
            n: 'contactElectronicMailAddress',
            rq: true,
            en: 'ContactElectronicMailAddress'
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
        ln: 'SLDType',
        ps: [{
            n: 'name',
            en: 'Name'
          }, {
            n: 'title',
            en: 'Title'
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
        ln: 'KeywordListType',
        ps: [{
            n: 'keyword',
            rq: true,
            col: true,
            en: 'Keyword'
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
    WMC_1_0_0: WMC_1_0_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], WMC_1_0_0_Module_Factory);
}
else {
  var WMC_1_0_0_Module = WMC_1_0_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.WMC_1_0_0 = WMC_1_0_0_Module.WMC_1_0_0;
  }
  else {
    var WMC_1_0_0 = WMC_1_0_0_Module.WMC_1_0_0;
  }
}