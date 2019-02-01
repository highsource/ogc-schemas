var WFS_1_0_0_Module_Factory = function () {
  var WFS_1_0_0 = {
    n: 'WFS_1_0_0',
    dens: 'http:\/\/www.opengis.net\/wfs',
    deps: ['Filter_1_0_0', 'GML_2_1_2'],
    tis: [{
        ln: 'WFSLockFeatureResponseType',
        tn: 'WFS_LockFeatureResponseType',
        ps: [{
            n: 'lockId',
            rq: true,
            en: 'LockId'
          }, {
            n: 'featuresLocked',
            en: 'FeaturesLocked',
            ti: '.FeaturesLockedType'
          }, {
            n: 'featuresNotLocked',
            en: 'FeaturesNotLocked',
            ti: '.FeaturesNotLockedType'
          }]
      }, {
        ln: 'GetType',
        ps: [{
            n: 'onlineResource',
            rq: true,
            an: {
              lp: 'onlineResource'
            },
            t: 'a'
          }]
      }, {
        ln: 'CapabilityType',
        ps: [{
            n: 'request',
            rq: true,
            en: 'Request',
            ti: '.RequestType'
          }, {
            n: 'vendorSpecificCapabilities',
            en: 'VendorSpecificCapabilities'
          }]
      }, {
        ln: 'GetCapabilitiesType',
        ps: [{
            n: 'version',
            an: {
              lp: 'version'
            },
            t: 'a'
          }, {
            n: 'service',
            rq: true,
            an: {
              lp: 'service'
            },
            t: 'a'
          }]
      }, {
        ln: 'ServiceType',
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
            n: 'keywords',
            en: 'Keywords'
          }, {
            n: 'onlineResource',
            rq: true,
            en: 'OnlineResource',
            ti: 'AnyType'
          }, {
            n: 'fees',
            en: 'Fees'
          }, {
            n: 'accessConstraints',
            en: 'AccessConstraints'
          }]
      }, {
        ln: 'LockFeatureType',
        ps: [{
            n: 'lock',
            rq: true,
            col: true,
            en: 'Lock',
            ti: '.LockType'
          }, {
            n: 'version',
            rq: true,
            an: {
              lp: 'version'
            },
            t: 'a'
          }, {
            n: 'service',
            rq: true,
            an: {
              lp: 'service'
            },
            t: 'a'
          }, {
            n: 'expiry',
            ti: 'PositiveInteger',
            an: {
              lp: 'expiry'
            },
            t: 'a'
          }, {
            n: 'lockAction',
            an: {
              lp: 'lockAction'
            },
            t: 'a'
          }]
      }, {
        ln: 'FeaturesLockedType',
        ps: [{
            n: 'featureId',
            rq: true,
            col: true,
            en: {
              lp: 'FeatureId',
              ns: 'http:\/\/www.opengis.net\/ogc'
            },
            ti: 'Filter_1_0_0.FeatureIdType'
          }]
      }, {
        ln: 'RequestType',
        ps: [{
            n: 'getCapabilitiesOrDescribeFeatureTypeOrTransaction',
            rq: true,
            col: true,
            mx: false,
            dom: false,
            etis: [{
                en: 'Transaction',
                ti: '.CapabilitiesTransactionType'
              }, {
                en: 'GetFeature',
                ti: '.CapabilitiesGetFeatureTypeType'
              }, {
                en: 'LockFeature',
                ti: '.CapabilitiesLockFeatureTypeType'
              }, {
                en: 'GetFeatureWithLock',
                ti: '.CapabilitiesGetFeatureTypeType'
              }, {
                en: 'GetCapabilities',
                ti: '.CapabilitiesGetCapabilitiesType'
              }, {
                en: 'DescribeFeatureType',
                ti: '.CapabilitiesDescribeFeatureTypeType'
              }],
            t: 'ers'
          }]
      }, {
        ln: 'FeatureTypeType',
        ps: [{
            n: 'name',
            rq: true,
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
            en: 'Keywords'
          }, {
            n: 'srs',
            rq: true,
            en: 'SRS'
          }, {
            n: 'operations',
            en: 'Operations',
            ti: '.OperationsType'
          }, {
            n: 'latLongBoundingBox',
            mno: 0,
            col: true,
            en: 'LatLongBoundingBox',
            ti: '.LatLongBoundingBoxType'
          }, {
            n: 'metadataURL',
            mno: 0,
            col: true,
            en: 'MetadataURL',
            ti: '.MetadataURLType'
          }]
      }, {
        ln: 'StatusType',
        ps: [{
            n: 'success',
            rq: true,
            en: 'SUCCESS',
            ti: '.EmptyType'
          }, {
            n: 'failed',
            rq: true,
            en: 'FAILED',
            ti: '.EmptyType'
          }, {
            n: 'partial',
            rq: true,
            en: 'PARTIAL',
            ti: '.EmptyType'
          }]
      }, {
        ln: 'GetFeatureType',
        ps: [{
            n: 'query',
            rq: true,
            col: true,
            en: 'Query',
            ti: '.QueryType'
          }, {
            n: 'version',
            rq: true,
            an: {
              lp: 'version'
            },
            t: 'a'
          }, {
            n: 'service',
            rq: true,
            an: {
              lp: 'service'
            },
            t: 'a'
          }, {
            n: 'handle',
            an: {
              lp: 'handle'
            },
            t: 'a'
          }, {
            n: 'outputFormat',
            an: {
              lp: 'outputFormat'
            },
            t: 'a'
          }, {
            n: 'maxFeatures',
            ti: 'PositiveInteger',
            an: {
              lp: 'maxFeatures'
            },
            t: 'a'
          }]
      }, {
        ln: 'MetadataURLType',
        ps: [{
            n: 'value',
            t: 'v'
          }, {
            n: 'type',
            rq: true,
            an: {
              lp: 'type'
            },
            t: 'a'
          }, {
            n: 'format',
            rq: true,
            an: {
              lp: 'format'
            },
            t: 'a'
          }]
      }, {
        ln: 'HTTPType',
        ps: [{
            n: 'getOrPost',
            rq: true,
            col: true,
            etis: [{
                en: 'Get',
                ti: '.GetType'
              }, {
                en: 'Post',
                ti: '.PostType'
              }],
            t: 'es'
          }]
      }, {
        ln: 'PropertyType',
        ps: [{
            n: 'name',
            rq: true,
            en: 'Name'
          }, {
            n: 'value',
            en: 'Value',
            ti: 'AnyType'
          }]
      }, {
        ln: 'UpdateElementType',
        ps: [{
            n: 'property',
            rq: true,
            col: true,
            en: 'Property',
            ti: '.PropertyType'
          }, {
            n: 'filter',
            en: {
              lp: 'Filter',
              ns: 'http:\/\/www.opengis.net\/ogc'
            },
            ti: 'Filter_1_0_0.FilterType'
          }, {
            n: 'handle',
            an: {
              lp: 'handle'
            },
            t: 'a'
          }, {
            n: 'typeName',
            rq: true,
            ti: 'QName',
            an: {
              lp: 'typeName'
            },
            t: 'a'
          }]
      }, {
        ln: 'FeaturesNotLockedType',
        ps: [{
            n: 'featureId',
            rq: true,
            col: true,
            en: {
              lp: 'FeatureId',
              ns: 'http:\/\/www.opengis.net\/ogc'
            },
            ti: 'Filter_1_0_0.FeatureIdType'
          }]
      }, {
        ln: 'LatLongBoundingBoxType',
        ps: [{
            n: 'minx',
            rq: true,
            an: {
              lp: 'minx'
            },
            t: 'a'
          }, {
            n: 'miny',
            rq: true,
            an: {
              lp: 'miny'
            },
            t: 'a'
          }, {
            n: 'maxx',
            rq: true,
            an: {
              lp: 'maxx'
            },
            t: 'a'
          }, {
            n: 'maxy',
            rq: true,
            an: {
              lp: 'maxy'
            },
            t: 'a'
          }]
      }, {
        ln: 'ResultFormatType',
        ps: [{
            n: 'gml2',
            rq: true,
            col: true,
            en: 'GML2',
            ti: '.EmptyType'
          }]
      }, {
        ln: 'QueryType',
        ps: [{
            n: 'propertyName',
            mno: 0,
            col: true,
            en: {
              lp: 'PropertyName',
              ns: 'http:\/\/www.opengis.net\/ogc'
            },
            ti: 'Filter_1_0_0.PropertyNameType'
          }, {
            n: 'filter',
            en: {
              lp: 'Filter',
              ns: 'http:\/\/www.opengis.net\/ogc'
            },
            ti: 'Filter_1_0_0.FilterType'
          }, {
            n: 'handle',
            an: {
              lp: 'handle'
            },
            t: 'a'
          }, {
            n: 'typeName',
            rq: true,
            ti: 'QName',
            an: {
              lp: 'typeName'
            },
            t: 'a'
          }, {
            n: 'featureVersion',
            an: {
              lp: 'featureVersion'
            },
            t: 'a'
          }]
      }, {
        ln: 'InsertElementType',
        ps: [{
            n: 'feature',
            rq: true,
            col: true,
            mx: false,
            dom: false,
            en: {
              lp: '_Feature',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_2_1_2.AbstractFeatureType',
            t: 'er'
          }, {
            n: 'handle',
            an: {
              lp: 'handle'
            },
            t: 'a'
          }]
      }, {
        ln: 'InsertResultType',
        ps: [{
            n: 'featureId',
            rq: true,
            col: true,
            en: {
              lp: 'FeatureId',
              ns: 'http:\/\/www.opengis.net\/ogc'
            },
            ti: 'Filter_1_0_0.FeatureIdType'
          }, {
            n: 'handle',
            an: {
              lp: 'handle'
            },
            t: 'a'
          }]
      }, {
        ln: 'DeleteElementType',
        ps: [{
            n: 'filter',
            rq: true,
            en: {
              lp: 'Filter',
              ns: 'http:\/\/www.opengis.net\/ogc'
            },
            ti: 'Filter_1_0_0.FilterType'
          }, {
            n: 'handle',
            an: {
              lp: 'handle'
            },
            t: 'a'
          }, {
            n: 'typeName',
            rq: true,
            ti: 'QName',
            an: {
              lp: 'typeName'
            },
            t: 'a'
          }]
      }, {
        ln: 'FeatureCollectionType',
        bti: 'GML_2_1_2.AbstractFeatureCollectionType',
        ps: [{
            n: 'lockId',
            an: {
              lp: 'lockId'
            },
            t: 'a'
          }]
      }, {
        ln: 'OperationsType',
        ps: [{
            n: 'insertOrUpdateOrDelete',
            rq: true,
            col: true,
            mx: false,
            dom: false,
            etis: [{
                en: 'Query',
                ti: '.EmptyType'
              }, {
                en: 'Insert',
                ti: '.EmptyType'
              }, {
                en: 'Delete',
                ti: '.EmptyType'
              }, {
                en: 'Update',
                ti: '.EmptyType'
              }, {
                en: 'Lock',
                ti: '.EmptyType'
              }],
            t: 'ers'
          }]
      }, {
        ln: 'EmptyType'
      }, {
        ln: 'CapabilitiesTransactionType',
        tn: 'Capabilities_TransactionType',
        ps: [{
            n: 'dcpType',
            rq: true,
            col: true,
            en: 'DCPType',
            ti: '.DCPTypeType'
          }]
      }, {
        ln: 'GetFeatureWithLockType',
        ps: [{
            n: 'query',
            rq: true,
            col: true,
            en: 'Query',
            ti: '.QueryType'
          }, {
            n: 'version',
            rq: true,
            an: {
              lp: 'version'
            },
            t: 'a'
          }, {
            n: 'service',
            rq: true,
            an: {
              lp: 'service'
            },
            t: 'a'
          }, {
            n: 'handle',
            an: {
              lp: 'handle'
            },
            t: 'a'
          }, {
            n: 'expiry',
            ti: 'PositiveInteger',
            an: {
              lp: 'expiry'
            },
            t: 'a'
          }, {
            n: 'outputFormat',
            an: {
              lp: 'outputFormat'
            },
            t: 'a'
          }, {
            n: 'maxFeatures',
            ti: 'PositiveInteger',
            an: {
              lp: 'maxFeatures'
            },
            t: 'a'
          }]
      }, {
        ln: 'CapabilitiesLockFeatureTypeType',
        tn: 'Capabilities_LockFeatureTypeType',
        ps: [{
            n: 'dcpType',
            rq: true,
            col: true,
            en: 'DCPType',
            ti: '.DCPTypeType'
          }]
      }, {
        ln: 'LockType',
        ps: [{
            n: 'filter',
            en: {
              lp: 'Filter',
              ns: 'http:\/\/www.opengis.net\/ogc'
            },
            ti: 'Filter_1_0_0.FilterType'
          }, {
            n: 'handle',
            an: {
              lp: 'handle'
            },
            t: 'a'
          }, {
            n: 'typeName',
            rq: true,
            ti: 'QName',
            an: {
              lp: 'typeName'
            },
            t: 'a'
          }]
      }, {
        ln: 'WFSCapabilitiesType',
        tn: 'WFS_CapabilitiesType',
        ps: [{
            n: 'service',
            rq: true,
            en: 'Service',
            ti: '.ServiceType'
          }, {
            n: 'capability',
            rq: true,
            en: 'Capability',
            ti: '.CapabilityType'
          }, {
            n: 'featureTypeList',
            rq: true,
            en: 'FeatureTypeList',
            ti: '.FeatureTypeListType'
          }, {
            n: 'filterCapabilities',
            rq: true,
            en: {
              lp: 'Filter_Capabilities',
              ns: 'http:\/\/www.opengis.net\/ogc'
            },
            ti: 'Filter_1_0_0.FilterCapabilities'
          }, {
            n: 'version',
            an: {
              lp: 'version'
            },
            t: 'a'
          }, {
            n: 'updateSequence',
            ti: 'NonNegativeInteger',
            an: {
              lp: 'updateSequence'
            },
            t: 'a'
          }]
      }, {
        ln: 'DCPTypeType',
        ps: [{
            n: 'http',
            rq: true,
            en: 'HTTP',
            ti: '.HTTPType'
          }]
      }, {
        ln: 'FeatureTypeListType',
        ps: [{
            n: 'operations',
            en: 'Operations',
            ti: '.OperationsType'
          }, {
            n: 'featureType',
            rq: true,
            col: true,
            en: 'FeatureType',
            ti: '.FeatureTypeType'
          }]
      }, {
        ln: 'NativeType',
        ps: [{
            n: 'vendorId',
            rq: true,
            an: {
              lp: 'vendorId'
            },
            t: 'a'
          }, {
            n: 'safeToIgnore',
            rq: true,
            ti: 'Boolean',
            an: {
              lp: 'safeToIgnore'
            },
            t: 'a'
          }]
      }, {
        ln: 'SchemaDescriptionLanguageType',
        ps: [{
            n: 'xmlschema',
            rq: true,
            col: true,
            en: 'XMLSCHEMA',
            ti: '.EmptyType'
          }]
      }, {
        ln: 'PostType',
        ps: [{
            n: 'onlineResource',
            rq: true,
            an: {
              lp: 'onlineResource'
            },
            t: 'a'
          }]
      }, {
        ln: 'CapabilitiesGetFeatureTypeType',
        tn: 'Capabilities_GetFeatureTypeType',
        ps: [{
            n: 'resultFormat',
            rq: true,
            en: 'ResultFormat',
            ti: '.ResultFormatType'
          }, {
            n: 'dcpType',
            rq: true,
            col: true,
            en: 'DCPType',
            ti: '.DCPTypeType'
          }]
      }, {
        ln: 'TransactionType',
        ps: [{
            n: 'lockId',
            en: 'LockId'
          }, {
            n: 'insertOrUpdateOrDelete',
            mno: 0,
            col: true,
            etis: [{
                en: 'Insert',
                ti: '.InsertElementType'
              }, {
                en: 'Update',
                ti: '.UpdateElementType'
              }, {
                en: 'Delete',
                ti: '.DeleteElementType'
              }, {
                en: 'Native',
                ti: '.NativeType'
              }],
            t: 'es'
          }, {
            n: 'version',
            rq: true,
            an: {
              lp: 'version'
            },
            t: 'a'
          }, {
            n: 'service',
            rq: true,
            an: {
              lp: 'service'
            },
            t: 'a'
          }, {
            n: 'handle',
            an: {
              lp: 'handle'
            },
            t: 'a'
          }, {
            n: 'releaseAction',
            an: {
              lp: 'releaseAction'
            },
            t: 'a'
          }]
      }, {
        ln: 'CapabilitiesGetCapabilitiesType',
        tn: 'Capabilities_GetCapabilitiesType',
        ps: [{
            n: 'dcpType',
            rq: true,
            col: true,
            en: 'DCPType',
            ti: '.DCPTypeType'
          }]
      }, {
        ln: 'CapabilitiesDescribeFeatureTypeType',
        tn: 'Capabilities_DescribeFeatureTypeType',
        ps: [{
            n: 'schemaDescriptionLanguage',
            rq: true,
            en: 'SchemaDescriptionLanguage',
            ti: '.SchemaDescriptionLanguageType'
          }, {
            n: 'dcpType',
            rq: true,
            col: true,
            en: 'DCPType',
            ti: '.DCPTypeType'
          }]
      }, {
        ln: 'DescribeFeatureTypeType',
        ps: [{
            n: 'typeName',
            mno: 0,
            col: true,
            en: 'TypeName',
            ti: 'QName'
          }, {
            n: 'version',
            rq: true,
            an: {
              lp: 'version'
            },
            t: 'a'
          }, {
            n: 'service',
            rq: true,
            an: {
              lp: 'service'
            },
            t: 'a'
          }, {
            n: 'outputFormat',
            an: {
              lp: 'outputFormat'
            },
            t: 'a'
          }]
      }, {
        ln: 'TransactionResultType',
        ps: [{
            n: 'status',
            rq: true,
            en: 'Status',
            ti: '.StatusType'
          }, {
            n: 'locator',
            en: 'Locator'
          }, {
            n: 'message',
            en: 'Message'
          }, {
            n: 'handle',
            an: {
              lp: 'handle'
            },
            t: 'a'
          }]
      }, {
        ln: 'WFSTransactionResponseType',
        tn: 'WFS_TransactionResponseType',
        ps: [{
            n: 'insertResult',
            mno: 0,
            col: true,
            en: 'InsertResult',
            ti: '.InsertResultType'
          }, {
            n: 'transactionResult',
            rq: true,
            en: 'TransactionResult',
            ti: '.TransactionResultType'
          }, {
            n: 'version',
            rq: true,
            an: {
              lp: 'version'
            },
            t: 'a'
          }]
      }, {
        t: 'enum',
        ln: 'AllSomeType',
        vs: ['ALL', 'SOME']
      }],
    eis: [{
        en: 'GetFeature',
        ti: '.GetFeatureType'
      }, {
        en: 'Insert',
        ti: '.InsertElementType'
      }, {
        en: 'GetFeatureWithLock',
        ti: '.CapabilitiesGetFeatureTypeType',
        sc: '.RequestType'
      }, {
        en: 'DescribeFeatureType',
        ti: '.DescribeFeatureTypeType'
      }, {
        en: 'PARTIAL',
        ti: '.EmptyType'
      }, {
        en: 'Delete',
        ti: '.DeleteElementType'
      }, {
        en: 'LockFeature',
        ti: '.CapabilitiesLockFeatureTypeType',
        sc: '.RequestType'
      }, {
        en: 'Fees'
      }, {
        en: 'GetCapabilities',
        ti: '.GetCapabilitiesType'
      }, {
        en: 'LockFeature',
        ti: '.LockFeatureType'
      }, {
        en: 'GML2',
        ti: '.EmptyType'
      }, {
        en: 'Update',
        ti: '.UpdateElementType'
      }, {
        en: 'FAILED',
        ti: '.EmptyType'
      }, {
        en: 'WFS_Capabilities',
        ti: '.WFSCapabilitiesType'
      }, {
        en: 'Update',
        ti: '.EmptyType',
        sc: '.OperationsType'
      }, {
        en: 'LockId'
      }, {
        en: 'DescribeFeatureType',
        ti: '.CapabilitiesDescribeFeatureTypeType',
        sc: '.RequestType'
      }, {
        en: 'Query',
        ti: '.QueryType'
      }, {
        en: 'XMLSCHEMA',
        ti: '.EmptyType'
      }, {
        en: 'SRS'
      }, {
        en: 'Lock',
        ti: '.EmptyType',
        sc: '.OperationsType'
      }, {
        en: 'GetFeatureWithLock',
        ti: '.GetFeatureWithLockType'
      }, {
        en: 'Abstract'
      }, {
        en: 'Keywords'
      }, {
        en: 'Title'
      }, {
        en: 'Transaction',
        ti: '.TransactionType'
      }, {
        en: 'WFS_LockFeatureResponse',
        ti: '.WFSLockFeatureResponseType'
      }, {
        en: 'GetCapabilities',
        ti: '.CapabilitiesGetCapabilitiesType',
        sc: '.RequestType'
      }, {
        en: 'AccessConstraints'
      }, {
        en: 'GetFeature',
        ti: '.CapabilitiesGetFeatureTypeType',
        sc: '.RequestType'
      }, {
        en: 'WFS_TransactionResponse',
        ti: '.WFSTransactionResponseType'
      }, {
        en: 'VendorSpecificCapabilities'
      }, {
        en: 'Delete',
        ti: '.EmptyType',
        sc: '.OperationsType'
      }, {
        en: 'Query',
        ti: '.EmptyType',
        sc: '.OperationsType'
      }, {
        en: 'Property',
        ti: '.PropertyType'
      }, {
        en: 'Native',
        ti: '.NativeType'
      }, {
        en: 'OnlineResource',
        ti: 'AnyType'
      }, {
        en: 'SUCCESS',
        ti: '.EmptyType'
      }, {
        en: 'Insert',
        ti: '.EmptyType',
        sc: '.OperationsType'
      }, {
        en: 'Transaction',
        ti: '.CapabilitiesTransactionType',
        sc: '.RequestType'
      }, {
        en: 'FeatureCollection',
        ti: '.FeatureCollectionType',
        sh: {
          lp: '_FeatureCollection',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }]
  };
  return {
    WFS_1_0_0: WFS_1_0_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], WFS_1_0_0_Module_Factory);
}
else {
  var WFS_1_0_0_Module = WFS_1_0_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.WFS_1_0_0 = WFS_1_0_0_Module.WFS_1_0_0;
  }
  else {
    var WFS_1_0_0 = WFS_1_0_0_Module.WFS_1_0_0;
  }
}