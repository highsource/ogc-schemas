var CSW_2_0_2_Module_Factory = function () {
  var CSW_2_0_2 = {
    n: 'CSW_2_0_2',
    dens: 'http:\/\/www.opengis.net\/cat\/csw\/2.0.2',
    deps: ['OWS_1_0_0', 'DC_1_1'],
    tis: [{
        ln: 'DCMIRecordType',
        bti: '.AbstractRecordType',
        ps: [{
            n: 'dcElement',
            col: true,
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'DC-element',
              ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
            },
            ti: 'DC_1_1.SimpleLiteral',
            t: 'er'
          }]
      }, {
        ln: 'RequestStatusType',
        ps: [{
            n: 'timestamp',
            ti: 'Calendar',
            an: {
              lp: 'timestamp'
            },
            t: 'a'
          }]
      }, {
        ln: 'GetRecordsResponseType',
        ps: [{
            n: 'requestId',
            en: 'RequestId'
          }, {
            n: 'searchStatus',
            en: 'SearchStatus',
            ti: '.RequestStatusType'
          }, {
            n: 'searchResults',
            en: 'SearchResults',
            ti: '.SearchResultsType'
          }, {
            n: 'version',
            an: {
              lp: 'version'
            },
            t: 'a'
          }]
      }, {
        ln: 'InsertResultType',
        ps: [{
            n: 'briefRecord',
            col: true,
            en: 'BriefRecord',
            ti: '.BriefRecordType'
          }, {
            n: 'handleRef',
            an: {
              lp: 'handleRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'RangeOfValuesType',
        ps: [{
            n: 'minValue',
            en: 'MinValue',
            ti: 'AnyType'
          }, {
            n: 'maxValue',
            en: 'MaxValue',
            ti: 'AnyType'
          }]
      }, {
        ln: 'TransactionResponseType',
        ps: [{
            n: 'transactionSummary',
            en: 'TransactionSummary',
            ti: '.TransactionSummaryType'
          }, {
            n: 'insertResult',
            col: true,
            en: 'InsertResult',
            ti: '.InsertResultType'
          }, {
            n: 'version',
            an: {
              lp: 'version'
            },
            t: 'a'
          }]
      }, {
        ln: 'GetDomainResponseType',
        ps: [{
            n: 'domainValues',
            col: true,
            en: 'DomainValues',
            ti: '.DomainValuesType'
          }]
      }, {
        ln: 'EmptyType'
      }, {
        ln: 'RecordType',
        bti: '.DCMIRecordType',
        ps: [{
            n: 'anyText',
            col: true,
            en: 'AnyText',
            ti: '.EmptyType'
          }, {
            n: 'boundingBox',
            col: true,
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'BoundingBox',
              ns: 'http:\/\/www.opengis.net\/ows'
            },
            ti: 'OWS_1_0_0.BoundingBoxType',
            t: 'er'
          }]
      }, {
        ln: 'GetRecordByIdType',
        bti: '.RequestBaseType',
        ps: [{
            n: 'id',
            col: true,
            en: 'Id'
          }, {
            n: 'elementSetName',
            en: 'ElementSetName',
            ti: '.ElementSetNameType'
          }, {
            n: 'outputFormat',
            an: {
              lp: 'outputFormat'
            },
            t: 'a'
          }, {
            n: 'outputSchema',
            an: {
              lp: 'outputSchema'
            },
            t: 'a'
          }]
      }, {
        ln: 'GetRecordByIdResponseType',
        ps: [{
            n: 'abstractRecord',
            col: true,
            mx: false,
            dom: false,
            typed: false,
            en: 'AbstractRecord',
            ti: '.AbstractRecordType',
            t: 'er'
          }, {
            n: 'any',
            col: true,
            dom: false,
            mx: false,
            t: 'ae'
          }]
      }, {
        ln: 'TransactionType',
        bti: '.RequestBaseType',
        ps: [{
            n: 'insertOrUpdateOrDelete',
            col: true,
            etis: [{
                en: 'Insert',
                ti: '.InsertType'
              }, {
                en: 'Update',
                ti: '.UpdateType'
              }, {
                en: 'Delete',
                ti: '.DeleteType'
              }],
            t: 'es'
          }, {
            n: 'verboseResponse',
            ti: 'Boolean',
            an: {
              lp: 'verboseResponse'
            },
            t: 'a'
          }, {
            n: 'requestId',
            an: {
              lp: 'requestId'
            },
            t: 'a'
          }]
      }, {
        ln: 'DescribeRecordType',
        bti: '.RequestBaseType',
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
          }, {
            n: 'schemaLanguage',
            an: {
              lp: 'schemaLanguage'
            },
            t: 'a'
          }]
      }, {
        ln: 'SearchResultsType',
        ps: [{
            n: 'abstractRecord',
            col: true,
            mx: false,
            dom: false,
            typed: false,
            en: 'AbstractRecord',
            ti: '.AbstractRecordType',
            t: 'er'
          }, {
            n: 'any',
            col: true,
            dom: false,
            mx: false,
            t: 'ae'
          }, {
            n: 'resultSetId',
            an: {
              lp: 'resultSetId'
            },
            t: 'a'
          }, {
            n: 'elementSet',
            an: {
              lp: 'elementSet'
            },
            t: 'a'
          }, {
            n: 'recordSchema',
            an: {
              lp: 'recordSchema'
            },
            t: 'a'
          }, {
            n: 'numberOfRecordsMatched',
            ti: 'Integer',
            an: {
              lp: 'numberOfRecordsMatched'
            },
            t: 'a'
          }, {
            n: 'numberOfRecordsReturned',
            ti: 'Integer',
            an: {
              lp: 'numberOfRecordsReturned'
            },
            t: 'a'
          }, {
            n: 'nextRecord',
            ti: 'Integer',
            an: {
              lp: 'nextRecord'
            },
            t: 'a'
          }, {
            n: 'expires',
            ti: 'Calendar',
            an: {
              lp: 'expires'
            },
            t: 'a'
          }]
      }, {
        ln: 'GetDomainType',
        bti: '.RequestBaseType',
        ps: [{
            n: 'propertyName',
            en: 'PropertyName'
          }, {
            n: 'parameterName',
            en: 'ParameterName'
          }]
      }, {
        ln: 'DescribeRecordResponseType',
        ps: [{
            n: 'schemaComponent',
            col: true,
            en: 'SchemaComponent',
            ti: '.SchemaComponentType'
          }]
      }, {
        ln: 'ElementSetNameType',
        ps: [{
            n: 'value',
            t: 'v'
          }, {
            n: 'typeNames',
            ti: {
              t: 'l',
              bti: 'QName'
            },
            an: {
              lp: 'typeNames'
            },
            t: 'a'
          }]
      }, {
        ln: 'QueryConstraintType',
        ps: [{
            n: 'filter',
            typed: false,
            mx: false,
            t: 'ae'
          }, {
            n: 'cqlText',
            en: 'CqlText'
          }, {
            n: 'version',
            an: {
              lp: 'version'
            },
            t: 'a'
          }]
      }, {
        ln: 'BriefRecordType',
        bti: '.AbstractRecordType',
        ps: [{
            n: 'identifier',
            col: true,
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'identifier',
              ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
            },
            ti: 'DC_1_1.SimpleLiteral',
            t: 'er'
          }, {
            n: 'title',
            col: true,
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'title',
              ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
            },
            ti: 'DC_1_1.SimpleLiteral',
            t: 'er'
          }, {
            n: 'type',
            en: {
              lp: 'type',
              ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
            },
            ti: 'DC_1_1.SimpleLiteral'
          }, {
            n: 'boundingBox',
            col: true,
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'BoundingBox',
              ns: 'http:\/\/www.opengis.net\/ows'
            },
            ti: 'OWS_1_0_0.BoundingBoxType',
            t: 'er'
          }]
      }, {
        ln: 'DistributedSearchType',
        ps: [{
            n: 'hopCount',
            ti: 'Integer',
            an: {
              lp: 'hopCount'
            },
            t: 'a'
          }]
      }, {
        ln: 'RecordPropertyType',
        ps: [{
            n: 'name',
            en: 'Name'
          }, {
            n: 'value',
            en: 'Value',
            ti: 'AnyType'
          }]
      }, {
        ln: 'GetCapabilitiesType',
        bti: 'OWS_1_0_0.GetCapabilitiesType',
        ps: [{
            n: 'service',
            an: {
              lp: 'service'
            },
            t: 'a'
          }]
      }, {
        ln: 'ConceptualSchemeType',
        ps: [{
            n: 'name',
            en: 'Name'
          }, {
            n: 'document',
            en: 'Document'
          }, {
            n: 'authority',
            en: 'Authority'
          }]
      }, {
        ln: 'GetRecordsType',
        bti: '.RequestBaseType',
        ps: [{
            n: 'distributedSearch',
            en: 'DistributedSearch',
            ti: '.DistributedSearchType'
          }, {
            n: 'responseHandler',
            col: true,
            en: 'ResponseHandler'
          }, {
            n: 'abstractQuery',
            mx: false,
            dom: false,
            typed: false,
            en: 'AbstractQuery',
            ti: '.AbstractQueryType',
            t: 'er'
          }, {
            n: 'any',
            dom: false,
            mx: false,
            t: 'ae'
          }, {
            n: 'requestId',
            an: {
              lp: 'requestId'
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
            n: 'outputSchema',
            an: {
              lp: 'outputSchema'
            },
            t: 'a'
          }, {
            n: 'startPosition',
            ti: 'Integer',
            an: {
              lp: 'startPosition'
            },
            t: 'a'
          }, {
            n: 'maxRecords',
            ti: 'Integer',
            an: {
              lp: 'maxRecords'
            },
            t: 'a'
          }]
      }, {
        ln: 'SchemaComponentType',
        ps: [{
            n: 'content',
            col: true,
            t: 'ae'
          }, {
            n: 'targetNamespace',
            an: {
              lp: 'targetNamespace'
            },
            t: 'a'
          }, {
            n: 'parentSchema',
            an: {
              lp: 'parentSchema'
            },
            t: 'a'
          }, {
            n: 'schemaLanguage',
            an: {
              lp: 'schemaLanguage'
            },
            t: 'a'
          }]
      }, {
        ln: 'RequestBaseType',
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
          }]
      }, {
        ln: 'AbstractRecordType'
      }, {
        ln: 'HarvestResponseType',
        ps: [{
            n: 'acknowledgement',
            en: 'Acknowledgement',
            ti: '.AcknowledgementType'
          }, {
            n: 'transactionResponse',
            en: 'TransactionResponse',
            ti: '.TransactionResponseType'
          }]
      }, {
        ln: 'DeleteType',
        ps: [{
            n: 'constraint',
            en: 'Constraint',
            ti: '.QueryConstraintType'
          }, {
            n: 'typeName',
            an: {
              lp: 'typeName'
            },
            t: 'a'
          }, {
            n: 'handle',
            ti: 'ID',
            an: {
              lp: 'handle'
            },
            t: 'a'
          }]
      }, {
        ln: 'CapabilitiesType',
        bti: 'OWS_1_0_0.CapabilitiesBaseType',
        ps: [{
            n: 'filterCapabilities',
            typed: false,
            mx: false,
            t: 'ae'
          }]
      }, {
        ln: 'QueryType',
        bti: '.AbstractQueryType',
        ps: [{
            n: 'elementSetName',
            en: 'ElementSetName',
            ti: '.ElementSetNameType'
          }, {
            n: 'elementName',
            col: true,
            en: 'ElementName',
            ti: 'QName'
          }, {
            n: 'constraint',
            en: 'Constraint',
            ti: '.QueryConstraintType'
          }, {
            n: 'sortBy',
            typed: false,
            mx: false,
            t: 'ae'
          }, {
            n: 'typeNames',
            ti: {
              t: 'l',
              bti: 'QName'
            },
            an: {
              lp: 'typeNames'
            },
            t: 'a'
          }]
      }, {
        ln: 'SummaryRecordType',
        bti: '.AbstractRecordType',
        ps: [{
            n: 'identifier',
            col: true,
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'identifier',
              ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
            },
            ti: 'DC_1_1.SimpleLiteral',
            t: 'er'
          }, {
            n: 'title',
            col: true,
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'title',
              ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
            },
            ti: 'DC_1_1.SimpleLiteral',
            t: 'er'
          }, {
            n: 'type',
            en: {
              lp: 'type',
              ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
            },
            ti: 'DC_1_1.SimpleLiteral'
          }, {
            n: 'subject',
            col: true,
            en: {
              lp: 'subject',
              ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
            },
            ti: 'DC_1_1.SimpleLiteral'
          }, {
            n: 'format',
            col: true,
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'format',
              ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
            },
            ti: 'DC_1_1.SimpleLiteral',
            t: 'er'
          }, {
            n: 'relation',
            col: true,
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'relation',
              ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
            },
            ti: 'DC_1_1.SimpleLiteral',
            t: 'er'
          }, {
            n: 'modified',
            col: true,
            en: {
              lp: 'modified',
              ns: 'http:\/\/purl.org\/dc\/terms\/'
            },
            ti: 'DC_1_1.SimpleLiteral'
          }, {
            n: '_abstract',
            col: true,
            en: {
              lp: 'abstract',
              ns: 'http:\/\/purl.org\/dc\/terms\/'
            },
            ti: 'DC_1_1.SimpleLiteral'
          }, {
            n: 'spatial',
            col: true,
            en: {
              lp: 'spatial',
              ns: 'http:\/\/purl.org\/dc\/terms\/'
            },
            ti: 'DC_1_1.SimpleLiteral'
          }, {
            n: 'boundingBox',
            col: true,
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'BoundingBox',
              ns: 'http:\/\/www.opengis.net\/ows'
            },
            ti: 'OWS_1_0_0.BoundingBoxType',
            t: 'er'
          }]
      }, {
        ln: 'EchoedRequestType',
        ps: [{
            n: 'any',
            mx: false,
            t: 'ae'
          }]
      }, {
        ln: 'AbstractQueryType'
      }, {
        ln: 'InsertType',
        ps: [{
            n: 'any',
            col: true,
            typed: false,
            mx: false,
            t: 'ae'
          }, {
            n: 'typeName',
            an: {
              lp: 'typeName'
            },
            t: 'a'
          }, {
            n: 'handle',
            ti: 'ID',
            an: {
              lp: 'handle'
            },
            t: 'a'
          }]
      }, {
        ln: 'UpdateType',
        ps: [{
            n: 'any',
            typed: false,
            mx: false,
            t: 'ae'
          }, {
            n: 'recordProperty',
            col: true,
            en: 'RecordProperty',
            ti: '.RecordPropertyType'
          }, {
            n: 'constraint',
            en: 'Constraint',
            ti: '.QueryConstraintType'
          }, {
            n: 'handle',
            ti: 'ID',
            an: {
              lp: 'handle'
            },
            t: 'a'
          }]
      }, {
        ln: 'HarvestType',
        bti: '.RequestBaseType',
        ps: [{
            n: 'source',
            en: 'Source'
          }, {
            n: 'resourceType',
            en: 'ResourceType'
          }, {
            n: 'resourceFormat',
            en: 'ResourceFormat'
          }, {
            n: 'harvestInterval',
            en: 'HarvestInterval'
          }, {
            n: 'responseHandler',
            col: true,
            en: 'ResponseHandler'
          }]
      }, {
        ln: 'ListOfValuesType',
        ps: [{
            n: 'value',
            col: true,
            en: 'Value',
            ti: 'AnyType'
          }]
      }, {
        ln: 'AcknowledgementType',
        ps: [{
            n: 'echoedRequest',
            en: 'EchoedRequest',
            ti: '.EchoedRequestType'
          }, {
            n: 'requestId',
            en: 'RequestId'
          }, {
            n: 'timeStamp',
            ti: 'Calendar',
            an: {
              lp: 'timeStamp'
            },
            t: 'a'
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
          }, {
            n: 'requestId',
            an: {
              lp: 'requestId'
            },
            t: 'a'
          }]
      }, {
        ln: 'DomainValuesType',
        ps: [{
            n: 'propertyName',
            en: 'PropertyName'
          }, {
            n: 'parameterName',
            en: 'ParameterName'
          }, {
            n: 'listOfValues',
            en: 'ListOfValues',
            ti: '.ListOfValuesType'
          }, {
            n: 'conceptualScheme',
            en: 'ConceptualScheme',
            ti: '.ConceptualSchemeType'
          }, {
            n: 'rangeOfValues',
            en: 'RangeOfValues',
            ti: '.RangeOfValuesType'
          }, {
            n: 'type',
            ti: 'QName',
            an: {
              lp: 'type'
            },
            t: 'a'
          }, {
            n: 'uom',
            an: {
              lp: 'uom'
            },
            t: 'a'
          }]
      }, {
        t: 'enum',
        ln: 'ResultType',
        vs: ['results', 'hits', 'validate']
      }, {
        t: 'enum',
        ln: 'ElementSetType',
        vs: ['brief', 'summary', 'full']
      }],
    eis: [{
        en: 'SummaryRecord',
        ti: '.SummaryRecordType',
        sh: 'AbstractRecord'
      }, {
        en: 'Constraint',
        ti: '.QueryConstraintType'
      }, {
        en: 'Acknowledgement',
        ti: '.AcknowledgementType'
      }, {
        en: 'ElementSetName',
        ti: '.ElementSetNameType'
      }, {
        en: 'RecordProperty',
        ti: '.RecordPropertyType'
      }, {
        en: 'DescribeRecord',
        ti: '.DescribeRecordType'
      }, {
        en: 'Transaction',
        ti: '.TransactionType'
      }, {
        en: 'GetRecordById',
        ti: '.GetRecordByIdType'
      }, {
        en: 'GetRecordByIdResponse',
        ti: '.GetRecordByIdResponseType'
      }, {
        en: 'Record',
        ti: '.RecordType',
        sh: 'AbstractRecord'
      }, {
        en: 'BriefRecord',
        ti: '.BriefRecordType',
        sh: 'AbstractRecord'
      }, {
        en: 'Harvest',
        ti: '.HarvestType'
      }, {
        en: 'HarvestResponse',
        ti: '.HarvestResponseType'
      }, {
        en: 'DescribeRecordResponse',
        ti: '.DescribeRecordResponseType'
      }, {
        en: 'AbstractQuery',
        ti: '.AbstractQueryType'
      }, {
        en: 'GetRecordsResponse',
        ti: '.GetRecordsResponseType'
      }, {
        en: 'GetCapabilities',
        ti: '.GetCapabilitiesType'
      }, {
        en: 'Capabilities',
        ti: '.CapabilitiesType'
      }, {
        en: 'AbstractRecord',
        ti: '.AbstractRecordType'
      }, {
        en: 'Query',
        ti: '.QueryType',
        sh: 'AbstractQuery'
      }, {
        en: 'GetDomainResponse',
        ti: '.GetDomainResponseType'
      }, {
        en: 'TransactionResponse',
        ti: '.TransactionResponseType'
      }, {
        en: 'DCMIRecord',
        ti: '.DCMIRecordType',
        sh: 'AbstractRecord'
      }, {
        en: 'GetDomain',
        ti: '.GetDomainType'
      }, {
        en: 'GetRecords',
        ti: '.GetRecordsType'
      }]
  };
  return {
    CSW_2_0_2: CSW_2_0_2
  };
};
if (typeof define === 'function' && define.amd) {
  define([], CSW_2_0_2_Module_Factory);
}
else {
  var CSW_2_0_2_Module = CSW_2_0_2_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.CSW_2_0_2 = CSW_2_0_2_Module.CSW_2_0_2;
  }
  else {
    var CSW_2_0_2 = CSW_2_0_2_Module.CSW_2_0_2;
  }
}