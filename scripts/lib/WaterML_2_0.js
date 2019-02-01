var WaterML_2_0_Module_Factory = function () {
  var WaterML_2_0 = {
    n: 'WaterML_2_0',
    dens: 'http:\/\/www.opengis.net\/waterml\/2.0',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['XLink_1_0', 'ISO19139_GMD_20070417', 'OM_2_0', 'GML_3_2_1', 'SWE_2_0', 'Sampling_2_0', 'SamplingSpatial_2_0'],
    tis: [{
        ln: 'TimeseriesPropertyType',
        ps: [{
            n: 'timeseries',
            rq: true,
            mx: false,
            dom: false,
            en: 'Timeseries',
            ti: '.TimeseriesType',
            t: 'er'
          }, {
            n: 'owns',
            ti: 'Boolean',
            an: {
              lp: 'owns'
            },
            t: 'a'
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
        ln: 'TimeValuePairType',
        ps: [{
            n: 'time',
            ti: 'GML_3_2_1.TimePositionType'
          }]
      }, {
        ln: 'TimeZoneType',
        ps: [{
            n: 'zoneOffset',
            rq: true
          }, {
            n: 'zoneAbbreviation'
          }]
      }, {
        ln: 'ObservationProcessType',
        bti: 'GML_3_2_1.AbstractFeatureType',
        ps: [{
            n: 'processType',
            rq: true,
            ti: 'GML_3_2_1.ReferenceType'
          }, {
            n: 'originatingProcess',
            ti: 'GML_3_2_1.ReferenceType'
          }, {
            n: 'aggregationDuration',
            ti: 'Duration'
          }, {
            n: 'verticalDatum',
            ti: 'GML_3_2_1.VerticalDatumPropertyType'
          }, {
            n: 'comment',
            mno: 0,
            col: true
          }, {
            n: 'processReference',
            ti: 'GML_3_2_1.ReferenceType'
          }, {
            n: 'input',
            mno: 0,
            col: true,
            ti: 'GML_3_2_1.ReferenceType'
          }, {
            n: 'parameter',
            mno: 0,
            col: true,
            ti: 'OM_2_0.NamedValuePropertyType'
          }, {
            n: 'operator',
            mno: 0,
            col: true,
            ti: 'ISO19139_GMD_20070417.CIResponsiblePartyPropertyType'
          }]
      }, {
        ln: 'TVPMetadataType',
        ps: [{
            n: 'quality',
            ti: 'GML_3_2_1.ReferenceType'
          }, {
            n: 'nilReason',
            ti: 'GML_3_2_1.ReferenceType'
          }, {
            n: 'comment'
          }, {
            n: 'relatedObservation',
            mno: 0,
            col: true,
            ti: 'OM_2_0.ObservationContextPropertyType'
          }, {
            n: 'qualifier',
            mno: 0,
            col: true,
            ti: 'SWE_2_0.QualityPropertyType'
          }, {
            n: 'processing',
            ti: 'GML_3_2_1.ReferenceType'
          }, {
            n: 'source',
            ti: 'GML_3_2_1.ReferenceType'
          }]
      }, {
        ln: 'TVPDefaultMetadataPropertyType',
        ps: [{
            n: 'defaultTVPMetadata',
            rq: true,
            mx: false,
            dom: false,
            en: 'DefaultTVPMetadata',
            ti: '.TVPMetadataType',
            t: 'er'
          }, {
            n: 'owns',
            ti: 'Boolean',
            an: {
              lp: 'owns'
            },
            t: 'a'
          }]
      }, {
        ln: 'CommentBlockType',
        ps: [{
            n: 'applicablePeriod',
            rq: true,
            ti: 'GML_3_2_1.TimePeriodPropertyType'
          }, {
            n: 'comment',
            rq: true
          }]
      }, {
        ln: 'ObservationMetadataPropertyType',
        ps: [{
            n: 'observationMetadata',
            rq: true,
            en: 'ObservationMetadata',
            ti: '.ObservationMetadataType'
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
          }, {
            n: 'owns',
            ti: 'Boolean',
            an: {
              lp: 'owns'
            },
            t: 'a'
          }]
      }, {
        ln: 'MonitoringPointType',
        bti: 'SamplingSpatial_2_0.SFSpatialSamplingFeatureType',
        ps: [{
            n: 'relatedParty',
            mno: 0,
            col: true,
            ti: 'ISO19139_GMD_20070417.CIResponsiblePartyPropertyType'
          }, {
            n: 'monitoringType',
            mno: 0,
            col: true,
            ti: 'GML_3_2_1.ReferenceType'
          }, {
            n: 'monitoringPointDescriptionReference',
            mno: 0,
            col: true,
            en: 'descriptionReference',
            ti: 'GML_3_2_1.ReferenceType'
          }, {
            n: 'verticalDatum',
            mno: 0,
            col: true,
            ti: 'GML_3_2_1.VerticalDatumPropertyType'
          }, {
            n: 'timeZone',
            ti: '.TimeZonePropertyType'
          }, {
            n: 'daylightSavingTimeZone',
            ti: '.TimeZonePropertyType'
          }]
      }, {
        ln: 'TimeseriesMetadataPropertyType',
        ps: [{
            n: 'timeseriesMetadata',
            rq: true,
            mx: false,
            dom: false,
            en: 'TimeseriesMetadata',
            ti: '.TimeseriesMetadataType',
            t: 'er'
          }, {
            n: 'owns',
            ti: 'Boolean',
            an: {
              lp: 'owns'
            },
            t: 'a'
          }]
      }, {
        ln: 'CommentBlockPropertyType',
        ps: [{
            n: 'commentBlock',
            rq: true,
            en: 'CommentBlock',
            ti: '.CommentBlockType'
          }, {
            n: 'owns',
            ti: 'Boolean',
            an: {
              lp: 'owns'
            },
            t: 'a'
          }]
      }, {
        ln: 'CollectionType.SourceDefinition',
        tn: null,
        ps: [{
            n: 'mdDataIdentification',
            rq: true,
            en: {
              lp: 'MD_DataIdentification',
              ns: 'http:\/\/www.isotc211.org\/2005\/gmd'
            },
            ti: 'ISO19139_GMD_20070417.MDDataIdentificationType'
          }]
      }, {
        ln: 'MeasurementTimeseriesType.Point',
        tn: null,
        ps: [{
            n: 'measurementTVP',
            rq: true,
            en: 'MeasurementTVP',
            ti: '.MeasureTVPType'
          }]
      }, {
        ln: 'CategoricalTVPType',
        bti: '.TimeValuePairType',
        ps: [{
            n: 'value',
            mx: false,
            dom: false,
            ti: 'SWE_2_0.CategoryPropertyType',
            t: 'er'
          }, {
            n: 'metadata',
            ti: '.TVPMetadataPropertyType'
          }]
      }, {
        ln: 'CategoricalTimeseriesType.Point',
        tn: null,
        ps: [{
            n: 'categoricalTVP',
            rq: true,
            en: 'CategoricalTVP',
            ti: '.CategoricalTVPType'
          }]
      }, {
        ln: 'TimeZonePropertyType',
        ps: [{
            n: 'timeZone',
            rq: true,
            en: 'TimeZone',
            ti: '.TimeZoneType'
          }, {
            n: 'owns',
            ti: 'Boolean',
            an: {
              lp: 'owns'
            },
            t: 'a'
          }]
      }, {
        ln: 'TimeseriesType',
        bti: 'GML_3_2_1.AbstractFeatureType',
        ps: [{
            n: 'metadata',
            ti: '.TimeseriesMetadataPropertyType'
          }, {
            n: 'defaultPointMetadata',
            mno: 0,
            col: true,
            ti: '.TVPDefaultMetadataPropertyType'
          }]
      }, {
        ln: 'TVPMeasurementMetadataPropertyType',
        ps: [{
            n: 'tvpMeasurementMetadata',
            rq: true,
            en: 'TVPMeasurementMetadata',
            ti: '.TVPMeasurementMetadataType'
          }, {
            n: 'owns',
            ti: 'Boolean',
            an: {
              lp: 'owns'
            },
            t: 'a'
          }]
      }, {
        ln: 'CategoricalTimeseriesType',
        bti: '.TimeseriesType',
        ps: [{
            n: 'point',
            mno: 0,
            col: true,
            ti: '.CategoricalTimeseriesType.Point'
          }]
      }, {
        ln: 'CollectionType',
        bti: 'GML_3_2_1.AbstractFeatureType',
        ps: [{
            n: 'metadata',
            rq: true,
            ti: '.DocumentMetadataPropertyType'
          }, {
            n: 'temporalExtent',
            ti: '.CollectionType.TemporalExtent'
          }, {
            n: 'sourceDefinition',
            mno: 0,
            col: true,
            ti: '.CollectionType.SourceDefinition'
          }, {
            n: 'parameter',
            mno: 0,
            col: true,
            ti: 'OM_2_0.NamedValuePropertyType'
          }, {
            n: 'localDictionary',
            mno: 0,
            col: true,
            ti: '.CollectionType.LocalDictionary'
          }, {
            n: 'samplingFeatureMember',
            mno: 0,
            col: true,
            ti: '.SamplingFeatureMemberPropertyType'
          }, {
            n: 'observationMember',
            mno: 0,
            col: true,
            ti: 'OM_2_0.OMObservationPropertyType'
          }, {
            n: 'communityExtension',
            mno: 0,
            col: true,
            ti: 'AnyType'
          }, {
            n: 'internalExtension',
            mno: 0,
            col: true,
            ti: 'AnyType'
          }]
      }, {
        ln: 'TVPMetadataPropertyType',
        ps: [{
            n: 'tvpMetadata',
            rq: true,
            mx: false,
            dom: false,
            en: 'TVPMetadata',
            ti: '.TVPMetadataType',
            t: 'er'
          }, {
            n: 'owns',
            ti: 'Boolean',
            an: {
              lp: 'owns'
            },
            t: 'a'
          }]
      }, {
        ln: 'MeasurementTSMetadataPropertyType',
        ps: [{
            n: 'measurementTimeseriesMetadata',
            rq: true,
            en: 'MeasurementTimeseriesMetadata',
            ti: '.MeasurementTimeseriesMetadataType'
          }, {
            n: 'owns',
            ti: 'Boolean',
            an: {
              lp: 'owns'
            },
            t: 'a'
          }]
      }, {
        ln: 'SamplingFeatureMemberPropertyType',
        ps: [{
            n: 'sfSpatialSamplingFeature',
            rq: true,
            mx: false,
            dom: false,
            en: {
              lp: 'SF_SpatialSamplingFeature',
              ns: 'http:\/\/www.opengis.net\/samplingSpatial\/2.0'
            },
            ti: 'SamplingSpatial_2_0.SFSpatialSamplingFeatureType',
            t: 'er'
          }, {
            n: 'sfSamplingFeatureCollection',
            rq: true,
            en: {
              lp: 'SF_SamplingFeatureCollection',
              ns: 'http:\/\/www.opengis.net\/sampling\/2.0'
            },
            ti: 'Sampling_2_0.SFSamplingFeatureCollectionType'
          }, {
            n: 'unionSemantics',
            an: {
              lp: 'unionSemantics'
            },
            t: 'a'
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
          }, {
            n: 'owns',
            ti: 'Boolean',
            an: {
              lp: 'owns'
            },
            t: 'a'
          }]
      }, {
        ln: 'TimeseriesMetadataType',
        ps: [{
            n: 'temporalExtent',
            rq: true,
            ti: 'GML_3_2_1.TimePeriodPropertyType'
          }, {
            n: 'baseTime',
            ti: 'GML_3_2_1.TimePositionType'
          }, {
            n: 'spacing',
            ti: 'Duration'
          }, {
            n: 'commentBlock',
            mno: 0,
            col: true,
            ti: '.CommentBlockPropertyType'
          }, {
            n: 'parameter',
            mno: 0,
            col: true,
            ti: 'OM_2_0.NamedValuePropertyType'
          }]
      }, {
        ln: 'DocumentMetadataType',
        bti: 'GML_3_2_1.AbstractGMLType',
        ps: [{
            n: 'generationDate',
            rq: true,
            ti: 'DateTime'
          }, {
            n: 'version',
            ti: 'GML_3_2_1.ReferenceType'
          }, {
            n: 'generationSystem'
          }, {
            n: 'profile',
            mno: 0,
            col: true,
            ti: 'GML_3_2_1.ReferenceType'
          }]
      }, {
        ln: 'DocumentMetadataPropertyType',
        ps: [{
            n: 'documentMetadata',
            rq: true,
            en: 'DocumentMetadata',
            ti: '.DocumentMetadataType'
          }, {
            n: 'owns',
            ti: 'Boolean',
            an: {
              lp: 'owns'
            },
            t: 'a'
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
        ln: 'CollectionPropertyType',
        ps: [{
            n: 'collection',
            rq: true,
            en: 'Collection',
            ti: '.CollectionType'
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
          }, {
            n: 'owns',
            ti: 'Boolean',
            an: {
              lp: 'owns'
            },
            t: 'a'
          }]
      }, {
        ln: 'TVPMeasurementMetadataType',
        bti: '.TVPMetadataType',
        ps: [{
            n: 'uom',
            ti: 'SWE_2_0.UnitReference'
          }, {
            n: 'interpolationType',
            ti: 'GML_3_2_1.ReferenceType'
          }, {
            n: 'censoredReason',
            ti: 'GML_3_2_1.ReferenceType'
          }, {
            n: 'accuracy',
            ti: 'SWE_2_0.QuantityPropertyType'
          }, {
            n: 'aggregationDuration',
            ti: 'Duration'
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
        ln: 'MeasurementTimeseriesType',
        bti: '.TimeseriesType',
        ps: [{
            n: 'point',
            mno: 0,
            col: true,
            ti: '.MeasurementTimeseriesType.Point'
          }]
      }, {
        ln: 'CollectionType.TemporalExtent',
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
        ln: 'MonitoringPointPropertyType',
        ps: [{
            n: 'monitoringPoint',
            rq: true,
            en: 'MonitoringPoint',
            ti: '.MonitoringPointType'
          }, {
            n: 'owns',
            ti: 'Boolean',
            an: {
              lp: 'owns'
            },
            t: 'a'
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
        ln: 'DefaultCategoricalTVPMetadataType',
        bti: '.TVPMetadataType',
        ps: [{
            n: 'codeSpace'
          }]
      }, {
        ln: 'DefaultTVPMetadataPropertyType',
        ps: [{
            n: 'defaultTVPMetadata',
            rq: true,
            mx: false,
            dom: false,
            en: 'DefaultTVPMetadata',
            ti: '.TVPMetadataType',
            t: 'er'
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
          }, {
            n: 'owns',
            ti: 'Boolean',
            an: {
              lp: 'owns'
            },
            t: 'a'
          }]
      }, {
        ln: 'MeasureTVPType',
        bti: '.TimeValuePairType',
        ps: [{
            n: 'value',
            mx: false,
            dom: false,
            ti: '.MeasureType',
            t: 'er'
          }, {
            n: 'metadata',
            ti: '.TVPMeasurementMetadataPropertyType'
          }]
      }, {
        ln: 'ObservationProcessPropertyType',
        ps: [{
            n: 'observationProcess',
            rq: true,
            en: 'ObservationProcess',
            ti: '.ObservationProcessType'
          }, {
            n: 'owns',
            ti: 'Boolean',
            an: {
              lp: 'owns'
            },
            t: 'a'
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
        ln: 'MeasurementTimeseriesMetadataType',
        bti: '.TimeseriesMetadataType',
        ps: [{
            n: 'startAnchorPoint',
            ti: 'GML_3_2_1.TimePositionType'
          }, {
            n: 'endAnchorPoint',
            ti: 'GML_3_2_1.TimePositionType'
          }, {
            n: 'cumulative',
            ti: 'Boolean'
          }, {
            n: 'accumulationAnchorTime',
            ti: 'GML_3_2_1.TimePositionType'
          }, {
            n: 'accumulationIntervalLength',
            ti: 'Duration'
          }, {
            n: 'maxGapPeriod',
            ti: 'Duration'
          }]
      }, {
        ln: 'CollectionType.LocalDictionary',
        tn: null,
        ps: [{
            n: 'dictionary',
            rq: true,
            mx: false,
            dom: false,
            en: {
              lp: 'Dictionary',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.DictionaryType',
            t: 'er'
          }]
      }, {
        ln: 'ObservationMetadataType',
        bti: 'ISO19139_GMD_20070417.MDMetadataType',
        ps: [{
            n: 'intendedObservationSpacing',
            ti: 'Duration'
          }, {
            n: 'status',
            ti: 'GML_3_2_1.ReferenceType'
          }, {
            n: 'sampledMedium',
            ti: 'GML_3_2_1.ReferenceType'
          }, {
            n: 'maximumGap',
            ti: 'Duration'
          }, {
            n: 'parameter',
            mno: 0,
            col: true,
            ti: 'OM_2_0.NamedValuePropertyType'
          }]
      }, {
        t: 'enum',
        ln: 'SamplingFeatureMemberUnionSemantics',
        vs: ['byFeature', 'byGroup']
      }],
    eis: [{
        en: 'CategoricalTVP',
        ti: '.CategoricalTVPType',
        sh: 'TimeValuePair'
      }, {
        en: 'value',
        ti: '.MeasureType',
        sc: '.MeasureTVPType'
      }, {
        en: 'DefaultTVPMeasurementMetadata',
        ti: '.TVPMeasurementMetadataType',
        sh: 'DefaultTVPMetadata'
      }, {
        en: 'TimeZone',
        ti: '.TimeZoneType',
        sh: {
          lp: 'AbstractObject',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'value',
        ti: 'SWE_2_0.CategoryPropertyType',
        sc: '.CategoricalTVPType'
      }, {
        en: 'TimeseriesMetadata',
        ti: '.TimeseriesMetadataType'
      }, {
        en: 'DefaultTVPCategoricalMetadata',
        ti: '.DefaultCategoricalTVPMetadataType',
        sh: 'DefaultTVPMetadata'
      }, {
        en: 'ObservationProcess',
        ti: '.ObservationProcessType',
        sh: {
          lp: 'AbstractFeature',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'Timeseries',
        ti: '.TimeseriesType',
        sh: {
          lp: 'AbstractFeature',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'CategoricalTimeseries',
        ti: '.CategoricalTimeseriesType',
        sh: 'Timeseries'
      }, {
        en: 'CommentBlock',
        ti: '.CommentBlockType',
        sh: {
          lp: 'AbstractObject',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'TVPMetadata',
        ti: '.TVPMetadataType'
      }, {
        en: 'ObservationMetadata',
        ti: '.ObservationMetadataType',
        sh: {
          lp: 'MD_Metadata',
          ns: 'http:\/\/www.isotc211.org\/2005\/gmd'
        }
      }, {
        en: 'value',
        ti: '.MeasureType'
      }, {
        en: 'TVPMeasurementMetadata',
        ti: '.TVPMeasurementMetadataType',
        sh: 'TVPMetadata'
      }, {
        en: 'MonitoringPoint',
        ti: '.MonitoringPointType',
        sh: {
          lp: 'SF_SpatialSamplingFeature',
          ns: 'http:\/\/www.opengis.net\/samplingSpatial\/2.0'
        }
      }, {
        en: 'MeasurementTVP',
        ti: '.MeasureTVPType',
        sh: 'TimeValuePair'
      }, {
        en: 'Collection',
        ti: '.CollectionType',
        sh: {
          lp: 'AbstractFeature',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'DocumentMetadata',
        ti: '.DocumentMetadataType',
        sh: {
          lp: 'AbstractGML',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'TimeValuePair',
        ti: '.TimeValuePairType'
      }, {
        en: 'MeasurementTimeseriesMetadata',
        ti: '.MeasurementTimeseriesMetadataType',
        sh: 'TimeseriesMetadata'
      }, {
        en: 'DefaultTVPMetadata',
        ti: '.TVPMetadataType'
      }, {
        en: 'MeasurementTimeseries',
        ti: '.MeasurementTimeseriesType',
        sh: 'Timeseries'
      }]
  };
  return {
    WaterML_2_0: WaterML_2_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], WaterML_2_0_Module_Factory);
}
else {
  var WaterML_2_0_Module = WaterML_2_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.WaterML_2_0 = WaterML_2_0_Module.WaterML_2_0;
  }
  else {
    var WaterML_2_0 = WaterML_2_0_Module.WaterML_2_0;
  }
}