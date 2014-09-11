var WPS_1_0_0_Module_Factory = function () {
  var WPS_1_0_0 = {
    n: 'WPS_1_0_0',
    dens: 'http:\/\/www.opengis.net\/wps\/1.0.0',
    tis: [{
        ln: 'Execute',
        bti: 'WPS_1_0_0.RequestBaseType',
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
            ti: 'WPS_1_0_0.DataInputsType'
          }, {
            n: 'responseForm',
            en: 'ResponseForm',
            ti: 'WPS_1_0_0.ResponseFormType'
          }]
      }, {
        ln: 'RequestBaseType',
        ps: [{
            n: 'service',
            t: 'a'
          }, {
            n: 'version',
            t: 'a'
          }, {
            n: 'language',
            t: 'a'
          }]
      }, {
        ln: 'DataInputsType',
        ps: [{
            n: 'input',
            col: true,
            en: 'Input',
            ti: 'WPS_1_0_0.InputType'
          }]
      }, {
        ln: 'ResponseFormType',
        ps: [{
            n: 'responseDocument',
            en: 'ResponseDocument',
            ti: 'WPS_1_0_0.ResponseDocumentType'
          }, {
            n: 'rawDataOutput',
            en: 'RawDataOutput',
            ti: 'WPS_1_0_0.OutputDefinitionType'
          }]
      }, {
        ln: 'GetCapabilities',
        ps: [{
            n: 'acceptVersions',
            en: 'AcceptVersions',
            ti: 'OWS_1_1_0.AcceptVersionsType'
          }, {
            n: 'service',
            t: 'a'
          }, {
            n: 'language',
            t: 'a'
          }]
      }, {
        ln: 'WPSCapabilitiesType',
        bti: 'OWS_1_1_0.CapabilitiesBaseType',
        ps: [{
            n: 'processOfferings',
            en: 'ProcessOfferings',
            ti: 'WPS_1_0_0.ProcessOfferings'
          }, {
            n: 'languages',
            en: 'Languages',
            ti: 'WPS_1_0_0.Languages'
          }, {
            n: 'wsdl',
            en: 'WSDL',
            ti: 'WPS_1_0_0.WSDL'
          }, {
            n: 'service',
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
        ln: 'DescribeProcess',
        bti: 'WPS_1_0_0.RequestBaseType',
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
        ln: 'ExecuteResponse',
        bti: 'WPS_1_0_0.ResponseBaseType',
        ps: [{
            n: 'process',
            en: 'Process',
            ti: 'WPS_1_0_0.ProcessBriefType'
          }, {
            n: 'status',
            en: 'Status',
            ti: 'WPS_1_0_0.StatusType'
          }, {
            n: 'dataInputs',
            en: 'DataInputs',
            ti: 'WPS_1_0_0.DataInputsType'
          }, {
            n: 'outputDefinitions',
            en: 'OutputDefinitions',
            ti: 'WPS_1_0_0.OutputDefinitionsType'
          }, {
            n: 'processOutputs',
            en: 'ProcessOutputs',
            ti: 'WPS_1_0_0.ExecuteResponse.ProcessOutputs'
          }, {
            n: 'serviceInstance',
            t: 'a'
          }, {
            n: 'statusLocation',
            t: 'a'
          }]
      }, {
        ln: 'ResponseBaseType',
        ps: [{
            n: 'service',
            t: 'a'
          }, {
            n: 'version',
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
        ln: 'ProcessBriefType',
        bti: 'WPS_1_0_0.DescriptionType',
        ps: [{
            n: 'profile',
            col: true,
            en: 'Profile'
          }, {
            n: 'wsdl',
            en: 'WSDL',
            ti: 'WPS_1_0_0.WSDL'
          }, {
            n: 'processVersion',
            an: {
              lp: 'processVersion',
              ns: 'http:\/\/www.opengis.net\/wps\/1.0.0'
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
            ti: 'WPS_1_0_0.ProcessStartedType'
          }, {
            n: 'processPaused',
            en: 'ProcessPaused',
            ti: 'WPS_1_0_0.ProcessStartedType'
          }, {
            n: 'processSucceeded',
            en: 'ProcessSucceeded'
          }, {
            n: 'processFailed',
            en: 'ProcessFailed',
            ti: 'WPS_1_0_0.ProcessFailedType'
          }, {
            n: 'creationTime',
            ti: 'Calendar',
            t: 'a'
          }]
      }, {
        ln: 'OutputDefinitionsType',
        ps: [{
            n: 'output',
            col: true,
            en: 'Output',
            ti: 'WPS_1_0_0.DocumentOutputDefinitionType'
          }]
      }, {
        ln: 'ExecuteResponse.ProcessOutputs',
        ps: [{
            n: 'output',
            col: true,
            en: 'Output',
            ti: 'WPS_1_0_0.OutputDataType'
          }]
      }, {
        ln: 'Languages',
        ps: [{
            n: '_default',
            en: 'Default',
            ti: 'WPS_1_0_0.Languages.Default'
          }, {
            n: 'supported',
            en: 'Supported',
            ti: 'WPS_1_0_0.LanguagesType'
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
      }, {
        ln: 'ProcessOfferings',
        ps: [{
            n: 'process',
            col: true,
            en: 'Process',
            ti: 'WPS_1_0_0.ProcessBriefType'
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
        ln: 'ProcessDescriptions',
        bti: 'WPS_1_0_0.ResponseBaseType',
        ps: [{
            n: 'processDescription',
            col: true,
            en: {
              lp: 'ProcessDescription'
            },
            ti: 'WPS_1_0_0.ProcessDescriptionType'
          }]
      }, {
        ln: 'ProcessDescriptionType',
        bti: 'WPS_1_0_0.ProcessBriefType',
        ps: [{
            n: 'dataInputs',
            en: {
              lp: 'DataInputs'
            },
            ti: 'WPS_1_0_0.ProcessDescriptionType.DataInputs'
          }, {
            n: 'processOutputs',
            en: {
              lp: 'ProcessOutputs'
            },
            ti: 'WPS_1_0_0.ProcessDescriptionType.ProcessOutputs'
          }, {
            n: 'storeSupported',
            ti: 'Boolean',
            t: 'a'
          }, {
            n: 'statusSupported',
            ti: 'Boolean',
            t: 'a'
          }]
      }, {
        ln: 'SupportedCRSsType',
        ps: [{
            n: '_default',
            en: {
              lp: 'Default'
            },
            ti: 'WPS_1_0_0.SupportedCRSsType.Default'
          }, {
            n: 'supported',
            en: {
              lp: 'Supported'
            },
            ti: 'WPS_1_0_0.CRSsType'
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
        ln: 'ResponseDocumentType',
        ps: [{
            n: 'output',
            col: true,
            en: 'Output',
            ti: 'WPS_1_0_0.DocumentOutputDefinitionType'
          }, {
            n: 'storeExecuteResponse',
            ti: 'Boolean',
            t: 'a'
          }, {
            n: 'lineage',
            ti: 'Boolean',
            t: 'a'
          }, {
            n: 'status',
            ti: 'Boolean',
            t: 'a'
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
        ln: 'ComplexDataCombinationsType',
        ps: [{
            n: 'format',
            col: true,
            en: {
              lp: 'Format'
            },
            ti: 'WPS_1_0_0.ComplexDataDescriptionType'
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
            t: 'a'
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
            t: 'a'
          }, {
            n: 'mimeType',
            t: 'a'
          }, {
            n: 'encoding',
            t: 'a'
          }, {
            n: 'schema',
            t: 'a'
          }]
      }, {
        ln: 'OutputReferenceType',
        ps: [{
            n: 'href',
            t: 'a'
          }, {
            n: 'mimeType',
            t: 'a'
          }, {
            n: 'encoding',
            t: 'a'
          }, {
            n: 'schema',
            t: 'a'
          }]
      }, {
        ln: 'DataType',
        ps: [{
            n: 'complexData',
            en: 'ComplexData',
            ti: 'WPS_1_0_0.ComplexDataType'
          }, {
            n: 'literalData',
            en: 'LiteralData',
            ti: 'WPS_1_0_0.LiteralDataType'
          }, {
            n: 'boundingBoxData',
            en: 'BoundingBoxData',
            ti: 'OWS_1_1_0.BoundingBoxType'
          }]
      }, {
        ln: 'InputReferenceType',
        ps: [{
            n: 'header',
            col: true,
            en: 'Header',
            ti: 'WPS_1_0_0.InputReferenceType.Header'
          }, {
            n: 'body',
            en: 'Body',
            ti: 'AnyType'
          }, {
            n: 'bodyReference',
            en: 'BodyReference',
            ti: 'WPS_1_0_0.InputReferenceType.BodyReference'
          }, {
            n: 'href',
            an: {
              lp: 'href',
              ns: 'http:\/\/www.w3.org\/1999\/xlink'
            },
            t: 'a'
          }, {
            n: 'method',
            t: 'a'
          }, {
            n: 'mimeType',
            t: 'a'
          }, {
            n: 'encoding',
            t: 'a'
          }, {
            n: 'schema',
            t: 'a'
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
            t: 'a'
          }, {
            n: 'encoding',
            t: 'a'
          }, {
            n: 'schema',
            t: 'a'
          }]
      }, {
        ln: 'LiteralDataType',
        ps: [{
            n: 'value',
            t: 'v'
          }, {
            n: 'dataType',
            t: 'a'
          }, {
            n: 'uom',
            t: 'a'
          }]
      }, {
        ln: 'DocumentOutputDefinitionType',
        bti: 'WPS_1_0_0.OutputDefinitionType',
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
            t: 'a'
          }]
      }, {
        ln: 'SupportedComplexDataInputType',
        bti: 'WPS_1_0_0.SupportedComplexDataType',
        ps: [{
            n: 'maximumMegabytes',
            ti: 'Integer',
            t: 'a'
          }]
      }, {
        ln: 'InputDescriptionType',
        bti: 'WPS_1_0_0.DescriptionType',
        ps: [{
            n: 'complexData',
            en: {
              lp: 'ComplexData'
            },
            ti: 'WPS_1_0_0.SupportedComplexDataInputType'
          }, {
            n: 'literalData',
            en: {
              lp: 'LiteralData'
            },
            ti: 'WPS_1_0_0.LiteralInputType'
          }, {
            n: 'boundingBoxData',
            en: {
              lp: 'BoundingBoxData'
            },
            ti: 'WPS_1_0_0.SupportedCRSsType'
          }, {
            n: 'minOccurs',
            ti: 'Integer',
            t: 'a'
          }, {
            n: 'maxOccurs',
            ti: 'Integer',
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
            ti: 'WPS_1_0_0.InputReferenceType'
          }, {
            n: 'data',
            en: 'Data',
            ti: 'WPS_1_0_0.DataType'
          }]
      }, {
        ln: 'OutputDataType',
        bti: 'WPS_1_0_0.DescriptionType',
        ps: [{
            n: 'reference',
            en: 'Reference',
            ti: 'WPS_1_0_0.OutputReferenceType'
          }, {
            n: 'data',
            en: 'Data',
            ti: 'WPS_1_0_0.DataType'
          }]
      }, {
        ln: 'ComplexDataCombinationType',
        ps: [{
            n: 'format',
            en: {
              lp: 'Format'
            },
            ti: 'WPS_1_0_0.ComplexDataDescriptionType'
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
        ln: 'OutputDescriptionType',
        bti: 'WPS_1_0_0.DescriptionType',
        ps: [{
            n: 'complexOutput',
            en: {
              lp: 'ComplexOutput'
            },
            ti: 'WPS_1_0_0.SupportedComplexDataType'
          }, {
            n: 'literalOutput',
            en: {
              lp: 'LiteralOutput'
            },
            ti: 'WPS_1_0_0.LiteralOutputType'
          }, {
            n: 'boundingBoxOutput',
            en: {
              lp: 'BoundingBoxOutput'
            },
            ti: 'WPS_1_0_0.SupportedCRSsType'
          }]
      }, {
        ln: 'SupportedComplexDataType',
        ps: [{
            n: '_default',
            en: {
              lp: 'Default'
            },
            ti: 'WPS_1_0_0.ComplexDataCombinationType'
          }, {
            n: 'supported',
            en: {
              lp: 'Supported'
            },
            ti: 'WPS_1_0_0.ComplexDataCombinationsType'
          }]
      }, {
        ln: 'LiteralInputType',
        bti: 'WPS_1_0_0.LiteralOutputType',
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
            ti: 'WPS_1_0_0.ValuesReferenceType'
          }, {
            n: 'defaultValue',
            en: {
              lp: 'DefaultValue'
            }
          }]
      }, {
        ln: 'ProcessStartedType',
        ps: [{
            n: 'value',
            t: 'v'
          }, {
            n: 'percentCompleted',
            ti: 'Int',
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
            ti: 'WPS_1_0_0.SupportedUOMsType'
          }]
      }, {
        ln: 'SupportedUOMsType',
        ps: [{
            n: '_default',
            en: {
              lp: 'Default'
            },
            ti: 'WPS_1_0_0.SupportedUOMsType.Default'
          }, {
            n: 'supported',
            en: {
              lp: 'Supported'
            },
            ti: 'WPS_1_0_0.UOMsType'
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
        ln: 'InputReferenceType.Header',
        ps: [{
            n: 'key',
            t: 'a'
          }, {
            n: 'value',
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
        ln: 'SupportedCRSsType.Default',
        ps: [{
            n: 'crs',
            en: {
              lp: 'CRS'
            }
          }]
      }, {
        ln: 'ProcessDescriptionType.DataInputs',
        ps: [{
            n: 'input',
            col: true,
            en: {
              lp: 'Input'
            },
            ti: 'WPS_1_0_0.InputDescriptionType'
          }]
      }, {
        ln: 'ProcessDescriptionType.ProcessOutputs',
        ps: [{
            n: 'output',
            col: true,
            en: {
              lp: 'Output'
            },
            ti: 'WPS_1_0_0.OutputDescriptionType'
          }]
      }],
    eis: [{
        en: 'Execute',
        ti: 'WPS_1_0_0.Execute'
      }, {
        en: 'GetCapabilities',
        ti: 'WPS_1_0_0.GetCapabilities'
      }, {
        en: 'DescribeProcess',
        ti: 'WPS_1_0_0.DescribeProcess'
      }, {
        en: 'ExecuteResponse',
        ti: 'WPS_1_0_0.ExecuteResponse'
      }, {
        en: 'Languages',
        ti: 'WPS_1_0_0.Languages'
      }, {
        en: 'ProcessOfferings',
        ti: 'WPS_1_0_0.ProcessOfferings'
      }, {
        en: 'WSDL',
        ti: 'WPS_1_0_0.WSDL'
      }, {
        en: 'ProcessDescriptions',
        ti: 'WPS_1_0_0.ProcessDescriptions'
      }, {
        en: 'Capabilities',
        ti: 'WPS_1_0_0.WPSCapabilitiesType'
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