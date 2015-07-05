var WaterML_2_0_Module_Factory = function () {
  var WaterML_2_0 = {
    n: 'WaterML_2_0',
    dens: 'http:\/\/www.opengis.net\/waterml\/2.0',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['XLink_1_0', 'GML_3_2_1', 'SWE_2_0', 'ISO19139_GMD_20070417', 'SamplingSpatial_2_0', 'Sampling_2_0', 'OM_2_0'],
    tis: [{
        ln: 'MonitoringPointPropertyType',
        ps: [{
            n: 'monitoringPoint',
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
        ln: 'ObservationMetadataPropertyType',
        ps: [{
            n: 'observationMetadata',
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
        ln: 'DocumentMetadataPropertyType',
        ps: [{
            n: 'documentMetadata',
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
        ln: 'CommentBlockType',
        ps: [{
            n: 'applicablePeriod',
            ti: 'GML_3_2_1.TimePeriodPropertyType'
          }, {
            n: 'comment'
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
            n: 'accumulationIntervalLength'
          }, {
            n: 'maxGapPeriod'
          }]
      }, {
        ln: 'TVPMeasurementMetadataPropertyType',
        ps: [{
            n: 'tvpMeasurementMetadata',
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
        ln: 'TimeZoneType',
        ps: [{
            n: 'zoneOffset'
          }, {
            n: 'zoneAbbreviation'
          }]
      }, {
        ln: 'CommentBlockPropertyType',
        ps: [{
            n: 'commentBlock',
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
        ln: 'CategoricalTimeseriesType',
        bti: '.TimeseriesType',
        ps: [{
            n: 'point',
            col: true,
            ti: '.CategoricalTimeseriesType.Point'
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
        ln: 'MeasurementTimeseriesType.Point',
        tn: null,
        ps: [{
            n: 'measurementTVP',
            en: 'MeasurementTVP',
            ti: '.MeasureTVPType'
          }]
      }, {
        ln: 'CollectionType.TemporalExtent',
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
        ln: 'MonitoringPointType',
        bti: 'SamplingSpatial_2_0.SFSpatialSamplingFeatureType',
        ps: [{
            n: 'relatedParty',
            col: true,
            ti: 'ISO19139_GMD_20070417.CIResponsiblePartyPropertyType'
          }, {
            n: 'monitoringType',
            col: true,
            ti: 'GML_3_2_1.ReferenceType'
          }, {
            n: 'monitoringPointDescriptionReference',
            col: true,
            en: 'descriptionReference',
            ti: 'GML_3_2_1.ReferenceType'
          }, {
            n: 'verticalDatum',
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
        ln: 'ObservationMetadataType',
        bti: 'ISO19139_GMD_20070417.MDMetadataType',
        ps: [{
            n: 'intendedObservationSpacing'
          }, {
            n: 'status',
            ti: 'GML_3_2_1.ReferenceType'
          }, {
            n: 'sampledMedium',
            ti: 'GML_3_2_1.ReferenceType'
          }, {
            n: 'maximumGap'
          }, {
            n: 'parameter',
            col: true,
            ti: 'OM_2_0.NamedValuePropertyType'
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
        ln: 'TimeValuePairType',
        ps: [{
            n: 'time',
            ti: 'GML_3_2_1.TimePositionType'
          }]
      }, {
        ln: 'SamplingFeatureMemberPropertyType',
        ps: [{
            n: 'sfSpatialSamplingFeature',
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
        ln: 'TimeseriesPropertyType',
        ps: [{
            n: 'timeseries',
            mx: false,
            dom: false,
            en: 'Timeseries',
            ti: '.TimeseriesType',
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
        ln: 'CategoricalTimeseriesType.Point',
        tn: null,
        ps: [{
            n: 'categoricalTVP',
            en: 'CategoricalTVP',
            ti: '.CategoricalTVPType'
          }]
      }, {
        ln: 'DefaultCategoricalTVPMetadataType',
        bti: '.TVPMetadataType',
        ps: [{
            n: 'codeSpace'
          }]
      }, {
        ln: 'CollectionType.SourceDefinition',
        tn: null,
        ps: [{
            n: 'mdDataIdentification',
            en: {
              lp: 'MD_DataIdentification',
              ns: 'http:\/\/www.isotc211.org\/2005\/gmd'
            },
            ti: 'ISO19139_GMD_20070417.MDDataIdentificationType'
          }]
      }, {
        ln: 'TimeZonePropertyType',
        ps: [{
            n: 'timeZone',
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
        ln: 'DefaultTVPMetadataPropertyType',
        ps: [{
            n: 'defaultTVPMetadata',
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
        ln: 'TimeseriesMetadataType',
        ps: [{
            n: 'temporalExtent',
            ti: 'GML_3_2_1.TimePeriodPropertyType'
          }, {
            n: 'baseTime',
            ti: 'GML_3_2_1.TimePositionType'
          }, {
            n: 'spacing'
          }, {
            n: 'commentBlock',
            col: true,
            ti: '.CommentBlockPropertyType'
          }, {
            n: 'parameter',
            col: true,
            ti: 'OM_2_0.NamedValuePropertyType'
          }]
      }, {
        ln: 'MeasurementTSMetadataPropertyType',
        ps: [{
            n: 'measurementTimeseriesMetadata',
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
        ln: 'ObservationProcessType',
        bti: 'GML_3_2_1.AbstractFeatureType',
        ps: [{
            n: 'processType',
            ti: 'GML_3_2_1.ReferenceType'
          }, {
            n: 'originatingProcess',
            ti: 'GML_3_2_1.ReferenceType'
          }, {
            n: 'aggregationDuration'
          }, {
            n: 'verticalDatum',
            ti: 'GML_3_2_1.VerticalDatumPropertyType'
          }, {
            n: 'comment',
            col: true
          }, {
            n: 'processReference',
            ti: 'GML_3_2_1.ReferenceType'
          }, {
            n: 'input',
            col: true,
            ti: 'GML_3_2_1.ReferenceType'
          }, {
            n: 'parameter',
            col: true,
            ti: 'OM_2_0.NamedValuePropertyType'
          }, {
            n: 'operator',
            col: true,
            ti: 'ISO19139_GMD_20070417.CIResponsiblePartyPropertyType'
          }]
      }, {
        ln: 'CollectionType.LocalDictionary',
        tn: null,
        ps: [{
            n: 'dictionary',
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
        ln: 'MeasurementTimeseriesType',
        bti: '.TimeseriesType',
        ps: [{
            n: 'point',
            col: true,
            ti: '.MeasurementTimeseriesType.Point'
          }]
      }, {
        ln: 'ObservationProcessPropertyType',
        ps: [{
            n: 'observationProcess',
            en: 'ObservationProcess',
            ti: '.ObservationProcessType'
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
        ln: 'CollectionPropertyType',
        ps: [{
            n: 'collection',
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
        ln: 'TimeseriesMetadataPropertyType',
        ps: [{
            n: 'timeseriesMetadata',
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
        ln: 'DocumentMetadataType',
        bti: 'GML_3_2_1.AbstractGMLType',
        ps: [{
            n: 'generationDate',
            ti: 'Calendar'
          }, {
            n: 'version',
            ti: 'GML_3_2_1.ReferenceType'
          }, {
            n: 'generationSystem'
          }, {
            n: 'profile',
            col: true,
            ti: 'GML_3_2_1.ReferenceType'
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
            n: 'aggregationDuration'
          }]
      }, {
        ln: 'TVPDefaultMetadataPropertyType',
        ps: [{
            n: 'defaultTVPMetadata',
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
        ln: 'TVPMetadataPropertyType',
        ps: [{
            n: 'tvpMetadata',
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
            col: true,
            ti: 'OM_2_0.ObservationContextPropertyType'
          }, {
            n: 'qualifier',
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
        ln: 'TimeseriesType',
        bti: 'GML_3_2_1.AbstractFeatureType',
        ps: [{
            n: 'metadata',
            ti: '.TimeseriesMetadataPropertyType'
          }, {
            n: 'defaultPointMetadata',
            col: true,
            ti: '.TVPDefaultMetadataPropertyType'
          }]
      }, {
        ln: 'CollectionType',
        bti: 'GML_3_2_1.AbstractFeatureType',
        ps: [{
            n: 'metadata',
            ti: '.DocumentMetadataPropertyType'
          }, {
            n: 'temporalExtent',
            ti: '.CollectionType.TemporalExtent'
          }, {
            n: 'sourceDefinition',
            col: true,
            ti: '.CollectionType.SourceDefinition'
          }, {
            n: 'parameter',
            col: true,
            ti: 'OM_2_0.NamedValuePropertyType'
          }, {
            n: 'localDictionary',
            col: true,
            ti: '.CollectionType.LocalDictionary'
          }, {
            n: 'samplingFeatureMember',
            col: true,
            ti: '.SamplingFeatureMemberPropertyType'
          }, {
            n: 'observationMember',
            col: true,
            ti: 'OM_2_0.OMObservationPropertyType'
          }, {
            n: 'communityExtension',
            col: true,
            ti: 'AnyType'
          }, {
            n: 'internalExtension',
            col: true,
            ti: 'AnyType'
          }]
      }, {
        t: 'enum',
        ln: 'SamplingFeatureMemberUnionSemantics',
        vs: ['byFeature', 'byGroup']
      }],
    eis: [{
        en: 'Timeseries',
        ti: '.TimeseriesType',
        sh: {
          lp: 'AbstractFeature',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'DefaultTVPCategoricalMetadata',
        ti: '.DefaultCategoricalTVPMetadataType',
        sh: 'DefaultTVPMetadata'
      }, {
        en: 'TimeseriesMetadata',
        ti: '.TimeseriesMetadataType'
      }, {
        en: 'CommentBlock',
        ti: '.CommentBlockType',
        sh: {
          lp: 'AbstractObject',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'DefaultTVPMetadata',
        ti: '.TVPMetadataType'
      }, {
        en: 'TVPMetadata',
        ti: '.TVPMetadataType'
      }, {
        en: 'value',
        ti: '.MeasureType'
      }, {
        en: 'MonitoringPoint',
        ti: '.MonitoringPointType',
        sh: {
          lp: 'SF_SpatialSamplingFeature',
          ns: 'http:\/\/www.opengis.net\/samplingSpatial\/2.0'
        }
      }, {
        en: 'value',
        ti: 'SWE_2_0.CategoryPropertyType',
        sc: '.CategoricalTVPType'
      }, {
        en: 'MeasurementTVP',
        ti: '.MeasureTVPType',
        sh: 'TimeValuePair'
      }, {
        en: 'MeasurementTimeseriesMetadata',
        ti: '.MeasurementTimeseriesMetadataType',
        sh: 'TimeseriesMetadata'
      }, {
        en: 'TimeValuePair',
        ti: '.TimeValuePairType'
      }, {
        en: 'MeasurementTimeseries',
        ti: '.MeasurementTimeseriesType',
        sh: 'Timeseries'
      }, {
        en: 'value',
        ti: '.MeasureType',
        sc: '.MeasureTVPType'
      }, {
        en: 'DefaultTVPMeasurementMetadata',
        ti: '.TVPMeasurementMetadataType',
        sh: 'DefaultTVPMetadata'
      }, {
        en: 'TVPMeasurementMetadata',
        ti: '.TVPMeasurementMetadataType',
        sh: 'TVPMetadata'
      }, {
        en: 'CategoricalTimeseries',
        ti: '.CategoricalTimeseriesType',
        sh: 'Timeseries'
      }, {
        en: 'DocumentMetadata',
        ti: '.DocumentMetadataType',
        sh: {
          lp: 'AbstractGML',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'ObservationProcess',
        ti: '.ObservationProcessType',
        sh: {
          lp: 'AbstractFeature',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'TimeZone',
        ti: '.TimeZoneType',
        sh: {
          lp: 'AbstractObject',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'ObservationMetadata',
        ti: '.ObservationMetadataType',
        sh: {
          lp: 'MD_Metadata',
          ns: 'http:\/\/www.isotc211.org\/2005\/gmd'
        }
      }, {
        en: 'CategoricalTVP',
        ti: '.CategoricalTVPType',
        sh: 'TimeValuePair'
      }, {
        en: 'Collection',
        ti: '.CollectionType',
        sh: {
          lp: 'AbstractFeature',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
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