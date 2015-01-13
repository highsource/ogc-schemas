var CSW_2_0_2_Module_Factory = function () {
  var CSW_2_0_2 = {
    name: 'CSW_2_0_2',
    defaultElementNamespaceURI: 'http:\/\/www.opengis.net\/cat\/csw\/2.0.2',
    dependencies: ['DC_1_1', 'OWS_1_0_0'],
    typeInfos: [{
        localName: 'BriefRecordType',
        baseTypeInfo: '.AbstractRecordType',
        propertyInfos: [{
            name: 'identifier',
            collection: true,
            mixed: false,
            allowDom: false,
            allowTypedObject: false,
            elementName: {
              localPart: 'identifier',
              namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
            },
            typeInfo: 'DC_1_1.SimpleLiteral',
            type: 'elementRef'
          }, {
            name: 'title',
            collection: true,
            mixed: false,
            allowDom: false,
            allowTypedObject: false,
            elementName: {
              localPart: 'title',
              namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
            },
            typeInfo: 'DC_1_1.SimpleLiteral',
            type: 'elementRef'
          }, {
            name: 'type',
            elementName: {
              localPart: 'type',
              namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
            },
            typeInfo: 'DC_1_1.SimpleLiteral'
          }, {
            name: 'boundingBox',
            collection: true,
            mixed: false,
            allowDom: false,
            allowTypedObject: false,
            elementName: {
              localPart: 'BoundingBox',
              namespaceURI: 'http:\/\/www.opengis.net\/ows'
            },
            typeInfo: 'OWS_1_0_0.BoundingBoxType',
            type: 'elementRef'
          }]
      }, {
        localName: 'InsertType',
        propertyInfos: [{
            name: 'any',
            collection: true,
            allowTypedObject: false,
            mixed: false,
            type: 'anyElement'
          }, {
            name: 'typeName',
            attributeName: {
              localPart: 'typeName'
            },
            type: 'attribute'
          }, {
            name: 'handle',
            typeInfo: 'ID',
            attributeName: {
              localPart: 'handle'
            },
            type: 'attribute'
          }]
      }, {
        localName: 'RecordPropertyType',
        propertyInfos: [{
            name: 'name',
            elementName: 'Name'
          }, {
            name: 'value',
            elementName: 'Value',
            typeInfo: 'AnyType'
          }]
      }, {
        localName: 'RequestStatusType',
        propertyInfos: [{
            name: 'timestamp',
            typeInfo: 'Calendar',
            attributeName: {
              localPart: 'timestamp'
            },
            type: 'attribute'
          }]
      }, {
        localName: 'DCMIRecordType',
        baseTypeInfo: '.AbstractRecordType',
        propertyInfos: [{
            name: 'dcElement',
            collection: true,
            mixed: false,
            allowDom: false,
            allowTypedObject: false,
            elementName: {
              localPart: 'DC-element',
              namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
            },
            typeInfo: 'DC_1_1.SimpleLiteral',
            type: 'elementRef'
          }]
      }, {
        localName: 'EmptyType'
      }, {
        localName: 'GetRecordByIdResponseType',
        propertyInfos: [{
            name: 'abstractRecord',
            collection: true,
            mixed: false,
            allowDom: false,
            allowTypedObject: false,
            elementName: 'AbstractRecord',
            typeInfo: '.AbstractRecordType',
            type: 'elementRef'
          }, {
            name: 'any',
            collection: true,
            allowDom: false,
            mixed: false,
            type: 'anyElement'
          }]
      }, {
        localName: 'QueryType',
        baseTypeInfo: '.AbstractQueryType',
        propertyInfos: [{
            name: 'elementSetName',
            elementName: 'ElementSetName',
            typeInfo: '.ElementSetNameType'
          }, {
            name: 'elementName',
            collection: true,
            elementName: 'ElementName',
            typeInfo: 'QName'
          }, {
            name: 'constraint',
            elementName: 'Constraint',
            typeInfo: '.QueryConstraintType'
          }, {
            name: 'sortBy',
            allowTypedObject: false,
            mixed: false,
            type: 'anyElement'
          }, {
            name: 'typeNames',
            typeInfo: {
              type: 'list',
              baseTypeInfo: 'QName'
            },
            attributeName: {
              localPart: 'typeNames'
            },
            type: 'attribute'
          }]
      }, {
        localName: 'RangeOfValuesType',
        propertyInfos: [{
            name: 'minValue',
            elementName: 'MinValue',
            typeInfo: 'AnyType'
          }, {
            name: 'maxValue',
            elementName: 'MaxValue',
            typeInfo: 'AnyType'
          }]
      }, {
        localName: 'SchemaComponentType',
        propertyInfos: [{
            name: 'content',
            collection: true,
            type: 'anyElement'
          }, {
            name: 'targetNamespace',
            attributeName: {
              localPart: 'targetNamespace'
            },
            type: 'attribute'
          }, {
            name: 'parentSchema',
            attributeName: {
              localPart: 'parentSchema'
            },
            type: 'attribute'
          }, {
            name: 'schemaLanguage',
            attributeName: {
              localPart: 'schemaLanguage'
            },
            type: 'attribute'
          }]
      }, {
        localName: 'QueryConstraintType',
        propertyInfos: [{
            name: 'filter',
            allowTypedObject: false,
            mixed: false,
            type: 'anyElement'
          }, {
            name: 'cqlText',
            elementName: 'CqlText'
          }, {
            name: 'version',
            attributeName: {
              localPart: 'version'
            },
            type: 'attribute'
          }]
      }, {
        localName: 'GetDomainType',
        baseTypeInfo: '.RequestBaseType',
        propertyInfos: [{
            name: 'propertyName',
            elementName: 'PropertyName'
          }, {
            name: 'parameterName',
            elementName: 'ParameterName'
          }]
      }, {
        localName: 'HarvestType',
        baseTypeInfo: '.RequestBaseType',
        propertyInfos: [{
            name: 'source',
            elementName: 'Source'
          }, {
            name: 'resourceType',
            elementName: 'ResourceType'
          }, {
            name: 'resourceFormat',
            elementName: 'ResourceFormat'
          }, {
            name: 'harvestInterval',
            elementName: 'HarvestInterval'
          }, {
            name: 'responseHandler',
            collection: true,
            elementName: 'ResponseHandler'
          }]
      }, {
        localName: 'AbstractQueryType'
      }, {
        localName: 'HarvestResponseType',
        propertyInfos: [{
            name: 'acknowledgement',
            elementName: 'Acknowledgement',
            typeInfo: '.AcknowledgementType'
          }, {
            name: 'transactionResponse',
            elementName: 'TransactionResponse',
            typeInfo: '.TransactionResponseType'
          }]
      }, {
        localName: 'ConceptualSchemeType',
        propertyInfos: [{
            name: 'name',
            elementName: 'Name'
          }, {
            name: 'document',
            elementName: 'Document'
          }, {
            name: 'authority',
            elementName: 'Authority'
          }]
      }, {
        localName: 'AcknowledgementType',
        propertyInfos: [{
            name: 'echoedRequest',
            elementName: 'EchoedRequest',
            typeInfo: '.EchoedRequestType'
          }, {
            name: 'requestId',
            elementName: 'RequestId'
          }, {
            name: 'timeStamp',
            typeInfo: 'Calendar',
            attributeName: {
              localPart: 'timeStamp'
            },
            type: 'attribute'
          }]
      }, {
        localName: 'GetRecordsResponseType',
        propertyInfos: [{
            name: 'requestId',
            elementName: 'RequestId'
          }, {
            name: 'searchStatus',
            elementName: 'SearchStatus',
            typeInfo: '.RequestStatusType'
          }, {
            name: 'searchResults',
            elementName: 'SearchResults',
            typeInfo: '.SearchResultsType'
          }, {
            name: 'version',
            attributeName: {
              localPart: 'version'
            },
            type: 'attribute'
          }]
      }, {
        localName: 'DeleteType',
        propertyInfos: [{
            name: 'constraint',
            elementName: 'Constraint',
            typeInfo: '.QueryConstraintType'
          }, {
            name: 'typeName',
            attributeName: {
              localPart: 'typeName'
            },
            type: 'attribute'
          }, {
            name: 'handle',
            typeInfo: 'ID',
            attributeName: {
              localPart: 'handle'
            },
            type: 'attribute'
          }]
      }, {
        localName: 'AbstractRecordType'
      }, {
        localName: 'CapabilitiesType',
        baseTypeInfo: 'OWS_1_0_0.CapabilitiesBaseType',
        propertyInfos: [{
            name: 'filterCapabilities',
            allowTypedObject: false,
            mixed: false,
            type: 'anyElement'
          }]
      }, {
        localName: 'DescribeRecordResponseType',
        propertyInfos: [{
            name: 'schemaComponent',
            collection: true,
            elementName: 'SchemaComponent',
            typeInfo: '.SchemaComponentType'
          }]
      }, {
        localName: 'DistributedSearchType',
        propertyInfos: [{
            name: 'hopCount',
            typeInfo: 'Integer',
            attributeName: {
              localPart: 'hopCount'
            },
            type: 'attribute'
          }]
      }, {
        localName: 'EchoedRequestType',
        propertyInfos: [{
            name: 'any',
            mixed: false,
            type: 'anyElement'
          }]
      }, {
        localName: 'RecordType',
        baseTypeInfo: '.DCMIRecordType',
        propertyInfos: [{
            name: 'anyText',
            collection: true,
            elementName: 'AnyText',
            typeInfo: '.EmptyType'
          }, {
            name: 'boundingBox',
            collection: true,
            mixed: false,
            allowDom: false,
            allowTypedObject: false,
            elementName: {
              localPart: 'BoundingBox',
              namespaceURI: 'http:\/\/www.opengis.net\/ows'
            },
            typeInfo: 'OWS_1_0_0.BoundingBoxType',
            type: 'elementRef'
          }]
      }, {
        localName: 'GetRecordsType',
        baseTypeInfo: '.RequestBaseType',
        propertyInfos: [{
            name: 'distributedSearch',
            elementName: 'DistributedSearch',
            typeInfo: '.DistributedSearchType'
          }, {
            name: 'responseHandler',
            collection: true,
            elementName: 'ResponseHandler'
          }, {
            name: 'abstractQuery',
            mixed: false,
            allowDom: false,
            allowTypedObject: false,
            elementName: 'AbstractQuery',
            typeInfo: '.AbstractQueryType',
            type: 'elementRef'
          }, {
            name: 'any',
            allowDom: false,
            mixed: false,
            type: 'anyElement'
          }, {
            name: 'requestId',
            attributeName: {
              localPart: 'requestId'
            },
            type: 'attribute'
          }, {
            name: 'resultType',
            attributeName: {
              localPart: 'resultType'
            },
            type: 'attribute'
          }, {
            name: 'outputFormat',
            attributeName: {
              localPart: 'outputFormat'
            },
            type: 'attribute'
          }, {
            name: 'outputSchema',
            attributeName: {
              localPart: 'outputSchema'
            },
            type: 'attribute'
          }, {
            name: 'startPosition',
            typeInfo: 'Integer',
            attributeName: {
              localPart: 'startPosition'
            },
            type: 'attribute'
          }, {
            name: 'maxRecords',
            typeInfo: 'Integer',
            attributeName: {
              localPart: 'maxRecords'
            },
            type: 'attribute'
          }]
      }, {
        localName: 'GetRecordByIdType',
        baseTypeInfo: '.RequestBaseType',
        propertyInfos: [{
            name: 'id',
            collection: true,
            elementName: 'Id'
          }, {
            name: 'elementSetName',
            elementName: 'ElementSetName',
            typeInfo: '.ElementSetNameType'
          }, {
            name: 'outputFormat',
            attributeName: {
              localPart: 'outputFormat'
            },
            type: 'attribute'
          }, {
            name: 'outputSchema',
            attributeName: {
              localPart: 'outputSchema'
            },
            type: 'attribute'
          }]
      }, {
        localName: 'InsertResultType',
        propertyInfos: [{
            name: 'briefRecord',
            collection: true,
            elementName: 'BriefRecord',
            typeInfo: '.BriefRecordType'
          }, {
            name: 'handleRef',
            attributeName: {
              localPart: 'handleRef'
            },
            type: 'attribute'
          }]
      }, {
        localName: 'SummaryRecordType',
        baseTypeInfo: '.AbstractRecordType',
        propertyInfos: [{
            name: 'identifier',
            collection: true,
            mixed: false,
            allowDom: false,
            allowTypedObject: false,
            elementName: {
              localPart: 'identifier',
              namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
            },
            typeInfo: 'DC_1_1.SimpleLiteral',
            type: 'elementRef'
          }, {
            name: 'title',
            collection: true,
            mixed: false,
            allowDom: false,
            allowTypedObject: false,
            elementName: {
              localPart: 'title',
              namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
            },
            typeInfo: 'DC_1_1.SimpleLiteral',
            type: 'elementRef'
          }, {
            name: 'type',
            elementName: {
              localPart: 'type',
              namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
            },
            typeInfo: 'DC_1_1.SimpleLiteral'
          }, {
            name: 'subject',
            collection: true,
            elementName: {
              localPart: 'subject',
              namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
            },
            typeInfo: 'DC_1_1.SimpleLiteral'
          }, {
            name: 'format',
            collection: true,
            mixed: false,
            allowDom: false,
            allowTypedObject: false,
            elementName: {
              localPart: 'format',
              namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
            },
            typeInfo: 'DC_1_1.SimpleLiteral',
            type: 'elementRef'
          }, {
            name: 'relation',
            collection: true,
            mixed: false,
            allowDom: false,
            allowTypedObject: false,
            elementName: {
              localPart: 'relation',
              namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
            },
            typeInfo: 'DC_1_1.SimpleLiteral',
            type: 'elementRef'
          }, {
            name: 'modified',
            collection: true,
            elementName: {
              localPart: 'modified',
              namespaceURI: 'http:\/\/purl.org\/dc\/terms\/'
            },
            typeInfo: 'DC_1_1.SimpleLiteral'
          }, {
            name: '_abstract',
            collection: true,
            elementName: {
              localPart: 'abstract',
              namespaceURI: 'http:\/\/purl.org\/dc\/terms\/'
            },
            typeInfo: 'DC_1_1.SimpleLiteral'
          }, {
            name: 'spatial',
            collection: true,
            elementName: {
              localPart: 'spatial',
              namespaceURI: 'http:\/\/purl.org\/dc\/terms\/'
            },
            typeInfo: 'DC_1_1.SimpleLiteral'
          }, {
            name: 'boundingBox',
            collection: true,
            mixed: false,
            allowDom: false,
            allowTypedObject: false,
            elementName: {
              localPart: 'BoundingBox',
              namespaceURI: 'http:\/\/www.opengis.net\/ows'
            },
            typeInfo: 'OWS_1_0_0.BoundingBoxType',
            type: 'elementRef'
          }]
      }, {
        localName: 'TransactionSummaryType',
        propertyInfos: [{
            name: 'totalInserted',
            typeInfo: 'Integer'
          }, {
            name: 'totalUpdated',
            typeInfo: 'Integer'
          }, {
            name: 'totalDeleted',
            typeInfo: 'Integer'
          }, {
            name: 'requestId',
            attributeName: {
              localPart: 'requestId'
            },
            type: 'attribute'
          }]
      }, {
        localName: 'DomainValuesType',
        propertyInfos: [{
            name: 'propertyName',
            elementName: 'PropertyName'
          }, {
            name: 'parameterName',
            elementName: 'ParameterName'
          }, {
            name: 'listOfValues',
            elementName: 'ListOfValues',
            typeInfo: '.ListOfValuesType'
          }, {
            name: 'conceptualScheme',
            elementName: 'ConceptualScheme',
            typeInfo: '.ConceptualSchemeType'
          }, {
            name: 'rangeOfValues',
            elementName: 'RangeOfValues',
            typeInfo: '.RangeOfValuesType'
          }, {
            name: 'type',
            typeInfo: 'QName',
            attributeName: {
              localPart: 'type'
            },
            type: 'attribute'
          }, {
            name: 'uom',
            attributeName: {
              localPart: 'uom'
            },
            type: 'attribute'
          }]
      }, {
        localName: 'TransactionResponseType',
        propertyInfos: [{
            name: 'transactionSummary',
            elementName: 'TransactionSummary',
            typeInfo: '.TransactionSummaryType'
          }, {
            name: 'insertResult',
            collection: true,
            elementName: 'InsertResult',
            typeInfo: '.InsertResultType'
          }, {
            name: 'version',
            attributeName: {
              localPart: 'version'
            },
            type: 'attribute'
          }]
      }, {
        localName: 'DescribeRecordType',
        baseTypeInfo: '.RequestBaseType',
        propertyInfos: [{
            name: 'typeName',
            collection: true,
            elementName: 'TypeName',
            typeInfo: 'QName'
          }, {
            name: 'outputFormat',
            attributeName: {
              localPart: 'outputFormat'
            },
            type: 'attribute'
          }, {
            name: 'schemaLanguage',
            attributeName: {
              localPart: 'schemaLanguage'
            },
            type: 'attribute'
          }]
      }, {
        localName: 'SearchResultsType',
        propertyInfos: [{
            name: 'abstractRecord',
            collection: true,
            mixed: false,
            allowDom: false,
            allowTypedObject: false,
            elementName: 'AbstractRecord',
            typeInfo: '.AbstractRecordType',
            type: 'elementRef'
          }, {
            name: 'any',
            collection: true,
            allowDom: false,
            mixed: false,
            type: 'anyElement'
          }, {
            name: 'resultSetId',
            attributeName: {
              localPart: 'resultSetId'
            },
            type: 'attribute'
          }, {
            name: 'elementSet',
            attributeName: {
              localPart: 'elementSet'
            },
            type: 'attribute'
          }, {
            name: 'recordSchema',
            attributeName: {
              localPart: 'recordSchema'
            },
            type: 'attribute'
          }, {
            name: 'numberOfRecordsMatched',
            typeInfo: 'Integer',
            attributeName: {
              localPart: 'numberOfRecordsMatched'
            },
            type: 'attribute'
          }, {
            name: 'numberOfRecordsReturned',
            typeInfo: 'Integer',
            attributeName: {
              localPart: 'numberOfRecordsReturned'
            },
            type: 'attribute'
          }, {
            name: 'nextRecord',
            typeInfo: 'Integer',
            attributeName: {
              localPart: 'nextRecord'
            },
            type: 'attribute'
          }, {
            name: 'expires',
            typeInfo: 'Calendar',
            attributeName: {
              localPart: 'expires'
            },
            type: 'attribute'
          }]
      }, {
        localName: 'ListOfValuesType',
        propertyInfos: [{
            name: 'value',
            collection: true,
            elementName: 'Value',
            typeInfo: 'AnyType'
          }]
      }, {
        localName: 'RequestBaseType',
        propertyInfos: [{
            name: 'service',
            attributeName: {
              localPart: 'service'
            },
            type: 'attribute'
          }, {
            name: 'version',
            attributeName: {
              localPart: 'version'
            },
            type: 'attribute'
          }]
      }, {
        localName: 'GetDomainResponseType',
        propertyInfos: [{
            name: 'domainValues',
            collection: true,
            elementName: 'DomainValues',
            typeInfo: '.DomainValuesType'
          }]
      }, {
        localName: 'GetCapabilitiesType',
        baseTypeInfo: 'OWS_1_0_0.GetCapabilitiesType',
        propertyInfos: [{
            name: 'service',
            attributeName: {
              localPart: 'service'
            },
            type: 'attribute'
          }]
      }, {
        localName: 'TransactionType',
        baseTypeInfo: '.RequestBaseType',
        propertyInfos: [{
            name: 'insertOrUpdateOrDelete',
            collection: true,
            elementTypeInfos: [{
                elementName: 'Insert',
                typeInfo: '.InsertType'
              }, {
                elementName: 'Update',
                typeInfo: '.UpdateType'
              }, {
                elementName: 'Delete',
                typeInfo: '.DeleteType'
              }],
            type: 'elements'
          }, {
            name: 'verboseResponse',
            typeInfo: 'Boolean',
            attributeName: {
              localPart: 'verboseResponse'
            },
            type: 'attribute'
          }, {
            name: 'requestId',
            attributeName: {
              localPart: 'requestId'
            },
            type: 'attribute'
          }]
      }, {
        localName: 'ElementSetNameType',
        propertyInfos: [{
            name: 'value',
            type: 'value'
          }, {
            name: 'typeNames',
            typeInfo: {
              type: 'list',
              baseTypeInfo: 'QName'
            },
            attributeName: {
              localPart: 'typeNames'
            },
            type: 'attribute'
          }]
      }, {
        localName: 'UpdateType',
        propertyInfos: [{
            name: 'any',
            allowTypedObject: false,
            mixed: false,
            type: 'anyElement'
          }, {
            name: 'recordProperty',
            collection: true,
            elementName: 'RecordProperty',
            typeInfo: '.RecordPropertyType'
          }, {
            name: 'constraint',
            elementName: 'Constraint',
            typeInfo: '.QueryConstraintType'
          }, {
            name: 'handle',
            typeInfo: 'ID',
            attributeName: {
              localPart: 'handle'
            },
            type: 'attribute'
          }]
      }, {
        type: 'enumInfo',
        localName: 'ElementSetType',
        values: ['brief', 'summary', 'full']
      }, {
        type: 'enumInfo',
        localName: 'ResultType',
        values: ['results', 'hits', 'validate']
      }],
    elementInfos: [{
        elementName: 'AbstractQuery',
        typeInfo: '.AbstractQueryType'
      }, {
        elementName: 'Record',
        typeInfo: '.RecordType',
        substitutionHead: 'AbstractRecord'
      }, {
        elementName: 'RecordProperty',
        typeInfo: '.RecordPropertyType'
      }, {
        elementName: 'GetRecords',
        typeInfo: '.GetRecordsType'
      }, {
        elementName: 'GetDomain',
        typeInfo: '.GetDomainType'
      }, {
        elementName: 'Transaction',
        typeInfo: '.TransactionType'
      }, {
        elementName: 'Constraint',
        typeInfo: '.QueryConstraintType'
      }, {
        elementName: 'SummaryRecord',
        typeInfo: '.SummaryRecordType',
        substitutionHead: 'AbstractRecord'
      }, {
        elementName: 'HarvestResponse',
        typeInfo: '.HarvestResponseType'
      }, {
        elementName: 'GetRecordById',
        typeInfo: '.GetRecordByIdType'
      }, {
        elementName: 'GetDomainResponse',
        typeInfo: '.GetDomainResponseType'
      }, {
        elementName: 'Acknowledgement',
        typeInfo: '.AcknowledgementType'
      }, {
        elementName: 'TransactionResponse',
        typeInfo: '.TransactionResponseType'
      }, {
        elementName: 'AbstractRecord',
        typeInfo: '.AbstractRecordType'
      }, {
        elementName: 'DescribeRecord',
        typeInfo: '.DescribeRecordType'
      }, {
        elementName: 'GetRecordByIdResponse',
        typeInfo: '.GetRecordByIdResponseType'
      }, {
        elementName: 'Query',
        typeInfo: '.QueryType',
        substitutionHead: 'AbstractQuery'
      }, {
        elementName: 'ElementSetName',
        typeInfo: '.ElementSetNameType'
      }, {
        elementName: 'BriefRecord',
        typeInfo: '.BriefRecordType',
        substitutionHead: 'AbstractRecord'
      }, {
        elementName: 'Capabilities',
        typeInfo: '.CapabilitiesType'
      }, {
        elementName: 'DescribeRecordResponse',
        typeInfo: '.DescribeRecordResponseType'
      }, {
        elementName: 'GetCapabilities',
        typeInfo: '.GetCapabilitiesType'
      }, {
        elementName: 'GetRecordsResponse',
        typeInfo: '.GetRecordsResponseType'
      }, {
        elementName: 'DCMIRecord',
        typeInfo: '.DCMIRecordType',
        substitutionHead: 'AbstractRecord'
      }, {
        elementName: 'Harvest',
        typeInfo: '.HarvestType'
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