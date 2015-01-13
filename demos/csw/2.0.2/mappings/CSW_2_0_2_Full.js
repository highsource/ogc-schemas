var CSW_2_0_2_Full_Module_Factory = function () {
  var CSW_2_0_2 = {
    name: 'CSW_2_0_2',
    defaultElementNamespaceURI: 'http:\/\/www.opengis.net\/cat\/csw\/2.0.2',
    dependencies: ['DC_1_1', 'OWS_1_0_0'],
    typeInfos: [{
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
        localName: 'ListOfValuesType',
        propertyInfos: [{
            name: 'value',
            collection: true,
            elementName: 'Value',
            typeInfo: 'AnyType'
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
        localName: 'GetDomainResponseType',
        propertyInfos: [{
            name: 'domainValues',
            collection: true,
            elementName: 'DomainValues',
            typeInfo: '.DomainValuesType'
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
        localName: 'AbstractQueryType'
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
        localName: 'AbstractRecordType'
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
        localName: 'EmptyType'
      }, {
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
        localName: 'CapabilitiesType',
        baseTypeInfo: 'OWS_1_0_0.CapabilitiesBaseType',
        propertyInfos: [{
            name: 'filterCapabilities',
            allowTypedObject: false,
            mixed: false,
            type: 'anyElement'
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
        localName: 'DescribeRecordResponseType',
        propertyInfos: [{
            name: 'schemaComponent',
            collection: true,
            elementName: 'SchemaComponent',
            typeInfo: '.SchemaComponentType'
          }]
      }, {
        type: 'enumInfo',
        localName: 'ResultType',
        values: ['results', 'hits', 'validate']
      }, {
        type: 'enumInfo',
        localName: 'ElementSetType',
        values: ['brief', 'summary', 'full']
      }],
    elementInfos: [{
        elementName: 'TransactionResponse',
        typeInfo: '.TransactionResponseType'
      }, {
        elementName: 'RecordProperty',
        typeInfo: '.RecordPropertyType'
      }, {
        elementName: 'Acknowledgement',
        typeInfo: '.AcknowledgementType'
      }, {
        elementName: 'ElementSetName',
        typeInfo: '.ElementSetNameType'
      }, {
        elementName: 'SummaryRecord',
        typeInfo: '.SummaryRecordType',
        substitutionHead: 'AbstractRecord'
      }, {
        elementName: 'GetDomainResponse',
        typeInfo: '.GetDomainResponseType'
      }, {
        elementName: 'Record',
        typeInfo: '.RecordType',
        substitutionHead: 'AbstractRecord'
      }, {
        elementName: 'DescribeRecord',
        typeInfo: '.DescribeRecordType'
      }, {
        elementName: 'GetRecords',
        typeInfo: '.GetRecordsType'
      }, {
        elementName: 'GetRecordsResponse',
        typeInfo: '.GetRecordsResponseType'
      }, {
        elementName: 'BriefRecord',
        typeInfo: '.BriefRecordType',
        substitutionHead: 'AbstractRecord'
      }, {
        elementName: 'GetRecordById',
        typeInfo: '.GetRecordByIdType'
      }, {
        elementName: 'Query',
        typeInfo: '.QueryType',
        substitutionHead: 'AbstractQuery'
      }, {
        elementName: 'GetRecordByIdResponse',
        typeInfo: '.GetRecordByIdResponseType'
      }, {
        elementName: 'Capabilities',
        typeInfo: '.CapabilitiesType'
      }, {
        elementName: 'Constraint',
        typeInfo: '.QueryConstraintType'
      }, {
        elementName: 'Harvest',
        typeInfo: '.HarvestType'
      }, {
        elementName: 'HarvestResponse',
        typeInfo: '.HarvestResponseType'
      }, {
        elementName: 'AbstractRecord',
        typeInfo: '.AbstractRecordType'
      }, {
        elementName: 'GetDomain',
        typeInfo: '.GetDomainType'
      }, {
        elementName: 'Transaction',
        typeInfo: '.TransactionType'
      }, {
        elementName: 'DCMIRecord',
        typeInfo: '.DCMIRecordType',
        substitutionHead: 'AbstractRecord'
      }, {
        elementName: 'DescribeRecordResponse',
        typeInfo: '.DescribeRecordResponseType'
      }, {
        elementName: 'AbstractQuery',
        typeInfo: '.AbstractQueryType'
      }, {
        elementName: 'GetCapabilities',
        typeInfo: '.GetCapabilitiesType'
      }]
  };
  var DC_1_1 = {
    name: 'DC_1_1',
    defaultElementNamespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/',
    typeInfos: [{
        localName: 'ElementContainer',
        propertyInfos: [{
            name: 'dcElement',
            collection: true,
            mixed: false,
            allowDom: false,
            allowTypedObject: false,
            elementName: 'DC-element',
            typeInfo: '.SimpleLiteral',
            type: 'elementRef'
          }]
      }, {
        localName: 'SimpleLiteral',
        propertyInfos: [{
            name: 'content',
            collection: true,
            allowDom: false,
            allowTypedObject: false,
            type: 'elementRefs'
          }, {
            name: 'scheme',
            attributeName: {
              localPart: 'scheme'
            },
            type: 'attribute'
          }]
      }],
    elementInfos: [{
        elementName: 'language',
        typeInfo: '.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'coverage',
        typeInfo: '.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'subject',
        typeInfo: '.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'contributor',
        typeInfo: '.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'type',
        typeInfo: '.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'date',
        typeInfo: '.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'creator',
        typeInfo: '.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'publisher',
        typeInfo: '.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'description',
        typeInfo: '.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'rights',
        typeInfo: '.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'format',
        typeInfo: '.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'source',
        typeInfo: '.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'relation',
        typeInfo: '.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'title',
        typeInfo: '.SimpleLiteral',
        substitutionHead: 'DC-element'
      }, {
        elementName: 'identifier',
        typeInfo: '.SimpleLiteral',
        substitutionHead: 'DC-element'
      }]
  };
  var DCT = {
    name: 'DCT',
    defaultElementNamespaceURI: 'http:\/\/purl.org\/dc\/terms\/',
    dependencies: ['DC_1_1'],
    typeInfos: [],
    elementInfos: [{
        elementName: 'hasFormat',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'relation',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'hasVersion',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'relation',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'isFormatOf',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'relation',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'isRequiredBy',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'relation',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'rightsHolder',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'DC-element',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'extent',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'format',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'references',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'relation',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'isPartOf',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'relation',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'alternative',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'title',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'audience',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'DC-element',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'bibliographicCitation',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'identifier',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'replaces',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'relation',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'hasPart',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'relation',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'isReferencedBy',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'relation',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'isReplacedBy',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'relation',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'requires',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'relation',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'provenance',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'DC-element',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'conformsTo',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'relation',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'medium',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'format',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }, {
        elementName: 'isVersionOf',
        typeInfo: 'DC_1_1.SimpleLiteral',
        substitutionHead: {
          localPart: 'relation',
          namespaceURI: 'http:\/\/purl.org\/dc\/elements\/1.1\/'
        }
      }]
  };
  var OWS_1_0_0 = {
    name: 'OWS_1_0_0',
    defaultElementNamespaceURI: 'http:\/\/www.opengis.net\/ows',
    defaultAttributeNamespaceURI: 'http:\/\/www.w3.org\/1999\/xlink',
    dependencies: ['XLink_1_0'],
    typeInfos: [{
        localName: 'CapabilitiesBaseType',
        propertyInfos: [{
            name: 'serviceIdentification',
            elementName: 'ServiceIdentification',
            typeInfo: '.ServiceIdentification'
          }, {
            name: 'serviceProvider',
            elementName: 'ServiceProvider',
            typeInfo: '.ServiceProvider'
          }, {
            name: 'operationsMetadata',
            elementName: 'OperationsMetadata',
            typeInfo: '.OperationsMetadata'
          }, {
            name: 'version',
            attributeName: {
              localPart: 'version'
            },
            type: 'attribute'
          }, {
            name: 'updateSequence',
            attributeName: {
              localPart: 'updateSequence'
            },
            type: 'attribute'
          }]
      }, {
        localName: 'GetCapabilitiesType',
        propertyInfos: [{
            name: 'acceptVersions',
            elementName: 'AcceptVersions',
            typeInfo: '.AcceptVersionsType'
          }, {
            name: 'sections',
            elementName: 'Sections',
            typeInfo: '.SectionsType'
          }, {
            name: 'acceptFormats',
            elementName: 'AcceptFormats',
            typeInfo: '.AcceptFormatsType'
          }, {
            name: 'updateSequence',
            attributeName: {
              localPart: 'updateSequence'
            },
            type: 'attribute'
          }]
      }, {
        localName: 'SectionsType',
        propertyInfos: [{
            name: 'section',
            collection: true,
            elementName: 'Section'
          }]
      }, {
        localName: 'ServiceProvider',
        propertyInfos: [{
            name: 'providerName',
            elementName: 'ProviderName'
          }, {
            name: 'providerSite',
            elementName: 'ProviderSite',
            typeInfo: '.OnlineResourceType'
          }, {
            name: 'serviceContact',
            elementName: 'ServiceContact',
            typeInfo: '.ResponsiblePartySubsetType'
          }]
      }, {
        localName: 'AddressType',
        propertyInfos: [{
            name: 'deliveryPoint',
            collection: true,
            elementName: 'DeliveryPoint'
          }, {
            name: 'city',
            elementName: 'City'
          }, {
            name: 'administrativeArea',
            elementName: 'AdministrativeArea'
          }, {
            name: 'postalCode',
            elementName: 'PostalCode'
          }, {
            name: 'country',
            elementName: 'Country'
          }, {
            name: 'electronicMailAddress',
            collection: true,
            elementName: 'ElectronicMailAddress'
          }]
      }, {
        localName: 'OnlineResourceType',
        propertyInfos: [{
            name: 'type',
            type: 'attribute'
          }, {
            name: 'href',
            type: 'attribute'
          }, {
            name: 'role',
            type: 'attribute'
          }, {
            name: 'arcrole',
            type: 'attribute'
          }, {
            name: 'title',
            type: 'attribute'
          }, {
            name: 'show',
            type: 'attribute'
          }, {
            name: 'actuate',
            type: 'attribute'
          }]
      }, {
        localName: 'AcceptFormatsType',
        propertyInfos: [{
            name: 'outputFormat',
            collection: true,
            elementName: 'OutputFormat'
          }]
      }, {
        localName: 'OperationsMetadata',
        propertyInfos: [{
            name: 'operation',
            collection: true,
            elementName: 'Operation',
            typeInfo: '.Operation'
          }, {
            name: 'parameter',
            collection: true,
            elementName: 'Parameter',
            typeInfo: '.DomainType'
          }, {
            name: 'constraint',
            collection: true,
            elementName: 'Constraint',
            typeInfo: '.DomainType'
          }, {
            name: 'extendedCapabilities',
            elementName: 'ExtendedCapabilities',
            typeInfo: 'AnyType'
          }]
      }, {
        localName: 'HTTP',
        propertyInfos: [{
            name: 'getOrPost',
            collection: true,
            mixed: false,
            allowDom: false,
            allowTypedObject: false,
            elementTypeInfos: [{
                elementName: 'Get',
                typeInfo: '.RequestMethodType'
              }, {
                elementName: 'Post',
                typeInfo: '.RequestMethodType'
              }],
            type: 'elementRefs'
          }]
      }, {
        localName: 'DomainType',
        propertyInfos: [{
            name: 'value',
            collection: true,
            elementName: 'Value'
          }, {
            name: 'metadata',
            collection: true,
            elementName: 'Metadata',
            typeInfo: '.MetadataType'
          }, {
            name: 'name',
            attributeName: {
              localPart: 'name'
            },
            type: 'attribute'
          }]
      }, {
        localName: 'CodeType',
        propertyInfos: [{
            name: 'value',
            type: 'value'
          }, {
            name: 'codeSpace',
            attributeName: {
              localPart: 'codeSpace'
            },
            type: 'attribute'
          }]
      }, {
        localName: 'ContactType',
        propertyInfos: [{
            name: 'phone',
            elementName: 'Phone',
            typeInfo: '.TelephoneType'
          }, {
            name: 'address',
            elementName: 'Address',
            typeInfo: '.AddressType'
          }, {
            name: 'onlineResource',
            elementName: 'OnlineResource',
            typeInfo: '.OnlineResourceType'
          }, {
            name: 'hoursOfService',
            elementName: 'HoursOfService'
          }, {
            name: 'contactInstructions',
            elementName: 'ContactInstructions'
          }]
      }, {
        localName: 'BoundingBoxType',
        propertyInfos: [{
            name: 'lowerCorner',
            elementName: 'LowerCorner',
            typeInfo: {
              type: 'list',
              baseTypeInfo: 'Double'
            }
          }, {
            name: 'upperCorner',
            elementName: 'UpperCorner',
            typeInfo: {
              type: 'list',
              baseTypeInfo: 'Double'
            }
          }, {
            name: 'crs',
            attributeName: {
              localPart: 'crs'
            },
            type: 'attribute'
          }, {
            name: 'dimensions',
            typeInfo: 'Integer',
            attributeName: {
              localPart: 'dimensions'
            },
            type: 'attribute'
          }]
      }, {
        localName: 'MetadataType',
        propertyInfos: [{
            name: 'abstractMetaData',
            elementName: 'AbstractMetaData',
            typeInfo: 'AnyType'
          }, {
            name: 'about',
            attributeName: {
              localPart: 'about'
            },
            type: 'attribute'
          }, {
            name: 'type',
            type: 'attribute'
          }, {
            name: 'href',
            type: 'attribute'
          }, {
            name: 'role',
            type: 'attribute'
          }, {
            name: 'arcrole',
            type: 'attribute'
          }, {
            name: 'title',
            type: 'attribute'
          }, {
            name: 'show',
            type: 'attribute'
          }, {
            name: 'actuate',
            type: 'attribute'
          }]
      }, {
        localName: 'ResponsiblePartySubsetType',
        propertyInfos: [{
            name: 'individualName',
            elementName: 'IndividualName'
          }, {
            name: 'positionName',
            elementName: 'PositionName'
          }, {
            name: 'contactInfo',
            elementName: 'ContactInfo',
            typeInfo: '.ContactType'
          }, {
            name: 'role',
            elementName: 'Role',
            typeInfo: '.CodeType'
          }]
      }, {
        localName: 'AcceptVersionsType',
        propertyInfos: [{
            name: 'version',
            collection: true,
            elementName: 'Version'
          }]
      }, {
        localName: 'ServiceIdentification',
        baseTypeInfo: '.DescriptionType',
        propertyInfos: [{
            name: 'serviceType',
            elementName: 'ServiceType',
            typeInfo: '.CodeType'
          }, {
            name: 'serviceTypeVersion',
            collection: true,
            elementName: 'ServiceTypeVersion'
          }, {
            name: 'fees',
            elementName: 'Fees'
          }, {
            name: 'accessConstraints',
            collection: true,
            elementName: 'AccessConstraints'
          }]
      }, {
        localName: 'WGS84BoundingBoxType',
        baseTypeInfo: '.BoundingBoxType'
      }, {
        localName: 'IdentificationType',
        baseTypeInfo: '.DescriptionType',
        propertyInfos: [{
            name: 'identifier',
            elementName: 'Identifier',
            typeInfo: '.CodeType'
          }, {
            name: 'boundingBox',
            collection: true,
            mixed: false,
            allowDom: false,
            allowTypedObject: false,
            elementName: 'BoundingBox',
            typeInfo: '.BoundingBoxType',
            type: 'elementRef'
          }, {
            name: 'outputFormat',
            collection: true,
            elementName: 'OutputFormat'
          }, {
            name: 'availableCRS',
            collection: true,
            mixed: false,
            allowDom: false,
            allowTypedObject: false,
            elementName: 'AvailableCRS',
            type: 'elementRef'
          }, {
            name: 'metadata',
            collection: true,
            elementName: 'Metadata',
            typeInfo: '.MetadataType'
          }]
      }, {
        localName: 'DescriptionType',
        propertyInfos: [{
            name: 'title',
            elementName: 'Title'
          }, {
            name: '_abstract',
            elementName: 'Abstract'
          }, {
            name: 'keywords',
            collection: true,
            elementName: 'Keywords',
            typeInfo: '.KeywordsType'
          }]
      }, {
        localName: 'DCP',
        propertyInfos: [{
            name: 'http',
            elementName: 'HTTP',
            typeInfo: '.HTTP'
          }]
      }, {
        localName: 'TelephoneType',
        propertyInfos: [{
            name: 'voice',
            collection: true,
            elementName: 'Voice'
          }, {
            name: 'facsimile',
            collection: true,
            elementName: 'Facsimile'
          }]
      }, {
        localName: 'RequestMethodType',
        baseTypeInfo: '.OnlineResourceType',
        propertyInfos: [{
            name: 'constraint',
            collection: true,
            elementName: 'Constraint',
            typeInfo: '.DomainType'
          }]
      }, {
        localName: 'KeywordsType',
        propertyInfos: [{
            name: 'keyword',
            collection: true,
            elementName: 'Keyword'
          }, {
            name: 'type',
            elementName: 'Type',
            typeInfo: '.CodeType'
          }]
      }, {
        localName: 'Operation',
        propertyInfos: [{
            name: 'dcp',
            collection: true,
            elementName: 'DCP',
            typeInfo: '.DCP'
          }, {
            name: 'parameter',
            collection: true,
            elementName: 'Parameter',
            typeInfo: '.DomainType'
          }, {
            name: 'constraint',
            collection: true,
            elementName: 'Constraint',
            typeInfo: '.DomainType'
          }, {
            name: 'metadata',
            collection: true,
            elementName: 'Metadata',
            typeInfo: '.MetadataType'
          }, {
            name: 'name',
            attributeName: {
              localPart: 'name'
            },
            type: 'attribute'
          }]
      }],
    elementInfos: [{
        elementName: 'SupportedCRS',
        substitutionHead: 'AvailableCRS'
      }, {
        elementName: 'WGS84BoundingBox',
        typeInfo: '.WGS84BoundingBoxType',
        substitutionHead: 'BoundingBox'
      }]
  };
  var XLink_1_0 = {
    name: 'XLink_1_0',
    defaultElementNamespaceURI: 'http:\/\/www.w3.org\/1999\/xlink',
    defaultAttributeNamespaceURI: 'http:\/\/www.w3.org\/1999\/xlink',
    typeInfos: [{
        type: 'enumInfo',
        localName: 'TypeType',
        values: ['simple', 'extended', 'title', 'resource', 'locator', 'arc']
      }, {
        type: 'enumInfo',
        localName: 'ShowType',
        values: ['new', 'replace', 'embed', 'other', 'none']
      }, {
        type: 'enumInfo',
        localName: 'ActuateType',
        values: ['onLoad', 'onRequest', 'other', 'none']
      }],
    elementInfos: []
  };
  return {
    CSW_2_0_2: CSW_2_0_2,
    DC_1_1: DC_1_1,
    DCT: DCT,
    OWS_1_0_0: OWS_1_0_0,
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
    module.exports.XLink_1_0 = CSW_2_0_2_Full_Module.XLink_1_0;
  }
  else {
    var CSW_2_0_2 = CSW_2_0_2_Full_Module.CSW_2_0_2;
    var DC_1_1 = CSW_2_0_2_Full_Module.DC_1_1;
    var DCT = CSW_2_0_2_Full_Module.DCT;
    var OWS_1_0_0 = CSW_2_0_2_Full_Module.OWS_1_0_0;
    var XLink_1_0 = CSW_2_0_2_Full_Module.XLink_1_0;
  }
}