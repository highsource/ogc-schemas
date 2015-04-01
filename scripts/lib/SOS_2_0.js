var SOS_2_0_Module_Factory = function () {
  var SOS_2_0 = {
    n: 'SOS_2_0',
    dens: 'http:\/\/www.opengis.net\/sos\/2.0',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['OM_2_0', 'XLink_1_0', 'SWE_2_0', 'OWS_1_1_0', 'SWES_2_0', 'GML_3_2_1', 'Filter_2_0'],
    tis: [{
        ln: 'GetResultType.SpatialFilter',
        ps: [{
            n: 'spatialOps',
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'spatialOps',
              ns: 'http:\/\/www.opengis.net\/fes\/2.0'
            },
            ti: 'Filter_2_0.SpatialOpsType',
            t: 'er'
          }]
      }, {
        ln: 'ObservationOfferingType.ObservedArea',
        ps: [{
            n: 'envelope',
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'Envelope',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.EnvelopeType',
            t: 'er'
          }]
      }, {
        ln: 'ResultTemplateType.ResultEncoding',
        ps: [{
            n: 'abstractEncoding',
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'AbstractEncoding',
              ns: 'http:\/\/www.opengis.net\/swe\/2.0'
            },
            ti: 'SWE_2_0.AbstractEncodingType',
            t: 'er'
          }]
      }, {
        ln: 'GetObservationByIdResponseType.Observation',
        ps: [{
            n: 'omObservation',
            en: {
              lp: 'OM_Observation',
              ns: 'http:\/\/www.opengis.net\/om\/2.0'
            },
            ti: 'OM_2_0.OMObservationType'
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
        ln: 'ResultTemplateType.ResultStructure',
        ps: [{
            n: 'abstractDataComponent',
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'AbstractDataComponent',
              ns: 'http:\/\/www.opengis.net\/swe\/2.0'
            },
            ti: 'SWE_2_0.AbstractDataComponentType',
            t: 'er'
          }]
      }, {
        ln: 'InsertObservationResponseType',
        bti: 'SWES_2_0.ExtensibleResponseType'
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
        ln: 'InsertObservationType.Observation',
        ps: [{
            n: 'omObservation',
            en: {
              lp: 'OM_Observation',
              ns: 'http:\/\/www.opengis.net\/om\/2.0'
            },
            ti: 'OM_2_0.OMObservationType'
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
        ln: 'ResultTemplateType.ObservationTemplate',
        ps: [{
            n: 'omObservation',
            en: {
              lp: 'OM_Observation',
              ns: 'http:\/\/www.opengis.net\/om\/2.0'
            },
            ti: 'OM_2_0.OMObservationType'
          }]
      }, {
        ln: 'GetObservationResponseType.ObservationData',
        ps: [{
            n: 'omObservation',
            en: {
              lp: 'OM_Observation',
              ns: 'http:\/\/www.opengis.net\/om\/2.0'
            },
            ti: 'OM_2_0.OMObservationType'
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
        ln: 'GetResultType.TemporalFilter',
        ps: [{
            n: 'temporalOps',
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'temporalOps',
              ns: 'http:\/\/www.opengis.net\/fes\/2.0'
            },
            ti: 'Filter_2_0.TemporalOpsType',
            t: 'er'
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
        ln: 'GetObservationType.SpatialFilter',
        ps: [{
            n: 'spatialOps',
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'spatialOps',
              ns: 'http:\/\/www.opengis.net\/fes\/2.0'
            },
            ti: 'Filter_2_0.SpatialOpsType',
            t: 'er'
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
        ln: 'GetResultTemplateType',
        bti: 'SWES_2_0.ExtensibleRequestType',
        ps: [{
            n: 'offering'
          }, {
            n: 'observedProperty'
          }]
      }, {
        ln: 'CapabilitiesType.FilterCapabilities',
        ps: [{
            n: 'filterCapabilities',
            en: {
              lp: 'Filter_Capabilities',
              ns: 'http:\/\/www.opengis.net\/fes\/2.0'
            },
            ti: 'Filter_2_0.FilterCapabilities'
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
        ln: 'InsertResultResponseType',
        bti: 'SWES_2_0.ExtensibleResponseType'
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
        ln: 'ObservationOfferingType.ResultTime',
        ps: [{
            n: 'timePeriod',
            en: {
              lp: 'TimePeriod',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.TimePeriodType'
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
        ln: 'GetObservationResponseType',
        bti: 'SWES_2_0.ExtensibleResponseType',
        ps: [{
            n: 'observationData',
            col: true,
            ti: '.GetObservationResponseType.ObservationData'
          }]
      }, {
        ln: 'GetObservationByIdType',
        bti: 'SWES_2_0.ExtensibleRequestType',
        ps: [{
            n: 'observation',
            col: true
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
        ln: 'GetFeatureOfInterestResponseType',
        bti: 'SWES_2_0.ExtensibleResponseType',
        ps: [{
            n: 'featureMember',
            col: true,
            ti: 'GML_3_2_1.FeaturePropertyType'
          }]
      }, {
        ln: 'GetObservationType.TemporalFilter',
        ps: [{
            n: 'temporalOps',
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'temporalOps',
              ns: 'http:\/\/www.opengis.net\/fes\/2.0'
            },
            ti: 'Filter_2_0.TemporalOpsType',
            t: 'er'
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
        ln: 'InsertResultTemplateType',
        bti: 'SWES_2_0.ExtensibleRequestType',
        ps: [{
            n: 'proposedTemplate',
            ti: '.InsertResultTemplateType.ProposedTemplate'
          }]
      }, {
        ln: 'GetResultTemplateResponseType.ResultStructure',
        ps: [{
            n: 'abstractDataComponent',
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'AbstractDataComponent',
              ns: 'http:\/\/www.opengis.net\/swe\/2.0'
            },
            ti: 'SWE_2_0.AbstractDataComponentType',
            t: 'er'
          }]
      }, {
        ln: 'ObservationOfferingType.PhenomenonTime',
        ps: [{
            n: 'timePeriod',
            en: {
              lp: 'TimePeriod',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.TimePeriodType'
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
        ln: 'InsertResultTemplateResponseType',
        bti: 'SWES_2_0.ExtensibleResponseType',
        ps: [{
            n: 'acceptedTemplate'
          }]
      }, {
        ln: 'CapabilitiesType.Contents',
        ps: [{
            n: 'contents',
            en: 'Contents',
            ti: '.ContentsType'
          }]
      }, {
        ln: 'GetResultTemplateResponseType.ResultEncoding',
        ps: [{
            n: 'abstractEncoding',
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'AbstractEncoding',
              ns: 'http:\/\/www.opengis.net\/swe\/2.0'
            },
            ti: 'SWE_2_0.AbstractEncodingType',
            t: 'er'
          }]
      }, {
        ln: 'GetFeatureOfInterestType.SpatialFilter',
        ps: [{
            n: 'spatialOps',
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'spatialOps',
              ns: 'http:\/\/www.opengis.net\/fes\/2.0'
            },
            ti: 'Filter_2_0.SpatialOpsType',
            t: 'er'
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
        ln: 'GetResultResponseType',
        bti: 'SWES_2_0.ExtensibleResponseType',
        ps: [{
            n: 'resultValues',
            ti: 'AnyType'
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
        ln: 'InsertResultType',
        bti: 'SWES_2_0.ExtensibleRequestType',
        ps: [{
            n: 'template'
          }, {
            n: 'resultValues',
            ti: 'AnyType'
          }]
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
        ln: 'InsertResultTemplateType.ProposedTemplate',
        ps: [{
            n: 'resultTemplate',
            en: 'ResultTemplate',
            ti: '.ResultTemplateType'
          }]
      }],
    eis: [{
        en: 'GetObservation',
        ti: '.GetObservationType',
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
        en: 'InsertResultTemplate',
        ti: '.InsertResultTemplateType',
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
        en: 'InsertObservation',
        ti: '.InsertObservationType',
        sh: {
          lp: 'ExtensibleRequest',
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
        en: 'Capabilities',
        ti: '.CapabilitiesType'
      }, {
        en: 'ObservationOffering',
        ti: '.ObservationOfferingType',
        sh: {
          lp: 'AbstractOffering',
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
        en: 'InsertResultTemplateResponse',
        ti: '.InsertResultTemplateResponseType',
        sh: {
          lp: 'ExtensibleResponse',
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
        en: 'GetResultTemplateResponse',
        ti: '.GetResultTemplateResponseType',
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
        en: 'GetCapabilities',
        ti: '.GetCapabilitiesType',
        sh: {
          lp: 'GetCapabilities',
          ns: 'http:\/\/www.opengis.net\/ows\/1.1'
        }
      }, {
        en: 'SosInsertionMetadata',
        ti: '.SosInsertionMetadataType',
        sh: {
          lp: 'InsertionMetadata',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'GetFeatureOfInterestResponse',
        ti: '.GetFeatureOfInterestResponseType',
        sh: {
          lp: 'ExtensibleResponse',
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
        en: 'InsertionCapabilities',
        ti: '.InsertionCapabilitiesType'
      }, {
        en: 'GetObservationById',
        ti: '.GetObservationByIdType',
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
        en: 'InsertObservationResponse',
        ti: '.InsertObservationResponseType',
        sh: {
          lp: 'ExtensibleResponse',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
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