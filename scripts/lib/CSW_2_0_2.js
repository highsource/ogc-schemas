var CSW_2_0_2_Module_Factory = function () {
  var CSW_2_0_2 = {
    n: 'CSW_2_0_2',
    dens: 'http:\/\/www.opengis.net\/cat\/csw\/2.0.2',
    deps: ['OWS_1_0_0', 'DC_1_1'],
    tis: [{
        ln: 'GetRecordByIdType',
        bti: '.RequestBaseType',
        ps: [{
            n: 'id',
            rq: true,
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
        ln: 'DeleteType',
        ps: [{
            n: 'constraint',
            rq: true,
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
        ln: 'TransactionResponseType',
        ps: [{
            n: 'transactionSummary',
            rq: true,
            en: 'TransactionSummary',
            ti: '.TransactionSummaryType'
          }, {
            n: 'insertResult',
            mno: 0,
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
        ln: 'TransactionSummaryType',
        ps: [{
            n: 'totalInserted',
            ti: 'NonNegativeInteger'
          }, {
            n: 'totalUpdated',
            ti: 'NonNegativeInteger'
          }, {
            n: 'totalDeleted',
            ti: 'NonNegativeInteger'
          }, {
            n: 'requestId',
            an: {
              lp: 'requestId'
            },
            t: 'a'
          }]
      }, {
        ln: 'BriefRecordType',
        bti: '.AbstractRecordType',
        ps: [{
            n: 'identifier',
            rq: true,
            col: true,
            mx: false,
            dom: false,
            en: {
              lp: 'identifier',
              ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
            },
            ti: 'DC_1_1.SimpleLiteral',
            t: 'er'
          }, {
            n: 'title',
            rq: true,
            col: true,
            mx: false,
            dom: false,
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
            mno: 0,
            col: true,
            mx: false,
            dom: false,
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
            rq: true,
            mx: false,
            t: 'ae'
          }]
      }, {
        ln: 'DescribeRecordResponseType',
        ps: [{
            n: 'schemaComponent',
            mno: 0,
            col: true,
            en: 'SchemaComponent',
            ti: '.SchemaComponentType'
          }]
      }, {
        ln: 'GetDomainResponseType',
        ps: [{
            n: 'domainValues',
            rq: true,
            col: true,
            en: 'DomainValues',
            ti: '.DomainValuesType'
          }]
      }, {
        ln: 'GetRecordsResponseType',
        ps: [{
            n: 'requestId',
            en: 'RequestId'
          }, {
            n: 'searchStatus',
            rq: true,
            en: 'SearchStatus',
            ti: '.RequestStatusType'
          }, {
            n: 'searchResults',
            rq: true,
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
        ln: 'DescribeRecordType',
        bti: '.RequestBaseType',
        ps: [{
            n: 'typeName',
            mno: 0,
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
        ln: 'QueryConstraintType',
        ps: [{
            n: 'filter',
            rq: true,
            mx: false,
            t: 'ae'
          }, {
            n: 'cqlText',
            rq: true,
            en: 'CqlText'
          }, {
            n: 'version',
            rq: true,
            an: {
              lp: 'version'
            },
            t: 'a'
          }]
      }, {
        ln: 'ConceptualSchemeType',
        ps: [{
            n: 'name',
            rq: true,
            en: 'Name'
          }, {
            n: 'document',
            rq: true,
            en: 'Document'
          }, {
            n: 'authority',
            rq: true,
            en: 'Authority'
          }]
      }, {
        ln: 'SearchResultsType',
        ps: [{
            n: 'abstractRecord',
            mno: 0,
            col: true,
            mx: false,
            dom: false,
            en: 'AbstractRecord',
            ti: '.AbstractRecordType',
            t: 'er'
          }, {
            n: 'any',
            mno: 0,
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
            rq: true,
            ti: 'NonNegativeInteger',
            an: {
              lp: 'numberOfRecordsMatched'
            },
            t: 'a'
          }, {
            n: 'numberOfRecordsReturned',
            rq: true,
            ti: 'NonNegativeInteger',
            an: {
              lp: 'numberOfRecordsReturned'
            },
            t: 'a'
          }, {
            n: 'nextRecord',
            ti: 'NonNegativeInteger',
            an: {
              lp: 'nextRecord'
            },
            t: 'a'
          }, {
            n: 'expires',
            ti: 'DateTime',
            an: {
              lp: 'expires'
            },
            t: 'a'
          }]
      }, {
        ln: 'ListOfValuesType',
        ps: [{
            n: 'value',
            rq: true,
            col: true,
            en: 'Value',
            ti: 'AnyType'
          }]
      }, {
        ln: 'CapabilitiesType',
        bti: 'OWS_1_0_0.CapabilitiesBaseType',
        ps: [{
            n: 'filterCapabilities',
            rq: true,
            mx: false,
            t: 'ae'
          }]
      }, {
        ln: 'GetRecordByIdResponseType',
        ps: [{
            n: 'abstractRecord',
            mno: 0,
            col: true,
            mx: false,
            dom: false,
            en: 'AbstractRecord',
            ti: '.AbstractRecordType',
            t: 'er'
          }, {
            n: 'any',
            mno: 0,
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
            rq: true,
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
        ln: 'HarvestResponseType',
        ps: [{
            n: 'acknowledgement',
            rq: true,
            en: 'Acknowledgement',
            ti: '.AcknowledgementType'
          }, {
            n: 'transactionResponse',
            rq: true,
            en: 'TransactionResponse',
            ti: '.TransactionResponseType'
          }]
      }, {
        ln: 'InsertResultType',
        ps: [{
            n: 'briefRecord',
            rq: true,
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
        ln: 'InsertType',
        ps: [{
            n: 'any',
            rq: true,
            col: true,
            dom: false,
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
        ln: 'EmptyType'
      }, {
        ln: 'GetRecordsType',
        bti: '.RequestBaseType',
        ps: [{
            n: 'distributedSearch',
            en: 'DistributedSearch',
            ti: '.DistributedSearchType'
          }, {
            n: 'responseHandler',
            mno: 0,
            col: true,
            en: 'ResponseHandler'
          }, {
            n: 'abstractQuery',
            rq: true,
            mx: false,
            dom: false,
            en: 'AbstractQuery',
            ti: '.AbstractQueryType',
            t: 'er'
          }, {
            n: 'any',
            rq: true,
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
            ti: 'PositiveInteger',
            an: {
              lp: 'startPosition'
            },
            t: 'a'
          }, {
            n: 'maxRecords',
            ti: 'NonNegativeInteger',
            an: {
              lp: 'maxRecords'
            },
            t: 'a'
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
        ln: 'QueryType',
        bti: '.AbstractQueryType',
        ps: [{
            n: 'elementSetName',
            rq: true,
            en: 'ElementSetName',
            ti: '.ElementSetNameType'
          }, {
            n: 'elementName',
            rq: true,
            col: true,
            en: 'ElementName',
            ti: 'QName'
          }, {
            n: 'constraint',
            en: 'Constraint',
            ti: '.QueryConstraintType'
          }, {
            n: 'sortBy',
            mx: false,
            t: 'ae'
          }, {
            n: 'typeNames',
            rq: true,
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
        ln: 'DistributedSearchType',
        ps: [{
            n: 'hopCount',
            ti: 'PositiveInteger',
            an: {
              lp: 'hopCount'
            },
            t: 'a'
          }]
      }, {
        ln: 'SummaryRecordType',
        bti: '.AbstractRecordType',
        ps: [{
            n: 'identifier',
            rq: true,
            col: true,
            mx: false,
            dom: false,
            en: {
              lp: 'identifier',
              ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
            },
            ti: 'DC_1_1.SimpleLiteral',
            t: 'er'
          }, {
            n: 'title',
            rq: true,
            col: true,
            mx: false,
            dom: false,
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
            mno: 0,
            col: true,
            en: {
              lp: 'subject',
              ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
            },
            ti: 'DC_1_1.SimpleLiteral'
          }, {
            n: 'format',
            mno: 0,
            col: true,
            mx: false,
            dom: false,
            en: {
              lp: 'format',
              ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
            },
            ti: 'DC_1_1.SimpleLiteral',
            t: 'er'
          }, {
            n: 'relation',
            mno: 0,
            col: true,
            mx: false,
            dom: false,
            en: {
              lp: 'relation',
              ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
            },
            ti: 'DC_1_1.SimpleLiteral',
            t: 'er'
          }, {
            n: 'modified',
            mno: 0,
            col: true,
            en: {
              lp: 'modified',
              ns: 'http:\/\/purl.org\/dc\/terms\/'
            },
            ti: 'DC_1_1.SimpleLiteral'
          }, {
            n: '_abstract',
            mno: 0,
            col: true,
            en: {
              lp: 'abstract',
              ns: 'http:\/\/purl.org\/dc\/terms\/'
            },
            ti: 'DC_1_1.SimpleLiteral'
          }, {
            n: 'spatial',
            mno: 0,
            col: true,
            en: {
              lp: 'spatial',
              ns: 'http:\/\/purl.org\/dc\/terms\/'
            },
            ti: 'DC_1_1.SimpleLiteral'
          }, {
            n: 'boundingBox',
            mno: 0,
            col: true,
            mx: false,
            dom: false,
            en: {
              lp: 'BoundingBox',
              ns: 'http:\/\/www.opengis.net\/ows'
            },
            ti: 'OWS_1_0_0.BoundingBoxType',
            t: 'er'
          }]
      }, {
        ln: 'AbstractQueryType'
      }, {
        ln: 'GetDomainType',
        bti: '.RequestBaseType',
        ps: [{
            n: 'propertyName',
            rq: true,
            en: 'PropertyName'
          }, {
            n: 'parameterName',
            rq: true,
            en: 'ParameterName'
          }]
      }, {
        ln: 'SchemaComponentType',
        ps: [{
            n: 'content',
            col: true,
            t: 'ae'
          }, {
            n: 'targetNamespace',
            rq: true,
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
            rq: true,
            an: {
              lp: 'schemaLanguage'
            },
            t: 'a'
          }]
      }, {
        ln: 'DCMIRecordType',
        bti: '.AbstractRecordType',
        ps: [{
            n: 'dcElement',
            mno: 0,
            col: true,
            mx: false,
            dom: false,
            en: {
              lp: 'DC-element',
              ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
            },
            ti: 'DC_1_1.SimpleLiteral',
            t: 'er'
          }]
      }, {
        ln: 'RecordPropertyType',
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
        ln: 'DomainValuesType',
        ps: [{
            n: 'propertyName',
            rq: true,
            en: 'PropertyName'
          }, {
            n: 'parameterName',
            rq: true,
            en: 'ParameterName'
          }, {
            n: 'listOfValues',
            rq: true,
            en: 'ListOfValues',
            ti: '.ListOfValuesType'
          }, {
            n: 'conceptualScheme',
            rq: true,
            en: 'ConceptualScheme',
            ti: '.ConceptualSchemeType'
          }, {
            n: 'rangeOfValues',
            rq: true,
            en: 'RangeOfValues',
            ti: '.RangeOfValuesType'
          }, {
            n: 'type',
            rq: true,
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
        ln: 'RecordType',
        bti: '.DCMIRecordType',
        ps: [{
            n: 'anyText',
            mno: 0,
            col: true,
            en: 'AnyText',
            ti: '.EmptyType'
          }, {
            n: 'boundingBox',
            mno: 0,
            col: true,
            mx: false,
            dom: false,
            en: {
              lp: 'BoundingBox',
              ns: 'http:\/\/www.opengis.net\/ows'
            },
            ti: 'OWS_1_0_0.BoundingBoxType',
            t: 'er'
          }]
      }, {
        ln: 'AcknowledgementType',
        ps: [{
            n: 'echoedRequest',
            rq: true,
            en: 'EchoedRequest',
            ti: '.EchoedRequestType'
          }, {
            n: 'requestId',
            en: 'RequestId'
          }, {
            n: 'timeStamp',
            rq: true,
            ti: 'DateTime',
            an: {
              lp: 'timeStamp'
            },
            t: 'a'
          }]
      }, {
        ln: 'UpdateType',
        ps: [{
            n: 'any',
            rq: true,
            dom: false,
            mx: false,
            t: 'ae'
          }, {
            n: 'recordProperty',
            rq: true,
            col: true,
            en: 'RecordProperty',
            ti: '.RecordPropertyType'
          }, {
            n: 'constraint',
            rq: true,
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
        ln: 'AbstractRecordType'
      }, {
        ln: 'RangeOfValuesType',
        ps: [{
            n: 'minValue',
            rq: true,
            en: 'MinValue',
            ti: 'AnyType'
          }, {
            n: 'maxValue',
            rq: true,
            en: 'MaxValue',
            ti: 'AnyType'
          }]
      }, {
        ln: 'RequestBaseType',
        ps: [{
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
          }]
      }, {
        ln: 'HarvestType',
        bti: '.RequestBaseType',
        ps: [{
            n: 'source',
            rq: true,
            en: 'Source'
          }, {
            n: 'resourceType',
            rq: true,
            en: 'ResourceType'
          }, {
            n: 'resourceFormat',
            en: 'ResourceFormat'
          }, {
            n: 'harvestInterval',
            en: 'HarvestInterval',
            ti: 'Duration'
          }, {
            n: 'responseHandler',
            mno: 0,
            col: true,
            en: 'ResponseHandler'
          }]
      }, {
        ln: 'RequestStatusType',
        ps: [{
            n: 'timestamp',
            ti: 'DateTime',
            an: {
              lp: 'timestamp'
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
        en: 'DCMIRecord',
        ti: '.DCMIRecordType',
        sh: 'AbstractRecord'
      }, {
        en: 'Record',
        ti: '.RecordType',
        sh: 'AbstractRecord'
      }, {
        en: 'GetCapabilities',
        ti: '.GetCapabilitiesType'
      }, {
        en: 'AbstractRecord',
        ti: '.AbstractRecordType'
      }, {
        en: 'HarvestResponse',
        ti: '.HarvestResponseType'
      }, {
        en: 'AbstractQuery',
        ti: '.AbstractQueryType'
      }, {
        en: 'GetDomainResponse',
        ti: '.GetDomainResponseType'
      }, {
        en: 'Constraint',
        ti: '.QueryConstraintType'
      }, {
        en: 'TransactionResponse',
        ti: '.TransactionResponseType'
      }, {
        en: 'Harvest',
        ti: '.HarvestType'
      }, {
        en: 'GetDomain',
        ti: '.GetDomainType'
      }, {
        en: 'Query',
        ti: '.QueryType',
        sh: 'AbstractQuery'
      }, {
        en: 'Transaction',
        ti: '.TransactionType'
      }, {
        en: 'DescribeRecordResponse',
        ti: '.DescribeRecordResponseType'
      }, {
        en: 'DescribeRecord',
        ti: '.DescribeRecordType'
      }, {
        en: 'GetRecordById',
        ti: '.GetRecordByIdType'
      }, {
        en: 'BriefRecord',
        ti: '.BriefRecordType',
        sh: 'AbstractRecord'
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
        en: 'SummaryRecord',
        ti: '.SummaryRecordType',
        sh: 'AbstractRecord'
      }, {
        en: 'GetRecordsResponse',
        ti: '.GetRecordsResponseType'
      }, {
        en: 'GetRecords',
        ti: '.GetRecordsType'
      }, {
        en: 'Capabilities',
        ti: '.CapabilitiesType'
      }, {
        en: 'GetRecordByIdResponse',
        ti: '.GetRecordByIdResponseType'
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