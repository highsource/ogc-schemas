var WFS_1_1_0_Module_Factory = function () {
  var WFS_1_1_0 = {
    n: 'WFS_1_1_0',
    dens: 'http:\/\/www.opengis.net\/wfs',
    tis: [{
        ln: 'DescribeFeatureTypeType',
        bti: 'WFS_1_1_0.BaseRequestType',
        ps: [{
            n: 'typeName',
            col: true,
            en: 'TypeName',
            ti: 'QName'
          }, {
            n: 'outputFormat',
            t: 'a'
          }]
      }, {
        ln: 'DeleteElementType',
        ps: [{
            n: 'filter',
            en: {
              lp: 'Filter',
              ns: 'http:\/\/www.opengis.net\/ogc'
            },
            ti: 'Filter_1_1_0.FilterType'
          }, {
            n: 'handle',
            t: 'a'
          }, {
            n: 'typeName',
            ti: 'QName',
            t: 'a'
          }]
      }, {
        ln: 'GetFeatureType',
        bti: 'WFS_1_1_0.BaseRequestType',
        ps: [{
            n: 'query',
            col: true,
            en: 'Query',
            ti: 'WFS_1_1_0.QueryType'
          }, {
            n: 'resultType',
            t: 'a'
          }, {
            n: 'outputFormat',
            t: 'a'
          }, {
            n: 'maxFeatures',
            ti: 'Integer',
            t: 'a'
          }, {
            n: 'traverseXlinkDepth',
            t: 'a'
          }, {
            n: 'traverseXlinkExpiry',
            ti: 'Integer',
            t: 'a'
          }]
      }, {
        ln: 'LockFeatureResponseType',
        ps: [{
            n: 'lockId',
            en: 'LockId'
          }, {
            n: 'featuresLocked',
            en: 'FeaturesLocked',
            ti: 'WFS_1_1_0.FeaturesLockedType'
          }, {
            n: 'featuresNotLocked',
            en: 'FeaturesNotLocked',
            ti: 'WFS_1_1_0.FeaturesNotLockedType'
          }]
      }, {
        ln: 'QueryType',
        ps: [{
            n: 'propertyNameOrXlinkPropertyNameOrFunction',
            col: true,
            etis: [{
                en: 'PropertyName'
              }, {
                en: 'XlinkPropertyName',
                ti: 'WFS_1_1_0.XlinkPropertyName'
              }, {
                en: {
                  lp: 'Function',
                  ns: 'http:\/\/www.opengis.net\/ogc'
                },
                ti: 'Filter_1_1_0.FunctionType'
              }],
            t: 'es'
          }, {
            n: 'filter',
            en: {
              lp: 'Filter',
              ns: 'http:\/\/www.opengis.net\/ogc'
            },
            ti: 'Filter_1_1_0.FilterType'
          }, {
            n: 'sortBy',
            en: {
              lp: 'SortBy',
              ns: 'http:\/\/www.opengis.net\/ogc'
            },
            ti: 'Filter_1_1_0.SortByType'
          }, {
            n: 'handle',
            t: 'a'
          }, {
            n: 'typeName',
            ti: {
              t: 'l',
              ti: 'QName'
            },
            t: 'a'
          }, {
            n: 'featureVersion',
            t: 'a'
          }, {
            n: 'srsName',
            t: 'a'
          }]
      }, {
        ln: 'GetFeatureWithLockType',
        bti: 'WFS_1_1_0.BaseRequestType',
        ps: [{
            n: 'query',
            col: true,
            en: 'Query',
            ti: 'WFS_1_1_0.QueryType'
          }, {
            n: 'expiry',
            ti: 'Integer',
            t: 'a'
          }, {
            n: 'resultType',
            t: 'a'
          }, {
            n: 'outputFormat',
            t: 'a'
          }, {
            n: 'maxFeatures',
            ti: 'Integer',
            t: 'a'
          }, {
            n: 'traverseXlinkDepth',
            t: 'a'
          }, {
            n: 'traverseXlinkExpiry',
            ti: 'Integer',
            t: 'a'
          }]
      }, {
        ln: 'GetGmlObjectType',
        bti: 'WFS_1_1_0.BaseRequestType',
        ps: [{
            n: 'gmlObjectId',
            en: {
              lp: 'GmlObjectId',
              ns: 'http:\/\/www.opengis.net\/ogc'
            },
            ti: 'Filter_1_1_0.GmlObjectIdType'
          }, {
            n: 'outputFormat',
            t: 'a'
          }, {
            n: 'traverseXlinkDepth',
            t: 'a'
          }, {
            n: 'traverseXlinkExpiry',
            ti: 'Integer',
            t: 'a'
          }]
      }, {
        ln: 'LockFeatureType',
        bti: 'WFS_1_1_0.BaseRequestType',
        ps: [{
            n: 'lock',
            col: true,
            en: 'Lock',
            ti: 'WFS_1_1_0.LockType'
          }, {
            n: 'expiry',
            ti: 'Integer',
            t: 'a'
          }, {
            n: 'lockAction',
            t: 'a'
          }]
      }, {
        ln: 'WFSCapabilitiesType',
        bti: 'OWS_1_0_0.CapabilitiesBaseType',
        ps: [{
            n: 'featureTypeList',
            en: 'FeatureTypeList',
            ti: 'WFS_1_1_0.FeatureTypeListType'
          }, {
            n: 'servesGMLObjectTypeList',
            en: 'ServesGMLObjectTypeList',
            ti: 'WFS_1_1_0.GMLObjectTypeListType'
          }, {
            n: 'supportsGMLObjectTypeList',
            en: 'SupportsGMLObjectTypeList',
            ti: 'WFS_1_1_0.GMLObjectTypeListType'
          }, {
            n: 'filterCapabilities',
            en: {
              lp: 'Filter_Capabilities',
              ns: 'http:\/\/www.opengis.net\/ogc'
            },
            ti: 'Filter_1_1_0.FilterCapabilities'
          }]
      }, {
        ln: 'FeatureTypeListType',
        ps: [{
            n: 'operations',
            en: 'Operations',
            ti: 'WFS_1_1_0.OperationsType'
          }, {
            n: 'featureType',
            col: true,
            en: 'FeatureType',
            ti: 'WFS_1_1_0.FeatureTypeType'
          }]
      }, {
        ln: 'XlinkPropertyName',
        ps: [{
            n: 'value',
            t: 'v'
          }, {
            n: 'traverseXlinkDepth',
            t: 'a'
          }, {
            n: 'traverseXlinkExpiry',
            ti: 'Integer',
            t: 'a'
          }]
      }, {
        ln: 'InsertElementType',
        ps: [{
            n: 'feature',
            col: true,
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: '_Feature',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.AbstractFeatureType',
            t: 'er'
          }, {
            n: 'idgen',
            t: 'a'
          }, {
            n: 'handle',
            t: 'a'
          }, {
            n: 'inputFormat',
            t: 'a'
          }, {
            n: 'srsName',
            t: 'a'
          }]
      }, {
        ln: 'UpdateElementType',
        ps: [{
            n: 'property',
            col: true,
            en: 'Property',
            ti: 'WFS_1_1_0.PropertyType'
          }, {
            n: 'filter',
            en: {
              lp: 'Filter',
              ns: 'http:\/\/www.opengis.net\/ogc'
            },
            ti: 'Filter_1_1_0.FilterType'
          }, {
            n: 'handle',
            t: 'a'
          }, {
            n: 'typeName',
            ti: 'QName',
            t: 'a'
          }, {
            n: 'inputFormat',
            t: 'a'
          }, {
            n: 'srsName',
            t: 'a'
          }]
      }, {
        ln: 'NativeType',
        ps: [{
            n: 'vendorId',
            t: 'a'
          }, {
            n: 'safeToIgnore',
            ti: 'Boolean',
            t: 'a'
          }]
      }, {
        ln: 'TransactionResponseType',
        ps: [{
            n: 'transactionSummary',
            en: 'TransactionSummary',
            ti: 'WFS_1_1_0.TransactionSummaryType'
          }, {
            n: 'transactionResults',
            en: 'TransactionResults',
            ti: 'WFS_1_1_0.TransactionResultsType'
          }, {
            n: 'insertResults',
            en: 'InsertResults',
            ti: 'WFS_1_1_0.InsertResultsType'
          }, {
            n: 'version',
            t: 'a'
          }]
      }, {
        ln: 'TransactionType',
        bti: 'WFS_1_1_0.BaseRequestType',
        ps: [{
            n: 'lockId',
            en: 'LockId'
          }, {
            n: 'insertOrUpdateOrDelete',
            col: true,
            etis: [{
                en: 'Insert',
                ti: 'WFS_1_1_0.InsertElementType'
              }, {
                en: 'Update',
                ti: 'WFS_1_1_0.UpdateElementType'
              }, {
                en: 'Delete',
                ti: 'WFS_1_1_0.DeleteElementType'
              }, {
                en: 'Native',
                ti: 'WFS_1_1_0.NativeType'
              }],
            t: 'es'
          }, {
            n: 'releaseAction',
            t: 'a'
          }]
      }, {
        ln: 'FeatureCollectionType',
        bti: 'GML_3_1_1.AbstractFeatureCollectionType',
        ps: [{
            n: 'lockId',
            t: 'a'
          }, {
            n: 'timeStamp',
            ti: 'Calendar',
            t: 'a'
          }, {
            n: 'numberOfFeatures',
            ti: 'Integer',
            t: 'a'
          }]
      }, {
        ln: 'GetCapabilitiesType',
        bti: 'OWS_1_0_0.GetCapabilitiesType',
        ps: [{
            n: 'service',
            t: 'a'
          }]
      }, {
        ln: 'GMLObjectTypeListType',
        ps: [{
            n: 'gmlObjectType',
            col: true,
            en: 'GMLObjectType',
            ti: 'WFS_1_1_0.GMLObjectTypeType'
          }]
      }, {
        ln: 'PropertyType',
        ps: [{
            n: 'name',
            en: 'Name',
            ti: 'QName'
          }, {
            n: 'value',
            en: 'Value',
            ti: 'AnyType'
          }]
      }, {
        ln: 'ActionType',
        ps: [{
            n: 'message',
            en: 'Message'
          }, {
            n: 'locator',
            t: 'a'
          }, {
            n: 'code',
            t: 'a'
          }]
      }, {
        ln: 'FeaturesNotLockedType',
        ps: [{
            n: 'featureId',
            col: true,
            en: {
              lp: 'FeatureId',
              ns: 'http:\/\/www.opengis.net\/ogc'
            },
            ti: 'Filter_1_1_0.FeatureIdType'
          }]
      }, {
        ln: 'FeaturesLockedType',
        ps: [{
            n: 'featureId',
            col: true,
            en: {
              lp: 'FeatureId',
              ns: 'http:\/\/www.opengis.net\/ogc'
            },
            ti: 'Filter_1_1_0.FeatureIdType'
          }]
      }, {
        ln: 'TransactionSummaryType',
        ps: [{
            n: 'totalInserted',
            ti: 'Integer'
          }, {
            n: 'totalUpdated',
            ti: 'Integer'
          }, {
            n: 'totalDeleted',
            ti: 'Integer'
          }]
      }, {
        ln: 'LockType',
        ps: [{
            n: 'filter',
            en: {
              lp: 'Filter',
              ns: 'http:\/\/www.opengis.net\/ogc'
            },
            ti: 'Filter_1_1_0.FilterType'
          }, {
            n: 'handle',
            t: 'a'
          }, {
            n: 'typeName',
            ti: 'QName',
            t: 'a'
          }]
      }, {
        ln: 'OperationsType',
        ps: [{
            n: 'operation',
            col: true,
            en: 'Operation'
          }]
      }, {
        ln: 'GMLObjectTypeType',
        ps: [{
            n: 'name',
            en: 'Name',
            ti: 'QName'
          }, {
            n: 'title',
            en: 'Title'
          }, {
            n: '_abstract',
            en: 'Abstract'
          }, {
            n: 'keywords',
            col: true,
            en: {
              lp: 'Keywords',
              ns: 'http:\/\/www.opengis.net\/ows'
            },
            ti: 'OWS_1_0_0.KeywordsType'
          }, {
            n: 'outputFormats',
            en: 'OutputFormats',
            ti: 'WFS_1_1_0.OutputFormatListType'
          }]
      }, {
        ln: 'InsertResultsType',
        ps: [{
            n: 'feature',
            col: true,
            en: 'Feature',
            ti: 'WFS_1_1_0.InsertedFeatureType'
          }]
      }, {
        ln: 'MetadataURLType',
        ps: [{
            n: 'value',
            t: 'v'
          }, {
            n: 'type',
            t: 'a'
          }, {
            n: 'format',
            t: 'a'
          }]
      }, {
        ln: 'FeatureTypeType',
        ps: [{
            n: 'name',
            en: 'Name',
            ti: 'QName'
          }, {
            n: 'title',
            en: 'Title'
          }, {
            n: '_abstract',
            en: 'Abstract'
          }, {
            n: 'keywords',
            col: true,
            en: {
              lp: 'Keywords',
              ns: 'http:\/\/www.opengis.net\/ows'
            },
            ti: 'OWS_1_0_0.KeywordsType'
          }, {
            n: 'defaultSRS',
            en: 'DefaultSRS'
          }, {
            n: 'otherSRS',
            col: true,
            en: 'OtherSRS'
          }, {
            n: 'noSRS',
            en: 'NoSRS',
            ti: 'WFS_1_1_0.FeatureTypeType.NoSRS'
          }, {
            n: 'operations',
            en: 'Operations',
            ti: 'WFS_1_1_0.OperationsType'
          }, {
            n: 'outputFormats',
            en: 'OutputFormats',
            ti: 'WFS_1_1_0.OutputFormatListType'
          }, {
            n: 'wgs84BoundingBox',
            col: true,
            en: {
              lp: 'WGS84BoundingBox',
              ns: 'http:\/\/www.opengis.net\/ows'
            },
            ti: 'OWS_1_0_0.WGS84BoundingBoxType'
          }, {
            n: 'metadataURL',
            col: true,
            en: 'MetadataURL',
            ti: 'WFS_1_1_0.MetadataURLType'
          }]
      }, {
        ln: 'InsertedFeatureType',
        ps: [{
            n: 'featureId',
            col: true,
            en: {
              lp: 'FeatureId',
              ns: 'http:\/\/www.opengis.net\/ogc'
            },
            ti: 'Filter_1_1_0.FeatureIdType'
          }, {
            n: 'handle',
            t: 'a'
          }]
      }, {
        ln: 'OutputFormatListType',
        ps: [{
            n: 'format',
            col: true,
            en: 'Format'
          }]
      }, {
        ln: 'BaseRequestType',
        ps: [{
            n: 'service',
            t: 'a'
          }, {
            n: 'version',
            t: 'a'
          }, {
            n: 'handle',
            t: 'a'
          }]
      }, {
        ln: 'TransactionResultsType',
        ps: [{
            n: 'action',
            col: true,
            en: 'Action',
            ti: 'WFS_1_1_0.ActionType'
          }]
      }, {
        ln: 'FeatureTypeType.NoSRS'
      }, {
        t: 'enum',
        ln: 'IdentifierGenerationOptionType',
        vs: ['UseExisting', 'ReplaceDuplicate', 'GenerateNew']
      }, {
        t: 'enum',
        ln: 'AllSomeType',
        vs: ['ALL', 'SOME']
      }, {
        t: 'enum',
        ln: 'ResultTypeType',
        vs: ['results', 'hits']
      }, {
        t: 'enum',
        ln: 'OperationType',
        vs: ['Insert', 'Update', 'Delete', 'Query', 'Lock', 'GetGmlObject']
      }],
    eis: [{
        en: 'XlinkPropertyName',
        ti: 'WFS_1_1_0.XlinkPropertyName'
      }, {
        en: 'GetGmlObject',
        ti: 'WFS_1_1_0.GetGmlObjectType'
      }, {
        en: 'GetFeatureWithLock',
        ti: 'WFS_1_1_0.GetFeatureWithLockType'
      }, {
        en: 'PropertyName'
      }, {
        en: 'GetFeature',
        ti: 'WFS_1_1_0.GetFeatureType'
      }, {
        en: 'LockFeatureResponse',
        ti: 'WFS_1_1_0.LockFeatureResponseType'
      }, {
        en: 'WFS_Capabilities',
        ti: 'WFS_1_1_0.WFSCapabilitiesType'
      }, {
        en: 'FeatureCollection',
        ti: 'WFS_1_1_0.FeatureCollectionType',
        sh: {
          lp: '_FeatureCollection',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'Transaction',
        ti: 'WFS_1_1_0.TransactionType'
      }, {
        en: 'LockId'
      }, {
        en: 'ServesGMLObjectTypeList',
        ti: 'WFS_1_1_0.GMLObjectTypeListType'
      }, {
        en: 'LockFeature',
        ti: 'WFS_1_1_0.LockFeatureType'
      }, {
        en: 'Query',
        ti: 'WFS_1_1_0.QueryType'
      }, {
        en: 'DescribeFeatureType',
        ti: 'WFS_1_1_0.DescribeFeatureTypeType'
      }, {
        en: 'Delete',
        ti: 'WFS_1_1_0.DeleteElementType'
      }, {
        en: 'Insert',
        ti: 'WFS_1_1_0.InsertElementType'
      }, {
        en: 'Update',
        ti: 'WFS_1_1_0.UpdateElementType'
      }, {
        en: 'FeatureTypeList',
        ti: 'WFS_1_1_0.FeatureTypeListType'
      }, {
        en: 'GetCapabilities',
        ti: 'WFS_1_1_0.GetCapabilitiesType'
      }, {
        en: 'TransactionResponse',
        ti: 'WFS_1_1_0.TransactionResponseType'
      }, {
        en: 'Native',
        ti: 'WFS_1_1_0.NativeType'
      }, {
        en: 'SupportsGMLObjectTypeList',
        ti: 'WFS_1_1_0.GMLObjectTypeListType'
      }, {
        en: 'Property',
        ti: 'WFS_1_1_0.PropertyType'
      }]
  };
  return {
    WFS_1_1_0: WFS_1_1_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], WFS_1_1_0_Module_Factory);
}
else {
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.WFS_1_1_0 = WFS_1_1_0_Module_Factory().WFS_1_1_0;
  }
  else {
    var WFS_1_1_0 = WFS_1_1_0_Module_Factory().WFS_1_1_0;
  }
}