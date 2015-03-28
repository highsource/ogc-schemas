var WPS_1_0_0_Module_Factory = function () {
  var WPS_1_0_0 = {
    n: 'WPS_1_0_0',
    dens: 'http:\/\/www.opengis.net\/wps\/1.0.0',
    deps: ['OWS_1_1_0'],
    tis: [{
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
        ln: 'ExecuteResponse.ProcessOutputs',
        ps: [{
            n: 'output',
            col: true,
            en: 'Output',
            ti: '.OutputDataType'
          }]
      }, {
        ln: 'ComplexDataCombinationsType',
        ps: [{
            n: 'format',
            col: true,
            en: {
              lp: 'Format'
            },
            ti: '.ComplexDataDescriptionType'
          }]
      }, {
        ln: 'ProcessDescriptionType.DataInputs',
        ps: [{
            n: 'input',
            col: true,
            en: {
              lp: 'Input'
            },
            ti: '.InputDescriptionType'
          }]
      }, {
        ln: 'OutputDataType',
        bti: '.DescriptionType',
        ps: [{
            n: 'reference',
            en: 'Reference',
            ti: '.OutputReferenceType'
          }, {
            n: 'data',
            en: 'Data',
            ti: '.DataType'
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
        ln: 'Execute',
        bti: '.RequestBaseType',
        ps: [{
            n: 'identifier',
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
        ln: 'ProcessFailedType',
        ps: [{
            n: 'exceptionReport',
            en: {
              lp: 'ExceptionReport',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.ExceptionReport'
          }]
      }, {
        ln: 'CRSsType',
        ps: [{
            n: 'crs',
            col: true,
            en: {
              lp: 'CRS'
            }
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
        ln: 'InputReferenceType.Header',
        ps: [{
            n: 'key',
            an: {
              lp: 'key'
            },
            t: 'a'
          }, {
            n: 'value',
            an: {
              lp: 'value'
            },
            t: 'a'
          }]
      }, {
        ln: 'InputReferenceType',
        ps: [{
            n: 'header',
            col: true,
            en: 'Header',
            ti: '.InputReferenceType.Header'
          }, {
            n: 'body',
            en: 'Body',
            ti: 'AnyType'
          }, {
            n: 'bodyReference',
            en: 'BodyReference',
            ti: '.InputReferenceType.BodyReference'
          }, {
            n: 'href',
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
        ln: 'OutputDefinitionsType',
        ps: [{
            n: 'output',
            col: true,
            en: 'Output',
            ti: '.DocumentOutputDefinitionType'
          }]
      }, {
        ln: 'LiteralInputType',
        bti: '.LiteralOutputType',
        ps: [{
            n: 'allowedValues',
            en: {
              lp: 'AllowedValues',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.AllowedValues'
          }, {
            n: 'anyValue',
            en: {
              lp: 'AnyValue',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.AnyValue'
          }, {
            n: 'valuesReference',
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
        ln: 'OutputDefinitionType',
        ps: [{
            n: 'identifier',
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
        ln: 'WPSCapabilitiesType',
        bti: 'OWS_1_1_0.CapabilitiesBaseType',
        ps: [{
            n: 'processOfferings',
            en: 'ProcessOfferings',
            ti: '.ProcessOfferings'
          }, {
            n: 'languages',
            en: 'Languages',
            ti: '.Languages'
          }, {
            n: 'wsdl',
            en: 'WSDL',
            ti: '.WSDL'
          }, {
            n: 'service',
            an: {
              lp: 'service'
            },
            t: 'a'
          }, {
            n: 'lang',
            an: {
              lp: 'lang',
              ns: 'http:\/\/www.w3.org\/XML\/1998\/namespace'
            },
            t: 'a'
          }]
      }, {
        ln: 'InputType',
        ps: [{
            n: 'identifier',
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
            en: 'Reference',
            ti: '.InputReferenceType'
          }, {
            n: 'data',
            en: 'Data',
            ti: '.DataType'
          }]
      }, {
        ln: 'SupportedUOMsType.Default',
        ps: [{
            n: 'uom',
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
            en: {
              lp: 'ComplexData'
            },
            ti: '.SupportedComplexDataInputType'
          }, {
            n: 'literalData',
            en: {
              lp: 'LiteralData'
            },
            ti: '.LiteralInputType'
          }, {
            n: 'boundingBoxData',
            en: {
              lp: 'BoundingBoxData'
            },
            ti: '.SupportedCRSsType'
          }, {
            n: 'minOccurs',
            ti: 'Integer',
            an: {
              lp: 'minOccurs'
            },
            t: 'a'
          }, {
            n: 'maxOccurs',
            ti: 'Integer',
            an: {
              lp: 'maxOccurs'
            },
            t: 'a'
          }]
      }, {
        ln: 'StatusType',
        ps: [{
            n: 'processAccepted',
            en: 'ProcessAccepted'
          }, {
            n: 'processStarted',
            en: 'ProcessStarted',
            ti: '.ProcessStartedType'
          }, {
            n: 'processPaused',
            en: 'ProcessPaused',
            ti: '.ProcessStartedType'
          }, {
            n: 'processSucceeded',
            en: 'ProcessSucceeded'
          }, {
            n: 'processFailed',
            en: 'ProcessFailed',
            ti: '.ProcessFailedType'
          }, {
            n: 'creationTime',
            ti: 'Calendar',
            an: {
              lp: 'creationTime'
            },
            t: 'a'
          }]
      }, {
        ln: 'DataType',
        ps: [{
            n: 'complexData',
            en: 'ComplexData',
            ti: '.ComplexDataType'
          }, {
            n: 'literalData',
            en: 'LiteralData',
            ti: '.LiteralDataType'
          }, {
            n: 'boundingBoxData',
            en: 'BoundingBoxData',
            ti: 'OWS_1_1_0.BoundingBoxType'
          }]
      }, {
        ln: 'DescribeProcess',
        bti: '.RequestBaseType',
        ps: [{
            n: 'identifier',
            col: true,
            en: {
              lp: 'Identifier',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.CodeType'
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
        ln: 'Languages',
        ps: [{
            n: '_default',
            en: 'Default',
            ti: '.Languages.Default'
          }, {
            n: 'supported',
            en: 'Supported',
            ti: '.LanguagesType'
          }]
      }, {
        ln: 'UOMsType',
        ps: [{
            n: 'uom',
            col: true,
            en: {
              lp: 'UOM',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.DomainMetadataType'
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
        ln: 'ComplexDataType',
        ps: [{
            n: 'otherAttributes',
            t: 'aa'
          }, {
            n: 'content',
            col: true,
            typed: false,
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
        ln: 'ExecuteResponse',
        bti: '.ResponseBaseType',
        ps: [{
            n: 'process',
            en: 'Process',
            ti: '.ProcessBriefType'
          }, {
            n: 'status',
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
        ln: 'InputReferenceType.BodyReference',
        ps: [{
            n: 'href',
            an: {
              lp: 'href',
              ns: 'http:\/\/www.w3.org\/1999\/xlink'
            },
            t: 'a'
          }]
      }, {
        ln: 'GetCapabilities',
        ps: [{
            n: 'acceptVersions',
            en: 'AcceptVersions',
            ti: 'OWS_1_1_0.AcceptVersionsType'
          }, {
            n: 'service',
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
        ln: 'DescriptionType',
        ps: [{
            n: 'identifier',
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
            n: 'metadata',
            col: true,
            en: {
              lp: 'Metadata',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.MetadataType'
          }]
      }, {
        ln: 'ResponseDocumentType',
        ps: [{
            n: 'output',
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
        ln: 'ComplexDataCombinationType',
        ps: [{
            n: 'format',
            en: {
              lp: 'Format'
            },
            ti: '.ComplexDataDescriptionType'
          }]
      }, {
        ln: 'SupportedCRSsType.Default',
        ps: [{
            n: 'crs',
            en: {
              lp: 'CRS'
            }
          }]
      }, {
        ln: 'OutputReferenceType',
        ps: [{
            n: 'href',
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
        ln: 'SupportedCRSsType',
        ps: [{
            n: '_default',
            en: {
              lp: 'Default'
            },
            ti: '.SupportedCRSsType.Default'
          }, {
            n: 'supported',
            en: {
              lp: 'Supported'
            },
            ti: '.CRSsType'
          }]
      }, {
        ln: 'OutputDescriptionType',
        bti: '.DescriptionType',
        ps: [{
            n: 'complexOutput',
            en: {
              lp: 'ComplexOutput'
            },
            ti: '.SupportedComplexDataType'
          }, {
            n: 'literalOutput',
            en: {
              lp: 'LiteralOutput'
            },
            ti: '.LiteralOutputType'
          }, {
            n: 'boundingBoxOutput',
            en: {
              lp: 'BoundingBoxOutput'
            },
            ti: '.SupportedCRSsType'
          }]
      }, {
        ln: 'ProcessDescriptions',
        bti: '.ResponseBaseType',
        ps: [{
            n: 'processDescription',
            col: true,
            en: {
              lp: 'ProcessDescription'
            },
            ti: '.ProcessDescriptionType'
          }]
      }, {
        ln: 'ComplexDataDescriptionType',
        ps: [{
            n: 'mimeType',
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
        ln: 'ResponseFormType',
        ps: [{
            n: 'responseDocument',
            en: 'ResponseDocument',
            ti: '.ResponseDocumentType'
          }, {
            n: 'rawDataOutput',
            en: 'RawDataOutput',
            ti: '.OutputDefinitionType'
          }]
      }, {
        ln: 'ProcessDescriptionType.ProcessOutputs',
        ps: [{
            n: 'output',
            col: true,
            en: {
              lp: 'Output'
            },
            ti: '.OutputDescriptionType'
          }]
      }, {
        ln: 'DataInputsType',
        ps: [{
            n: 'input',
            col: true,
            en: 'Input',
            ti: '.InputType'
          }]
      }, {
        ln: 'ProcessBriefType',
        bti: '.DescriptionType',
        ps: [{
            n: 'profile',
            col: true,
            en: 'Profile'
          }, {
            n: 'wsdl',
            en: 'WSDL',
            ti: '.WSDL'
          }, {
            n: 'processVersion',
            an: {
              lp: 'processVersion',
              ns: 'http:\/\/www.opengis.net\/wps\/1.0.0'
            },
            t: 'a'
          }]
      }, {
        ln: 'SupportedComplexDataType',
        ps: [{
            n: '_default',
            en: {
              lp: 'Default'
            },
            ti: '.ComplexDataCombinationType'
          }, {
            n: 'supported',
            en: {
              lp: 'Supported'
            },
            ti: '.ComplexDataCombinationsType'
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
          }, {
            n: 'language',
            an: {
              lp: 'language'
            },
            t: 'a'
          }]
      }, {
        ln: 'WSDL',
        ps: [{
            n: 'href',
            an: {
              lp: 'href',
              ns: 'http:\/\/www.w3.org\/1999\/xlink'
            },
            t: 'a'
          }]
      }, {
        ln: 'ResponseBaseType',
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
            n: 'lang',
            an: {
              lp: 'lang',
              ns: 'http:\/\/www.w3.org\/XML\/1998\/namespace'
            },
            t: 'a'
          }]
      }, {
        ln: 'SupportedUOMsType',
        ps: [{
            n: '_default',
            en: {
              lp: 'Default'
            },
            ti: '.SupportedUOMsType.Default'
          }, {
            n: 'supported',
            en: {
              lp: 'Supported'
            },
            ti: '.UOMsType'
          }]
      }, {
        ln: 'ProcessOfferings',
        ps: [{
            n: 'process',
            col: true,
            en: 'Process',
            ti: '.ProcessBriefType'
          }]
      }, {
        ln: 'Languages.Default',
        ps: [{
            n: 'language',
            en: {
              lp: 'Language',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            }
          }]
      }, {
        ln: 'LanguagesType',
        ps: [{
            n: 'language',
            col: true,
            en: {
              lp: 'Language',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            }
          }]
      }],
    eis: [{
        en: 'DescribeProcess',
        ti: '.DescribeProcess'
      }, {
        en: 'GetCapabilities',
        ti: '.GetCapabilities'
      }, {
        en: 'ProcessOfferings',
        ti: '.ProcessOfferings'
      }, {
        en: 'Execute',
        ti: '.Execute'
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
        en: 'Capabilities',
        ti: '.WPSCapabilitiesType'
      }, {
        en: 'Languages',
        ti: '.Languages'
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