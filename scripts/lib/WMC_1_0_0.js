var WMC_1_0_0_Module_Factory = function () {
  var WMC_1_0_0 = {
    n: 'WMC_1_0_0',
    dens: 'http:\/\/www.opengis.net\/context',
    deps: ['XLink_1_0', 'SLD_1_0_0'],
    tis: [{
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
        ln: 'StyleListType',
        ps: [{
            n: 'style',
            col: true,
            en: 'Style',
            ti: '.StyleType'
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
        ln: 'LayerListType',
        ps: [{
            n: 'layer',
            col: true,
            en: 'Layer',
            ti: '.LayerType'
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
        ln: 'SLDType',
        ps: [{
            n: 'name',
            en: 'Name'
          }, {
            n: 'title',
            en: 'Title'
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
        ln: 'FormatListType',
        ps: [{
            n: 'format',
            col: true,
            en: 'Format',
            ti: '.FormatType'
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
        ln: 'KeywordListType',
        ps: [{
            n: 'keyword',
            col: true,
            en: 'Keyword'
          }]
      }, {
        ln: 'ContextURLType',
        ps: [{
            n: 'onlineResource',
            en: 'OnlineResource',
            ti: '.OnlineResourceType'
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
        ln: 'ExtensionType',
        ps: [{
            n: 'any',
            dom: false,
            mx: false,
            t: 'ae'
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
        ln: 'ContactPersonPrimaryType',
        ps: [{
            n: 'contactPerson',
            en: 'ContactPerson'
          }, {
            n: 'contactOrganization',
            en: 'ContactOrganization'
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