var WPS_1_0_0_Module_Factory = function () {
  var WPS_1_0_0 = {
    n: 'WPS_1_0_0',
    dens: 'http:\/\/www.opengis.net\/wps\/1.0.0',
    deps: ['OWS_1_1_0'],
    tis: [{
        ln: 'ComplexDataType',
        ps: [{
            n: 'otherAttributes',
            t: 'aa'
          }, {
            n: 'content',
            col: true,
            t: 'ae'
          }, {
            n: 'mimeType',
            an: {
              lp: 'mimeType'
            },
            t: 'a'
          }, {
            n: 'encoding',
            an: {
              lp: 'encoding'
            },
            t: 'a'
          }, {
            n: 'schema',
            an: {
              lp: 'schema'
            },
            t: 'a'
          }]
      }, {
        ln: 'OutputDataType',
        bti: '.DescriptionType',
        ps: [{
            n: 'reference',
            rq: true,
            en: 'Reference',
            ti: '.OutputReferenceType'
          }, {
            n: 'data',
            rq: true,
            en: 'Data',
            ti: '.DataType'
          }]
      }, {
        ln: 'WPSCapabilitiesType',
        bti: 'OWS_1_1_0.CapabilitiesBaseType',
        ps: [{
            n: 'processOfferings',
            rq: true,
            en: 'ProcessOfferings',
            ti: '.ProcessOfferings'
          }, {
            n: 'languages',
            rq: true,
            en: 'Languages',
            ti: '.Languages'
          }, {
            n: 'wsdl',
            en: 'WSDL',
            ti: '.WSDL'
          }, {
            n: 'service',
            rq: true,
            ti: 'AnySimpleType',
            an: {
              lp: 'service'
            },
            t: 'a'
          }, {
            n: 'lang',
            rq: true,
            an: {
              lp: 'lang',
              ns: 'http:\/\/www.w3.org\/XML\/1998\/namespace'
            },
            t: 'a'
          }]
      }, {
        ln: 'DataInputsType',
        ps: [{
            n: 'input',
            rq: true,
            col: true,
            en: 'Input',
            ti: '.InputType'
          }]
      }, {
        ln: 'LiteralInputType',
        bti: '.LiteralOutputType',
        ps: [{
            n: 'allowedValues',
            rq: true,
            en: {
              lp: 'AllowedValues',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.AllowedValues'
          }, {
            n: 'anyValue',
            rq: true,
            en: {
              lp: 'AnyValue',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.AnyValue'
          }, {
            n: 'valuesReference',
            rq: true,
            en: {
              lp: 'ValuesReference'
            },
            ti: '.ValuesReferenceType'
          }, {
            n: 'defaultValue',
            en: {
              lp: 'DefaultValue'
            }
          }]
      }, {
        ln: 'ProcessDescriptionType.ProcessOutputs',
        tn: null,
        ps: [{
            n: 'output',
            rq: true,
            col: true,
            en: {
              lp: 'Output'
            },
            ti: '.OutputDescriptionType'
          }]
      }, {
        ln: 'InputReferenceType',
        ps: [{
            n: 'header',
            mno: 0,
            col: true,
            en: 'Header',
            ti: '.InputReferenceType.Header'
          }, {
            n: 'body',
            rq: true,
            en: 'Body',
            ti: 'AnyType'
          }, {
            n: 'bodyReference',
            rq: true,
            en: 'BodyReference',
            ti: '.InputReferenceType.BodyReference'
          }, {
            n: 'href',
            rq: true,
            an: {
              lp: 'href',
              ns: 'http:\/\/www.w3.org\/1999\/xlink'
            },
            t: 'a'
          }, {
            n: 'method',
            an: {
              lp: 'method'
            },
            t: 'a'
          }, {
            n: 'mimeType',
            an: {
              lp: 'mimeType'
            },
            t: 'a'
          }, {
            n: 'encoding',
            an: {
              lp: 'encoding'
            },
            t: 'a'
          }, {
            n: 'schema',
            an: {
              lp: 'schema'
            },
            t: 'a'
          }]
      }, {
        ln: 'DescribeProcess',
        tn: null,
        bti: '.RequestBaseType',
        ps: [{
            n: 'identifier',
            rq: true,
            col: true,
            en: {
              lp: 'Identifier',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.CodeType'
          }]
      }, {
        ln: 'ComplexDataDescriptionType',
        ps: [{
            n: 'mimeType',
            rq: true,
            en: {
              lp: 'MimeType'
            }
          }, {
            n: 'encoding',
            en: {
              lp: 'Encoding'
            }
          }, {
            n: 'schema',
            en: {
              lp: 'Schema'
            }
          }]
      }, {
        ln: 'ProcessDescriptions',
        tn: null,
        bti: '.ResponseBaseType',
        ps: [{
            n: 'processDescription',
            rq: true,
            col: true,
            en: {
              lp: 'ProcessDescription'
            },
            ti: '.ProcessDescriptionType'
          }]
      }, {
        ln: 'DescriptionType',
        ps: [{
            n: 'identifier',
            rq: true,
            en: {
              lp: 'Identifier',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.CodeType'
          }, {
            n: 'title',
            rq: true,
            en: {
              lp: 'Title',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.LanguageStringType'
          }, {
            n: '_abstract',
            en: {
              lp: 'Abstract',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.LanguageStringType'
          }, {
            n: 'metadata',
            mno: 0,
            col: true,
            en: {
              lp: 'Metadata',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.MetadataType'
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
          }, {
            n: 'language',
            an: {
              lp: 'language'
            },
            t: 'a'
          }]
      }, {
        ln: 'ProcessDescriptionType.DataInputs',
        tn: null,
        ps: [{
            n: 'input',
            rq: true,
            col: true,
            en: {
              lp: 'Input'
            },
            ti: '.InputDescriptionType'
          }]
      }, {
        ln: 'OutputReferenceType',
        ps: [{
            n: 'href',
            rq: true,
            an: {
              lp: 'href'
            },
            t: 'a'
          }, {
            n: 'mimeType',
            an: {
              lp: 'mimeType'
            },
            t: 'a'
          }, {
            n: 'encoding',
            an: {
              lp: 'encoding'
            },
            t: 'a'
          }, {
            n: 'schema',
            an: {
              lp: 'schema'
            },
            t: 'a'
          }]
      }, {
        ln: 'SupportedComplexDataInputType',
        bti: '.SupportedComplexDataType',
        ps: [{
            n: 'maximumMegabytes',
            ti: 'Integer',
            an: {
              lp: 'maximumMegabytes'
            },
            t: 'a'
          }]
      }, {
        ln: 'ComplexDataCombinationsType',
        ps: [{
            n: 'format',
            rq: true,
            col: true,
            en: {
              lp: 'Format'
            },
            ti: '.ComplexDataDescriptionType'
          }]
      }, {
        ln: 'ResponseBaseType',
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
          }, {
            n: 'lang',
            rq: true,
            an: {
              lp: 'lang',
              ns: 'http:\/\/www.w3.org\/XML\/1998\/namespace'
            },
            t: 'a'
          }]
      }, {
        ln: 'ProcessFailedType',
        ps: [{
            n: 'exceptionReport',
            rq: true,
            en: {
              lp: 'ExceptionReport',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.ExceptionReport'
          }]
      }, {
        ln: 'InputType',
        ps: [{
            n: 'identifier',
            rq: true,
            en: {
              lp: 'Identifier',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.CodeType'
          }, {
            n: 'title',
            en: {
              lp: 'Title',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.LanguageStringType'
          }, {
            n: '_abstract',
            en: {
              lp: 'Abstract',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.LanguageStringType'
          }, {
            n: 'reference',
            rq: true,
            en: 'Reference',
            ti: '.InputReferenceType'
          }, {
            n: 'data',
            rq: true,
            en: 'Data',
            ti: '.DataType'
          }]
      }, {
        ln: 'ProcessBriefType',
        bti: '.DescriptionType',
        ps: [{
            n: 'profile',
            mno: 0,
            col: true,
            en: 'Profile'
          }, {
            n: 'wsdl',
            en: 'WSDL',
            ti: '.WSDL'
          }, {
            n: 'processVersion',
            rq: true,
            an: {
              lp: 'processVersion',
              ns: 'http:\/\/www.opengis.net\/wps\/1.0.0'
            },
            t: 'a'
          }]
      }, {
        ln: 'SupportedCRSsType',
        ps: [{
            n: '_default',
            rq: true,
            en: {
              lp: 'Default'
            },
            ti: '.SupportedCRSsType.Default'
          }, {
            n: 'supported',
            rq: true,
            en: {
              lp: 'Supported'
            },
            ti: '.CRSsType'
          }]
      }, {
        ln: 'LanguagesType',
        ps: [{
            n: 'language',
            rq: true,
            col: true,
            en: {
              lp: 'Language',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'Language'
          }]
      }, {
        ln: 'ExecuteResponse',
        tn: null,
        bti: '.ResponseBaseType',
        ps: [{
            n: 'process',
            rq: true,
            en: 'Process',
            ti: '.ProcessBriefType'
          }, {
            n: 'status',
            rq: true,
            en: 'Status',
            ti: '.StatusType'
          }, {
            n: 'dataInputs',
            en: 'DataInputs',
            ti: '.DataInputsType'
          }, {
            n: 'outputDefinitions',
            en: 'OutputDefinitions',
            ti: '.OutputDefinitionsType'
          }, {
            n: 'processOutputs',
            en: 'ProcessOutputs',
            ti: '.ExecuteResponse.ProcessOutputs'
          }, {
            n: 'serviceInstance',
            rq: true,
            an: {
              lp: 'serviceInstance'
            },
            t: 'a'
          }, {
            n: 'statusLocation',
            an: {
              lp: 'statusLocation'
            },
            t: 'a'
          }]
      }, {
        ln: 'GetCapabilities',
        tn: null,
        ps: [{
            n: 'acceptVersions',
            en: 'AcceptVersions',
            ti: 'OWS_1_1_0.AcceptVersionsType'
          }, {
            n: 'service',
            rq: true,
            an: {
              lp: 'service'
            },
            t: 'a'
          }, {
            n: 'language',
            an: {
              lp: 'language'
            },
            t: 'a'
          }]
      }, {
        ln: 'Languages.Default',
        tn: null,
        ps: [{
            n: 'language',
            rq: true,
            en: {
              lp: 'Language',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'Language'
          }]
      }, {
        ln: 'StatusType',
        ps: [{
            n: 'processAccepted',
            rq: true,
            en: 'ProcessAccepted'
          }, {
            n: 'processStarted',
            rq: true,
            en: 'ProcessStarted',
            ti: '.ProcessStartedType'
          }, {
            n: 'processPaused',
            rq: true,
            en: 'ProcessPaused',
            ti: '.ProcessStartedType'
          }, {
            n: 'processSucceeded',
            rq: true,
            en: 'ProcessSucceeded'
          }, {
            n: 'processFailed',
            rq: true,
            en: 'ProcessFailed',
            ti: '.ProcessFailedType'
          }, {
            n: 'creationTime',
            rq: true,
            ti: 'DateTime',
            an: {
              lp: 'creationTime'
            },
            t: 'a'
          }]
      }, {
        ln: 'DocumentOutputDefinitionType',
        bti: '.OutputDefinitionType',
        ps: [{
            n: 'title',
            en: {
              lp: 'Title',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.LanguageStringType'
          }, {
            n: '_abstract',
            en: {
              lp: 'Abstract',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.LanguageStringType'
          }, {
            n: 'asReference',
            ti: 'Boolean',
            an: {
              lp: 'asReference'
            },
            t: 'a'
          }]
      }, {
        ln: 'ValuesReferenceType',
        ps: [{
            n: 'reference',
            an: {
              lp: 'reference',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            t: 'a'
          }, {
            n: 'valuesForm',
            an: {
              lp: 'valuesForm'
            },
            t: 'a'
          }]
      }, {
        ln: 'ComplexDataCombinationType',
        ps: [{
            n: 'format',
            rq: true,
            en: {
              lp: 'Format'
            },
            ti: '.ComplexDataDescriptionType'
          }]
      }, {
        ln: 'ProcessStartedType',
        ps: [{
            n: 'value',
            t: 'v'
          }, {
            n: 'percentCompleted',
            ti: 'Int',
            an: {
              lp: 'percentCompleted'
            },
            t: 'a'
          }]
      }, {
        ln: 'ExecuteResponse.ProcessOutputs',
        tn: null,
        ps: [{
            n: 'output',
            rq: true,
            col: true,
            en: 'Output',
            ti: '.OutputDataType'
          }]
      }, {
        ln: 'SupportedComplexDataType',
        ps: [{
            n: '_default',
            rq: true,
            en: {
              lp: 'Default'
            },
            ti: '.ComplexDataCombinationType'
          }, {
            n: 'supported',
            rq: true,
            en: {
              lp: 'Supported'
            },
            ti: '.ComplexDataCombinationsType'
          }]
      }, {
        ln: 'LiteralDataType',
        ps: [{
            n: 'value',
            t: 'v'
          }, {
            n: 'dataType',
            an: {
              lp: 'dataType'
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
        ln: 'OutputDefinitionsType',
        ps: [{
            n: 'output',
            rq: true,
            col: true,
            en: 'Output',
            ti: '.DocumentOutputDefinitionType'
          }]
      }, {
        ln: 'LiteralOutputType',
        ps: [{
            n: 'dataType',
            en: {
              lp: 'DataType',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.DomainMetadataType'
          }, {
            n: 'uoMs',
            en: {
              lp: 'UOMs'
            },
            ti: '.SupportedUOMsType'
          }]
      }, {
        ln: 'OutputDefinitionType',
        ps: [{
            n: 'identifier',
            rq: true,
            en: {
              lp: 'Identifier',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.CodeType'
          }, {
            n: 'uom',
            an: {
              lp: 'uom'
            },
            t: 'a'
          }, {
            n: 'mimeType',
            an: {
              lp: 'mimeType'
            },
            t: 'a'
          }, {
            n: 'encoding',
            an: {
              lp: 'encoding'
            },
            t: 'a'
          }, {
            n: 'schema',
            an: {
              lp: 'schema'
            },
            t: 'a'
          }]
      }, {
        ln: 'SupportedCRSsType.Default',
        tn: null,
        ps: [{
            n: 'crs',
            rq: true,
            en: {
              lp: 'CRS'
            }
          }]
      }, {
        ln: 'WSDL',
        tn: null,
        ps: [{
            n: 'href',
            rq: true,
            an: {
              lp: 'href',
              ns: 'http:\/\/www.w3.org\/1999\/xlink'
            },
            t: 'a'
          }]
      }, {
        ln: 'ProcessOfferings',
        tn: null,
        ps: [{
            n: 'process',
            rq: true,
            col: true,
            en: 'Process',
            ti: '.ProcessBriefType'
          }]
      }, {
        ln: 'SupportedUOMsType',
        ps: [{
            n: '_default',
            rq: true,
            en: {
              lp: 'Default'
            },
            ti: '.SupportedUOMsType.Default'
          }, {
            n: 'supported',
            rq: true,
            en: {
              lp: 'Supported'
            },
            ti: '.UOMsType'
          }]
      }, {
        ln: 'InputReferenceType.BodyReference',
        tn: null,
        ps: [{
            n: 'href',
            rq: true,
            an: {
              lp: 'href',
              ns: 'http:\/\/www.w3.org\/1999\/xlink'
            },
            t: 'a'
          }]
      }, {
        ln: 'DataType',
        ps: [{
            n: 'complexData',
            rq: true,
            en: 'ComplexData',
            ti: '.ComplexDataType'
          }, {
            n: 'literalData',
            rq: true,
            en: 'LiteralData',
            ti: '.LiteralDataType'
          }, {
            n: 'boundingBoxData',
            rq: true,
            en: 'BoundingBoxData',
            ti: 'OWS_1_1_0.BoundingBoxType'
          }]
      }, {
        ln: 'ProcessDescriptionType',
        bti: '.ProcessBriefType',
        ps: [{
            n: 'dataInputs',
            en: {
              lp: 'DataInputs'
            },
            ti: '.ProcessDescriptionType.DataInputs'
          }, {
            n: 'processOutputs',
            rq: true,
            en: {
              lp: 'ProcessOutputs'
            },
            ti: '.ProcessDescriptionType.ProcessOutputs'
          }, {
            n: 'storeSupported',
            ti: 'Boolean',
            an: {
              lp: 'storeSupported'
            },
            t: 'a'
          }, {
            n: 'statusSupported',
            ti: 'Boolean',
            an: {
              lp: 'statusSupported'
            },
            t: 'a'
          }]
      }, {
        ln: 'ResponseDocumentType',
        ps: [{
            n: 'output',
            rq: true,
            col: true,
            en: 'Output',
            ti: '.DocumentOutputDefinitionType'
          }, {
            n: 'storeExecuteResponse',
            ti: 'Boolean',
            an: {
              lp: 'storeExecuteResponse'
            },
            t: 'a'
          }, {
            n: 'lineage',
            ti: 'Boolean',
            an: {
              lp: 'lineage'
            },
            t: 'a'
          }, {
            n: 'status',
            ti: 'Boolean',
            an: {
              lp: 'status'
            },
            t: 'a'
          }]
      }, {
        ln: 'Execute',
        tn: null,
        bti: '.RequestBaseType',
        ps: [{
            n: 'identifier',
            rq: true,
            en: {
              lp: 'Identifier',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.CodeType'
          }, {
            n: 'dataInputs',
            en: 'DataInputs',
            ti: '.DataInputsType'
          }, {
            n: 'responseForm',
            en: 'ResponseForm',
            ti: '.ResponseFormType'
          }]
      }, {
        ln: 'CRSsType',
        ps: [{
            n: 'crs',
            rq: true,
            col: true,
            en: {
              lp: 'CRS'
            }
          }]
      }, {
        ln: 'SupportedUOMsType.Default',
        tn: null,
        ps: [{
            n: 'uom',
            rq: true,
            en: {
              lp: 'UOM',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.DomainMetadataType'
          }]
      }, {
        ln: 'InputDescriptionType',
        bti: '.DescriptionType',
        ps: [{
            n: 'complexData',
            rq: true,
            en: {
              lp: 'ComplexData'
            },
            ti: '.SupportedComplexDataInputType'
          }, {
            n: 'literalData',
            rq: true,
            en: {
              lp: 'LiteralData'
            },
            ti: '.LiteralInputType'
          }, {
            n: 'boundingBoxData',
            rq: true,
            en: {
              lp: 'BoundingBoxData'
            },
            ti: '.SupportedCRSsType'
          }, {
            n: 'minOccurs',
            rq: true,
            ti: 'NonNegativeInteger',
            an: {
              lp: 'minOccurs'
            },
            t: 'a'
          }, {
            n: 'maxOccurs',
            rq: true,
            ti: 'PositiveInteger',
            an: {
              lp: 'maxOccurs'
            },
            t: 'a'
          }]
      }, {
        ln: 'InputReferenceType.Header',
        tn: null,
        ps: [{
            n: 'key',
            rq: true,
            an: {
              lp: 'key'
            },
            t: 'a'
          }, {
            n: 'value',
            rq: true,
            an: {
              lp: 'value'
            },
            t: 'a'
          }]
      }, {
        ln: 'Languages',
        tn: null,
        ps: [{
            n: '_default',
            rq: true,
            en: 'Default',
            ti: '.Languages.Default'
          }, {
            n: 'supported',
            rq: true,
            en: 'Supported',
            ti: '.LanguagesType'
          }]
      }, {
        ln: 'OutputDescriptionType',
        bti: '.DescriptionType',
        ps: [{
            n: 'complexOutput',
            rq: true,
            en: {
              lp: 'ComplexOutput'
            },
            ti: '.SupportedComplexDataType'
          }, {
            n: 'literalOutput',
            rq: true,
            en: {
              lp: 'LiteralOutput'
            },
            ti: '.LiteralOutputType'
          }, {
            n: 'boundingBoxOutput',
            rq: true,
            en: {
              lp: 'BoundingBoxOutput'
            },
            ti: '.SupportedCRSsType'
          }]
      }, {
        ln: 'UOMsType',
        ps: [{
            n: 'uom',
            rq: true,
            col: true,
            en: {
              lp: 'UOM',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.DomainMetadataType'
          }]
      }, {
        ln: 'ResponseFormType',
        ps: [{
            n: 'responseDocument',
            rq: true,
            en: 'ResponseDocument',
            ti: '.ResponseDocumentType'
          }, {
            n: 'rawDataOutput',
            rq: true,
            en: 'RawDataOutput',
            ti: '.OutputDefinitionType'
          }]
      }],
    eis: [{
        en: 'GetCapabilities',
        ti: '.GetCapabilities'
      }, {
        en: 'ProcessOfferings',
        ti: '.ProcessOfferings'
      }, {
        en: 'Languages',
        ti: '.Languages'
      }, {
        en: 'DescribeProcess',
        ti: '.DescribeProcess'
      }, {
        en: 'Capabilities',
        ti: '.WPSCapabilitiesType'
      }, {
        en: 'WSDL',
        ti: '.WSDL'
      }, {
        en: 'ExecuteResponse',
        ti: '.ExecuteResponse'
      }, {
        en: 'ProcessDescriptions',
        ti: '.ProcessDescriptions'
      }, {
        en: 'Execute',
        ti: '.Execute'
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
  var WPS_1_0_0_Module = WPS_1_0_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.WPS_1_0_0 = WPS_1_0_0_Module.WPS_1_0_0;
  }
  else {
    var WPS_1_0_0 = WPS_1_0_0_Module.WPS_1_0_0;
  }
}