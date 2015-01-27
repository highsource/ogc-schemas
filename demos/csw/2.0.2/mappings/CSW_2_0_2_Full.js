var CSW_2_0_2_Full_Module_Factory = function () {
  var CSW_2_0_2 = {
    n: 'CSW_2_0_2',
    dens: 'http:\/\/www.opengis.net\/cat\/csw\/2.0.2',
    deps: ['OWS_1_0_0', 'DC_1_1'],
    tis: [{
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
        ln: 'AbstractRecordType'
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
        ln: 'CapabilitiesType',
        bti: 'OWS_1_0_0.CapabilitiesBaseType',
        ps: [{
            n: 'filterCapabilities',
            typed: false,
            mx: false,
            t: 'ae'
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
        ln: 'GetDomainResponseType',
        ps: [{
            n: 'domainValues',
            col: true,
            en: 'DomainValues',
            ti: '.DomainValuesType'
          }]
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
        ln: 'AbstractQueryType'
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
        ln: 'ListOfValuesType',
        ps: [{
            n: 'value',
            col: true,
            en: 'Value',
            ti: 'AnyType'
          }]
      }, {
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
        ln: 'EmptyType'
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
        ln: 'EchoedRequestType',
        ps: [{
            n: 'any',
            mx: false,
            t: 'ae'
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
        t: 'enum',
        ln: 'ResultType',
        vs: ['results', 'hits', 'validate']
      }, {
        t: 'enum',
        ln: 'ElementSetType',
        vs: ['brief', 'summary', 'full']
      }],
    eis: [{
        en: 'DescribeRecord',
        ti: '.DescribeRecordType'
      }, {
        en: 'DCMIRecord',
        ti: '.DCMIRecordType',
        sh: 'AbstractRecord'
      }, {
        en: 'HarvestResponse',
        ti: '.HarvestResponseType'
      }, {
        en: 'Capabilities',
        ti: '.CapabilitiesType'
      }, {
        en: 'AbstractRecord',
        ti: '.AbstractRecordType'
      }, {
        en: 'Harvest',
        ti: '.HarvestType'
      }, {
        en: 'GetRecordsResponse',
        ti: '.GetRecordsResponseType'
      }, {
        en: 'Query',
        ti: '.QueryType',
        sh: 'AbstractQuery'
      }, {
        en: 'Record',
        ti: '.RecordType',
        sh: 'AbstractRecord'
      }, {
        en: 'ElementSetName',
        ti: '.ElementSetNameType'
      }, {
        en: 'Acknowledgement',
        ti: '.AcknowledgementType'
      }, {
        en: 'BriefRecord',
        ti: '.BriefRecordType',
        sh: 'AbstractRecord'
      }, {
        en: 'Transaction',
        ti: '.TransactionType'
      }, {
        en: 'Constraint',
        ti: '.QueryConstraintType'
      }, {
        en: 'RecordProperty',
        ti: '.RecordPropertyType'
      }, {
        en: 'GetDomainResponse',
        ti: '.GetDomainResponseType'
      }, {
        en: 'AbstractQuery',
        ti: '.AbstractQueryType'
      }, {
        en: 'GetRecordById',
        ti: '.GetRecordByIdType'
      }, {
        en: 'SummaryRecord',
        ti: '.SummaryRecordType',
        sh: 'AbstractRecord'
      }, {
        en: 'DescribeRecordResponse',
        ti: '.DescribeRecordResponseType'
      }, {
        en: 'GetRecordByIdResponse',
        ti: '.GetRecordByIdResponseType'
      }, {
        en: 'GetDomain',
        ti: '.GetDomainType'
      }, {
        en: 'GetRecords',
        ti: '.GetRecordsType'
      }, {
        en: 'GetCapabilities',
        ti: '.GetCapabilitiesType'
      }, {
        en: 'TransactionResponse',
        ti: '.TransactionResponseType'
      }]
  };
  var DC_1_1 = {
    n: 'DC_1_1',
    dens: 'http:\/\/purl.org\/dc\/elements\/1.1\/',
    tis: [{
        ln: 'SimpleLiteral',
        ps: [{
            n: 'content',
            col: true,
            dom: false,
            typed: false,
            t: 'ers'
          }, {
            n: 'scheme',
            an: {
              lp: 'scheme'
            },
            t: 'a'
          }]
      }, {
        ln: 'ElementContainer',
        ps: [{
            n: 'dcElement',
            col: true,
            mx: false,
            dom: false,
            typed: false,
            en: 'DC-element',
            ti: '.SimpleLiteral',
            t: 'er'
          }]
      }],
    eis: [{
        en: 'rights',
        ti: '.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'date',
        ti: '.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'format',
        ti: '.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'contributor',
        ti: '.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'subject',
        ti: '.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'relation',
        ti: '.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'creator',
        ti: '.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'type',
        ti: '.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'identifier',
        ti: '.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'title',
        ti: '.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'language',
        ti: '.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'source',
        ti: '.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'publisher',
        ti: '.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'description',
        ti: '.SimpleLiteral',
        sh: 'DC-element'
      }, {
        en: 'coverage',
        ti: '.SimpleLiteral',
        sh: 'DC-element'
      }]
  };
  var DCT = {
    n: 'DCT',
    dens: 'http:\/\/purl.org\/dc\/terms\/',
    deps: ['DC_1_1'],
    tis: [],
    eis: [{
        en: 'isFormatOf',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'relation',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'references',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'relation',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'extent',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'format',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'medium',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'format',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'isReferencedBy',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'relation',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'isPartOf',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'relation',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'hasFormat',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'relation',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'isVersionOf',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'relation',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'isRequiredBy',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'relation',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'requires',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'relation',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'hasVersion',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'relation',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'isReplacedBy',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'relation',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'hasPart',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'relation',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'replaces',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'relation',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'bibliographicCitation',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'identifier',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'alternative',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'title',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'audience',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'DC-element',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'rightsHolder',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'DC-element',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'conformsTo',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'relation',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        en: 'provenance',
        ti: 'DC_1_1.SimpleLiteral',
        sh: {
          lp: 'DC-element',
          ns: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }]
  };
  var OWS_1_0_0 = {
    n: 'OWS_1_0_0',
    dens: 'http:\/\/www.opengis.net\/ows',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['XLink_1_0'],
    tis: [{
        ln: 'BoundingBoxType',
        ps: [{
            n: 'lowerCorner',
            en: 'LowerCorner',
            ti: {
              t: 'l',
              bti: 'Double'
            }
          }, {
            n: 'upperCorner',
            en: 'UpperCorner',
            ti: {
              t: 'l',
              bti: 'Double'
            }
          }, {
            n: 'crs',
            an: {
              lp: 'crs'
            },
            t: 'a'
          }, {
            n: 'dimensions',
            ti: 'Integer',
            an: {
              lp: 'dimensions'
            },
            t: 'a'
          }]
      }, {
        ln: 'CodeType',
        ps: [{
            n: 'value',
            t: 'v'
          }, {
            n: 'codeSpace',
            an: {
              lp: 'codeSpace'
            },
            t: 'a'
          }]
      }, {
        ln: 'DescriptionType',
        ps: [{
            n: 'title',
            en: 'Title'
          }, {
            n: '_abstract',
            en: 'Abstract'
          }, {
            n: 'keywords',
            col: true,
            en: 'Keywords',
            ti: '.KeywordsType'
          }]
      }, {
        ln: 'IdentificationType',
        bti: '.DescriptionType',
        ps: [{
            n: 'identifier',
            en: 'Identifier',
            ti: '.CodeType'
          }, {
            n: 'boundingBox',
            col: true,
            mx: false,
            dom: false,
            typed: false,
            en: 'BoundingBox',
            ti: '.BoundingBoxType',
            t: 'er'
          }, {
            n: 'outputFormat',
            col: true,
            en: 'OutputFormat'
          }, {
            n: 'availableCRS',
            col: true,
            mx: false,
            dom: false,
            typed: false,
            en: 'AvailableCRS',
            t: 'er'
          }, {
            n: 'metadata',
            col: true,
            en: 'Metadata',
            ti: '.MetadataType'
          }]
      }, {
        ln: 'Operation',
        ps: [{
            n: 'dcp',
            col: true,
            en: 'DCP',
            ti: '.DCP'
          }, {
            n: 'parameter',
            col: true,
            en: 'Parameter',
            ti: '.DomainType'
          }, {
            n: 'constraint',
            col: true,
            en: 'Constraint',
            ti: '.DomainType'
          }, {
            n: 'metadata',
            col: true,
            en: 'Metadata',
            ti: '.MetadataType'
          }, {
            n: 'name',
            an: {
              lp: 'name'
            },
            t: 'a'
          }]
      }, {
        ln: 'DCP',
        ps: [{
            n: 'http',
            en: 'HTTP',
            ti: '.HTTP'
          }]
      }, {
        ln: 'ServiceIdentification',
        bti: '.DescriptionType',
        ps: [{
            n: 'serviceType',
            en: 'ServiceType',
            ti: '.CodeType'
          }, {
            n: 'serviceTypeVersion',
            col: true,
            en: 'ServiceTypeVersion'
          }, {
            n: 'fees',
            en: 'Fees'
          }, {
            n: 'accessConstraints',
            col: true,
            en: 'AccessConstraints'
          }]
      }, {
        ln: 'ContactType',
        ps: [{
            n: 'phone',
            en: 'Phone',
            ti: '.TelephoneType'
          }, {
            n: 'address',
            en: 'Address',
            ti: '.AddressType'
          }, {
            n: 'onlineResource',
            en: 'OnlineResource',
            ti: '.OnlineResourceType'
          }, {
            n: 'hoursOfService',
            en: 'HoursOfService'
          }, {
            n: 'contactInstructions',
            en: 'ContactInstructions'
          }]
      }, {
        ln: 'SectionsType',
        ps: [{
            n: 'section',
            col: true,
            en: 'Section'
          }]
      }, {
        ln: 'AcceptVersionsType',
        ps: [{
            n: 'version',
            col: true,
            en: 'Version'
          }]
      }, {
        ln: 'ServiceProvider',
        ps: [{
            n: 'providerName',
            en: 'ProviderName'
          }, {
            n: 'providerSite',
            en: 'ProviderSite',
            ti: '.OnlineResourceType'
          }, {
            n: 'serviceContact',
            en: 'ServiceContact',
            ti: '.ResponsiblePartySubsetType'
          }]
      }, {
        ln: 'RequestMethodType',
        bti: '.OnlineResourceType',
        ps: [{
            n: 'constraint',
            col: true,
            en: 'Constraint',
            ti: '.DomainType'
          }]
      }, {
        ln: 'ResponsiblePartySubsetType',
        ps: [{
            n: 'individualName',
            en: 'IndividualName'
          }, {
            n: 'positionName',
            en: 'PositionName'
          }, {
            n: 'contactInfo',
            en: 'ContactInfo',
            ti: '.ContactType'
          }, {
            n: 'role',
            en: 'Role',
            ti: '.CodeType'
          }]
      }, {
        ln: 'OperationsMetadata',
        ps: [{
            n: 'operation',
            col: true,
            en: 'Operation',
            ti: '.Operation'
          }, {
            n: 'parameter',
            col: true,
            en: 'Parameter',
            ti: '.DomainType'
          }, {
            n: 'constraint',
            col: true,
            en: 'Constraint',
            ti: '.DomainType'
          }, {
            n: 'extendedCapabilities',
            en: 'ExtendedCapabilities',
            ti: 'AnyType'
          }]
      }, {
        ln: 'MetadataType',
        ps: [{
            n: 'abstractMetaData',
            en: 'AbstractMetaData',
            ti: 'AnyType'
          }, {
            n: 'about',
            an: {
              lp: 'about'
            },
            t: 'a'
          }, {
            n: 'type',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            t: 'a'
          }, {
            n: 'actuate',
            t: 'a'
          }]
      }, {
        ln: 'TelephoneType',
        ps: [{
            n: 'voice',
            col: true,
            en: 'Voice'
          }, {
            n: 'facsimile',
            col: true,
            en: 'Facsimile'
          }]
      }, {
        ln: 'AcceptFormatsType',
        ps: [{
            n: 'outputFormat',
            col: true,
            en: 'OutputFormat'
          }]
      }, {
        ln: 'HTTP',
        ps: [{
            n: 'getOrPost',
            col: true,
            mx: false,
            dom: false,
            typed: false,
            etis: [{
                en: 'Get',
                ti: '.RequestMethodType'
              }, {
                en: 'Post',
                ti: '.RequestMethodType'
              }],
            t: 'ers'
          }]
      }, {
        ln: 'OnlineResourceType',
        ps: [{
            n: 'type',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            t: 'a'
          }, {
            n: 'actuate',
            t: 'a'
          }]
      }, {
        ln: 'DomainType',
        ps: [{
            n: 'value',
            col: true,
            en: 'Value'
          }, {
            n: 'metadata',
            col: true,
            en: 'Metadata',
            ti: '.MetadataType'
          }, {
            n: 'name',
            an: {
              lp: 'name'
            },
            t: 'a'
          }]
      }, {
        ln: 'AddressType',
        ps: [{
            n: 'deliveryPoint',
            col: true,
            en: 'DeliveryPoint'
          }, {
            n: 'city',
            en: 'City'
          }, {
            n: 'administrativeArea',
            en: 'AdministrativeArea'
          }, {
            n: 'postalCode',
            en: 'PostalCode'
          }, {
            n: 'country',
            en: 'Country'
          }, {
            n: 'electronicMailAddress',
            col: true,
            en: 'ElectronicMailAddress'
          }]
      }, {
        ln: 'WGS84BoundingBoxType',
        bti: '.BoundingBoxType'
      }, {
        ln: 'KeywordsType',
        ps: [{
            n: 'keyword',
            col: true,
            en: 'Keyword'
          }, {
            n: 'type',
            en: 'Type',
            ti: '.CodeType'
          }]
      }, {
        ln: 'GetCapabilitiesType',
        ps: [{
            n: 'acceptVersions',
            en: 'AcceptVersions',
            ti: '.AcceptVersionsType'
          }, {
            n: 'sections',
            en: 'Sections',
            ti: '.SectionsType'
          }, {
            n: 'acceptFormats',
            en: 'AcceptFormats',
            ti: '.AcceptFormatsType'
          }, {
            n: 'updateSequence',
            an: {
              lp: 'updateSequence'
            },
            t: 'a'
          }]
      }, {
        ln: 'CapabilitiesBaseType',
        ps: [{
            n: 'serviceIdentification',
            en: 'ServiceIdentification',
            ti: '.ServiceIdentification'
          }, {
            n: 'serviceProvider',
            en: 'ServiceProvider',
            ti: '.ServiceProvider'
          }, {
            n: 'operationsMetadata',
            en: 'OperationsMetadata',
            ti: '.OperationsMetadata'
          }, {
            n: 'version',
            an: {
              lp: 'version'
            },
            t: 'a'
          }, {
            n: 'updateSequence',
            an: {
              lp: 'updateSequence'
            },
            t: 'a'
          }]
      }],
    eis: [{
        en: 'SupportedCRS',
        sh: 'AvailableCRS'
      }, {
        en: 'WGS84BoundingBox',
        ti: '.WGS84BoundingBoxType',
        sh: 'BoundingBox'
      }]
  };
  var Filter_1_1_0 = {
    n: 'Filter_1_1_0',
    dens: 'http:\/\/www.opengis.net\/ogc',
    deps: ['GML_3_1_1'],
    tis: [{
        ln: 'AbstractIdType'
      }, {
        ln: 'LogicOpsType'
      }, {
        ln: 'SortByType',
        ps: [{
            n: 'sortProperty',
            col: true,
            en: 'SortProperty',
            ti: '.SortPropertyType'
          }]
      }, {
        ln: 'DistanceBufferType',
        bti: '.SpatialOpsType',
        ps: [{
            n: 'propertyName',
            en: 'PropertyName',
            ti: '.PropertyNameType'
          }, {
            n: 'geometry',
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: '_Geometry',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.AbstractGeometryType',
            t: 'er'
          }, {
            n: 'distance',
            en: 'Distance',
            ti: '.DistanceType'
          }]
      }, {
        ln: 'LogicalOperators'
      }, {
        ln: 'BBOXType',
        bti: '.SpatialOpsType',
        ps: [{
            n: 'propertyName',
            en: 'PropertyName',
            ti: '.PropertyNameType'
          }, {
            n: 'envelope',
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'Envelope',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.EnvelopeType',
            t: 'er'
          }]
      }, {
        ln: 'FeatureIdType',
        bti: '.AbstractIdType',
        ps: [{
            n: 'fid',
            ti: 'ID',
            an: {
              lp: 'fid'
            },
            t: 'a'
          }]
      }, {
        ln: 'SortPropertyType',
        ps: [{
            n: 'propertyName',
            en: 'PropertyName',
            ti: '.PropertyNameType'
          }, {
            n: 'sortOrder',
            en: 'SortOrder'
          }]
      }, {
        ln: 'ComparisonOperatorsType',
        ps: [{
            n: 'comparisonOperator',
            col: true,
            en: 'ComparisonOperator'
          }]
      }, {
        ln: 'ComparisonOpsType'
      }, {
        ln: 'LowerBoundaryType',
        ps: [{
            n: 'expression',
            mx: false,
            dom: false,
            typed: false,
            ti: '.ExpressionType',
            t: 'er'
          }]
      }, {
        ln: 'SpatialOperatorsType',
        ps: [{
            n: 'spatialOperator',
            col: true,
            en: 'SpatialOperator',
            ti: '.SpatialOperatorType'
          }]
      }, {
        ln: 'UpperBoundaryType',
        ps: [{
            n: 'expression',
            mx: false,
            dom: false,
            typed: false,
            ti: '.ExpressionType',
            t: 'er'
          }]
      }, {
        ln: 'DistanceType',
        ps: [{
            n: 'value',
            ti: 'Double',
            t: 'v'
          }, {
            n: 'units',
            an: {
              lp: 'units'
            },
            t: 'a'
          }]
      }, {
        ln: 'PropertyIsBetweenType',
        bti: '.ComparisonOpsType',
        ps: [{
            n: 'expression',
            mx: false,
            dom: false,
            typed: false,
            ti: '.ExpressionType',
            t: 'er'
          }, {
            n: 'lowerBoundary',
            en: 'LowerBoundary',
            ti: '.LowerBoundaryType'
          }, {
            n: 'upperBoundary',
            en: 'UpperBoundary',
            ti: '.UpperBoundaryType'
          }]
      }, {
        ln: 'FunctionNamesType',
        ps: [{
            n: 'functionName',
            col: true,
            en: 'FunctionName',
            ti: '.FunctionNameType'
          }]
      }, {
        ln: 'UnaryLogicOpType',
        bti: '.LogicOpsType',
        ps: [{
            n: 'comparisonOps',
            mx: false,
            dom: false,
            typed: false,
            ti: '.ComparisonOpsType',
            t: 'er'
          }, {
            n: 'spatialOps',
            mx: false,
            dom: false,
            typed: false,
            ti: '.SpatialOpsType',
            t: 'er'
          }, {
            n: 'logicOps',
            mx: false,
            dom: false,
            typed: false,
            ti: '.LogicOpsType',
            t: 'er'
          }, {
            n: 'function',
            en: 'Function',
            ti: '.FunctionType'
          }]
      }, {
        ln: 'EID'
      }, {
        ln: 'ExpressionType'
      }, {
        ln: 'ScalarCapabilitiesType',
        ps: [{
            n: 'logicalOperators',
            en: 'LogicalOperators',
            ti: '.LogicalOperators'
          }, {
            n: 'comparisonOperators',
            en: 'ComparisonOperators',
            ti: '.ComparisonOperatorsType'
          }, {
            n: 'arithmeticOperators',
            en: 'ArithmeticOperators',
            ti: '.ArithmeticOperatorsType'
          }]
      }, {
        ln: 'SimpleArithmetic'
      }, {
        ln: 'FunctionType',
        bti: '.ExpressionType',
        ps: [{
            n: 'expression',
            col: true,
            mx: false,
            dom: false,
            typed: false,
            ti: '.ExpressionType',
            t: 'er'
          }, {
            n: 'name',
            an: {
              lp: 'name'
            },
            t: 'a'
          }]
      }, {
        ln: 'PropertyNameType',
        bti: '.ExpressionType'
      }, {
        ln: 'SpatialOperatorType',
        ps: [{
            n: 'geometryOperands',
            en: 'GeometryOperands',
            ti: '.GeometryOperandsType'
          }, {
            n: 'name',
            an: {
              lp: 'name'
            },
            t: 'a'
          }]
      }, {
        ln: 'SpatialOpsType'
      }, {
        ln: 'SpatialCapabilitiesType',
        ps: [{
            n: 'geometryOperands',
            en: 'GeometryOperands',
            ti: '.GeometryOperandsType'
          }, {
            n: 'spatialOperators',
            en: 'SpatialOperators',
            ti: '.SpatialOperatorsType'
          }]
      }, {
        ln: 'BinarySpatialOpType',
        bti: '.SpatialOpsType',
        ps: [{
            n: 'propertyName1',
            en: 'PropertyName',
            ti: '.PropertyNameType'
          }, {
            n: 'propertyName2',
            en: 'PropertyName',
            ti: '.PropertyNameType'
          }, {
            n: 'geometry',
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: '_Geometry',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.AbstractGeometryType',
            t: 'er'
          }, {
            n: 'envelope',
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'Envelope',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.EnvelopeType',
            t: 'er'
          }]
      }, {
        ln: 'PropertyIsLikeType',
        bti: '.ComparisonOpsType',
        ps: [{
            n: 'propertyName',
            en: 'PropertyName',
            ti: '.PropertyNameType'
          }, {
            n: 'literal',
            en: 'Literal',
            ti: '.LiteralType'
          }, {
            n: 'wildCard',
            an: {
              lp: 'wildCard'
            },
            t: 'a'
          }, {
            n: 'singleChar',
            an: {
              lp: 'singleChar'
            },
            t: 'a'
          }, {
            n: 'escapeChar',
            an: {
              lp: 'escapeChar'
            },
            t: 'a'
          }, {
            n: 'matchCase',
            ti: 'Boolean',
            an: {
              lp: 'matchCase'
            },
            t: 'a'
          }]
      }, {
        ln: 'FunctionsType',
        ps: [{
            n: 'functionNames',
            en: 'FunctionNames',
            ti: '.FunctionNamesType'
          }]
      }, {
        ln: 'ArithmeticOperatorsType',
        ps: [{
            n: 'ops',
            col: true,
            etis: [{
                en: 'SimpleArithmetic',
                ti: '.SimpleArithmetic'
              }, {
                en: 'Functions',
                ti: '.FunctionsType'
              }],
            t: 'es'
          }]
      }, {
        ln: 'FilterType',
        ps: [{
            n: 'spatialOps',
            mx: false,
            dom: false,
            typed: false,
            ti: '.SpatialOpsType',
            t: 'er'
          }, {
            n: 'comparisonOps',
            mx: false,
            dom: false,
            typed: false,
            ti: '.ComparisonOpsType',
            t: 'er'
          }, {
            n: 'logicOps',
            mx: false,
            dom: false,
            typed: false,
            ti: '.LogicOpsType',
            t: 'er'
          }, {
            n: 'id',
            col: true,
            mx: false,
            dom: false,
            typed: false,
            en: '_Id',
            ti: '.AbstractIdType',
            t: 'er'
          }]
      }, {
        ln: 'GmlObjectIdType',
        bti: '.AbstractIdType',
        ps: [{
            n: 'id',
            ti: 'ID',
            an: {
              lp: 'id',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            t: 'a'
          }]
      }, {
        ln: 'BinaryLogicOpType',
        bti: '.LogicOpsType',
        ps: [{
            n: 'ops',
            col: true,
            mx: false,
            dom: false,
            typed: false,
            etis: [{
                en: 'spatialOps',
                ti: '.SpatialOpsType'
              }, {
                en: 'Function',
                ti: '.FunctionType'
              }, {
                en: 'logicOps',
                ti: '.LogicOpsType'
              }, {
                en: 'comparisonOps',
                ti: '.ComparisonOpsType'
              }],
            t: 'ers'
          }]
      }, {
        ln: 'GeometryOperandsType',
        ps: [{
            n: 'geometryOperand',
            col: true,
            en: 'GeometryOperand',
            ti: 'QName'
          }]
      }, {
        ln: 'IdCapabilitiesType',
        ps: [{
            n: 'ids',
            col: true,
            etis: [{
                en: 'EID',
                ti: '.EID'
              }, {
                en: 'FID',
                ti: '.FID'
              }],
            t: 'es'
          }]
      }, {
        ln: 'LiteralType',
        ps: [{
            n: 'content',
            col: true,
            dom: false,
            t: 'ae'
          }]
      }, {
        ln: 'PropertyIsNullType',
        bti: '.ComparisonOpsType',
        ps: [{
            n: 'propertyName',
            en: 'PropertyName',
            ti: '.PropertyNameType'
          }]
      }, {
        ln: 'BinaryComparisonOpType',
        bti: '.ComparisonOpsType',
        ps: [{
            n: 'expression',
            col: true,
            mx: false,
            dom: false,
            typed: false,
            ti: '.ExpressionType',
            t: 'er'
          }, {
            n: 'matchCase',
            ti: 'Boolean',
            an: {
              lp: 'matchCase'
            },
            t: 'a'
          }]
      }, {
        ln: 'BinaryOperatorType',
        bti: '.ExpressionType',
        ps: [{
            n: 'expression',
            col: true,
            mx: false,
            dom: false,
            typed: false,
            ti: '.ExpressionType',
            t: 'er'
          }]
      }, {
        ln: 'FID'
      }, {
        ln: 'FilterCapabilities',
        ps: [{
            n: 'spatialCapabilities',
            en: 'Spatial_Capabilities',
            ti: '.SpatialCapabilitiesType'
          }, {
            n: 'scalarCapabilities',
            en: 'Scalar_Capabilities',
            ti: '.ScalarCapabilitiesType'
          }, {
            n: 'idCapabilities',
            en: 'Id_Capabilities',
            ti: '.IdCapabilitiesType'
          }]
      }, {
        ln: 'FunctionNameType',
        ps: [{
            n: 'value',
            t: 'v'
          }, {
            n: 'nArgs',
            an: {
              lp: 'nArgs'
            },
            t: 'a'
          }]
      }, {
        t: 'enum',
        ln: 'SpatialOperatorNameType',
        vs: ['BBOX', 'Equals', 'Disjoint', 'Intersects', 'Touches', 'Crosses', 'Within', 'Contains', 'Overlaps', 'Beyond', 'DWithin']
      }, {
        t: 'enum',
        ln: 'ComparisonOperatorType',
        vs: ['LessThan', 'GreaterThan', 'LessThanEqualTo', 'GreaterThanEqualTo', 'EqualTo', 'NotEqualTo', 'Like', 'Between', 'NullCheck']
      }, {
        t: 'enum',
        ln: 'SortOrderType',
        vs: ['DESC', 'ASC']
      }],
    eis: [{
        en: 'FeatureId',
        ti: '.FeatureIdType',
        sh: '_Id'
      }, {
        en: 'Filter',
        ti: '.FilterType'
      }, {
        en: 'GmlObjectId',
        ti: '.GmlObjectIdType',
        sh: '_Id'
      }, {
        en: 'FID',
        ti: '.FID'
      }, {
        en: 'Div',
        ti: '.BinaryOperatorType',
        sh: 'expression'
      }, {
        en: '_Id',
        ti: '.AbstractIdType'
      }, {
        en: 'Or',
        ti: '.BinaryLogicOpType',
        sh: 'logicOps'
      }, {
        en: 'Filter_Capabilities',
        ti: '.FilterCapabilities'
      }, {
        en: 'SortBy',
        ti: '.SortByType'
      }, {
        en: 'PropertyIsNull',
        ti: '.PropertyIsNullType',
        sh: 'comparisonOps'
      }, {
        en: 'Within',
        ti: '.BinarySpatialOpType',
        sh: 'spatialOps'
      }, {
        en: 'PropertyIsLike',
        ti: '.PropertyIsLikeType',
        sh: 'comparisonOps'
      }, {
        en: 'PropertyIsEqualTo',
        ti: '.BinaryComparisonOpType',
        sh: 'comparisonOps'
      }, {
        en: 'LogicalOperators',
        ti: '.LogicalOperators'
      }, {
        en: 'Disjoint',
        ti: '.BinarySpatialOpType',
        sh: 'spatialOps'
      }, {
        en: 'BBOX',
        ti: '.BBOXType',
        sh: 'spatialOps'
      }, {
        en: 'And',
        ti: '.BinaryLogicOpType',
        sh: 'logicOps'
      }, {
        en: 'Function',
        ti: '.FunctionType',
        sh: 'expression'
      }, {
        en: 'Not',
        ti: '.UnaryLogicOpType',
        sh: 'logicOps'
      }, {
        en: 'SimpleArithmetic',
        ti: '.SimpleArithmetic'
      }, {
        en: 'PropertyIsGreaterThanOrEqualTo',
        ti: '.BinaryComparisonOpType',
        sh: 'comparisonOps'
      }, {
        en: 'PropertyIsGreaterThan',
        ti: '.BinaryComparisonOpType',
        sh: 'comparisonOps'
      }, {
        en: 'DWithin',
        ti: '.DistanceBufferType',
        sh: 'spatialOps'
      }, {
        en: 'Overlaps',
        ti: '.BinarySpatialOpType',
        sh: 'spatialOps'
      }, {
        en: 'Mul',
        ti: '.BinaryOperatorType',
        sh: 'expression'
      }, {
        en: 'expression',
        ti: '.ExpressionType'
      }, {
        en: 'logicOps',
        ti: '.LogicOpsType'
      }, {
        en: 'PropertyIsNotEqualTo',
        ti: '.BinaryComparisonOpType',
        sh: 'comparisonOps'
      }, {
        en: 'spatialOps',
        ti: '.SpatialOpsType'
      }, {
        en: 'Crosses',
        ti: '.BinarySpatialOpType',
        sh: 'spatialOps'
      }, {
        en: 'PropertyIsLessThanOrEqualTo',
        ti: '.BinaryComparisonOpType',
        sh: 'comparisonOps'
      }, {
        en: 'comparisonOps',
        ti: '.ComparisonOpsType'
      }, {
        en: 'Literal',
        ti: '.LiteralType',
        sh: 'expression'
      }, {
        en: 'Contains',
        ti: '.BinarySpatialOpType',
        sh: 'spatialOps'
      }, {
        en: 'EID',
        ti: '.EID'
      }, {
        en: 'PropertyName',
        ti: '.PropertyNameType',
        sh: 'expression'
      }, {
        en: 'PropertyIsBetween',
        ti: '.PropertyIsBetweenType',
        sh: 'comparisonOps'
      }, {
        en: 'Touches',
        ti: '.BinarySpatialOpType',
        sh: 'spatialOps'
      }, {
        en: 'Intersects',
        ti: '.BinarySpatialOpType',
        sh: 'spatialOps'
      }, {
        en: 'Equals',
        ti: '.BinarySpatialOpType',
        sh: 'spatialOps'
      }, {
        en: 'Beyond',
        ti: '.DistanceBufferType',
        sh: 'spatialOps'
      }, {
        en: 'Add',
        ti: '.BinaryOperatorType',
        sh: 'expression'
      }, {
        en: 'Sub',
        ti: '.BinaryOperatorType',
        sh: 'expression'
      }, {
        en: 'PropertyIsLessThan',
        ti: '.BinaryComparisonOpType',
        sh: 'comparisonOps'
      }]
  };
  var GML_3_1_1 = {
    n: 'GML_3_1_1',
    dens: 'http:\/\/www.opengis.net\/gml',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['XLink_1_0'],
    tis: [{
        ln: 'AbstractTimeComplexType',
        bti: '.AbstractTimeObjectType'
      }, {
        ln: 'PointType',
        bti: '.AbstractGeometricPrimitiveType',
        ps: [{
            n: 'pos',
            ti: '.DirectPositionType'
          }, {
            n: 'coordinates',
            ti: '.CoordinatesType'
          }, {
            n: 'coord',
            ti: '.CoordType'
          }]
      }, {
        ln: 'TimePositionType',
        ps: [{
            n: 'value',
            ti: {
              t: 'l'
            },
            t: 'v'
          }, {
            n: 'frame',
            an: {
              lp: 'frame'
            },
            t: 'a'
          }, {
            n: 'calendarEraName',
            an: {
              lp: 'calendarEraName'
            },
            t: 'a'
          }, {
            n: 'indeterminatePosition',
            an: {
              lp: 'indeterminatePosition'
            },
            t: 'a'
          }]
      }, {
        ln: 'StringOrRefType',
        ps: [{
            n: 'value',
            t: 'v'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            t: 'a'
          }, {
            n: 'type',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            t: 'a'
          }, {
            n: 'actuate',
            t: 'a'
          }]
      }, {
        ln: 'DirectPositionType',
        ps: [{
            n: 'value',
            ti: {
              t: 'l',
              bti: 'Double'
            },
            t: 'v'
          }, {
            n: 'srsName',
            an: {
              lp: 'srsName'
            },
            t: 'a'
          }, {
            n: 'srsDimension',
            ti: 'Integer',
            an: {
              lp: 'srsDimension'
            },
            t: 'a'
          }, {
            n: 'axisLabels',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'axisLabels'
            },
            t: 'a'
          }, {
            n: 'uomLabels',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'uomLabels'
            },
            t: 'a'
          }]
      }, {
        ln: 'DataBlockType',
        ps: [{
            n: 'rangeParameters',
            ti: '.RangeParametersType'
          }, {
            n: 'tupleList',
            ti: '.CoordinatesType'
          }, {
            n: 'doubleOrNullTupleList',
            ti: {
              t: 'l'
            }
          }]
      }, {
        ln: 'DirectionPropertyType',
        ps: [{
            n: 'directionVector',
            en: 'DirectionVector',
            ti: '.DirectionVectorType'
          }, {
            n: 'compassPoint',
            en: 'CompassPoint'
          }, {
            n: 'directionKeyword',
            en: 'DirectionKeyword',
            ti: '.CodeType'
          }, {
            n: 'directionString',
            en: 'DirectionString',
            ti: '.StringOrRefType'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            t: 'a'
          }, {
            n: 'type',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            t: 'a'
          }, {
            n: 'actuate',
            t: 'a'
          }]
      }, {
        ln: 'GeometricComplexType',
        bti: '.AbstractGeometryType',
        ps: [{
            n: 'element',
            col: true,
            ti: '.GeometricPrimitivePropertyType'
          }]
      }, {
        ln: 'AbstractSolidType',
        bti: '.AbstractGeometricPrimitiveType'
      }, {
        ln: 'RectifiedGridDomainType',
        bti: '.DomainSetType'
      }, {
        ln: 'QuantityExtentType',
        bti: '.MeasureOrNullListType'
      }, {
        ln: 'PriorityLocationPropertyType',
        bti: '.LocationPropertyType',
        ps: [{
            n: 'priority',
            an: {
              lp: 'priority'
            },
            t: 'a'
          }]
      }, {
        ln: 'EnvelopeType',
        ps: [{
            n: 'lowerCorner',
            ti: '.DirectPositionType'
          }, {
            n: 'upperCorner',
            ti: '.DirectPositionType'
          }, {
            n: 'coord',
            col: true,
            ti: '.CoordType'
          }, {
            n: 'pos',
            col: true,
            ti: '.DirectPositionType'
          }, {
            n: 'coordinates',
            ti: '.CoordinatesType'
          }, {
            n: 'srsName',
            an: {
              lp: 'srsName'
            },
            t: 'a'
          }, {
            n: 'srsDimension',
            ti: 'Integer',
            an: {
              lp: 'srsDimension'
            },
            t: 'a'
          }, {
            n: 'axisLabels',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'axisLabels'
            },
            t: 'a'
          }, {
            n: 'uomLabels',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'uomLabels'
            },
            t: 'a'
          }]
      }, {
        ln: 'TargetPropertyType',
        ps: [{
            n: 'feature',
            mx: false,
            dom: false,
            typed: false,
            en: '_Feature',
            ti: '.AbstractFeatureType',
            t: 'er'
          }, {
            n: 'geometry',
            mx: false,
            dom: false,
            typed: false,
            en: '_Geometry',
            ti: '.AbstractGeometryType',
            t: 'er'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            t: 'a'
          }, {
            n: 'type',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            t: 'a'
          }, {
            n: 'actuate',
            t: 'a'
          }]
      }, {
        ln: 'RangeParametersType',
        ps: [{
            n: '_boolean',
            en: 'Boolean',
            ti: 'Boolean'
          }, {
            n: 'category',
            en: 'Category',
            ti: '.CodeType'
          }, {
            n: 'quantity',
            en: 'Quantity',
            ti: '.MeasureType'
          }, {
            n: 'count',
            en: 'Count',
            ti: 'Integer'
          }, {
            n: 'booleanList',
            en: 'BooleanList',
            ti: {
              t: 'l'
            }
          }, {
            n: 'categoryList',
            en: 'CategoryList',
            ti: '.CodeOrNullListType'
          }, {
            n: 'quantityList',
            en: 'QuantityList',
            ti: '.MeasureOrNullListType'
          }, {
            n: 'countList',
            en: 'CountList',
            ti: {
              t: 'l'
            }
          }, {
            n: 'categoryExtent',
            en: 'CategoryExtent',
            ti: '.CategoryExtentType'
          }, {
            n: 'quantityExtent',
            en: 'QuantityExtent',
            ti: '.QuantityExtentType'
          }, {
            n: 'countExtent',
            en: 'CountExtent',
            ti: {
              t: 'l'
            }
          }, {
            n: 'compositeValue',
            mx: false,
            dom: false,
            typed: false,
            en: 'CompositeValue',
            ti: '.CompositeValueType',
            t: 'er'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            t: 'a'
          }, {
            n: 'type',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            t: 'a'
          }, {
            n: 'actuate',
            t: 'a'
          }]
      }, {
        ln: 'IdentifierType',
        ps: [{
            n: 'name',
            mx: false,
            dom: false,
            typed: false,
            ti: '.CodeType',
            t: 'er'
          }, {
            n: 'version'
          }, {
            n: 'remarks',
            ti: '.StringOrRefType'
          }]
      }, {
        ln: 'MultiSolidDomainType',
        bti: '.DomainSetType'
      }, {
        ln: 'CodeOrNullListType',
        ps: [{
            n: 'value',
            ti: {
              t: 'l'
            },
            t: 'v'
          }, {
            n: 'codeSpace',
            an: {
              lp: 'codeSpace'
            },
            t: 'a'
          }]
      }, {
        ln: 'CoordType',
        ps: [{
            n: 'x',
            en: 'X',
            ti: 'Decimal'
          }, {
            n: 'y',
            en: 'Y',
            ti: 'Decimal'
          }, {
            n: 'z',
            en: 'Z',
            ti: 'Decimal'
          }]
      }, {
        ln: 'ValueArrayType',
        bti: '.CompositeValueType',
        ps: [{
            n: 'codeSpace',
            an: {
              lp: 'codeSpace'
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
        ln: 'VectorType',
        ps: [{
            n: 'value',
            ti: {
              t: 'l',
              bti: 'Double'
            },
            t: 'v'
          }, {
            n: 'srsName',
            an: {
              lp: 'srsName'
            },
            t: 'a'
          }, {
            n: 'srsDimension',
            ti: 'Integer',
            an: {
              lp: 'srsDimension'
            },
            t: 'a'
          }, {
            n: 'axisLabels',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'axisLabels'
            },
            t: 'a'
          }, {
            n: 'uomLabels',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'uomLabels'
            },
            t: 'a'
          }]
      }, {
        ln: 'FeatureCollectionType',
        bti: '.AbstractFeatureCollectionType'
      }, {
        ln: 'AbstractGeometryType',
        bti: '.AbstractGMLType',
        ps: [{
            n: 'gid',
            an: {
              lp: 'gid'
            },
            t: 'a'
          }, {
            n: 'srsName',
            an: {
              lp: 'srsName'
            },
            t: 'a'
          }, {
            n: 'srsDimension',
            ti: 'Integer',
            an: {
              lp: 'srsDimension'
            },
            t: 'a'
          }, {
            n: 'axisLabels',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'axisLabels'
            },
            t: 'a'
          }, {
            n: 'uomLabels',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'uomLabels'
            },
            t: 'a'
          }]
      }, {
        ln: 'AbstractGeometricAggregateType',
        bti: '.AbstractGeometryType'
      }, {
        ln: 'ArrayAssociationType',
        ps: [{
            n: 'object',
            col: true,
            mx: false,
            dom: false,
            typed: false,
            en: '_Object',
            ti: 'AnyType',
            t: 'er'
          }]
      }, {
        ln: 'AssociationType',
        ps: [{
            n: 'object',
            mx: false,
            dom: false,
            typed: false,
            en: '_Object',
            ti: 'AnyType',
            t: 'er'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            t: 'a'
          }, {
            n: 'type',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            t: 'a'
          }, {
            n: 'actuate',
            t: 'a'
          }]
      }, {
        ln: 'FileType',
        ps: [{
            n: 'rangeParameters',
            ti: '.RangeParametersType'
          }, {
            n: 'fileName'
          }, {
            n: 'fileStructure'
          }, {
            n: 'mimeType'
          }, {
            n: 'compression'
          }]
      }, {
        ln: 'MeasureOrNullListType',
        ps: [{
            n: 'value',
            ti: {
              t: 'l'
            },
            t: 'v'
          }, {
            n: 'uom',
            an: {
              lp: 'uom'
            },
            t: 'a'
          }]
      }, {
        ln: 'MultiCurveDomainType',
        bti: '.DomainSetType'
      }, {
        ln: 'CoordinatesType',
        ps: [{
            n: 'value',
            t: 'v'
          }, {
            n: 'decimal',
            an: {
              lp: 'decimal'
            },
            t: 'a'
          }, {
            n: 'cs',
            an: {
              lp: 'cs'
            },
            t: 'a'
          }, {
            n: 'ts',
            an: {
              lp: 'ts'
            },
            t: 'a'
          }]
      }, {
        ln: 'AbstractGMLType',
        ps: [{
            n: 'metaDataProperty',
            col: true,
            ti: '.MetaDataPropertyType'
          }, {
            n: 'description',
            ti: '.StringOrRefType'
          }, {
            n: 'name',
            col: true,
            mx: false,
            dom: false,
            typed: false,
            ti: '.CodeType',
            t: 'er'
          }, {
            n: 'id',
            ti: 'ID',
            an: {
              lp: 'id',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            t: 'a'
          }]
      }, {
        ln: 'AbstractMetaDataType',
        ps: [{
            n: 'content',
            t: 'v'
          }, {
            n: 'id',
            ti: 'ID',
            an: {
              lp: 'id',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            t: 'a'
          }]
      }, {
        ln: 'AbstractRingType',
        bti: '.AbstractGeometryType'
      }, {
        ln: 'BoundingShapeType',
        ps: [{
            n: 'envelope',
            mx: false,
            dom: false,
            typed: false,
            en: 'Envelope',
            ti: '.EnvelopeType',
            t: 'er'
          }, {
            n: '_null',
            en: 'Null',
            ti: {
              t: 'l'
            }
          }]
      }, {
        ln: 'TimePrimitivePropertyType',
        ps: [{
            n: 'timePrimitive',
            mx: false,
            dom: false,
            typed: false,
            en: '_TimePrimitive',
            ti: '.AbstractTimePrimitiveType',
            t: 'er'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            t: 'a'
          }, {
            n: 'type',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            t: 'a'
          }, {
            n: 'actuate',
            t: 'a'
          }]
      }, {
        ln: 'RangeSetType',
        ps: [{
            n: 'valueArray',
            col: true,
            en: 'ValueArray',
            ti: '.ValueArrayType'
          }, {
            n: 'scalarValueList',
            col: true,
            mx: false,
            dom: false,
            typed: false,
            etis: [{
                en: 'CategoryList',
                ti: '.CodeOrNullListType'
              }, {
                en: 'QuantityList',
                ti: '.MeasureOrNullListType'
              }, {
                en: 'CountList',
                ti: {
                  t: 'l'
                }
              }, {
                en: 'BooleanList',
                ti: {
                  t: 'l'
                }
              }],
            t: 'ers'
          }, {
            n: 'dataBlock',
            en: 'DataBlock',
            ti: '.DataBlockType'
          }, {
            n: 'file',
            en: 'File',
            ti: '.FileType'
          }]
      }, {
        ln: 'MetaDataPropertyType',
        ps: [{
            n: 'any',
            mx: false,
            t: 'ae'
          }, {
            n: 'about',
            an: {
              lp: 'about'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            t: 'a'
          }, {
            n: 'type',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            t: 'a'
          }, {
            n: 'actuate',
            t: 'a'
          }]
      }, {
        ln: 'ReferenceType',
        ps: [{
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            t: 'a'
          }, {
            n: 'type',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            t: 'a'
          }, {
            n: 'actuate',
            t: 'a'
          }]
      }, {
        ln: 'ObservationType',
        bti: '.AbstractFeatureType',
        ps: [{
            n: 'validTime',
            ti: '.TimePrimitivePropertyType'
          }, {
            n: 'using',
            ti: '.FeaturePropertyType'
          }, {
            n: 'target',
            mx: false,
            dom: false,
            typed: false,
            ti: '.TargetPropertyType',
            t: 'er'
          }, {
            n: 'resultOf',
            ti: '.AssociationType'
          }]
      }, {
        ln: 'MultiSurfaceDomainType',
        bti: '.DomainSetType'
      }, {
        ln: 'GeometryArrayPropertyType',
        ps: [{
            n: 'geometry',
            col: true,
            mx: false,
            dom: false,
            typed: false,
            en: '_Geometry',
            ti: '.AbstractGeometryType',
            t: 'er'
          }]
      }, {
        ln: 'AbstractTimeObjectType',
        bti: '.AbstractGMLType'
      }, {
        ln: 'AbstractTimeSliceType',
        bti: '.AbstractGMLType',
        ps: [{
            n: 'validTime',
            ti: '.TimePrimitivePropertyType'
          }, {
            n: 'dataSource',
            ti: '.StringOrRefType'
          }]
      }, {
        ln: 'FeaturePropertyType',
        ps: [{
            n: 'feature',
            mx: false,
            dom: false,
            typed: false,
            en: '_Feature',
            ti: '.AbstractFeatureType',
            t: 'er'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            t: 'a'
          }, {
            n: 'type',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            t: 'a'
          }, {
            n: 'actuate',
            t: 'a'
          }]
      }, {
        ln: 'AngleType',
        bti: '.MeasureType'
      }, {
        ln: 'AbstractCoverageType',
        bti: '.AbstractFeatureType',
        ps: [{
            n: 'domainSet',
            mx: false,
            dom: false,
            typed: false,
            ti: '.DomainSetType',
            t: 'er'
          }, {
            n: 'rangeSet',
            ti: '.RangeSetType'
          }, {
            n: 'dimension',
            ti: 'Integer',
            an: {
              lp: 'dimension'
            },
            t: 'a'
          }]
      }, {
        ln: 'ValueArrayPropertyType',
        ps: [{
            n: 'value',
            col: true,
            mx: false,
            dom: false,
            typed: false,
            etis: [{
                en: 'CategoryList',
                ti: '.CodeOrNullListType'
              }, {
                en: 'Count',
                ti: 'Integer'
              }, {
                en: '_Object',
                ti: 'AnyType'
              }, {
                en: 'CompositeValue',
                ti: '.CompositeValueType'
              }, {
                en: 'Boolean',
                ti: 'Boolean'
              }, {
                en: 'CountList',
                ti: {
                  t: 'l'
                }
              }, {
                en: 'QuantityExtent',
                ti: '.QuantityExtentType'
              }, {
                en: 'Quantity',
                ti: '.MeasureType'
              }, {
                en: 'CountExtent',
                ti: {
                  t: 'l'
                }
              }, {
                en: 'QuantityList',
                ti: '.MeasureOrNullListType'
              }, {
                en: 'Category',
                ti: '.CodeType'
              }, {
                en: 'Null',
                ti: {
                  t: 'l'
                }
              }, {
                en: 'BooleanList',
                ti: {
                  t: 'l'
                }
              }, {
                en: 'CategoryExtent',
                ti: '.CategoryExtentType'
              }],
            t: 'ers'
          }]
      }, {
        ln: 'AbstractSurfaceType',
        bti: '.AbstractGeometricPrimitiveType'
      }, {
        ln: 'AbstractTimeGeometricPrimitiveType',
        bti: '.AbstractTimePrimitiveType',
        ps: [{
            n: 'frame',
            an: {
              lp: 'frame'
            },
            t: 'a'
          }]
      }, {
        ln: 'MultiPointDomainType',
        bti: '.DomainSetType'
      }, {
        ln: 'ValuePropertyType',
        ps: [{
            n: '_boolean',
            en: 'Boolean',
            ti: 'Boolean'
          }, {
            n: 'category',
            en: 'Category',
            ti: '.CodeType'
          }, {
            n: 'quantity',
            en: 'Quantity',
            ti: '.MeasureType'
          }, {
            n: 'count',
            en: 'Count',
            ti: 'Integer'
          }, {
            n: 'booleanList',
            en: 'BooleanList',
            ti: {
              t: 'l'
            }
          }, {
            n: 'categoryList',
            en: 'CategoryList',
            ti: '.CodeOrNullListType'
          }, {
            n: 'quantityList',
            en: 'QuantityList',
            ti: '.MeasureOrNullListType'
          }, {
            n: 'countList',
            en: 'CountList',
            ti: {
              t: 'l'
            }
          }, {
            n: 'categoryExtent',
            en: 'CategoryExtent',
            ti: '.CategoryExtentType'
          }, {
            n: 'quantityExtent',
            en: 'QuantityExtent',
            ti: '.QuantityExtentType'
          }, {
            n: 'countExtent',
            en: 'CountExtent',
            ti: {
              t: 'l'
            }
          }, {
            n: 'compositeValue',
            mx: false,
            dom: false,
            typed: false,
            en: 'CompositeValue',
            ti: '.CompositeValueType',
            t: 'er'
          }, {
            n: 'object',
            mx: false,
            dom: false,
            typed: false,
            en: '_Object',
            ti: 'AnyType',
            t: 'er'
          }, {
            n: '_null',
            en: 'Null',
            ti: {
              t: 'l'
            }
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            t: 'a'
          }, {
            n: 'type',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            t: 'a'
          }, {
            n: 'actuate',
            t: 'a'
          }]
      }, {
        ln: 'RelatedTimeType',
        bti: '.TimePrimitivePropertyType',
        ps: [{
            n: 'relativePosition',
            an: {
              lp: 'relativePosition'
            },
            t: 'a'
          }]
      }, {
        ln: 'GeometryPropertyType',
        ps: [{
            n: 'geometry',
            mx: false,
            dom: false,
            typed: false,
            en: '_Geometry',
            ti: '.AbstractGeometryType',
            t: 'er'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            t: 'a'
          }, {
            n: 'type',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            t: 'a'
          }, {
            n: 'actuate',
            t: 'a'
          }]
      }, {
        ln: 'MovingObjectStatusType',
        bti: '.AbstractTimeSliceType',
        ps: [{
            n: 'location',
            mx: false,
            dom: false,
            typed: false,
            ti: '.LocationPropertyType',
            t: 'er'
          }, {
            n: 'speed',
            ti: '.MeasureType'
          }, {
            n: 'bearing',
            ti: '.DirectionPropertyType'
          }, {
            n: 'acceleration',
            ti: '.MeasureType'
          }, {
            n: 'elevation',
            ti: '.MeasureType'
          }, {
            n: 'status',
            ti: '.StringOrRefType'
          }]
      }, {
        ln: 'AbstractTimeTopologyPrimitiveType',
        bti: '.AbstractTimePrimitiveType',
        ps: [{
            n: 'complex',
            ti: '.ReferenceType'
          }]
      }, {
        ln: 'AbstractFeatureType',
        bti: '.AbstractGMLType',
        ps: [{
            n: 'boundedBy',
            ti: '.BoundingShapeType'
          }, {
            n: 'location',
            mx: false,
            dom: false,
            typed: false,
            ti: '.LocationPropertyType',
            t: 'er'
          }]
      }, {
        ln: 'GridDomainType',
        bti: '.DomainSetType'
      }, {
        ln: 'AbstractCurveType',
        bti: '.AbstractGeometricPrimitiveType'
      }, {
        ln: 'CodeType',
        ps: [{
            n: 'value',
            t: 'v'
          }, {
            n: 'codeSpace',
            an: {
              lp: 'codeSpace'
            },
            t: 'a'
          }]
      }, {
        ln: 'CategoryExtentType',
        bti: '.CodeOrNullListType'
      }, {
        ln: 'DirectionVectorType',
        ps: [{
            n: 'vector',
            ti: '.VectorType'
          }, {
            n: 'horizontalAngle',
            ti: '.AngleType'
          }, {
            n: 'verticalAngle',
            ti: '.AngleType'
          }]
      }, {
        ln: 'FeatureArrayPropertyType',
        ps: [{
            n: 'feature',
            col: true,
            mx: false,
            dom: false,
            typed: false,
            en: '_Feature',
            ti: '.AbstractFeatureType',
            t: 'er'
          }]
      }, {
        ln: 'DomainSetType',
        ps: [{
            n: 'geometry',
            mx: false,
            dom: false,
            typed: false,
            en: '_Geometry',
            ti: '.AbstractGeometryType',
            t: 'er'
          }, {
            n: 'timeObject',
            mx: false,
            dom: false,
            typed: false,
            en: '_TimeObject',
            ti: '.AbstractTimeObjectType',
            t: 'er'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            t: 'a'
          }, {
            n: 'type',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            t: 'a'
          }, {
            n: 'actuate',
            t: 'a'
          }]
      }, {
        ln: 'CompositeValueType',
        bti: '.AbstractGMLType',
        ps: [{
            n: 'valueComponent',
            col: true,
            ti: '.ValuePropertyType'
          }, {
            n: 'valueComponents',
            ti: '.ValueArrayPropertyType'
          }]
      }, {
        ln: 'GeometricPrimitivePropertyType',
        ps: [{
            n: 'geometricPrimitive',
            mx: false,
            dom: false,
            typed: false,
            en: '_GeometricPrimitive',
            ti: '.AbstractGeometricPrimitiveType',
            t: 'er'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            t: 'a'
          }, {
            n: 'type',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            t: 'a'
          }, {
            n: 'actuate',
            t: 'a'
          }]
      }, {
        ln: 'MeasureType',
        ps: [{
            n: 'value',
            ti: 'Double',
            t: 'v'
          }, {
            n: 'uom',
            an: {
              lp: 'uom'
            },
            t: 'a'
          }]
      }, {
        ln: 'AbstractFeatureCollectionType',
        bti: '.AbstractFeatureType',
        ps: [{
            n: 'featureMember',
            col: true,
            ti: '.FeaturePropertyType'
          }, {
            n: 'featureMembers',
            ti: '.FeatureArrayPropertyType'
          }]
      }, {
        ln: 'EnvelopeWithTimePeriodType',
        bti: '.EnvelopeType',
        ps: [{
            n: 'timePosition',
            col: true,
            ti: '.TimePositionType'
          }, {
            n: 'frame',
            an: {
              lp: 'frame'
            },
            t: 'a'
          }]
      }, {
        ln: 'AbstractGeometricPrimitiveType',
        bti: '.AbstractGeometryType'
      }, {
        ln: 'LocationPropertyType',
        ps: [{
            n: 'geometry',
            mx: false,
            dom: false,
            typed: false,
            en: '_Geometry',
            ti: '.AbstractGeometryType',
            t: 'er'
          }, {
            n: 'locationKeyWord',
            en: 'LocationKeyWord',
            ti: '.CodeType'
          }, {
            n: 'locationString',
            en: 'LocationString',
            ti: '.StringOrRefType'
          }, {
            n: '_null',
            en: 'Null',
            ti: {
              t: 'l'
            }
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            t: 'a'
          }, {
            n: 'type',
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }, {
            n: 'role',
            t: 'a'
          }, {
            n: 'arcrole',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'show',
            t: 'a'
          }, {
            n: 'actuate',
            t: 'a'
          }]
      }, {
        ln: 'AbstractTimePrimitiveType',
        bti: '.AbstractTimeObjectType',
        ps: [{
            n: 'relatedTime',
            col: true,
            ti: '.RelatedTimeType'
          }]
      }, {
        t: 'enum',
        ln: 'FileValueModelType',
        vs: ['Record Interleaved']
      }, {
        t: 'enum',
        ln: 'TimeIndeterminateValueType',
        vs: ['after', 'before', 'now', 'unknown']
      }, {
        t: 'enum',
        ln: 'CompassPointEnumeration',
        vs: ['N', 'NNE', 'NE', 'ENE', 'E', 'ESE', 'SE', 'SSE', 'S', 'SSW', 'SW', 'WSW', 'W', 'WNW', 'NW', 'NNW']
      }],
    eis: [{
        en: 'multiSolidDomain',
        ti: '.MultiSolidDomainType',
        sh: 'domainSet'
      }, {
        en: 'Point',
        ti: '.PointType',
        sh: '_GeometricPrimitive'
      }, {
        en: 'Observation',
        ti: '.ObservationType',
        sh: '_Feature'
      }, {
        en: 'subject',
        ti: '.TargetPropertyType',
        sh: 'target'
      }, {
        en: 'priorityLocation',
        ti: '.PriorityLocationPropertyType',
        sh: 'location'
      }, {
        en: '_ImplicitGeometry',
        ti: '.AbstractGeometryType',
        sh: '_Geometry'
      }, {
        en: '_GeometricAggregate',
        ti: '.AbstractGeometricAggregateType',
        sh: '_Geometry'
      }, {
        en: '_Curve',
        ti: '.AbstractCurveType',
        sh: '_GeometricPrimitive'
      }, {
        en: 'coordinateOperationName',
        ti: '.CodeType',
        sh: 'name'
      }, {
        en: '_Coverage',
        ti: '.AbstractCoverageType',
        sh: '_Feature'
      }, {
        en: '_TimeComplex',
        ti: '.AbstractTimeComplexType',
        sh: '_TimeObject'
      }, {
        en: 'GeometricComplex',
        ti: '.GeometricComplexType',
        sh: '_Geometry'
      }, {
        en: 'srsName',
        ti: '.CodeType',
        sh: 'name'
      }, {
        en: 'csName',
        ti: '.CodeType',
        sh: 'name'
      }, {
        en: '_Ring',
        ti: '.AbstractRingType',
        sh: '_Geometry'
      }, {
        en: '_TimePrimitive',
        ti: '.AbstractTimePrimitiveType',
        sh: '_TimeObject'
      }, {
        en: 'methodName',
        ti: '.CodeType',
        sh: 'name'
      }, {
        en: 'multiCurveDomain',
        ti: '.MultiCurveDomainType',
        sh: 'domainSet'
      }, {
        en: 'gridDomain',
        ti: '.GridDomainType',
        sh: 'domainSet'
      }, {
        en: 'groupName',
        ti: '.CodeType',
        sh: 'name'
      }, {
        en: 'multiSurfaceDomain',
        ti: '.MultiSurfaceDomainType',
        sh: 'domainSet'
      }, {
        en: 'ValueArray',
        ti: '.ValueArrayType',
        sh: 'CompositeValue'
      }, {
        en: '_GML',
        ti: '.AbstractGMLType',
        sh: '_Object'
      }, {
        en: '_MetaData',
        ti: '.AbstractMetaDataType',
        sh: '_Object'
      }, {
        en: '_TimeGeometricPrimitive',
        ti: '.AbstractTimeGeometricPrimitiveType',
        sh: '_TimePrimitive'
      }, {
        en: '_FeatureCollection',
        ti: '.AbstractFeatureCollectionType',
        sh: '_Feature'
      }, {
        en: 'parameterName',
        ti: '.CodeType',
        sh: 'name'
      }, {
        en: 'rectifiedGridDomain',
        ti: '.RectifiedGridDomainType',
        sh: 'domainSet'
      }, {
        en: 'datumName',
        ti: '.CodeType',
        sh: 'name'
      }, {
        en: '_Surface',
        ti: '.AbstractSurfaceType',
        sh: '_GeometricPrimitive'
      }, {
        en: 'FeatureCollection',
        ti: '.FeatureCollectionType',
        sh: '_Feature'
      }, {
        en: 'multiPointDomain',
        ti: '.MultiPointDomainType',
        sh: 'domainSet'
      }, {
        en: '_TimeTopologyPrimitive',
        ti: '.AbstractTimeTopologyPrimitiveType',
        sh: '_TimePrimitive'
      }, {
        en: '_Solid',
        ti: '.AbstractSolidType',
        sh: '_GeometricPrimitive'
      }, {
        en: 'EnvelopeWithTimePeriod',
        ti: '.EnvelopeWithTimePeriodType',
        sh: 'Envelope'
      }, {
        en: 'meridianName',
        ti: '.CodeType',
        sh: 'name'
      }, {
        en: '_GeometricPrimitive',
        ti: '.AbstractGeometricPrimitiveType',
        sh: '_Geometry'
      }, {
        en: 'ellipsoidName',
        ti: '.CodeType',
        sh: 'name'
      }]
  };
  var XLink_1_0 = {
    n: 'XLink_1_0',
    dens: 'http:\/\/www.w3.org\/1999\/xlink',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    tis: [{
        t: 'enum',
        ln: 'ShowType',
        vs: ['new', 'replace', 'embed', 'other', 'none']
      }, {
        t: 'enum',
        ln: 'TypeType',
        vs: ['simple', 'extended', 'title', 'resource', 'locator', 'arc']
      }, {
        t: 'enum',
        ln: 'ActuateType',
        vs: ['onLoad', 'onRequest', 'other', 'none']
      }],
    eis: []
  };
  return {
    CSW_2_0_2: CSW_2_0_2,
    DC_1_1: DC_1_1,
    DCT: DCT,
    OWS_1_0_0: OWS_1_0_0,
    Filter_1_1_0: Filter_1_1_0,
    GML_3_1_1: GML_3_1_1,
    XLink_1_0: XLink_1_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], CSW_2_0_2_Full_Module_Factory);
}
else {
  var CSW_2_0_2_Full_Module = CSW_2_0_2_Full_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.CSW_2_0_2 = CSW_2_0_2_Full_Module.CSW_2_0_2;
    module.exports.DC_1_1 = CSW_2_0_2_Full_Module.DC_1_1;
    module.exports.DCT = CSW_2_0_2_Full_Module.DCT;
    module.exports.OWS_1_0_0 = CSW_2_0_2_Full_Module.OWS_1_0_0;
    module.exports.Filter_1_1_0 = CSW_2_0_2_Full_Module.Filter_1_1_0;
    module.exports.GML_3_1_1 = CSW_2_0_2_Full_Module.GML_3_1_1;
    module.exports.XLink_1_0 = CSW_2_0_2_Full_Module.XLink_1_0;
  }
  else {
    var CSW_2_0_2 = CSW_2_0_2_Full_Module.CSW_2_0_2;
    var DC_1_1 = CSW_2_0_2_Full_Module.DC_1_1;
    var DCT = CSW_2_0_2_Full_Module.DCT;
    var OWS_1_0_0 = CSW_2_0_2_Full_Module.OWS_1_0_0;
    var Filter_1_1_0 = CSW_2_0_2_Full_Module.Filter_1_1_0;
    var GML_3_1_1 = CSW_2_0_2_Full_Module.GML_3_1_1;
    var XLink_1_0 = CSW_2_0_2_Full_Module.XLink_1_0;
  }
}