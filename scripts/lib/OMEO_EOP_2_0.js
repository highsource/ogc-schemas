var OMEO_EOP_2_0_Module_Factory = function () {
  var OMEO_EOP_2_0 = {
    n: 'OMEO_EOP_2_0',
    dens: 'http:\/\/www.opengis.net\/eop\/2.0',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['XLink_1_0', 'GML_3_2_1', 'SWE_1_0_0', 'OWS_2_0', 'OM_2_0'],
    tis: [{
        ln: 'HistogramPropertyType',
        ps: [{
            n: 'histogram',
            rq: true,
            en: 'Histogram',
            ti: '.HistogramType'
          }, {
            n: 'owns',
            ti: 'Boolean',
            an: {
              lp: 'owns'
            },
            t: 'a'
          }]
      }, {
        ln: 'EarthObservationResultPropertyType',
        ps: [{
            n: 'earthObservationResult',
            rq: true,
            mx: false,
            dom: false,
            en: 'EarthObservationResult',
            ti: '.EarthObservationResultType',
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
        ln: 'ArchivingInformationType',
        ps: [{
            n: 'archivingCenter',
            rq: true,
            ti: 'GML_3_2_1.CodeListType'
          }, {
            n: 'archivingDate',
            rq: true,
            ti: 'DateTime'
          }, {
            n: 'archivingIdentifier',
            ti: 'GML_3_2_1.CodeType'
          }]
      }, {
        ln: 'ParameterInformationPropertyType',
        ps: [{
            n: 'parameterInformation',
            rq: true,
            en: 'ParameterInformation',
            ti: '.ParameterInformationType'
          }, {
            n: 'owns',
            ti: 'Boolean',
            an: {
              lp: 'owns'
            },
            t: 'a'
          }]
      }, {
        ln: 'ParameterInformationType',
        ps: [{
            n: 'unitOfMeasure',
            mno: 0,
            col: true,
            ti: 'GML_3_2_1.UnitOfMeasureType'
          }, {
            n: 'phenomenon',
            ti: 'SWE_1_0_0.PhenomenonPropertyType'
          }]
      }, {
        ln: 'SensorPropertyType',
        ps: [{
            n: 'sensor',
            rq: true,
            mx: false,
            dom: false,
            en: 'Sensor',
            ti: '.SensorType',
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
        ln: 'ProcessingInformationType',
        ps: [{
            n: 'processingCenter',
            ti: 'GML_3_2_1.CodeListType'
          }, {
            n: 'processingDate',
            ti: 'Duration'
          }, {
            n: 'compositeType',
            ti: 'Duration'
          }, {
            n: 'method'
          }, {
            n: 'methodVersion'
          }, {
            n: 'processorName'
          }, {
            n: 'processorVersion'
          }, {
            n: 'processingLevel'
          }, {
            n: 'nativeProductFormat'
          }, {
            n: 'auxiliaryDataSetFileName',
            mno: 0,
            col: true
          }, {
            n: 'processingMode'
          }]
      }, {
        ln: 'EarthObservationEquipmentPropertyType',
        ps: [{
            n: 'earthObservationEquipment',
            rq: true,
            mx: false,
            dom: false,
            en: 'EarthObservationEquipment',
            ti: '.EarthObservationEquipmentType',
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
        ln: 'ProductInformationType.FileName',
        tn: null,
        ps: [{
            n: 'serviceReference',
            rq: true,
            en: {
              lp: 'ServiceReference',
              ns: 'http:\/\/www.opengis.net\/ows\/2.0'
            },
            ti: 'OWS_2_0.ServiceReferenceType'
          }]
      }, {
        ln: 'ProductInformationPropertyType',
        ps: [{
            n: 'productInformation',
            rq: true,
            en: 'ProductInformation',
            ti: '.ProductInformationType'
          }, {
            n: 'owns',
            ti: 'Boolean',
            an: {
              lp: 'owns'
            },
            t: 'a'
          }]
      }, {
        ln: 'PlatformType',
        ps: [{
            n: 'shortName',
            rq: true
          }, {
            n: 'serialIdentifier'
          }, {
            n: 'orbitType'
          }]
      }, {
        ln: 'BrowseInformationPropertyType',
        ps: [{
            n: 'browseInformation',
            rq: true,
            en: 'BrowseInformation',
            ti: '.BrowseInformationType'
          }, {
            n: 'owns',
            ti: 'Boolean',
            an: {
              lp: 'owns'
            },
            t: 'a'
          }]
      }, {
        ln: 'EarthObservationResultType',
        bti: 'GML_3_2_1.AbstractFeatureType',
        ps: [{
            n: 'browse',
            mno: 0,
            col: true,
            ti: '.BrowseInformationPropertyType'
          }, {
            n: 'product',
            mno: 0,
            col: true,
            ti: '.ProductInformationPropertyType'
          }, {
            n: 'mask',
            mno: 0,
            col: true,
            ti: '.MaskInformationPropertyType'
          }, {
            n: 'parameter',
            ti: '.ParameterInformationPropertyType'
          }, {
            n: 'coverage',
            mno: 0,
            col: true,
            ti: 'GML_3_2_1.ReferenceType'
          }]
      }, {
        ln: 'InstrumentType',
        ps: [{
            n: 'shortName'
          }, {
            n: 'description'
          }, {
            n: 'instrumentType'
          }]
      }, {
        ln: 'DownlinkInformationType',
        ps: [{
            n: 'acquisitionStation',
            rq: true,
            ti: 'GML_3_2_1.CodeListType'
          }, {
            n: 'acquisitionDate',
            ti: 'DateTime'
          }]
      }, {
        ln: 'HistogramType',
        ps: [{
            n: 'bandId'
          }, {
            n: 'min',
            rq: true,
            ti: 'Integer'
          }, {
            n: 'max',
            rq: true,
            ti: 'Integer'
          }, {
            n: 'mean',
            ti: 'Decimal'
          }, {
            n: 'stdDeviation',
            ti: 'Decimal'
          }]
      }, {
        ln: 'BrowseInformationType.FileName',
        tn: null,
        ps: [{
            n: 'serviceReference',
            rq: true,
            en: {
              lp: 'ServiceReference',
              ns: 'http:\/\/www.opengis.net\/ows\/2.0'
            },
            ti: 'OWS_2_0.ServiceReferenceType'
          }]
      }, {
        ln: 'EarthObservationPropertyType',
        ps: [{
            n: 'earthObservation',
            rq: true,
            mx: false,
            dom: false,
            en: 'EarthObservation',
            ti: '.EarthObservationType',
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
        ln: 'SpecificInformationType',
        ps: [{
            n: 'localAttribute',
            rq: true
          }, {
            n: 'localValue',
            rq: true
          }]
      }, {
        ln: 'MaskInformationType',
        ps: [{
            n: 'type',
            rq: true
          }, {
            n: 'format',
            rq: true
          }, {
            n: 'referenceSystemIdentifier',
            ti: 'GML_3_2_1.CodeWithAuthorityType'
          }, {
            n: 'fileName',
            rq: true,
            ti: '.MaskInformationType.FileName'
          }]
      }, {
        ln: 'FootprintPropertyType',
        ps: [{
            n: 'footprint',
            rq: true,
            mx: false,
            dom: false,
            en: 'Footprint',
            ti: '.FootprintType',
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
        ln: 'SpecificInformationPropertyType',
        ps: [{
            n: 'specificInformation',
            rq: true,
            en: 'SpecificInformation',
            ti: '.SpecificInformationType'
          }, {
            n: 'owns',
            ti: 'Boolean',
            an: {
              lp: 'owns'
            },
            t: 'a'
          }]
      }, {
        ln: 'EarthObservationEquipmentType',
        bti: 'GML_3_2_1.AbstractFeatureType',
        ps: [{
            n: 'platform',
            ti: '.PlatformPropertyType'
          }, {
            n: 'instrument',
            ti: '.InstrumentPropertyType'
          }, {
            n: 'sensor',
            ti: '.SensorPropertyType'
          }, {
            n: 'acquisitionParameters',
            ti: '.AcquisitionPropertyType'
          }]
      }, {
        ln: 'ProcessingInformationPropertyType',
        ps: [{
            n: 'processingInformation',
            rq: true,
            mx: false,
            dom: false,
            en: 'ProcessingInformation',
            ti: '.ProcessingInformationType',
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
        ln: 'WavelengthInformationPropertyType',
        ps: [{
            n: 'wavelengthInformation',
            rq: true,
            en: 'WavelengthInformation',
            ti: '.WavelengthInformationType'
          }, {
            n: 'owns',
            ti: 'Boolean',
            an: {
              lp: 'owns'
            },
            t: 'a'
          }]
      }, {
        ln: 'PlatformPropertyType',
        ps: [{
            n: 'platform',
            rq: true,
            en: 'Platform',
            ti: '.PlatformType'
          }, {
            n: 'owns',
            ti: 'Boolean',
            an: {
              lp: 'owns'
            },
            t: 'a'
          }]
      }, {
        ln: 'MaskInformationPropertyType',
        ps: [{
            n: 'maskInformation',
            rq: true,
            en: 'MaskInformation',
            ti: '.MaskInformationType'
          }, {
            n: 'owns',
            ti: 'Boolean',
            an: {
              lp: 'owns'
            },
            t: 'a'
          }]
      }, {
        ln: 'SensorType',
        ps: [{
            n: 'sensorType'
          }, {
            n: 'operationalMode',
            ti: 'GML_3_2_1.CodeListType'
          }, {
            n: 'resolution',
            ti: 'GML_3_2_1.MeasureType'
          }, {
            n: 'swathIdentifier',
            ti: 'GML_3_2_1.CodeListType'
          }, {
            n: 'wavelengthInformation',
            mno: 0,
            col: true,
            ti: '.WavelengthInformationPropertyType'
          }]
      }, {
        ln: 'MaskInformationType.FileName',
        tn: null,
        ps: [{
            n: 'serviceReference',
            rq: true,
            en: {
              lp: 'ServiceReference',
              ns: 'http:\/\/www.opengis.net\/ows\/2.0'
            },
            ti: 'OWS_2_0.ServiceReferenceType'
          }]
      }, {
        ln: 'BrowseInformationType',
        ps: [{
            n: 'type',
            rq: true
          }, {
            n: 'subType',
            ti: 'GML_3_2_1.CodeListType'
          }, {
            n: 'referenceSystemIdentifier',
            rq: true,
            ti: 'GML_3_2_1.CodeWithAuthorityType'
          }, {
            n: 'fileName',
            rq: true,
            ti: '.BrowseInformationType.FileName'
          }]
      }, {
        ln: 'EarthObservationMetaDataPropertyType',
        ps: [{
            n: 'earthObservationMetaData',
            rq: true,
            mx: false,
            dom: false,
            en: 'EarthObservationMetaData',
            ti: '.EarthObservationMetaDataType',
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
        ln: 'DownlinkInformationPropertyType',
        ps: [{
            n: 'downlinkInformation',
            rq: true,
            en: 'DownlinkInformation',
            ti: '.DownlinkInformationType'
          }, {
            n: 'owns',
            ti: 'Boolean',
            an: {
              lp: 'owns'
            },
            t: 'a'
          }]
      }, {
        ln: 'EarthObservationType',
        bti: 'OM_2_0.OMObservationType',
        ps: [{
            n: 'earthObservationMetaDataProperty',
            rq: true,
            en: 'metaDataProperty',
            ti: '.EarthObservationMetaDataPropertyType'
          }]
      }, {
        ln: 'AcquisitionPropertyType',
        ps: [{
            n: 'acquisition',
            rq: true,
            mx: false,
            dom: false,
            en: 'Acquisition',
            ti: '.AcquisitionType',
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
        ln: 'WavelengthInformationType',
        ps: [{
            n: 'discreteWavelengths',
            ti: 'GML_3_2_1.MeasureListType'
          }, {
            n: 'endWavelength',
            ti: 'GML_3_2_1.MeasureType'
          }, {
            n: 'spectralRange'
          }, {
            n: 'startWavelength',
            ti: 'GML_3_2_1.MeasureType'
          }, {
            n: 'wavelengthResolution',
            ti: 'GML_3_2_1.MeasureType'
          }]
      }, {
        ln: 'FootprintType',
        bti: 'GML_3_2_1.AbstractFeatureType',
        ps: [{
            n: 'multiExtentOf',
            rq: true,
            ti: 'GML_3_2_1.MultiSurfacePropertyType'
          }, {
            n: 'centerOf',
            ti: 'GML_3_2_1.PointPropertyType'
          }, {
            n: 'orientation'
          }]
      }, {
        ln: 'AcquisitionType',
        ps: [{
            n: 'orbitNumber',
            ti: 'Integer'
          }, {
            n: 'lastOrbitNumber',
            ti: 'Integer'
          }, {
            n: 'orbitDirection'
          }, {
            n: 'wrsLongitudeGrid',
            ti: 'GML_3_2_1.CodeWithAuthorityType'
          }, {
            n: 'wrsLatitudeGrid',
            ti: 'GML_3_2_1.CodeWithAuthorityType'
          }, {
            n: 'ascendingNodeDate',
            ti: 'DateTime'
          }, {
            n: 'ascendingNodeLongitude',
            ti: 'GML_3_2_1.MeasureType'
          }, {
            n: 'startTimeFromAscendingNode',
            ti: 'GML_3_2_1.MeasureType'
          }, {
            n: 'completionTimeFromAscendingNode',
            ti: 'GML_3_2_1.MeasureType'
          }, {
            n: 'orbitDuration',
            ti: 'GML_3_2_1.MeasureType'
          }, {
            n: 'illuminationAzimuthAngle',
            ti: 'GML_3_2_1.AngleType'
          }, {
            n: 'illuminationZenithAngle',
            ti: 'GML_3_2_1.AngleType'
          }, {
            n: 'illuminationElevationAngle',
            ti: 'GML_3_2_1.AngleType'
          }, {
            n: 'instrumentAzimuthAngle',
            ti: 'GML_3_2_1.AngleType'
          }, {
            n: 'instrumentZenithAngle',
            ti: 'GML_3_2_1.AngleType'
          }, {
            n: 'instrumentElevationAngle',
            ti: 'GML_3_2_1.AngleType'
          }, {
            n: 'incidenceAngle',
            ti: 'GML_3_2_1.AngleType'
          }, {
            n: 'acrossTrackIncidenceAngle',
            ti: 'GML_3_2_1.AngleType'
          }, {
            n: 'alongTrackIncidenceAngle',
            ti: 'GML_3_2_1.AngleType'
          }, {
            n: 'pitch',
            ti: 'GML_3_2_1.AngleType'
          }, {
            n: 'roll',
            ti: 'GML_3_2_1.AngleType'
          }, {
            n: 'yaw',
            ti: 'GML_3_2_1.AngleType'
          }]
      }, {
        ln: 'ArchivingInformationPropertyType',
        ps: [{
            n: 'archivingInformation',
            rq: true,
            en: 'ArchivingInformation',
            ti: '.ArchivingInformationType'
          }, {
            n: 'owns',
            ti: 'Boolean',
            an: {
              lp: 'owns'
            },
            t: 'a'
          }]
      }, {
        ln: 'InstrumentPropertyType',
        ps: [{
            n: 'instrument',
            rq: true,
            mx: false,
            dom: false,
            en: 'Instrument',
            ti: '.InstrumentType',
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
        ln: 'EarthObservationMetaDataType',
        ps: [{
            n: 'identifier',
            rq: true
          }, {
            n: 'doi'
          }, {
            n: 'parentIdentifier'
          }, {
            n: 'acquisitionType',
            rq: true
          }, {
            n: 'acquisitionSubType',
            ti: 'GML_3_2_1.CodeListType'
          }, {
            n: 'productType'
          }, {
            n: 'status',
            rq: true
          }, {
            n: 'statusDetail'
          }, {
            n: 'downlinkedTo',
            mno: 0,
            col: true,
            ti: '.DownlinkInformationPropertyType'
          }, {
            n: 'archivedIn',
            mno: 0,
            col: true,
            ti: '.ArchivingInformationPropertyType'
          }, {
            n: 'imageQualityDegradation',
            ti: 'GML_3_2_1.MeasureType'
          }, {
            n: 'imageQualityDegradationQuotationMode'
          }, {
            n: 'histograms',
            mno: 0,
            col: true,
            ti: '.HistogramPropertyType'
          }, {
            n: 'composedOf',
            mno: 0,
            col: true,
            ti: '.EarthObservationPropertyType'
          }, {
            n: 'subsetOf',
            mno: 0,
            col: true,
            ti: '.EarthObservationPropertyType'
          }, {
            n: 'linkedWith',
            mno: 0,
            col: true,
            ti: '.EarthObservationPropertyType'
          }, {
            n: 'processing',
            mno: 0,
            col: true,
            ti: '.ProcessingInformationPropertyType'
          }, {
            n: 'vendorSpecific',
            mno: 0,
            col: true,
            ti: '.SpecificInformationPropertyType'
          }]
      }, {
        ln: 'ProductInformationType',
        ps: [{
            n: 'referenceSystemIdentifier',
            ti: 'GML_3_2_1.CodeWithAuthorityType'
          }, {
            n: 'fileName',
            rq: true,
            ti: '.ProductInformationType.FileName'
          }, {
            n: 'version'
          }, {
            n: 'size',
            ti: 'GML_3_2_1.MeasureListType'
          }]
      }, {
        t: 'enum',
        ln: 'MaskTypeValueEnumerationType',
        vs: ['QUALITY', 'CLOUD', 'SNOW']
      }, {
        t: 'enum',
        ln: 'SpectralRangeValueEnumerationType',
        vs: ['OTHER', 'VISIBLE', 'UV', 'INFRARED', 'NEAR-INFRARED']
      }, {
        t: 'enum',
        ln: 'AcquisitionTypeValueType',
        vs: ['OTHER', 'CALIBRATION', 'NOMINAL']
      }, {
        t: 'enum',
        ln: 'ProcessingLevelValueEnumerationType',
        vs: ['3', '2', '1A', '1B']
      }, {
        t: 'enum',
        ln: 'CompositeTypeValueType',
        vs: ['MONTHLY', 'DAILY', 'WEEKLY']
      }, {
        t: 'enum',
        ln: 'StatusValueEnumerationType',
        vs: ['REJECTED', 'QUALITYDEGRADED', 'POTENTIAL', 'PLANNED', 'FAILED', 'CANCELLED', 'ACQUIRED', 'ARCHIVED']
      }, {
        t: 'enum',
        ln: 'DegradationQuotationModeValueEnumerationType',
        vs: ['AUTOMATIC', 'MANUAL']
      }, {
        t: 'enum',
        ln: 'FormatValueEnumerationType',
        vs: ['RASTER', 'VECTOR']
      }, {
        t: 'enum',
        ln: 'OrbitDirectionValueType',
        vs: ['ASCENDING', 'DESCENDING']
      }, {
        t: 'enum',
        ln: 'SensorTypeValueEnumerationType',
        vs: ['LIMB', 'RADAR', 'OPTICAL', 'ALTIMETRIC', 'ATMOSPHERIC']
      }, {
        t: 'enum',
        ln: 'PolygonOrientationValueType',
        vs: ['OTHER', 'CW', 'CCW']
      }, {
        t: 'enum',
        ln: 'ProcessingModeValueType',
        vs: ['DATA_DRIVEN_PER_ACQUISITION', 'DATA_DRIVEN_DAILY', 'OFFLINE', 'OTHER', 'MULTI_MISSION']
      }, {
        t: 'enum',
        ln: 'OrbitTypeValueType',
        vs: ['LEO', 'GEO']
      }, {
        t: 'enum',
        ln: 'BrowseTypeValueEnumerationType',
        vs: ['ALBUM', 'QUICKLOOK', 'THUMBNAIL']
      }],
    eis: [{
        en: 'Footprint',
        ti: '.FootprintType',
        sh: {
          lp: 'AbstractFeature',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'SpecificInformation',
        ti: '.SpecificInformationType',
        sh: {
          lp: 'AbstractObject',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'EarthObservationEquipment',
        ti: '.EarthObservationEquipmentType',
        sh: {
          lp: 'AbstractFeature',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'WavelengthInformation',
        ti: '.WavelengthInformationType',
        sh: {
          lp: 'AbstractObject',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'ProductInformation',
        ti: '.ProductInformationType',
        sh: {
          lp: 'AbstractObject',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'Platform',
        ti: '.PlatformType',
        sh: {
          lp: 'AbstractObject',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'Sensor',
        ti: '.SensorType',
        sh: {
          lp: 'AbstractObject',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'BrowseInformation',
        ti: '.BrowseInformationType',
        sh: {
          lp: 'AbstractObject',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'MaskInformation',
        ti: '.MaskInformationType',
        sh: {
          lp: 'AbstractObject',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'DownlinkInformation',
        ti: '.DownlinkInformationType',
        sh: {
          lp: 'AbstractObject',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'EarthObservation',
        ti: '.EarthObservationType',
        sh: {
          lp: 'OM_Observation',
          ns: 'http:\/\/www.opengis.net\/om\/2.0'
        }
      }, {
        en: 'EarthObservationResult',
        ti: '.EarthObservationResultType',
        sh: {
          lp: 'AbstractFeature',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'EarthObservationMetaData',
        ti: '.EarthObservationMetaDataType',
        sh: {
          lp: 'AbstractObject',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'Instrument',
        ti: '.InstrumentType',
        sh: {
          lp: 'AbstractObject',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'ProcessingInformation',
        ti: '.ProcessingInformationType',
        sh: {
          lp: 'AbstractObject',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'Acquisition',
        ti: '.AcquisitionType',
        sh: {
          lp: 'AbstractObject',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'ArchivingInformation',
        ti: '.ArchivingInformationType',
        sh: {
          lp: 'AbstractObject',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'ParameterInformation',
        ti: '.ParameterInformationType',
        sh: {
          lp: 'AbstractObject',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'Histogram',
        ti: '.HistogramType',
        sh: {
          lp: 'AbstractObject',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }]
  };
  return {
    OMEO_EOP_2_0: OMEO_EOP_2_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], OMEO_EOP_2_0_Module_Factory);
}
else {
  var OMEO_EOP_2_0_Module = OMEO_EOP_2_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.OMEO_EOP_2_0 = OMEO_EOP_2_0_Module.OMEO_EOP_2_0;
  }
  else {
    var OMEO_EOP_2_0 = OMEO_EOP_2_0_Module.OMEO_EOP_2_0;
  }
}