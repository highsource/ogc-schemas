var SOS_2_0_Module_Factory = function () {
  var SOS_2_0 = {
    n: 'SOS_2_0',
    dens: 'http:\/\/www.opengis.net\/sos\/2.0',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['XLink_1_0', 'Filter_2_0', 'SWES_2_0', 'SWE_2_0', 'GML_3_2_1', 'OM_2_0', 'OWS_1_1_0'],
    tis: [{
        ln: 'InsertObservationResponsePropertyType',
        ps: [{
            n: 'insertObservationResponse',
            rq: true,
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
        ln: 'GetResultTemplateType',
        bti: 'SWES_2_0.ExtensibleRequestType',
        ps: [{
            n: 'offering',
            rq: true
          }, {
            n: 'observedProperty',
            rq: true
          }]
      }, {
        ln: 'GetResultTemplatePropertyType',
        ps: [{
            n: 'getResultTemplate',
            rq: true,
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
        ln: 'GetFeatureOfInterestPropertyType',
        ps: [{
            n: 'getFeatureOfInterest',
            rq: true,
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
        ln: 'GetCapabilitiesPropertyType',
        ps: [{
            n: 'getCapabilities',
            rq: true,
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
        ln: 'ObservationOfferingType.PhenomenonTime',
        tn: null,
        ps: [{
            n: 'timePeriod',
            rq: true,
            en: {
              lp: 'TimePeriod',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.TimePeriodType'
          }]
      }, {
        ln: 'InsertObservationPropertyType',
        ps: [{
            n: 'insertObservation',
            rq: true,
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
        ln: 'InsertResultPropertyType',
        ps: [{
            n: 'insertResult',
            rq: true,
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
        ln: 'InsertResultTemplateResponseType',
        bti: 'SWES_2_0.ExtensibleResponseType',
        ps: [{
            n: 'acceptedTemplate',
            rq: true
          }]
      }, {
        ln: 'GetObservationByIdResponseType.Observation',
        tn: null,
        ps: [{
            n: 'omObservation',
            rq: true,
            en: {
              lp: 'OM_Observation',
              ns: 'http:\/\/www.opengis.net\/om\/2.0'
            },
            ti: 'OM_2_0.OMObservationType'
          }]
      }, {
        ln: 'ContentsPropertyType',
        ps: [{
            n: 'contents',
            rq: true,
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
        ln: 'InsertObservationType',
        bti: 'SWES_2_0.ExtensibleRequestType',
        ps: [{
            n: 'offering',
            rq: true,
            col: true
          }, {
            n: 'observation',
            rq: true,
            col: true,
            ti: '.InsertObservationType.Observation'
          }]
      }, {
        ln: 'InsertionCapabilitiesType',
        ps: [{
            n: 'procedureDescriptionFormat',
            rq: true,
            col: true
          }, {
            n: 'featureOfInterestType',
            rq: true,
            col: true
          }, {
            n: 'observationType',
            rq: true,
            col: true
          }, {
            n: 'supportedEncoding',
            mno: 0,
            col: true
          }]
      }, {
        ln: 'InsertObservationResponseType',
        bti: 'SWES_2_0.ExtensibleResponseType'
      }, {
        ln: 'ContentsType',
        bti: 'SWES_2_0.AbstractContentsType',
        ps: [{
            n: 'responseFormat',
            mno: 0,
            col: true
          }, {
            n: 'observationType',
            mno: 0,
            col: true
          }, {
            n: 'featureOfInterestType',
            mno: 0,
            col: true
          }]
      }, {
        ln: 'ResultTemplateType.ResultEncoding',
        tn: null,
        ps: [{
            n: 'abstractEncoding',
            rq: true,
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
        ln: 'ObservationOfferingType.ResultTime',
        tn: null,
        ps: [{
            n: 'timePeriod',
            rq: true,
            en: {
              lp: 'TimePeriod',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.TimePeriodType'
          }]
      }, {
        ln: 'InsertResultTemplatePropertyType',
        ps: [{
            n: 'insertResultTemplate',
            rq: true,
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
        ln: 'GetObservationResponseType',
        bti: 'SWES_2_0.ExtensibleResponseType',
        ps: [{
            n: 'observationData',
            mno: 0,
            col: true,
            ti: '.GetObservationResponseType.ObservationData'
          }]
      }, {
        ln: 'GetFeatureOfInterestType.SpatialFilter',
        tn: null,
        ps: [{
            n: 'spatialOps',
            rq: true,
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
        ln: 'GetResultTemplateResponseType.ResultStructure',
        tn: null,
        ps: [{
            n: 'abstractDataComponent',
            rq: true,
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
        ln: 'GetResultResponsePropertyType',
        ps: [{
            n: 'getResultResponse',
            rq: true,
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
        ln: 'InsertResultTemplateType.ProposedTemplate',
        tn: null,
        ps: [{
            n: 'resultTemplate',
            rq: true,
            en: 'ResultTemplate',
            ti: '.ResultTemplateType'
          }]
      }, {
        ln: 'GetFeatureOfInterestResponseType',
        bti: 'SWES_2_0.ExtensibleResponseType',
        ps: [{
            n: 'featureMember',
            mno: 0,
            col: true,
            ti: 'GML_3_2_1.FeaturePropertyType'
          }]
      }, {
        ln: 'GetObservationType',
        bti: 'SWES_2_0.ExtensibleRequestType',
        ps: [{
            n: 'procedure',
            mno: 0,
            col: true
          }, {
            n: 'offering',
            mno: 0,
            col: true
          }, {
            n: 'observedProperty',
            mno: 0,
            col: true
          }, {
            n: 'temporalFilter',
            mno: 0,
            col: true,
            ti: '.GetObservationType.TemporalFilter'
          }, {
            n: 'featureOfInterest',
            mno: 0,
            col: true
          }, {
            n: 'spatialFilter',
            ti: '.GetObservationType.SpatialFilter'
          }, {
            n: 'responseFormat'
          }]
      }, {
        ln: 'InsertResultType',
        bti: 'SWES_2_0.ExtensibleRequestType',
        ps: [{
            n: 'template',
            rq: true
          }, {
            n: 'resultValues',
            rq: true,
            ti: 'AnyType'
          }]
      }, {
        ln: 'InsertObservationType.Observation',
        tn: null,
        ps: [{
            n: 'omObservation',
            rq: true,
            en: {
              lp: 'OM_Observation',
              ns: 'http:\/\/www.opengis.net\/om\/2.0'
            },
            ti: 'OM_2_0.OMObservationType'
          }]
      }, {
        ln: 'CapabilitiesType.Contents',
        tn: null,
        ps: [{
            n: 'contents',
            rq: true,
            en: 'Contents',
            ti: '.ContentsType'
          }]
      }, {
        ln: 'SosInsertionMetadataType',
        bti: 'SWES_2_0.InsertionMetadataType',
        ps: [{
            n: 'observationType',
            rq: true,
            col: true
          }, {
            n: 'featureOfInterestType',
            rq: true,
            col: true
          }]
      }, {
        ln: 'GetCapabilitiesType',
        bti: 'OWS_1_1_0.GetCapabilitiesType',
        ps: [{
            n: 'extension',
            mno: 0,
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
        ln: 'ResultTemplateType.ObservationTemplate',
        tn: null,
        ps: [{
            n: 'omObservation',
            rq: true,
            en: {
              lp: 'OM_Observation',
              ns: 'http:\/\/www.opengis.net\/om\/2.0'
            },
            ti: 'OM_2_0.OMObservationType'
          }]
      }, {
        ln: 'InsertResultTemplateResponsePropertyType',
        ps: [{
            n: 'insertResultTemplateResponse',
            rq: true,
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
        ln: 'GetResultResponseType',
        bti: 'SWES_2_0.ExtensibleResponseType',
        ps: [{
            n: 'resultValues',
            rq: true,
            ti: 'AnyType'
          }]
      }, {
        ln: 'GetResultTemplateResponseType.ResultEncoding',
        tn: null,
        ps: [{
            n: 'abstractEncoding',
            rq: true,
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
        ln: 'GetResultTemplateResponseType',
        bti: 'SWES_2_0.ExtensibleResponseType',
        ps: [{
            n: 'resultStructure',
            rq: true,
            ti: '.GetResultTemplateResponseType.ResultStructure'
          }, {
            n: 'resultEncoding',
            rq: true,
            ti: '.GetResultTemplateResponseType.ResultEncoding'
          }]
      }, {
        ln: 'GetObservationResponseType.ObservationData',
        tn: null,
        ps: [{
            n: 'omObservation',
            rq: true,
            en: {
              lp: 'OM_Observation',
              ns: 'http:\/\/www.opengis.net\/om\/2.0'
            },
            ti: 'OM_2_0.OMObservationType'
          }]
      }, {
        ln: 'GetObservationPropertyType',
        ps: [{
            n: 'getObservation',
            rq: true,
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
        ln: 'GetObservationType.SpatialFilter',
        tn: null,
        ps: [{
            n: 'spatialOps',
            rq: true,
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
        ln: 'ObservationOfferingType.ObservedArea',
        tn: null,
        ps: [{
            n: 'envelope',
            rq: true,
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
        ln: 'GetFeatureOfInterestType',
        bti: 'SWES_2_0.ExtensibleRequestType',
        ps: [{
            n: 'procedure',
            mno: 0,
            col: true
          }, {
            n: 'observedProperty',
            mno: 0,
            col: true
          }, {
            n: 'featureOfInterest',
            mno: 0,
            col: true
          }, {
            n: 'spatialFilter',
            mno: 0,
            col: true,
            ti: '.GetFeatureOfInterestType.SpatialFilter'
          }]
      }, {
        ln: 'GetObservationByIdType',
        bti: 'SWES_2_0.ExtensibleRequestType',
        ps: [{
            n: 'observation',
            rq: true,
            col: true
          }]
      }, {
        ln: 'InsertResultResponsePropertyType',
        ps: [{
            n: 'insertResultResponse',
            rq: true,
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
        ln: 'GetResultType.SpatialFilter',
        tn: null,
        ps: [{
            n: 'spatialOps',
            rq: true,
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
        ln: 'GetObservationByIdResponseType',
        bti: 'SWES_2_0.ExtensibleResponseType',
        ps: [{
            n: 'observation',
            mno: 0,
            col: true,
            ti: '.GetObservationByIdResponseType.Observation'
          }]
      }, {
        ln: 'GetObservationByIdResponsePropertyType',
        ps: [{
            n: 'getObservationByIdResponse',
            rq: true,
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
        ln: 'InsertResultResponseType',
        bti: 'SWES_2_0.ExtensibleResponseType'
      }, {
        ln: 'ObservationOfferingPropertyType',
        ps: [{
            n: 'observationOffering',
            rq: true,
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
        ln: 'GetObservationType.TemporalFilter',
        tn: null,
        ps: [{
            n: 'temporalOps',
            rq: true,
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
        ln: 'GetResultTemplateResponsePropertyType',
        ps: [{
            n: 'getResultTemplateResponse',
            rq: true,
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
        ln: 'ResultTemplateType.ResultStructure',
        tn: null,
        ps: [{
            n: 'abstractDataComponent',
            rq: true,
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
        ln: 'CapabilitiesType.FilterCapabilities',
        tn: null,
        ps: [{
            n: 'filterCapabilities',
            rq: true,
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
            mno: 0,
            col: true
          }, {
            n: 'observationType',
            mno: 0,
            col: true
          }, {
            n: 'featureOfInterestType',
            mno: 0,
            col: true
          }]
      }, {
        ln: 'InsertResultTemplateType',
        bti: 'SWES_2_0.ExtensibleRequestType',
        ps: [{
            n: 'proposedTemplate',
            rq: true,
            ti: '.InsertResultTemplateType.ProposedTemplate'
          }]
      }, {
        ln: 'GetResultType.TemporalFilter',
        tn: null,
        ps: [{
            n: 'temporalOps',
            rq: true,
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
        ln: 'GetResultType',
        bti: 'SWES_2_0.ExtensibleRequestType',
        ps: [{
            n: 'offering',
            rq: true
          }, {
            n: 'observedProperty',
            rq: true
          }, {
            n: 'temporalFilter',
            mno: 0,
            col: true,
            ti: '.GetResultType.TemporalFilter'
          }, {
            n: 'featureOfInterest',
            mno: 0,
            col: true
          }, {
            n: 'spatialFilter',
            ti: '.GetResultType.SpatialFilter'
          }]
      }, {
        ln: 'ResultTemplatePropertyType',
        ps: [{
            n: 'resultTemplate',
            rq: true,
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
        ln: 'SosInsertionMetadataPropertyType',
        ps: [{
            n: 'sosInsertionMetadata',
            rq: true,
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
        ln: 'GetResultPropertyType',
        ps: [{
            n: 'getResult',
            rq: true,
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
        ln: 'GetObservationResponsePropertyType',
        ps: [{
            n: 'getObservationResponse',
            rq: true,
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
        ln: 'ResultTemplateType',
        bti: 'SWES_2_0.AbstractSWESType',
        ps: [{
            n: 'offering',
            rq: true
          }, {
            n: 'observationTemplate',
            rq: true,
            ti: '.ResultTemplateType.ObservationTemplate'
          }, {
            n: 'resultStructure',
            rq: true,
            ti: '.ResultTemplateType.ResultStructure'
          }, {
            n: 'resultEncoding',
            rq: true,
            ti: '.ResultTemplateType.ResultEncoding'
          }]
      }, {
        ln: 'GetObservationByIdPropertyType',
        ps: [{
            n: 'getObservationById',
            rq: true,
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
        ln: 'CapabilitiesType',
        bti: 'OWS_1_1_0.CapabilitiesBaseType',
        ps: [{
            n: 'extension',
            mno: 0,
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
        ln: 'CapabilitiesPropertyType',
        ps: [{
            n: 'capabilities',
            rq: true,
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
        ln: 'GetFeatureOfInterestResponsePropertyType',
        ps: [{
            n: 'getFeatureOfInterestResponse',
            rq: true,
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
        ln: 'InsertionCapabilitiesPropertyType',
        ps: [{
            n: 'insertionCapabilities',
            rq: true,
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
      }],
    eis: [{
        en: 'InsertResultTemplateResponse',
        ti: '.InsertResultTemplateResponseType',
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
        en: 'ObservationOffering',
        ti: '.ObservationOfferingType',
        sh: {
          lp: 'AbstractOffering',
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
        en: 'InsertionCapabilities',
        ti: '.InsertionCapabilitiesType'
      }, {
        en: 'InsertResultResponse',
        ti: '.InsertResultResponseType',
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
        en: 'GetObservation',
        ti: '.GetObservationType',
        sh: {
          lp: 'ExtensibleRequest',
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
        en: 'GetObservationByIdResponse',
        ti: '.GetObservationByIdResponseType',
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
        en: 'GetFeatureOfInterestResponse',
        ti: '.GetFeatureOfInterestResponseType',
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
        en: 'GetResultTemplateResponse',
        ti: '.GetResultTemplateResponseType',
        sh: {
          lp: 'ExtensibleResponse',
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
        en: 'GetResultResponse',
        ti: '.GetResultResponseType',
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
        en: 'SosInsertionMetadata',
        ti: '.SosInsertionMetadataType',
        sh: {
          lp: 'InsertionMetadata',
          ns: 'http:\/\/www.opengis.net\/swes\/2.0'
        }
      }, {
        en: 'GetObservationById',
        ti: '.GetObservationByIdType',
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
        en: 'GetResultTemplate',
        ti: '.GetResultTemplateType',
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