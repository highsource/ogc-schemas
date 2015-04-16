var SOS_2_0_Module_Factory = function () {
  var SOS_2_0 = {
    n: 'SOS_2_0',
    dens: 'http:\/\/www.opengis.net\/sos\/2.0',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['SWES_2_0', 'XLink_1_0', 'Filter_2_0', 'SWE_2_0', 'OM_2_0', 'GML_3_2_1', 'OWS_1_1_0'],
    tis: [{
        ln: 'GetObservationType.SpatialFilter',
        tn: null,
        ps: [{
            n: 'spatialOps',
            mx: false,
            dom: false,
            en: {
              lp: 'spatialOps',
              ns: 'http:\/\/www.opengis.net\/fes\/2.0'
            },
            ti: 'Filter_2_0.SpatialOpsType',
            t: 'er'
          }]
      }, {
        ln: 'GetResultTemplateResponsePropertyType',
        ps: [{
            n: 'getResultTemplateResponse',
            en: 'GetResultTemplateResponse',
            ti: '.GetResultTemplateResponseType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
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
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'GetResultTemplateResponseType.ResultEncoding',
        tn: null,
        ps: [{
            n: 'abstractEncoding',
            mx: false,
            dom: false,
            en: {
              lp: 'AbstractEncoding',
              ns: 'http:\/\/www.opengis.net\/swe\/2.0'
            },
            ti: 'SWE_2_0.AbstractEncodingType',
            t: 'er'
          }]
      }, {
        ln: 'ResultTemplateType.ResultStructure',
        tn: null,
        ps: [{
            n: 'abstractDataComponent',
            mx: false,
            dom: false,
            en: {
              lp: 'AbstractDataComponent',
              ns: 'http:\/\/www.opengis.net\/swe\/2.0'
            },
            ti: 'SWE_2_0.AbstractDataComponentType',
            t: 'er'
          }]
      }, {
        ln: 'GetResultResponseType',
        bti: 'SWES_2_0.ExtensibleResponseType',
        ps: [{
            n: 'resultValues',
            ti: 'AnyType'
          }]
      }, {
        ln: 'CapabilitiesType',
        bti: 'OWS_1_1_0.CapabilitiesBaseType',
        ps: [{
            n: 'extension',
            col: true,
            ti: 'AnyType'
          }, {
            n: 'filterCapabilities',
            ti: '.CapabilitiesType.FilterCapabilities'
          }, {
            n: 'contents',
            ti: '.CapabilitiesType.Contents'
          }]
      }, {
        ln: 'CapabilitiesType.FilterCapabilities',
        tn: null,
        ps: [{
            n: 'filterCapabilities',
            en: {
              lp: 'Filter_Capabilities',
              ns: 'http:\/\/www.opengis.net\/fes\/2.0'
            },
            ti: 'Filter_2_0.FilterCapabilities'
          }]
      }, {
        ln: 'ObservationOfferingType',
        bti: 'SWES_2_0.AbstractOfferingType',
        ps: [{
            n: 'observedArea',
            ti: '.ObservationOfferingType.ObservedArea'
          }, {
            n: 'phenomenonTime',
            ti: '.ObservationOfferingType.PhenomenonTime'
          }, {
            n: 'resultTime',
            ti: '.ObservationOfferingType.ResultTime'
          }, {
            n: 'responseFormat',
            col: true
          }, {
            n: 'observationType',
            col: true
          }, {
            n: 'featureOfInterestType',
            col: true
          }]
      }, {
        ln: 'GetFeatureOfInterestPropertyType',
        ps: [{
            n: 'getFeatureOfInterest',
            en: 'GetFeatureOfInterest',
            ti: '.GetFeatureOfInterestType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
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
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'ObservationOfferingType.PhenomenonTime',
        tn: null,
        ps: [{
            n: 'timePeriod',
            en: {
              lp: 'TimePeriod',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.TimePeriodType'
          }]
      }, {
        ln: 'ResultTemplateType.ObservationTemplate',
        tn: null,
        ps: [{
            n: 'omObservation',
            en: {
              lp: 'OM_Observation',
              ns: 'http:\/\/www.opengis.net\/om\/2.0'
            },
            ti: 'OM_2_0.OMObservationType'
          }]
      }, {
        ln: 'InsertObservationType.Observation',
        tn: null,
        ps: [{
            n: 'omObservation',
            en: {
              lp: 'OM_Observation',
              ns: 'http:\/\/www.opengis.net\/om\/2.0'
            },
            ti: 'OM_2_0.OMObservationType'
          }]
      }, {
        ln: 'InsertObservationType',
        bti: 'SWES_2_0.ExtensibleRequestType',
        ps: [{
            n: 'offering',
            col: true
          }, {
            n: 'observation',
            col: true,
            ti: '.InsertObservationType.Observation'
          }]
      }, {
        ln: 'ResultTemplateType.ResultEncoding',
        tn: null,
        ps: [{
            n: 'abstractEncoding',
            mx: false,
            dom: false,
            en: {
              lp: 'AbstractEncoding',
              ns: 'http:\/\/www.opengis.net\/swe\/2.0'
            },
            ti: 'SWE_2_0.AbstractEncodingType',
            t: 'er'
          }]
      }, {
        ln: 'GetObservationResponseType',
        bti: 'SWES_2_0.ExtensibleResponseType',
        ps: [{
            n: 'observationData',
            col: true,
            ti: '.GetObservationResponseType.ObservationData'
          }]
      }, {
        ln: 'GetObservationResponseType.ObservationData',
        tn: null,
        ps: [{
            n: 'omObservation',
            en: {
              lp: 'OM_Observation',
              ns: 'http:\/\/www.opengis.net\/om\/2.0'
            },
            ti: 'OM_2_0.OMObservationType'
          }]
      }, {
        ln: 'InsertResultResponseType',
        bti: 'SWES_2_0.ExtensibleResponseType'
      }, {
        ln: 'InsertionCapabilitiesPropertyType',
        ps: [{
            n: 'insertionCapabilities',
            en: 'InsertionCapabilities',
            ti: '.InsertionCapabilitiesType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
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
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'GetObservationPropertyType',
        ps: [{
            n: 'getObservation',
            en: 'GetObservation',
            ti: '.GetObservationType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
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
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'ObservationOfferingType.ResultTime',
        tn: null,
        ps: [{
            n: 'timePeriod',
            en: {
              lp: 'TimePeriod',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.TimePeriodType'
          }]
      }, {
        ln: 'GetResultTemplateResponseType.ResultStructure',
        tn: null,
        ps: [{
            n: 'abstractDataComponent',
            mx: false,
            dom: false,
            en: {
              lp: 'AbstractDataComponent',
              ns: 'http:\/\/www.opengis.net\/swe\/2.0'
            },
            ti: 'SWE_2_0.AbstractDataComponentType',
            t: 'er'
          }]
      }, {
        ln: 'ObservationOfferingType.ObservedArea',
        tn: null,
        ps: [{
            n: 'envelope',
            mx: false,
            dom: false,
            en: {
              lp: 'Envelope',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.EnvelopeType',
            t: 'er'
          }]
      }, {
        ln: 'GetCapabilitiesType',
        bti: 'OWS_1_1_0.GetCapabilitiesType',
        ps: [{
            n: 'extension',
            col: true,
            ti: 'AnyType'
          }, {
            n: 'service',
            an: {
              lp: 'service'
            },
            t: 'a'
          }]
      }, {
        ln: 'GetResultType',
        bti: 'SWES_2_0.ExtensibleRequestType',
        ps: [{
            n: 'offering'
          }, {
            n: 'observedProperty'
          }, {
            n: 'temporalFilter',
            col: true,
            ti: '.GetResultType.TemporalFilter'
          }, {
            n: 'featureOfInterest',
            col: true
          }, {
            n: 'spatialFilter',
            ti: '.GetResultType.SpatialFilter'
          }]
      }, {
        ln: 'GetResultType.SpatialFilter',
        tn: null,
        ps: [{
            n: 'spatialOps',
            mx: false,
            dom: false,
            en: {
              lp: 'spatialOps',
              ns: 'http:\/\/www.opengis.net\/fes\/2.0'
            },
            ti: 'Filter_2_0.SpatialOpsType',
            t: 'er'
          }]
      }, {
        ln: 'InsertObservationPropertyType',
        ps: [{
            n: 'insertObservation',
            en: 'InsertObservation',
            ti: '.InsertObservationType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
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
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'GetObservationByIdPropertyType',
        ps: [{
            n: 'getObservationById',
            en: 'GetObservationById',
            ti: '.GetObservationByIdType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
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
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'ResultTemplateType',
        bti: 'SWES_2_0.AbstractSWESType',
        ps: [{
            n: 'offering'
          }, {
            n: 'observationTemplate',
            ti: '.ResultTemplateType.ObservationTemplate'
          }, {
            n: 'resultStructure',
            ti: '.ResultTemplateType.ResultStructure'
          }, {
            n: 'resultEncoding',
            ti: '.ResultTemplateType.ResultEncoding'
          }]
      }, {
        ln: 'CapabilitiesType.Contents',
        tn: null,
        ps: [{
            n: 'contents',
            en: 'Contents',
            ti: '.ContentsType'
          }]
      }, {
        ln: 'ObservationOfferingPropertyType',
        ps: [{
            n: 'observationOffering',
            en: 'ObservationOffering',
            ti: '.ObservationOfferingType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
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
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'GetResultTemplateResponseType',
        bti: 'SWES_2_0.ExtensibleResponseType',
        ps: [{
            n: 'resultStructure',
            ti: '.GetResultTemplateResponseType.ResultStructure'
          }, {
            n: 'resultEncoding',
            ti: '.GetResultTemplateResponseType.ResultEncoding'
          }]
      }, {
        ln: 'ResultTemplatePropertyType',
        ps: [{
            n: 'resultTemplate',
            en: 'ResultTemplate',
            ti: '.ResultTemplateType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
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
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'GetResultResponsePropertyType',
        ps: [{
            n: 'getResultResponse',
            en: 'GetResultResponse',
            ti: '.GetResultResponseType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
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
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'InsertResultTemplateResponseType',
        bti: 'SWES_2_0.ExtensibleResponseType',
        ps: [{
            n: 'acceptedTemplate'
          }]
      }, {
        ln: 'InsertResultType',
        bti: 'SWES_2_0.ExtensibleRequestType',
        ps: [{
            n: 'template'
          }, {
            n: 'resultValues',
            ti: 'AnyType'
          }]
      }, {
        ln: 'InsertResultPropertyType',
        ps: [{
            n: 'insertResult',
            en: 'InsertResult',
            ti: '.InsertResultType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
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
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'GetObservationByIdResponseType.Observation',
        tn: null,
        ps: [{
            n: 'omObservation',
            en: {
              lp: 'OM_Observation',
              ns: 'http:\/\/www.opengis.net\/om\/2.0'
            },
            ti: 'OM_2_0.OMObservationType'
          }]
      }, {
        ln: 'InsertResultTemplatePropertyType',
        ps: [{
            n: 'insertResultTemplate',
            en: 'InsertResultTemplate',
            ti: '.InsertResultTemplateType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
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
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'ContentsType',
        bti: 'SWES_2_0.AbstractContentsType',
        ps: [{
            n: 'responseFormat',
            col: true
          }, {
            n: 'observationType',
            col: true
          }, {
            n: 'featureOfInterestType',
            col: true
          }]
      }, {
        ln: 'GetResultType.TemporalFilter',
        tn: null,
        ps: [{
            n: 'temporalOps',
            mx: false,
            dom: false,
            en: {
              lp: 'temporalOps',
              ns: 'http:\/\/www.opengis.net\/fes\/2.0'
            },
            ti: 'Filter_2_0.TemporalOpsType',
            t: 'er'
          }]
      }, {
        ln: 'GetCapabilitiesPropertyType',
        ps: [{
            n: 'getCapabilities',
            en: 'GetCapabilities',
            ti: '.GetCapabilitiesType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
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
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'GetFeatureOfInterestResponseType',
        bti: 'SWES_2_0.ExtensibleResponseType',
        ps: [{
            n: 'featureMember',
            col: true,
            ti: 'GML_3_2_1.FeaturePropertyType'
          }]
      }, {
        ln: 'GetFeatureOfInterestType',
        bti: 'SWES_2_0.ExtensibleRequestType',
        ps: [{
            n: 'procedure',
            col: true
          }, {
            n: 'observedProperty',
            col: true
          }, {
            n: 'featureOfInterest',
            col: true
          }, {
            n: 'spatialFilter',
            col: true,
            ti: '.GetFeatureOfInterestType.SpatialFilter'
          }]
      }, {
        ln: 'SosInsertionMetadataPropertyType',
        ps: [{
            n: 'sosInsertionMetadata',
            en: 'SosInsertionMetadata',
            ti: '.SosInsertionMetadataType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
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
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'InsertObservationResponseType',
        bti: 'SWES_2_0.ExtensibleResponseType'
      }, {
        ln: 'InsertResultTemplateType.ProposedTemplate',
        tn: null,
        ps: [{
            n: 'resultTemplate',
            en: 'ResultTemplate',
            ti: '.ResultTemplateType'
          }]
      }, {
        ln: 'GetResultPropertyType',
        ps: [{
            n: 'getResult',
            en: 'GetResult',
            ti: '.GetResultType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
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
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'GetObservationByIdResponsePropertyType',
        ps: [{
            n: 'getObservationByIdResponse',
            en: 'GetObservationByIdResponse',
            ti: '.GetObservationByIdResponseType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
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
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'InsertResultTemplateResponsePropertyType',
        ps: [{
            n: 'insertResultTemplateResponse',
            en: 'InsertResultTemplateResponse',
            ti: '.InsertResultTemplateResponseType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
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
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'GetObservationResponsePropertyType',
        ps: [{
            n: 'getObservationResponse',
            en: 'GetObservationResponse',
            ti: '.GetObservationResponseType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
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
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'GetObservationByIdType',
        bti: 'SWES_2_0.ExtensibleRequestType',
        ps: [{
            n: 'observation',
            col: true
          }]
      }, {
        ln: 'GetFeatureOfInterestType.SpatialFilter',
        tn: null,
        ps: [{
            n: 'spatialOps',
            mx: false,
            dom: false,
            en: {
              lp: 'spatialOps',
              ns: 'http:\/\/www.opengis.net\/fes\/2.0'
            },
            ti: 'Filter_2_0.SpatialOpsType',
            t: 'er'
          }]
      }, {
        ln: 'GetObservationType',
        bti: 'SWES_2_0.ExtensibleRequestType',
        ps: [{
            n: 'procedure',
            col: true
          }, {
            n: 'offering',
            col: true
          }, {
            n: 'observedProperty',
            col: true
          }, {
            n: 'temporalFilter',
            col: true,
            ti: '.GetObservationType.TemporalFilter'
          }, {
            n: 'featureOfInterest',
            col: true
          }, {
            n: 'spatialFilter',
            ti: '.GetObservationType.SpatialFilter'
          }, {
            n: 'responseFormat'
          }]
      }, {
        ln: 'ContentsPropertyType',
        ps: [{
            n: 'contents',
            en: 'Contents',
            ti: '.ContentsType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
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
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'GetFeatureOfInterestResponsePropertyType',
        ps: [{
            n: 'getFeatureOfInterestResponse',
            en: 'GetFeatureOfInterestResponse',
            ti: '.GetFeatureOfInterestResponseType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
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
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'GetObservationByIdResponseType',
        bti: 'SWES_2_0.ExtensibleResponseType',
        ps: [{
            n: 'observation',
            col: true,
            ti: '.GetObservationByIdResponseType.Observation'
          }]
      }, {
        ln: 'GetResultTemplatePropertyType',
        ps: [{
            n: 'getResultTemplate',
            en: 'GetResultTemplate',
            ti: '.GetResultTemplateType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
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
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'SosInsertionMetadataType',
        bti: 'SWES_2_0.InsertionMetadataType',
        ps: [{
            n: 'observationType',
            col: true
          }, {
            n: 'featureOfInterestType',
            col: true
          }]
      }, {
        ln: 'InsertObservationResponsePropertyType',
        ps: [{
            n: 'insertObservationResponse',
            en: 'InsertObservationResponse',
            ti: '.InsertObservationResponseType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
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
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'InsertResultResponsePropertyType',
        ps: [{
            n: 'insertResultResponse',
            en: 'InsertResultResponse',
            ti: '.InsertResultResponseType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
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
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'GetResultTemplateType',
        bti: 'SWES_2_0.ExtensibleRequestType',
        ps: [{
            n: 'offering'
          }, {
            n: 'observedProperty'
          }]
      }, {
        ln: 'CapabilitiesPropertyType',
        ps: [{
            n: 'capabilities',
            en: 'Capabilities',
            ti: '.CapabilitiesType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason'
            },
            t: 'a'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            t: 'a'
          }, {
            n: 'type',
            ti: 'XLink_1_0.TypeType',
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
            ti: 'XLink_1_0.ShowType',
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            t: 'a'
          }]
      }, {
        ln: 'InsertResultTemplateType',
        bti: 'SWES_2_0.ExtensibleRequestType',
        ps: [{
            n: 'proposedTemplate',
            ti: '.InsertResultTemplateType.ProposedTemplate'
          }]
      }, {
        ln: 'GetObservationType.TemporalFilter',
        tn: null,
        ps: [{
            n: 'temporalOps',
            mx: false,
            dom: false,
            en: {
              lp: 'temporalOps',
              ns: 'http:\/\/www.opengis.net\/fes\/2.0'
            },
            ti: 'Filter_2_0.TemporalOpsType',
            t: 'er'
          }]
      }, {
        ln: 'InsertionCapabilitiesType',
        ps: [{
            n: 'procedureDescriptionFormat',
            col: true
          }, {
            n: 'featureOfInterestType',
            col: true
          }, {
            n: 'observationType',
            col: true
          }, {
            n: 'supportedEncoding',
            col: true
          }]
      }],
    eis: [{
        en: 'InsertResultTemplate',
        ti: '.InsertResultTemplateType',
        sh: {
          lp: 'ExtensibleRequest',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'GetObservationResponse',
        ti: '.GetObservationResponseType',
        sh: {
          lp: 'ExtensibleResponse',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'Capabilities',
        ti: '.CapabilitiesType'
      }, {
        en: 'GetObservationById',
        ti: '.GetObservationByIdType',
        sh: {
          lp: 'ExtensibleRequest',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'GetObservationByIdResponse',
        ti: '.GetObservationByIdResponseType',
        sh: {
          lp: 'ExtensibleResponse',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'InsertResultTemplateResponse',
        ti: '.InsertResultTemplateResponseType',
        sh: {
          lp: 'ExtensibleResponse',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'GetFeatureOfInterest',
        ti: '.GetFeatureOfInterestType',
        sh: {
          lp: 'ExtensibleRequest',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'SosInsertionMetadata',
        ti: '.SosInsertionMetadataType',
        sh: {
          lp: 'InsertionMetadata',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'GetObservation',
        ti: '.GetObservationType',
        sh: {
          lp: 'ExtensibleRequest',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'ObservationOffering',
        ti: '.ObservationOfferingType',
        sh: {
          lp: 'AbstractOffering',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'InsertObservation',
        ti: '.InsertObservationType',
        sh: {
          lp: 'ExtensibleRequest',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'InsertObservationResponse',
        ti: '.InsertObservationResponseType',
        sh: {
          lp: 'ExtensibleResponse',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'GetResult',
        ti: '.GetResultType',
        sh: {
          lp: 'ExtensibleRequest',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'GetResultResponse',
        ti: '.GetResultResponseType',
        sh: {
          lp: 'ExtensibleResponse',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'GetCapabilities',
        ti: '.GetCapabilitiesType',
        sh: {
          lp: 'GetCapabilities',
          ns: 'http:\/\/www.opengis.net\/ows\/1.1'
        }
      }, {
        en: 'InsertResultResponse',
        ti: '.InsertResultResponseType',
        sh: {
          lp: 'ExtensibleResponse',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'InsertResult',
        ti: '.InsertResultType',
        sh: {
          lp: 'ExtensibleRequest',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'GetResultTemplate',
        ti: '.GetResultTemplateType',
        sh: {
          lp: 'ExtensibleRequest',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'ResultTemplate',
        ti: '.ResultTemplateType',
        sh: {
          lp: 'AbstractSWES',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'InsertionCapabilities',
        ti: '.InsertionCapabilitiesType'
      }, {
        en: 'GetResultTemplateResponse',
        ti: '.GetResultTemplateResponseType',
        sh: {
          lp: 'ExtensibleResponse',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'Contents',
        ti: '.ContentsType',
        sh: {
          lp: 'AbstractContents',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'GetFeatureOfInterestResponse',
        ti: '.GetFeatureOfInterestResponseType',
        sh: {
          lp: 'ExtensibleResponse',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }]
  };
  return {
    SOS_2_0: SOS_2_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], SOS_2_0_Module_Factory);
}
else {
  var SOS_2_0_Module = SOS_2_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.SOS_2_0 = SOS_2_0_Module.SOS_2_0;
  }
  else {
    var SOS_2_0 = SOS_2_0_Module.SOS_2_0;
  }
}