var WFS_1_0_0_Module_Factory = function () {
  var WFS_1_0_0 = {
    n: 'WFS_1_0_0',
    dens: 'http:\/\/www.opengis.net\/wfs',
    tis: [{
        ln: 'DescribeFeatureTypeType',
        ps: [{
            n: 'typeName',
            col: true,
            en: 'TypeName',
            ti: 'QName'
          }, {
            n: 'version',
            t: 'a'
          }, {
            n: 'service',
            t: 'a'
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
            ti: 'Filter_1_0_0.FilterType'
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
        ps: [{
            n: 'query',
            col: true,
            en: 'Query',
            ti: 'WFS_1_0_0.QueryType'
          }, {
            n: 'version',
            t: 'a'
          }, {
            n: 'service',
            t: 'a'
          }, {
            n: 'handle',
            t: 'a'
          }, {
            n: 'outputFormat',
            t: 'a'
          }, {
            n: 'maxFeatures',
            ti: 'Integer',
            t: 'a'
          }]
      }, {
        ln: 'EmptyType'
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
            t: 'a'
          }, {
            n: 'typeName',
            ti: 'QName',
            t: 'a'
          }, {
            n: 'featureVersion',
            t: 'a'
          }]
      }, {
        ln: 'GetFeatureWithLockType',
        ps: [{
            n: 'query',
            col: true,
            en: 'Query',
            ti: 'WFS_1_0_0.QueryType'
          }, {
            n: 'version',
            t: 'a'
          }, {
            n: 'service',
            t: 'a'
          }, {
            n: 'handle',
            t: 'a'
          }, {
            n: 'expiry',
            ti: 'Integer',
            t: 'a'
          }, {
            n: 'outputFormat',
            t: 'a'
          }, {
            n: 'maxFeatures',
            ti: 'Integer',
            t: 'a'
          }]
      }, {
        ln: 'LockFeatureType',
        ps: [{
            n: 'lock',
            col: true,
            en: 'Lock',
            ti: 'WFS_1_0_0.LockType'
          }, {
            n: 'version',
            t: 'a'
          }, {
            n: 'service',
            t: 'a'
          }, {
            n: 'expiry',
            ti: 'Integer',
            t: 'a'
          }, {
            n: 'lockAction',
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
            t: 'a'
          }]
      }, {
        ln: 'UpdateElementType',
        ps: [{
            n: 'property',
            col: true,
            en: 'Property',
            ti: 'WFS_1_0_0.PropertyType'
          }, {
            n: 'filter',
            en: {
              lp: 'Filter',
              ns: 'http:\/\/www.opengis.net\/ogc'
            },
            ti: 'Filter_1_0_0.FilterType'
          }, {
            n: 'handle',
            t: 'a'
          }, {
            n: 'typeName',
            ti: 'QName',
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
        ln: 'WFSLockFeatureResponseType',
        ps: [{
            n: 'lockId',
            en: 'LockId'
          }, {
            n: 'featuresLocked',
            en: 'FeaturesLocked',
            ti: 'WFS_1_0_0.FeaturesLockedType'
          }, {
            n: 'featuresNotLocked',
            en: 'FeaturesNotLocked',
            ti: 'WFS_1_0_0.FeaturesNotLockedType'
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
                ti: 'WFS_1_0_0.InsertElementType'
              }, {
                en: 'Update',
                ti: 'WFS_1_0_0.UpdateElementType'
              }, {
                en: 'Delete',
                ti: 'WFS_1_0_0.DeleteElementType'
              }, {
                en: 'Native',
                ti: 'WFS_1_0_0.NativeType'
              }],
            t: 'es'
          }, {
            n: 'version',
            t: 'a'
          }, {
            n: 'service',
            t: 'a'
          }, {
            n: 'handle',
            t: 'a'
          }, {
            n: 'releaseAction',
            t: 'a'
          }]
      }, {
        ln: 'FeatureCollectionType',
        bti: 'GML_2_1_2.AbstractFeatureCollectionType',
        ps: [{
            n: 'lockId',
            t: 'a'
          }]
      }, {
        ln: 'GetCapabilitiesType',
        ps: [{
            n: 'version',
            t: 'a'
          }, {
            n: 'service',
            t: 'a'
          }]
      }, {
        ln: 'WFSTransactionResponseType',
        ps: [{
            n: 'insertResult',
            col: true,
            en: 'InsertResult',
            ti: 'WFS_1_0_0.InsertResultType'
          }, {
            n: 'transactionResult',
            en: 'TransactionResult',
            ti: 'WFS_1_0_0.TransactionResultType'
          }, {
            n: 'version',
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
        ln: 'TransactionResultType',
        ps: [{
            n: 'status',
            en: 'Status',
            ti: 'WFS_1_0_0.StatusType'
          }, {
            n: 'locator',
            en: 'Locator'
          }, {
            n: 'message',
            en: 'Message'
          }, {
            n: 'handle',
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
            t: 'a'
          }, {
            n: 'typeName',
            ti: 'QName',
            t: 'a'
          }]
      }, {
        ln: 'StatusType',
        ps: [{
            n: 'success',
            en: 'SUCCESS',
            ti: 'WFS_1_0_0.EmptyType'
          }, {
            n: 'failed',
            en: 'FAILED',
            ti: 'WFS_1_0_0.EmptyType'
          }, {
            n: 'partial',
            en: 'PARTIAL',
            ti: 'WFS_1_0_0.EmptyType'
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
            t: 'a'
          }]
      }, {
        t: 'enum',
        ln: 'AllSomeType',
        vs: ['ALL', 'SOME']
      }],
    eis: [{
        en: 'GetFeatureWithLock',
        ti: 'WFS_1_0_0.GetFeatureWithLockType'
      }, {
        en: 'SUCCESS',
        ti: 'WFS_1_0_0.EmptyType'
      }, {
        en: 'GetFeature',
        ti: 'WFS_1_0_0.GetFeatureType'
      }, {
        en: 'PARTIAL',
        ti: 'WFS_1_0_0.EmptyType'
      }, {
        en: 'FeatureCollection',
        ti: 'WFS_1_0_0.FeatureCollectionType',
        sh: {
          lp: '_FeatureCollection',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'Transaction',
        ti: 'WFS_1_0_0.TransactionType'
      }, {
        en: 'WFS_LockFeatureResponse',
        ti: 'WFS_1_0_0.WFSLockFeatureResponseType'
      }, {
        en: 'LockId'
      }, {
        en: 'LockFeature',
        ti: 'WFS_1_0_0.LockFeatureType'
      }, {
        en: 'Query',
        ti: 'WFS_1_0_0.QueryType'
      }, {
        en: 'DescribeFeatureType',
        ti: 'WFS_1_0_0.DescribeFeatureTypeType'
      }, {
        en: 'Delete',
        ti: 'WFS_1_0_0.DeleteElementType'
      }, {
        en: 'Insert',
        ti: 'WFS_1_0_0.InsertElementType'
      }, {
        en: 'Update',
        ti: 'WFS_1_0_0.UpdateElementType'
      }, {
        en: 'GetCapabilities',
        ti: 'WFS_1_0_0.GetCapabilitiesType'
      }, {
        en: 'FAILED',
        ti: 'WFS_1_0_0.EmptyType'
      }, {
        en: 'Native',
        ti: 'WFS_1_0_0.NativeType'
      }, {
        en: 'Property',
        ti: 'WFS_1_0_0.PropertyType'
      }, {
        en: 'WFS_TransactionResponse',
        ti: 'WFS_1_0_0.WFSTransactionResponseType'
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
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.WFS_1_0_0 = WFS_1_0_0_Module_Factory().WFS_1_0_0;
  }
  else {
    var WFS_1_0_0 = WFS_1_0_0_Module_Factory().WFS_1_0_0;
  }
}