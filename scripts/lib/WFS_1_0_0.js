var WFS_1_0_0_Module_Factory = function () {
  var WFS_1_0_0 = {
    n: 'WFS_1_0_0',
    dens: 'http:\/\/www.opengis.net\/wfs',
    tis: [{
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
            ti: 'QName',
            an: {
              lp: 'typeName'
            },
            t: 'a'
          }]
      }, {
        ln: 'QueryType',
        ps: [{
            n: 'propertyName',
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
        ln: 'LockFeatureType',
        ps: [{
            n: 'lock',
            col: true,
            en: 'Lock',
            ti: '.LockType'
          }, {
            n: 'version',
            an: {
              lp: 'version'
            },
            t: 'a'
          }, {
            n: 'service',
            an: {
              lp: 'service'
            },
            t: 'a'
          }, {
            n: 'expiry',
            ti: 'Integer',
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
            col: true,
            en: {
              lp: 'FeatureId',
              ns: 'http:\/\/www.opengis.net\/ogc'
            },
            ti: 'Filter_1_0_0.FeatureIdType'
          }]
      }, {
        ln: 'InsertResultType',
        ps: [{
            n: 'featureId',
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
        ln: 'StatusType',
        ps: [{
            n: 'success',
            en: 'SUCCESS',
            ti: '.EmptyType'
          }, {
            n: 'failed',
            en: 'FAILED',
            ti: '.EmptyType'
          }, {
            n: 'partial',
            en: 'PARTIAL',
            ti: '.EmptyType'
          }]
      }, {
        ln: 'GetFeatureWithLockType',
        ps: [{
            n: 'query',
            col: true,
            en: 'Query',
            ti: '.QueryType'
          }, {
            n: 'version',
            an: {
              lp: 'version'
            },
            t: 'a'
          }, {
            n: 'service',
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
            ti: 'Integer',
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
            ti: 'Integer',
            an: {
              lp: 'maxFeatures'
            },
            t: 'a'
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
            an: {
              lp: 'service'
            },
            t: 'a'
          }]
      }, {
        ln: 'UpdateElementType',
        ps: [{
            n: 'property',
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
            ti: 'QName',
            an: {
              lp: 'typeName'
            },
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
            ti: 'Filter_1_0_0.FilterType'
          }, {
            n: 'handle',
            an: {
              lp: 'handle'
            },
            t: 'a'
          }, {
            n: 'typeName',
            ti: 'QName',
            an: {
              lp: 'typeName'
            },
            t: 'a'
          }]
      }, {
        ln: 'TransactionType',
        ps: [{
            n: 'lockId',
            en: 'LockId'
          }, {
            n: 'insertOrUpdateOrDelete',
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
            an: {
              lp: 'version'
            },
            t: 'a'
          }, {
            n: 'service',
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
        ln: 'DescribeFeatureTypeType',
        ps: [{
            n: 'typeName',
            col: true,
            en: 'TypeName',
            ti: 'QName'
          }, {
            n: 'version',
            an: {
              lp: 'version'
            },
            t: 'a'
          }, {
            n: 'service',
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
        ln: 'GetFeatureType',
        ps: [{
            n: 'query',
            col: true,
            en: 'Query',
            ti: '.QueryType'
          }, {
            n: 'version',
            an: {
              lp: 'version'
            },
            t: 'a'
          }, {
            n: 'service',
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
            ti: 'Integer',
            an: {
              lp: 'maxFeatures'
            },
            t: 'a'
          }]
      }, {
        ln: 'EmptyType'
      }, {
        ln: 'NativeType',
        ps: [{
            n: 'vendorId',
            an: {
              lp: 'vendorId'
            },
            t: 'a'
          }, {
            n: 'safeToIgnore',
            ti: 'Boolean',
            an: {
              lp: 'safeToIgnore'
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
        ln: 'WFSLockFeatureResponseType',
        ps: [{
            n: 'lockId',
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
        ln: 'WFSTransactionResponseType',
        ps: [{
            n: 'insertResult',
            col: true,
            en: 'InsertResult',
            ti: '.InsertResultType'
          }, {
            n: 'transactionResult',
            en: 'TransactionResult',
            ti: '.TransactionResultType'
          }, {
            n: 'version',
            an: {
              lp: 'version'
            },
            t: 'a'
          }]
      }, {
        ln: 'PropertyType',
        ps: [{
            n: 'name',
            en: 'Name'
          }, {
            n: 'value',
            en: 'Value',
            ti: 'AnyType'
          }]
      }, {
        ln: 'TransactionResultType',
        ps: [{
            n: 'status',
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
        ln: 'FeaturesNotLockedType',
        ps: [{
            n: 'featureId',
            col: true,
            en: {
              lp: 'FeatureId',
              ns: 'http:\/\/www.opengis.net\/ogc'
            },
            ti: 'Filter_1_0_0.FeatureIdType'
          }]
      }, {
        t: 'enum',
        ln: 'AllSomeType',
        vs: ['ALL', 'SOME']
      }],
    eis: [{
        en: 'GetFeatureWithLock',
        ti: '.GetFeatureWithLockType'
      }, {
        en: 'FeatureCollection',
        ti: '.FeatureCollectionType',
        sh: {
          lp: '_FeatureCollection',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'Query',
        ti: '.QueryType'
      }, {
        en: 'FAILED',
        ti: '.EmptyType'
      }, {
        en: 'SUCCESS',
        ti: '.EmptyType'
      }, {
        en: 'DescribeFeatureType',
        ti: '.DescribeFeatureTypeType'
      }, {
        en: 'Native',
        ti: '.NativeType'
      }, {
        en: 'LockFeature',
        ti: '.LockFeatureType'
      }, {
        en: 'Insert',
        ti: '.InsertElementType'
      }, {
        en: 'Property',
        ti: '.PropertyType'
      }, {
        en: 'Update',
        ti: '.UpdateElementType'
      }, {
        en: 'GetFeature',
        ti: '.GetFeatureType'
      }, {
        en: 'PARTIAL',
        ti: '.EmptyType'
      }, {
        en: 'WFS_LockFeatureResponse',
        ti: '.WFSLockFeatureResponseType'
      }, {
        en: 'LockId'
      }, {
        en: 'Delete',
        ti: '.DeleteElementType'
      }, {
        en: 'GetCapabilities',
        ti: '.GetCapabilitiesType'
      }, {
        en: 'WFS_TransactionResponse',
        ti: '.WFSTransactionResponseType'
      }, {
        en: 'Transaction',
        ti: '.TransactionType'
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