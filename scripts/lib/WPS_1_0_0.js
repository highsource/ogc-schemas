var WPS_1_0_0_Module_Factory = function () {
  var WPS_1_0_0 = {
    name: 'WPS_1_0_0',
    defaultElementNamespaceURI: 'http:\/\/www.opengis.net\/wps\/1.0.0',
    typeInfos: [{
        type: 'classInfo',
        localName: 'Execute',
        baseTypeInfo: 'WPS_1_0_0.RequestBaseType',
        propertyInfos: [{
            type: 'element',
            name: 'identifier',
            elementName: {
              localPart: 'Identifier',
              namespaceURI: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            typeInfo: 'OWS_1_1_0.CodeType'
          }, {
            type: 'element',
            name: 'dataInputs',
            elementName: 'DataInputs',
            typeInfo: 'WPS_1_0_0.DataInputsType'
          }, {
            type: 'element',
            name: 'responseForm',
            elementName: 'ResponseForm',
            typeInfo: 'WPS_1_0_0.ResponseFormType'
          }]
      }, {
        type: 'classInfo',
        localName: 'RequestBaseType',
        propertyInfos: [{
            name: 'service',
            typeInfo: 'String',
            attributeName: 'service',
            type: 'attribute'
          }, {
            name: 'version',
            typeInfo: 'String',
            attributeName: 'version',
            type: 'attribute'
          }, {
            name: 'language',
            typeInfo: 'String',
            attributeName: 'language',
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'DataInputsType',
        propertyInfos: [{
            type: 'element',
            name: 'input',
            collection: true,
            elementName: 'Input',
            typeInfo: 'WPS_1_0_0.InputType'
          }]
      }, {
        type: 'classInfo',
        localName: 'ResponseFormType',
        propertyInfos: [{
            type: 'element',
            name: 'responseDocument',
            elementName: 'ResponseDocument',
            typeInfo: 'WPS_1_0_0.ResponseDocumentType'
          }, {
            type: 'element',
            name: 'rawDataOutput',
            elementName: 'RawDataOutput',
            typeInfo: 'WPS_1_0_0.OutputDefinitionType'
          }]
      }, {
        type: 'classInfo',
        localName: 'GetCapabilities',
        propertyInfos: [{
            type: 'element',
            name: 'acceptVersions',
            elementName: 'AcceptVersions',
            typeInfo: 'OWS_1_1_0.AcceptVersionsType'
          }, {
            name: 'service',
            typeInfo: 'String',
            attributeName: 'service',
            type: 'attribute'
          }, {
            name: 'language',
            typeInfo: 'String',
            attributeName: 'language',
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'WPSCapabilitiesType',
        baseTypeInfo: 'OWS_1_1_0.CapabilitiesBaseType',
        propertyInfos: [{
            type: 'element',
            name: 'processOfferings',
            elementName: 'ProcessOfferings',
            typeInfo: 'WPS_1_0_0.ProcessOfferings'
          }, {
            type: 'element',
            name: 'languages',
            elementName: 'Languages',
            typeInfo: 'WPS_1_0_0.Languages'
          }, {
            type: 'element',
            name: 'wsdl',
            elementName: 'WSDL',
            typeInfo: 'WPS_1_0_0.WSDL'
          }, {
            name: 'service',
            typeInfo: 'String',
            attributeName: 'service',
            type: 'attribute'
          }, {
            name: 'lang',
            typeInfo: 'String',
            attributeName: {
              localPart: 'lang',
              namespaceURI: 'http:\/\/www.w3.org\/XML\/1998\/namespace'
            },
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'DescribeProcess',
        baseTypeInfo: 'WPS_1_0_0.RequestBaseType',
        propertyInfos: [{
            type: 'element',
            name: 'identifier',
            collection: true,
            elementName: {
              localPart: 'Identifier',
              namespaceURI: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            typeInfo: 'OWS_1_1_0.CodeType'
          }]
      }, {
        type: 'classInfo',
        localName: 'ExecuteResponse',
        baseTypeInfo: 'WPS_1_0_0.ResponseBaseType',
        propertyInfos: [{
            type: 'element',
            name: 'process',
            elementName: 'Process',
            typeInfo: 'WPS_1_0_0.ProcessBriefType'
          }, {
            type: 'element',
            name: 'status',
            elementName: 'Status',
            typeInfo: 'WPS_1_0_0.StatusType'
          }, {
            type: 'element',
            name: 'dataInputs',
            elementName: 'DataInputs',
            typeInfo: 'WPS_1_0_0.DataInputsType'
          }, {
            type: 'element',
            name: 'outputDefinitions',
            elementName: 'OutputDefinitions',
            typeInfo: 'WPS_1_0_0.OutputDefinitionsType'
          }, {
            type: 'element',
            name: 'processOutputs',
            elementName: 'ProcessOutputs',
            typeInfo: 'WPS_1_0_0.ExecuteResponse.ProcessOutputs'
          }, {
            name: 'serviceInstance',
            typeInfo: 'String',
            attributeName: 'serviceInstance',
            type: 'attribute'
          }, {
            name: 'statusLocation',
            typeInfo: 'String',
            attributeName: 'statusLocation',
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'ResponseBaseType',
        propertyInfos: [{
            name: 'service',
            typeInfo: 'String',
            attributeName: 'service',
            type: 'attribute'
          }, {
            name: 'version',
            typeInfo: 'String',
            attributeName: 'version',
            type: 'attribute'
          }, {
            name: 'lang',
            typeInfo: 'String',
            attributeName: {
              localPart: 'lang',
              namespaceURI: 'http:\/\/www.w3.org\/XML\/1998\/namespace'
            },
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'ProcessBriefType',
        baseTypeInfo: 'WPS_1_0_0.DescriptionType',
        propertyInfos: [{
            type: 'element',
            name: 'profile',
            collection: true,
            elementName: 'Profile',
            typeInfo: 'String'
          }, {
            type: 'element',
            name: 'wsdl',
            elementName: 'WSDL',
            typeInfo: 'WPS_1_0_0.WSDL'
          }, {
            name: 'processVersion',
            typeInfo: 'String',
            attributeName: {
              localPart: 'processVersion',
              namespaceURI: 'http:\/\/www.opengis.net\/wps\/1.0.0'
            },
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'StatusType',
        propertyInfos: [{
            type: 'element',
            name: 'processAccepted',
            elementName: 'ProcessAccepted',
            typeInfo: 'String'
          }, {
            type: 'element',
            name: 'processStarted',
            elementName: 'ProcessStarted',
            typeInfo: 'WPS_1_0_0.ProcessStartedType'
          }, {
            type: 'element',
            name: 'processPaused',
            elementName: 'ProcessPaused',
            typeInfo: 'WPS_1_0_0.ProcessStartedType'
          }, {
            type: 'element',
            name: 'processSucceeded',
            elementName: 'ProcessSucceeded',
            typeInfo: 'String'
          }, {
            type: 'element',
            name: 'processFailed',
            elementName: 'ProcessFailed',
            typeInfo: 'WPS_1_0_0.ProcessFailedType'
          }, {
            name: 'creationTime',
            typeInfo: 'Calendar',
            attributeName: 'creationTime',
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'OutputDefinitionsType',
        propertyInfos: [{
            type: 'element',
            name: 'output',
            collection: true,
            elementName: 'Output',
            typeInfo: 'WPS_1_0_0.DocumentOutputDefinitionType'
          }]
      }, {
        type: 'classInfo',
        localName: 'ExecuteResponse.ProcessOutputs',
        propertyInfos: [{
            type: 'element',
            name: 'output',
            collection: true,
            elementName: 'Output',
            typeInfo: 'WPS_1_0_0.OutputDataType'
          }]
      }, {
        type: 'classInfo',
        localName: 'Languages',
        propertyInfos: [{
            type: 'element',
            name: '_default',
            elementName: 'Default',
            typeInfo: 'WPS_1_0_0.Languages.Default'
          }, {
            type: 'element',
            name: 'supported',
            elementName: 'Supported',
            typeInfo: 'WPS_1_0_0.LanguagesType'
          }]
      }, {
        type: 'classInfo',
        localName: 'Languages.Default',
        propertyInfos: [{
            type: 'element',
            name: 'language',
            elementName: {
              localPart: 'Language',
              namespaceURI: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            typeInfo: 'String'
          }]
      }, {
        type: 'classInfo',
        localName: 'LanguagesType',
        propertyInfos: [{
            type: 'element',
            name: 'language',
            collection: true,
            elementName: {
              localPart: 'Language',
              namespaceURI: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            typeInfo: 'String'
          }]
      }, {
        type: 'classInfo',
        localName: 'ProcessOfferings',
        propertyInfos: [{
            type: 'element',
            name: 'process',
            collection: true,
            elementName: 'Process',
            typeInfo: 'WPS_1_0_0.ProcessBriefType'
          }]
      }, {
        type: 'classInfo',
        localName: 'WSDL',
        propertyInfos: [{
            name: 'href',
            typeInfo: 'String',
            attributeName: {
              localPart: 'href',
              namespaceURI: 'http:\/\/www.w3.org\/1999\/xlink'
            },
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'ProcessDescriptions',
        baseTypeInfo: 'WPS_1_0_0.ResponseBaseType',
        propertyInfos: [{
            type: 'element',
            name: 'processDescription',
            collection: true,
            elementName: {
              localPart: 'ProcessDescription'
            },
            typeInfo: 'WPS_1_0_0.ProcessDescriptionType'
          }]
      }, {
        type: 'classInfo',
        localName: 'ProcessDescriptionType',
        baseTypeInfo: 'WPS_1_0_0.ProcessBriefType',
        propertyInfos: [{
            type: 'element',
            name: 'dataInputs',
            elementName: {
              localPart: 'DataInputs'
            },
            typeInfo: 'WPS_1_0_0.ProcessDescriptionType.DataInputs'
          }, {
            type: 'element',
            name: 'processOutputs',
            elementName: {
              localPart: 'ProcessOutputs'
            },
            typeInfo: 'WPS_1_0_0.ProcessDescriptionType.ProcessOutputs'
          }, {
            name: 'storeSupported',
            typeInfo: 'Boolean',
            attributeName: 'storeSupported',
            type: 'attribute'
          }, {
            name: 'statusSupported',
            typeInfo: 'Boolean',
            attributeName: 'statusSupported',
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'SupportedCRSsType',
        propertyInfos: [{
            type: 'element',
            name: '_default',
            elementName: {
              localPart: 'Default'
            },
            typeInfo: 'WPS_1_0_0.SupportedCRSsType.Default'
          }, {
            type: 'element',
            name: 'supported',
            elementName: {
              localPart: 'Supported'
            },
            typeInfo: 'WPS_1_0_0.CRSsType'
          }]
      }, {
        type: 'classInfo',
        localName: 'CRSsType',
        propertyInfos: [{
            type: 'element',
            name: 'crs',
            collection: true,
            elementName: {
              localPart: 'CRS'
            },
            typeInfo: 'String'
          }]
      }, {
        type: 'classInfo',
        localName: 'ResponseDocumentType',
        propertyInfos: [{
            type: 'element',
            name: 'output',
            collection: true,
            elementName: 'Output',
            typeInfo: 'WPS_1_0_0.DocumentOutputDefinitionType'
          }, {
            name: 'storeExecuteResponse',
            typeInfo: 'Boolean',
            attributeName: 'storeExecuteResponse',
            type: 'attribute'
          }, {
            name: 'lineage',
            typeInfo: 'Boolean',
            attributeName: 'lineage',
            type: 'attribute'
          }, {
            name: 'status',
            typeInfo: 'Boolean',
            attributeName: 'status',
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'UOMsType',
        propertyInfos: [{
            type: 'element',
            name: 'uom',
            collection: true,
            elementName: {
              localPart: 'UOM',
              namespaceURI: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            typeInfo: 'OWS_1_1_0.DomainMetadataType'
          }]
      }, {
        type: 'classInfo',
        localName: 'ComplexDataCombinationsType',
        propertyInfos: [{
            type: 'element',
            name: 'format',
            collection: true,
            elementName: {
              localPart: 'Format'
            },
            typeInfo: 'WPS_1_0_0.ComplexDataDescriptionType'
          }]
      }, {
        type: 'classInfo',
        localName: 'ValuesReferenceType',
        propertyInfos: [{
            name: 'reference',
            typeInfo: 'String',
            attributeName: {
              localPart: 'reference',
              namespaceURI: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            type: 'attribute'
          }, {
            name: 'valuesForm',
            typeInfo: 'String',
            attributeName: 'valuesForm',
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'OutputDefinitionType',
        propertyInfos: [{
            type: 'element',
            name: 'identifier',
            elementName: {
              localPart: 'Identifier',
              namespaceURI: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            typeInfo: 'OWS_1_1_0.CodeType'
          }, {
            name: 'uom',
            typeInfo: 'String',
            attributeName: 'uom',
            type: 'attribute'
          }, {
            name: 'mimeType',
            typeInfo: 'String',
            attributeName: 'mimeType',
            type: 'attribute'
          }, {
            name: 'encoding',
            typeInfo: 'String',
            attributeName: 'encoding',
            type: 'attribute'
          }, {
            name: 'schema',
            typeInfo: 'String',
            attributeName: 'schema',
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'OutputReferenceType',
        propertyInfos: [{
            name: 'href',
            typeInfo: 'String',
            attributeName: 'href',
            type: 'attribute'
          }, {
            name: 'mimeType',
            typeInfo: 'String',
            attributeName: 'mimeType',
            type: 'attribute'
          }, {
            name: 'encoding',
            typeInfo: 'String',
            attributeName: 'encoding',
            type: 'attribute'
          }, {
            name: 'schema',
            typeInfo: 'String',
            attributeName: 'schema',
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'DataType',
        propertyInfos: [{
            type: 'element',
            name: 'complexData',
            elementName: 'ComplexData',
            typeInfo: 'WPS_1_0_0.ComplexDataType'
          }, {
            type: 'element',
            name: 'literalData',
            elementName: 'LiteralData',
            typeInfo: 'WPS_1_0_0.LiteralDataType'
          }, {
            type: 'element',
            name: 'boundingBoxData',
            elementName: 'BoundingBoxData',
            typeInfo: 'OWS_1_1_0.BoundingBoxType'
          }]
      }, {
        type: 'classInfo',
        localName: 'InputReferenceType',
        propertyInfos: [{
            type: 'element',
            name: 'header',
            collection: true,
            elementName: 'Header',
            typeInfo: 'WPS_1_0_0.InputReferenceType.Header'
          }, {
            type: 'element',
            name: 'body',
            elementName: 'Body',
            typeInfo: 'AnyType'
          }, {
            type: 'element',
            name: 'bodyReference',
            elementName: 'BodyReference',
            typeInfo: 'WPS_1_0_0.InputReferenceType.BodyReference'
          }, {
            name: 'href',
            typeInfo: 'String',
            attributeName: {
              localPart: 'href',
              namespaceURI: 'http:\/\/www.w3.org\/1999\/xlink'
            },
            type: 'attribute'
          }, {
            name: 'method',
            typeInfo: 'String',
            attributeName: 'method',
            type: 'attribute'
          }, {
            name: 'mimeType',
            typeInfo: 'String',
            attributeName: 'mimeType',
            type: 'attribute'
          }, {
            name: 'encoding',
            typeInfo: 'String',
            attributeName: 'encoding',
            type: 'attribute'
          }, {
            name: 'schema',
            typeInfo: 'String',
            attributeName: 'schema',
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'DescriptionType',
        propertyInfos: [{
            type: 'element',
            name: 'identifier',
            elementName: {
              localPart: 'Identifier',
              namespaceURI: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            typeInfo: 'OWS_1_1_0.CodeType'
          }, {
            type: 'element',
            name: 'title',
            elementName: {
              localPart: 'Title',
              namespaceURI: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            typeInfo: 'OWS_1_1_0.LanguageStringType'
          }, {
            type: 'element',
            name: '_abstract',
            elementName: {
              localPart: 'Abstract',
              namespaceURI: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            typeInfo: 'OWS_1_1_0.LanguageStringType'
          }, {
            type: 'element',
            name: 'metadata',
            collection: true,
            elementName: {
              localPart: 'Metadata',
              namespaceURI: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            typeInfo: 'OWS_1_1_0.MetadataType'
          }]
      }, {
        type: 'classInfo',
        localName: 'ProcessFailedType',
        propertyInfos: [{
            type: 'element',
            name: 'exceptionReport',
            elementName: {
              localPart: 'ExceptionReport',
              namespaceURI: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            typeInfo: 'OWS_1_1_0.ExceptionReport'
          }]
      }, {
        type: 'classInfo',
        localName: 'ComplexDataType',
        propertyInfos: [{
            name: 'otherAttributes',
            type: 'anyAttribute'
          }, {
            name: 'content',
            collection: true,
            allowDom: true,
            mixed: true,
            type: 'anyElement'
          }, {
            name: 'mimeType',
            typeInfo: 'String',
            attributeName: 'mimeType',
            type: 'attribute'
          }, {
            name: 'encoding',
            typeInfo: 'String',
            attributeName: 'encoding',
            type: 'attribute'
          }, {
            name: 'schema',
            typeInfo: 'String',
            attributeName: 'schema',
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'LiteralDataType',
        propertyInfos: [{
            name: 'value',
            typeInfo: 'String',
            type: 'value'
          }, {
            name: 'dataType',
            typeInfo: 'String',
            attributeName: 'dataType',
            type: 'attribute'
          }, {
            name: 'uom',
            typeInfo: 'String',
            attributeName: 'uom',
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'DocumentOutputDefinitionType',
        baseTypeInfo: 'WPS_1_0_0.OutputDefinitionType',
        propertyInfos: [{
            type: 'element',
            name: 'title',
            elementName: {
              localPart: 'Title',
              namespaceURI: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            typeInfo: 'OWS_1_1_0.LanguageStringType'
          }, {
            type: 'element',
            name: '_abstract',
            elementName: {
              localPart: 'Abstract',
              namespaceURI: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            typeInfo: 'OWS_1_1_0.LanguageStringType'
          }, {
            name: 'asReference',
            typeInfo: 'Boolean',
            attributeName: 'asReference',
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'SupportedComplexDataInputType',
        baseTypeInfo: 'WPS_1_0_0.SupportedComplexDataType',
        propertyInfos: [{
            name: 'maximumMegabytes',
            typeInfo: 'Integer',
            attributeName: 'maximumMegabytes',
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'InputDescriptionType',
        baseTypeInfo: 'WPS_1_0_0.DescriptionType',
        propertyInfos: [{
            type: 'element',
            name: 'complexData',
            elementName: {
              localPart: 'ComplexData'
            },
            typeInfo: 'WPS_1_0_0.SupportedComplexDataInputType'
          }, {
            type: 'element',
            name: 'literalData',
            elementName: {
              localPart: 'LiteralData'
            },
            typeInfo: 'WPS_1_0_0.LiteralInputType'
          }, {
            type: 'element',
            name: 'boundingBoxData',
            elementName: {
              localPart: 'BoundingBoxData'
            },
            typeInfo: 'WPS_1_0_0.SupportedCRSsType'
          }, {
            name: 'minOccurs',
            typeInfo: 'Integer',
            attributeName: 'minOccurs',
            type: 'attribute'
          }, {
            name: 'maxOccurs',
            typeInfo: 'Integer',
            attributeName: 'maxOccurs',
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'InputType',
        propertyInfos: [{
            type: 'element',
            name: 'identifier',
            elementName: {
              localPart: 'Identifier',
              namespaceURI: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            typeInfo: 'OWS_1_1_0.CodeType'
          }, {
            type: 'element',
            name: 'title',
            elementName: {
              localPart: 'Title',
              namespaceURI: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            typeInfo: 'OWS_1_1_0.LanguageStringType'
          }, {
            type: 'element',
            name: '_abstract',
            elementName: {
              localPart: 'Abstract',
              namespaceURI: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            typeInfo: 'OWS_1_1_0.LanguageStringType'
          }, {
            type: 'element',
            name: 'reference',
            elementName: 'Reference',
            typeInfo: 'WPS_1_0_0.InputReferenceType'
          }, {
            type: 'element',
            name: 'data',
            elementName: 'Data',
            typeInfo: 'WPS_1_0_0.DataType'
          }]
      }, {
        type: 'classInfo',
        localName: 'OutputDataType',
        baseTypeInfo: 'WPS_1_0_0.DescriptionType',
        propertyInfos: [{
            type: 'element',
            name: 'reference',
            elementName: 'Reference',
            typeInfo: 'WPS_1_0_0.OutputReferenceType'
          }, {
            type: 'element',
            name: 'data',
            elementName: 'Data',
            typeInfo: 'WPS_1_0_0.DataType'
          }]
      }, {
        type: 'classInfo',
        localName: 'ComplexDataCombinationType',
        propertyInfos: [{
            type: 'element',
            name: 'format',
            elementName: {
              localPart: 'Format'
            },
            typeInfo: 'WPS_1_0_0.ComplexDataDescriptionType'
          }]
      }, {
        type: 'classInfo',
        localName: 'ComplexDataDescriptionType',
        propertyInfos: [{
            type: 'element',
            name: 'mimeType',
            elementName: {
              localPart: 'MimeType'
            },
            typeInfo: 'String'
          }, {
            type: 'element',
            name: 'encoding',
            elementName: {
              localPart: 'Encoding'
            },
            typeInfo: 'String'
          }, {
            type: 'element',
            name: 'schema',
            elementName: {
              localPart: 'Schema'
            },
            typeInfo: 'String'
          }]
      }, {
        type: 'classInfo',
        localName: 'OutputDescriptionType',
        baseTypeInfo: 'WPS_1_0_0.DescriptionType',
        propertyInfos: [{
            type: 'element',
            name: 'complexOutput',
            elementName: {
              localPart: 'ComplexOutput'
            },
            typeInfo: 'WPS_1_0_0.SupportedComplexDataType'
          }, {
            type: 'element',
            name: 'literalOutput',
            elementName: {
              localPart: 'LiteralOutput'
            },
            typeInfo: 'WPS_1_0_0.LiteralOutputType'
          }, {
            type: 'element',
            name: 'boundingBoxOutput',
            elementName: {
              localPart: 'BoundingBoxOutput'
            },
            typeInfo: 'WPS_1_0_0.SupportedCRSsType'
          }]
      }, {
        type: 'classInfo',
        localName: 'SupportedComplexDataType',
        propertyInfos: [{
            type: 'element',
            name: '_default',
            elementName: {
              localPart: 'Default'
            },
            typeInfo: 'WPS_1_0_0.ComplexDataCombinationType'
          }, {
            type: 'element',
            name: 'supported',
            elementName: {
              localPart: 'Supported'
            },
            typeInfo: 'WPS_1_0_0.ComplexDataCombinationsType'
          }]
      }, {
        type: 'classInfo',
        localName: 'LiteralInputType',
        baseTypeInfo: 'WPS_1_0_0.LiteralOutputType',
        propertyInfos: [{
            type: 'element',
            name: 'allowedValues',
            elementName: {
              localPart: 'AllowedValues',
              namespaceURI: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            typeInfo: 'OWS_1_1_0.AllowedValues'
          }, {
            type: 'element',
            name: 'anyValue',
            elementName: {
              localPart: 'AnyValue',
              namespaceURI: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            typeInfo: 'OWS_1_1_0.AnyValue'
          }, {
            type: 'element',
            name: 'valuesReference',
            elementName: {
              localPart: 'ValuesReference'
            },
            typeInfo: 'WPS_1_0_0.ValuesReferenceType'
          }, {
            type: 'element',
            name: 'defaultValue',
            elementName: {
              localPart: 'DefaultValue'
            },
            typeInfo: 'String'
          }]
      }, {
        type: 'classInfo',
        localName: 'ProcessStartedType',
        propertyInfos: [{
            name: 'value',
            typeInfo: 'String',
            type: 'value'
          }, {
            name: 'percentCompleted',
            typeInfo: 'Int',
            attributeName: 'percentCompleted',
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'LiteralOutputType',
        propertyInfos: [{
            type: 'element',
            name: 'dataType',
            elementName: {
              localPart: 'DataType',
              namespaceURI: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            typeInfo: 'OWS_1_1_0.DomainMetadataType'
          }, {
            type: 'element',
            name: 'uoMs',
            elementName: {
              localPart: 'UOMs'
            },
            typeInfo: 'WPS_1_0_0.SupportedUOMsType'
          }]
      }, {
        type: 'classInfo',
        localName: 'SupportedUOMsType',
        propertyInfos: [{
            type: 'element',
            name: '_default',
            elementName: {
              localPart: 'Default'
            },
            typeInfo: 'WPS_1_0_0.SupportedUOMsType.Default'
          }, {
            type: 'element',
            name: 'supported',
            elementName: {
              localPart: 'Supported'
            },
            typeInfo: 'WPS_1_0_0.UOMsType'
          }]
      }, {
        type: 'classInfo',
        localName: 'SupportedUOMsType.Default',
        propertyInfos: [{
            type: 'element',
            name: 'uom',
            elementName: {
              localPart: 'UOM',
              namespaceURI: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            typeInfo: 'OWS_1_1_0.DomainMetadataType'
          }]
      }, {
        type: 'classInfo',
        localName: 'InputReferenceType.Header',
        propertyInfos: [{
            name: 'key',
            typeInfo: 'String',
            attributeName: 'key',
            type: 'attribute'
          }, {
            name: 'value',
            typeInfo: 'String',
            attributeName: 'value',
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'InputReferenceType.BodyReference',
        propertyInfos: [{
            name: 'href',
            typeInfo: 'String',
            attributeName: {
              localPart: 'href',
              namespaceURI: 'http:\/\/www.w3.org\/1999\/xlink'
            },
            type: 'attribute'
          }]
      }, {
        type: 'classInfo',
        localName: 'SupportedCRSsType.Default',
        propertyInfos: [{
            type: 'element',
            name: 'crs',
            elementName: {
              localPart: 'CRS'
            },
            typeInfo: 'String'
          }]
      }, {
        type: 'classInfo',
        localName: 'ProcessDescriptionType.DataInputs',
        propertyInfos: [{
            type: 'element',
            name: 'input',
            collection: true,
            elementName: {
              localPart: 'Input'
            },
            typeInfo: 'WPS_1_0_0.InputDescriptionType'
          }]
      }, {
        type: 'classInfo',
        localName: 'ProcessDescriptionType.ProcessOutputs',
        propertyInfos: [{
            type: 'element',
            name: 'output',
            collection: true,
            elementName: {
              localPart: 'Output'
            },
            typeInfo: 'WPS_1_0_0.OutputDescriptionType'
          }]
      }],
    elementInfos: [{
        elementName: 'Execute',
        typeInfo: 'WPS_1_0_0.Execute'
      }, {
        elementName: 'GetCapabilities',
        typeInfo: 'WPS_1_0_0.GetCapabilities'
      }, {
        elementName: 'DescribeProcess',
        typeInfo: 'WPS_1_0_0.DescribeProcess'
      }, {
        elementName: 'ExecuteResponse',
        typeInfo: 'WPS_1_0_0.ExecuteResponse'
      }, {
        elementName: 'Languages',
        typeInfo: 'WPS_1_0_0.Languages'
      }, {
        elementName: 'ProcessOfferings',
        typeInfo: 'WPS_1_0_0.ProcessOfferings'
      }, {
        elementName: 'WSDL',
        typeInfo: 'WPS_1_0_0.WSDL'
      }, {
        elementName: 'ProcessDescriptions',
        typeInfo: 'WPS_1_0_0.ProcessDescriptions'
      }, {
        elementName: 'Capabilities',
        typeInfo: 'WPS_1_0_0.WPSCapabilitiesType'
      }]
  };
  return {
    WPS_1_0_0: WPS_1_0_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], WPS_1_0_0_Module_Factory);
}
else {
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.WPS_1_0_0 = WPS_1_0_0_Module_Factory().WPS_1_0_0;
  }
  else {
    var WPS_1_0_0 = WPS_1_0_0_Module_Factory().WPS_1_0_0;
  }
}