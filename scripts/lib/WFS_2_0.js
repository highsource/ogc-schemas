var WFS_2_0_Module_Factory = function () {
  var WFS_2_0 = {
    n: 'WFS_2_0',
    dens: 'http:\/\/www.opengis.net\/wfs\/2.0',
    deps: ['Filter_2_0', 'XLink_1_0', 'OWS_1_1_0'],
    tis: [{
        ln: 'GetFeatureWithLockType',
        bti: '.GetFeatureType',
        ps: [{
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
        ln: 'GetCapabilitiesType',
        bti: 'OWS_1_1_0.GetCapabilitiesType',
        ps: [{
            n: 'service',
            an: {
              lp: 'service'
            },
            t: 'a'
          }]
      }, {
        ln: 'SimpleFeatureCollectionType',
        ps: [{
            n: 'boundedBy',
            ti: '.EnvelopePropertyType'
          }, {
            n: 'member',
            col: true,
            ti: '.MemberPropertyType'
          }]
      }, {
        ln: 'EnvelopePropertyType',
        ps: [{
            n: 'any',
            dom: false,
            mx: false,
            t: 'ae'
          }]
      }, {
        ln: 'BaseRequestType',
        ps: [{
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
            n: 'handle',
            an: {
              lp: 'handle'
            },
            t: 'a'
          }]
      }, {
        ln: 'CreatedOrModifiedFeatureType',
        ps: [{
            n: 'resourceId',
            col: true,
            en: {
              lp: 'ResourceId',
              ns: 'http:\/\/www.opengis.net\/fes\/2.0'
            },
            ti: 'Filter_2_0.ResourceIdType'
          }, {
            n: 'handle',
            an: {
              lp: 'handle'
            },
            t: 'a'
          }]
      }, {
        ln: 'MemberPropertyType',
        ps: [{
            n: 'content',
            col: true,
            etis: [{
                en: 'Tuple',
                ti: '.TupleType'
              }, {
                en: 'SimpleFeatureCollection',
                ti: '.SimpleFeatureCollectionType'
              }],
            t: 'ers'
          }, {
            n: 'state',
            an: {
              lp: 'state'
            },
            t: 'a'
          }, {
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
        ln: 'CreateStoredQueryType',
        bti: '.BaseRequestType',
        ps: [{
            n: 'storedQueryDefinition',
            col: true,
            en: 'StoredQueryDefinition',
            ti: '.StoredQueryDescriptionType'
          }]
      }, {
        ln: 'MetadataURLType',
        ps: [{
            n: 'about',
            an: {
              lp: 'about'
            },
            t: 'a'
          }, {
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
        ln: 'TruncatedResponse',
        ps: [{
            n: 'exceptionReport',
            en: {
              lp: 'ExceptionReport',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.ExceptionReport'
          }]
      }, {
        ln: 'Abstract',
        ps: [{
            n: 'value',
            t: 'v'
          }, {
            n: 'lang',
            an: {
              lp: 'lang',
              ns: 'http:\/\/www.w3.org\/XML\/1998\/namespace'
            },
            t: 'a'
          }]
      }, {
        ln: 'ParameterExpressionType',
        ps: [{
            n: 'title',
            col: true,
            en: 'Title',
            ti: '.Title'
          }, {
            n: '_abstract',
            col: true,
            en: 'Abstract',
            ti: '.Abstract'
          }, {
            n: 'metadata',
            col: true,
            en: {
              lp: 'Metadata',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.MetadataType'
          }, {
            n: 'name',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'QName',
            an: {
              lp: 'type'
            },
            t: 'a'
          }]
      }, {
        ln: 'StoredQueryType',
        bti: 'Filter_2_0.AbstractQueryExpressionType',
        ps: [{
            n: 'parameter',
            col: true,
            en: 'Parameter',
            ti: '.ParameterType'
          }, {
            n: 'id',
            an: {
              lp: 'id'
            },
            t: 'a'
          }]
      }, {
        ln: 'LockFeatureType',
        bti: '.BaseRequestType',
        ps: [{
            n: 'abstractQueryExpression',
            col: true,
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'AbstractQueryExpression',
              ns: 'http:\/\/www.opengis.net\/fes\/2.0'
            },
            ti: 'Filter_2_0.AbstractQueryExpressionType',
            t: 'er'
          }, {
            n: 'lockId',
            an: {
              lp: 'lockId'
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
        ln: 'ReplaceType',
        bti: '.AbstractTransactionActionType',
        ps: [{
            n: 'any',
            dom: false,
            mx: false,
            t: 'ae'
          }, {
            n: 'filter',
            en: {
              lp: 'Filter',
              ns: 'http:\/\/www.opengis.net\/fes\/2.0'
            },
            ti: 'Filter_2_0.FilterType'
          }, {
            n: 'inputFormat',
            an: {
              lp: 'inputFormat'
            },
            t: 'a'
          }, {
            n: 'srsName',
            an: {
              lp: 'srsName'
            },
            t: 'a'
          }]
      }, {
        ln: 'ValueListType',
        ps: [{
            n: 'value',
            col: true,
            en: 'Value',
            ti: 'AnyType'
          }]
      }, {
        ln: 'ValueCollectionType',
        ps: [{
            n: 'member',
            col: true,
            ti: '.MemberPropertyType'
          }, {
            n: 'additionalValues',
            ti: '.AdditionalValues'
          }, {
            n: 'truncatedResponse',
            ti: '.TruncatedResponse'
          }, {
            n: 'timeStamp',
            ti: 'Calendar',
            an: {
              lp: 'timeStamp'
            },
            t: 'a'
          }, {
            n: 'numberMatched',
            an: {
              lp: 'numberMatched'
            },
            t: 'a'
          }, {
            n: 'numberReturned',
            ti: 'Integer',
            an: {
              lp: 'numberReturned'
            },
            t: 'a'
          }, {
            n: 'next',
            an: {
              lp: 'next'
            },
            t: 'a'
          }, {
            n: 'previous',
            an: {
              lp: 'previous'
            },
            t: 'a'
          }]
      }, {
        ln: 'GetPropertyValueType',
        bti: '.BaseRequestType',
        ps: [{
            n: 'abstractQueryExpression',
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'AbstractQueryExpression',
              ns: 'http:\/\/www.opengis.net\/fes\/2.0'
            },
            ti: 'Filter_2_0.AbstractQueryExpressionType',
            t: 'er'
          }, {
            n: 'valueReference',
            an: {
              lp: 'valueReference'
            },
            t: 'a'
          }, {
            n: 'resolvePath',
            an: {
              lp: 'resolvePath'
            },
            t: 'a'
          }, {
            n: 'resolve',
            an: {
              lp: 'resolve'
            },
            t: 'a'
          }, {
            n: 'resolveDepth',
            an: {
              lp: 'resolveDepth'
            },
            t: 'a'
          }, {
            n: 'resolveTimeout',
            ti: 'Integer',
            an: {
              lp: 'resolveTimeout'
            },
            t: 'a'
          }, {
            n: 'startIndex',
            ti: 'Integer',
            an: {
              lp: 'startIndex'
            },
            t: 'a'
          }, {
            n: 'count',
            ti: 'Integer',
            an: {
              lp: 'count'
            },
            t: 'a'
          }, {
            n: 'resultType',
            an: {
              lp: 'resultType'
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
        ln: 'ParameterType',
        ps: [{
            n: 'content',
            col: true,
            t: 'ae'
          }, {
            n: 'name',
            an: {
              lp: 'name'
            },
            t: 'a'
          }]
      }, {
        ln: 'AbstractTransactionActionType',
        ps: [{
            n: 'handle',
            an: {
              lp: 'handle'
            },
            t: 'a'
          }]
      }, {
        ln: 'PropertyType.ValueReference',
        ps: [{
            n: 'value',
            t: 'v'
          }, {
            n: 'action',
            an: {
              lp: 'action'
            },
            t: 'a'
          }]
      }, {
        ln: 'FeatureTypeType.NoCRS'
      }, {
        ln: 'TransactionSummaryType',
        ps: [{
            n: 'totalInserted',
            ti: 'Integer'
          }, {
            n: 'totalUpdated',
            ti: 'Integer'
          }, {
            n: 'totalReplaced',
            ti: 'Integer'
          }, {
            n: 'totalDeleted',
            ti: 'Integer'
          }]
      }, {
        ln: 'DescribeStoredQueriesResponseType',
        ps: [{
            n: 'storedQueryDescription',
            col: true,
            en: 'StoredQueryDescription',
            ti: '.StoredQueryDescriptionType'
          }]
      }, {
        ln: 'FeatureTypeListType',
        ps: [{
            n: 'featureType',
            col: true,
            en: 'FeatureType',
            ti: '.FeatureTypeType'
          }]
      }, {
        ln: 'PropertyName',
        ps: [{
            n: 'value',
            ti: 'QName',
            t: 'v'
          }, {
            n: 'resolvePath',
            an: {
              lp: 'resolvePath'
            },
            t: 'a'
          }, {
            n: 'resolve',
            an: {
              lp: 'resolve'
            },
            t: 'a'
          }, {
            n: 'resolveDepth',
            an: {
              lp: 'resolveDepth'
            },
            t: 'a'
          }, {
            n: 'resolveTimeout',
            ti: 'Integer',
            an: {
              lp: 'resolveTimeout'
            },
            t: 'a'
          }]
      }, {
        ln: 'StoredQueryDescriptionType',
        ps: [{
            n: 'title',
            col: true,
            en: 'Title',
            ti: '.Title'
          }, {
            n: '_abstract',
            col: true,
            en: 'Abstract',
            ti: '.Abstract'
          }, {
            n: 'metadata',
            col: true,
            en: {
              lp: 'Metadata',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.MetadataType'
          }, {
            n: 'parameter',
            col: true,
            en: 'Parameter',
            ti: '.ParameterExpressionType'
          }, {
            n: 'queryExpressionText',
            col: true,
            en: 'QueryExpressionText',
            ti: '.QueryExpressionTextType'
          }, {
            n: 'id',
            an: {
              lp: 'id'
            },
            t: 'a'
          }]
      }, {
        ln: 'AdditionalValues',
        ps: [{
            n: 'valueCollection',
            en: 'ValueCollection',
            ti: '.ValueCollectionType'
          }, {
            n: 'simpleFeatureCollection',
            mx: false,
            dom: false,
            typed: false,
            en: 'SimpleFeatureCollection',
            ti: '.SimpleFeatureCollectionType',
            t: 'er'
          }]
      }, {
        ln: 'ListStoredQueriesResponseType',
        ps: [{
            n: 'storedQuery',
            col: true,
            en: 'StoredQuery',
            ti: '.StoredQueryListItemType'
          }]
      }, {
        ln: 'InsertType',
        bti: '.AbstractTransactionActionType',
        ps: [{
            n: 'any',
            col: true,
            dom: false,
            mx: false,
            t: 'ae'
          }, {
            n: 'inputFormat',
            an: {
              lp: 'inputFormat'
            },
            t: 'a'
          }, {
            n: 'srsName',
            an: {
              lp: 'srsName'
            },
            t: 'a'
          }]
      }, {
        ln: 'StoredQueryListItemType',
        ps: [{
            n: 'title',
            col: true,
            en: 'Title',
            ti: '.Title'
          }, {
            n: 'returnFeatureType',
            col: true,
            en: 'ReturnFeatureType',
            ti: 'QName'
          }, {
            n: 'id',
            an: {
              lp: 'id'
            },
            t: 'a'
          }]
      }, {
        ln: 'EmptyType'
      }, {
        ln: 'QueryExpressionTextType',
        ps: [{
            n: 'content',
            col: true,
            typed: false,
            t: 'ae'
          }, {
            n: 'returnFeatureTypes',
            ti: {
              t: 'l',
              bti: 'QName'
            },
            an: {
              lp: 'returnFeatureTypes'
            },
            t: 'a'
          }, {
            n: 'language',
            an: {
              lp: 'language'
            },
            t: 'a'
          }, {
            n: 'isPrivate',
            ti: 'Boolean',
            an: {
              lp: 'isPrivate'
            },
            t: 'a'
          }]
      }, {
        ln: 'FeaturesLockedType',
        ps: [{
            n: 'resourceId',
            col: true,
            en: {
              lp: 'ResourceId',
              ns: 'http:\/\/www.opengis.net\/fes\/2.0'
            },
            ti: 'Filter_2_0.ResourceIdType'
          }]
      }, {
        ln: 'ActionResultsType',
        ps: [{
            n: 'feature',
            col: true,
            en: 'Feature',
            ti: '.CreatedOrModifiedFeatureType'
          }]
      }, {
        ln: 'QueryType',
        bti: 'Filter_2_0.AbstractAdhocQueryExpressionType',
        ps: [{
            n: 'srsName',
            an: {
              lp: 'srsName'
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
        ln: 'LockFeatureResponseType',
        ps: [{
            n: 'featuresLocked',
            en: 'FeaturesLocked',
            ti: '.FeaturesLockedType'
          }, {
            n: 'featuresNotLocked',
            en: 'FeaturesNotLocked',
            ti: '.FeaturesNotLockedType'
          }, {
            n: 'lockId',
            an: {
              lp: 'lockId'
            },
            t: 'a'
          }]
      }, {
        ln: 'NativeType',
        bti: '.AbstractTransactionActionType',
        ps: [{
            n: 'content',
            col: true,
            t: 'ae'
          }, {
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
        ln: 'ListStoredQueriesType',
        bti: '.BaseRequestType'
      }, {
        ln: 'UpdateType',
        bti: '.AbstractTransactionActionType',
        ps: [{
            n: 'property',
            col: true,
            en: 'Property',
            ti: '.PropertyType'
          }, {
            n: 'filter',
            en: {
              lp: 'Filter',
              ns: 'http:\/\/www.opengis.net\/fes\/2.0'
            },
            ti: 'Filter_2_0.FilterType'
          }, {
            n: 'typeName',
            ti: 'QName',
            an: {
              lp: 'typeName'
            },
            t: 'a'
          }, {
            n: 'inputFormat',
            an: {
              lp: 'inputFormat'
            },
            t: 'a'
          }, {
            n: 'srsName',
            an: {
              lp: 'srsName'
            },
            t: 'a'
          }]
      }, {
        ln: 'AdditionalObjects',
        ps: [{
            n: 'valueCollection',
            en: 'ValueCollection',
            ti: '.ValueCollectionType'
          }, {
            n: 'simpleFeatureCollection',
            mx: false,
            dom: false,
            typed: false,
            en: 'SimpleFeatureCollection',
            ti: '.SimpleFeatureCollectionType',
            t: 'er'
          }]
      }, {
        ln: 'DropStoredQuery',
        bti: '.BaseRequestType',
        ps: [{
            n: 'id',
            an: {
              lp: 'id'
            },
            t: 'a'
          }]
      }, {
        ln: 'FeatureCollectionType',
        bti: '.SimpleFeatureCollectionType',
        ps: [{
            n: 'additionalObjects',
            ti: '.AdditionalObjects'
          }, {
            n: 'truncatedResponse',
            ti: '.TruncatedResponse'
          }, {
            n: 'lockId',
            an: {
              lp: 'lockId'
            },
            t: 'a'
          }, {
            n: 'timeStamp',
            ti: 'Calendar',
            an: {
              lp: 'timeStamp'
            },
            t: 'a'
          }, {
            n: 'numberMatched',
            an: {
              lp: 'numberMatched'
            },
            t: 'a'
          }, {
            n: 'numberReturned',
            ti: 'Integer',
            an: {
              lp: 'numberReturned'
            },
            t: 'a'
          }, {
            n: 'next',
            an: {
              lp: 'next'
            },
            t: 'a'
          }, {
            n: 'previous',
            an: {
              lp: 'previous'
            },
            t: 'a'
          }]
      }, {
        ln: 'WFSCapabilitiesType',
        bti: 'OWS_1_1_0.CapabilitiesBaseType',
        ps: [{
            n: 'wsdl',
            en: 'WSDL',
            ti: '.WFSCapabilitiesType.WSDL'
          }, {
            n: 'featureTypeList',
            en: 'FeatureTypeList',
            ti: '.FeatureTypeListType'
          }, {
            n: 'filterCapabilities',
            en: {
              lp: 'Filter_Capabilities',
              ns: 'http:\/\/www.opengis.net\/fes\/2.0'
            },
            ti: 'Filter_2_0.FilterCapabilities'
          }]
      }, {
        ln: 'PropertyType',
        ps: [{
            n: 'valueReference',
            en: 'ValueReference',
            ti: '.PropertyType.ValueReference'
          }, {
            n: 'value',
            en: 'Value',
            ti: 'AnyType'
          }]
      }, {
        ln: 'FeaturesNotLockedType',
        ps: [{
            n: 'resourceId',
            col: true,
            en: {
              lp: 'ResourceId',
              ns: 'http:\/\/www.opengis.net\/fes\/2.0'
            },
            ti: 'Filter_2_0.ResourceIdType'
          }]
      }, {
        ln: 'DescribeFeatureTypeType',
        bti: '.BaseRequestType',
        ps: [{
            n: 'typeName',
            col: true,
            en: 'TypeName',
            ti: 'QName'
          }, {
            n: 'outputFormat',
            an: {
              lp: 'outputFormat'
            },
            t: 'a'
          }]
      }, {
        ln: 'TupleType',
        ps: [{
            n: 'member',
            col: true,
            ti: '.MemberPropertyType'
          }]
      }, {
        ln: 'GetFeatureType',
        bti: '.BaseRequestType',
        ps: [{
            n: 'abstractQueryExpression',
            col: true,
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'AbstractQueryExpression',
              ns: 'http:\/\/www.opengis.net\/fes\/2.0'
            },
            ti: 'Filter_2_0.AbstractQueryExpressionType',
            t: 'er'
          }, {
            n: 'startIndex',
            ti: 'Integer',
            an: {
              lp: 'startIndex'
            },
            t: 'a'
          }, {
            n: 'count',
            ti: 'Integer',
            an: {
              lp: 'count'
            },
            t: 'a'
          }, {
            n: 'resultType',
            an: {
              lp: 'resultType'
            },
            t: 'a'
          }, {
            n: 'outputFormat',
            an: {
              lp: 'outputFormat'
            },
            t: 'a'
          }, {
            n: 'resolve',
            an: {
              lp: 'resolve'
            },
            t: 'a'
          }, {
            n: 'resolveDepth',
            an: {
              lp: 'resolveDepth'
            },
            t: 'a'
          }, {
            n: 'resolveTimeout',
            ti: 'Integer',
            an: {
              lp: 'resolveTimeout'
            },
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
        ln: 'Title',
        ps: [{
            n: 'value',
            t: 'v'
          }, {
            n: 'lang',
            an: {
              lp: 'lang',
              ns: 'http:\/\/www.w3.org\/XML\/1998\/namespace'
            },
            t: 'a'
          }]
      }, {
        ln: 'ElementType',
        ps: [{
            n: 'metadata',
            en: {
              lp: 'Metadata',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.MetadataType'
          }, {
            n: 'valueList',
            en: 'ValueList',
            ti: '.ValueListType'
          }, {
            n: 'name',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'QName',
            an: {
              lp: 'type'
            },
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
            col: true,
            en: 'Title',
            ti: '.Title'
          }, {
            n: '_abstract',
            col: true,
            en: 'Abstract',
            ti: '.Abstract'
          }, {
            n: 'keywords',
            col: true,
            en: {
              lp: 'Keywords',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.KeywordsType'
          }, {
            n: 'defaultCRS',
            en: 'DefaultCRS'
          }, {
            n: 'otherCRS',
            col: true,
            en: 'OtherCRS'
          }, {
            n: 'noCRS',
            en: 'NoCRS',
            ti: '.FeatureTypeType.NoCRS'
          }, {
            n: 'outputFormats',
            en: 'OutputFormats',
            ti: '.OutputFormatListType'
          }, {
            n: 'wgs84BoundingBox',
            col: true,
            en: {
              lp: 'WGS84BoundingBox',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.WGS84BoundingBoxType'
          }, {
            n: 'metadataURL',
            col: true,
            en: 'MetadataURL',
            ti: '.MetadataURLType'
          }, {
            n: 'extendedDescription',
            en: 'ExtendedDescription',
            ti: '.ExtendedDescriptionType'
          }]
      }, {
        ln: 'WFSCapabilitiesType.WSDL',
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
        ln: 'TransactionType',
        bti: '.BaseRequestType',
        ps: [{
            n: 'abstractTransactionAction',
            col: true,
            mx: false,
            dom: false,
            typed: false,
            en: 'AbstractTransactionAction',
            ti: '.AbstractTransactionActionType',
            t: 'er'
          }, {
            n: 'lockId',
            an: {
              lp: 'lockId'
            },
            t: 'a'
          }, {
            n: 'releaseAction',
            an: {
              lp: 'releaseAction'
            },
            t: 'a'
          }, {
            n: 'srsName',
            an: {
              lp: 'srsName'
            },
            t: 'a'
          }]
      }, {
        ln: 'DeleteType',
        bti: '.AbstractTransactionActionType',
        ps: [{
            n: 'filter',
            en: {
              lp: 'Filter',
              ns: 'http:\/\/www.opengis.net\/fes\/2.0'
            },
            ti: 'Filter_2_0.FilterType'
          }, {
            n: 'typeName',
            ti: 'QName',
            an: {
              lp: 'typeName'
            },
            t: 'a'
          }]
      }, {
        ln: 'ExecutionStatusType',
        ps: [{
            n: 'status',
            an: {
              lp: 'status'
            },
            t: 'a'
          }]
      }, {
        ln: 'ExtendedDescriptionType',
        ps: [{
            n: 'element',
            col: true,
            en: 'Element',
            ti: '.ElementType'
          }]
      }, {
        ln: 'DescribeStoredQueriesType',
        bti: '.BaseRequestType',
        ps: [{
            n: 'storedQueryId',
            col: true,
            en: 'StoredQueryId'
          }]
      }, {
        ln: 'CreateStoredQueryResponseType',
        bti: '.ExecutionStatusType'
      }, {
        ln: 'TransactionResponseType',
        ps: [{
            n: 'transactionSummary',
            en: 'TransactionSummary',
            ti: '.TransactionSummaryType'
          }, {
            n: 'insertResults',
            en: 'InsertResults',
            ti: '.ActionResultsType'
          }, {
            n: 'updateResults',
            en: 'UpdateResults',
            ti: '.ActionResultsType'
          }, {
            n: 'replaceResults',
            en: 'ReplaceResults',
            ti: '.ActionResultsType'
          }, {
            n: 'version',
            an: {
              lp: 'version'
            },
            t: 'a'
          }]
      }, {
        t: 'enum',
        ln: 'ResolveValueType',
        vs: ['local', 'remote', 'all', 'none']
      }, {
        t: 'enum',
        ln: 'UpdateActionType',
        vs: ['replace', 'insertBefore', 'insertAfter', 'remove']
      }, {
        t: 'enum',
        ln: 'AllSomeType',
        vs: ['ALL', 'SOME']
      }, {
        t: 'enum',
        ln: 'StarStringType',
        vs: ['*']
      }, {
        t: 'enum',
        ln: 'ResultTypeType',
        vs: ['results', 'hits']
      }],
    eis: [{
        en: 'LockFeatureResponse',
        ti: '.LockFeatureResponseType'
      }, {
        en: 'ValueCollection',
        ti: '.ValueCollectionType'
      }, {
        en: 'ValueList',
        ti: '.ValueListType'
      }, {
        en: 'DescribeStoredQueries',
        ti: '.DescribeStoredQueriesType'
      }, {
        en: 'Transaction',
        ti: '.TransactionType'
      }, {
        en: 'PropertyName',
        ti: '.PropertyName',
        sh: {
          lp: 'AbstractProjectionClause',
          ns: 'http:\/\/www.opengis.net\/fes\/2.0'
        }
      }, {
        en: 'WFS_Capabilities',
        ti: '.WFSCapabilitiesType'
      }, {
        en: 'DescribeStoredQueriesResponse',
        ti: '.DescribeStoredQueriesResponseType'
      }, {
        en: 'Element',
        ti: '.ElementType'
      }, {
        en: 'Replace',
        ti: '.ReplaceType',
        sh: 'AbstractTransactionAction'
      }, {
        en: 'member',
        ti: '.MemberPropertyType'
      }, {
        en: 'TransactionResponse',
        ti: '.TransactionResponseType'
      }, {
        en: 'ListStoredQueries',
        ti: '.ListStoredQueriesType'
      }, {
        en: 'Title',
        ti: '.Title'
      }, {
        en: 'FeatureTypeList',
        ti: '.FeatureTypeListType'
      }, {
        en: 'Value',
        ti: 'AnyType'
      }, {
        en: 'Property',
        ti: '.PropertyType'
      }, {
        en: 'Update',
        ti: '.UpdateType',
        sh: 'AbstractTransactionAction'
      }, {
        en: 'DescribeFeatureType',
        ti: '.DescribeFeatureTypeType'
      }, {
        en: 'Native',
        ti: '.NativeType',
        sh: 'AbstractTransactionAction'
      }, {
        en: 'Tuple',
        ti: '.TupleType'
      }, {
        en: 'Abstract',
        ti: '.Abstract'
      }, {
        en: 'FeatureCollection',
        ti: '.FeatureCollectionType',
        sh: 'SimpleFeatureCollection'
      }, {
        en: 'GetFeatureWithLock',
        ti: '.GetFeatureWithLockType'
      }, {
        en: 'boundedBy',
        ti: '.EnvelopePropertyType'
      }, {
        en: 'truncatedResponse',
        ti: '.TruncatedResponse'
      }, {
        en: 'additionalValues',
        ti: '.AdditionalValues'
      }, {
        en: 'Query',
        ti: '.QueryType',
        sh: {
          lp: 'AbstractAdhocQueryExpression',
          ns: 'http:\/\/www.opengis.net\/fes\/2.0'
        }
      }, {
        en: 'GetCapabilities',
        ti: '.GetCapabilitiesType'
      }, {
        en: 'AbstractTransactionAction',
        ti: '.AbstractTransactionActionType'
      }, {
        en: 'CreateStoredQueryResponse',
        ti: '.CreateStoredQueryResponseType'
      }, {
        en: 'SimpleFeatureCollection',
        ti: '.SimpleFeatureCollectionType'
      }, {
        en: 'CreateStoredQuery',
        ti: '.CreateStoredQueryType'
      }, {
        en: 'Insert',
        ti: '.InsertType',
        sh: 'AbstractTransactionAction'
      }, {
        en: 'additionalObjects',
        ti: '.AdditionalObjects'
      }, {
        en: 'DropStoredQueryResponse',
        ti: '.ExecutionStatusType'
      }, {
        en: 'Delete',
        ti: '.DeleteType',
        sh: 'AbstractTransactionAction'
      }, {
        en: 'GetPropertyValue',
        ti: '.GetPropertyValueType'
      }, {
        en: 'ListStoredQueriesResponse',
        ti: '.ListStoredQueriesResponseType'
      }, {
        en: 'DropStoredQuery',
        ti: '.DropStoredQuery'
      }, {
        en: 'LockFeature',
        ti: '.LockFeatureType'
      }, {
        en: 'GetFeature',
        ti: '.GetFeatureType'
      }, {
        en: 'StoredQuery',
        ti: '.StoredQueryType',
        sh: {
          lp: 'AbstractQueryExpression',
          ns: 'http:\/\/www.opengis.net\/fes\/2.0'
        }
      }]
  };
  return {
    WFS_2_0: WFS_2_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], WFS_2_0_Module_Factory);
}
else {
  var WFS_2_0_Module = WFS_2_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.WFS_2_0 = WFS_2_0_Module.WFS_2_0;
  }
  else {
    var WFS_2_0 = WFS_2_0_Module.WFS_2_0;
  }
}