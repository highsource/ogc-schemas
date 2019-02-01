var EOP_1_0_Module_Factory = function () {
  var EOP_1_0 = {
    n: 'EOP_1_0',
    dens: 'http:\/\/earth.esa.int\/eop',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['GML_3_1_1', 'XLink_1_0'],
    tis: [{
        ln: 'AcquisitionType.WrsLatitudeGrid',
        tn: null,
        ps: [{
            n: 'value',
            ti: 'AnySimpleType',
            t: 'v'
          }, {
            n: 'codeSpace',
            an: {
              lp: 'codeSpace'
            },
            t: 'a'
          }]
      }, {
        ln: 'ProductInformationArrayPropertyType',
        ps: [{
            n: 'productInformation',
            rq: true,
            col: true,
            en: 'ProductInformation',
            ti: '.ProductInformationType'
          }]
      }, {
        ln: 'ArchivingInformationType',
        ps: [{
            n: 'archivingCenter',
            rq: true,
            ti: 'GML_3_1_1.CodeListType'
          }, {
            n: 'archivingDate',
            rq: true,
            ti: 'DateTime'
          }, {
            n: 'archivingIdentifier',
            ti: '.CodeWithAuthorityType'
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
        ln: 'ProcessingInformationPropertyType',
        ps: [{
            n: 'processingInformation',
            rq: true,
            en: 'ProcessingInformation',
            ti: '.ProcessingInformationType'
          }]
      }, {
        ln: 'EarthObservationResultType',
        bti: 'GML_3_1_1.AbstractFeatureType',
        ps: [{
            n: 'browse',
            ti: '.BrowseInformationArrayPropertyType'
          }, {
            n: 'product',
            ti: '.ProductInformationArrayPropertyType'
          }, {
            n: 'mask',
            ti: '.MaskInformationArrayPropertyType'
          }]
      }, {
        ln: 'InstrumentPropertyType',
        ps: [{
            n: 'instrument',
            rq: true,
            en: 'Instrument',
            ti: '.InstrumentType'
          }]
      }, {
        ln: 'ProcessingInformationType',
        ps: [{
            n: 'processingCenter',
            ti: 'GML_3_1_1.CodeListType'
          }, {
            n: 'processingDate',
            ti: 'DateTime'
          }, {
            n: 'compositeType'
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
          }]
      }, {
        ln: 'ArchivingInformationArrayPropertyType',
        ps: [{
            n: 'archivingInformation',
            rq: true,
            col: true,
            en: 'ArchivingInformation',
            ti: '.ArchivingInformationType'
          }]
      }, {
        ln: 'BrowseInformationType',
        ps: [{
            n: 'type',
            rq: true
          }, {
            n: 'subType',
            ti: 'GML_3_1_1.CodeListType'
          }, {
            n: 'referenceSystemIdentifier',
            rq: true,
            ti: '.CodeWithAuthorityType'
          }, {
            n: 'fileName',
            rq: true
          }]
      }, {
        ln: 'SensorType',
        ps: [{
            n: 'sensorType'
          }, {
            n: 'operationalMode',
            ti: 'GML_3_1_1.CodeListType'
          }, {
            n: 'resolution',
            ti: 'GML_3_1_1.MeasureType'
          }, {
            n: 'swathIdentifier',
            ti: 'GML_3_1_1.CodeListType'
          }]
      }, {
        ln: 'FootprintType',
        bti: 'GML_3_1_1.AbstractFeatureType',
        ps: [{
            n: 'multiExtentOf',
            rq: true,
            en: {
              lp: 'multiExtentOf',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.MultiSurfacePropertyType'
          }, {
            n: 'centerOf',
            en: {
              lp: 'centerOf',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.PointPropertyType'
          }]
      }, {
        ln: 'EarthObservationEquipmentType',
        bti: 'GML_3_1_1.AbstractFeatureType',
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
        ln: 'InstrumentType',
        ps: [{
            n: 'shortName',
            rq: true
          }]
      }, {
        ln: 'HistogramType',
        ps: [{
            n: 'bandId'
          }, {
            n: 'min',
            rq: true,
            ti: 'Int'
          }, {
            n: 'max',
            rq: true,
            ti: 'Int'
          }, {
            n: 'mean',
            ti: 'Double'
          }, {
            n: 'stdDeviation',
            ti: 'Double'
          }]
      }, {
        ln: 'SensorPropertyType',
        ps: [{
            n: 'sensor',
            rq: true,
            en: 'Sensor',
            ti: '.SensorType'
          }]
      }, {
        ln: 'EarthObservationPropertyType',
        ps: [{
            n: 'earthObservation',
            mx: false,
            dom: false,
            en: 'EarthObservation',
            ti: '.EarthObservationType',
            t: 'er'
          }, {
            n: 'remoteSchema',
            an: {
              lp: 'remoteSchema',
              ns: 'http:\/\/www.opengis.net\/gml'
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
        ln: 'AcquisitionType',
        ps: [{
            n: 'orbitNumber',
            ti: 'Int'
          }, {
            n: 'lastOrbitNumber',
            ti: 'Int'
          }, {
            n: 'orbitDirection'
          }, {
            n: 'wrsLongitudeGrid',
            ti: '.AcquisitionType.WrsLongitudeGrid'
          }, {
            n: 'wrsLatitudeGrid',
            ti: '.AcquisitionType.WrsLatitudeGrid'
          }, {
            n: 'ascendingNodeDate',
            ti: 'DateTime'
          }, {
            n: 'ascendingNodeLongitude',
            ti: 'GML_3_1_1.MeasureType'
          }, {
            n: 'startTimeFromAscendingNode',
            ti: 'GML_3_1_1.MeasureType'
          }, {
            n: 'completionTimeFromAscendingNode',
            ti: 'GML_3_1_1.MeasureType'
          }, {
            n: 'orbitDuration',
            ti: 'GML_3_1_1.MeasureType'
          }, {
            n: 'acrossTrackIncidenceAngle',
            ti: 'GML_3_1_1.AngleType'
          }, {
            n: 'alongTrackIncidenceAngle',
            ti: 'GML_3_1_1.AngleType'
          }, {
            n: 'incidenceAngle',
            ti: 'GML_3_1_1.AngleType'
          }, {
            n: 'pitch',
            ti: 'GML_3_1_1.AngleType'
          }, {
            n: 'roll',
            ti: 'GML_3_1_1.AngleType'
          }, {
            n: 'yaw',
            ti: 'GML_3_1_1.AngleType'
          }]
      }, {
        ln: 'EarthObservationMetaDataType',
        bti: 'GML_3_1_1.AbstractMetaDataType',
        ps: [{
            n: 'contentOverrideForEarthObservationMetaDataType',
            dom: false,
            etis: [{
                en: 'acquisitionSubType',
                ti: 'GML_3_1_1.CodeListType'
              }, {
                en: 'status'
              }, {
                en: 'productType'
              }, {
                en: 'composedOf',
                ti: '.EarthObservationPropertyType'
              }, {
                en: 'histograms',
                ti: '.HistogramArrayPropertyType'
              }, {
                en: 'imageQualityDegradation',
                ti: 'GML_3_1_1.MeasureType'
              }, {
                en: 'doi'
              }, {
                en: 'acquisitionType'
              }, {
                en: 'parentIdentifier'
              }, {
                en: 'vendorSpecific',
                ti: '.SpecificInformationArrayPropertyType'
              }, {
                en: 'processing',
                ti: '.ProcessingInformationPropertyType'
              }, {
                en: 'identifier'
              }, {
                en: 'linkedWith',
                ti: '.EarthObservationPropertyType'
              }, {
                en: 'downlinkedTo',
                ti: '.DownlinkInformationArrayPropertyType'
              }, {
                en: 'archivedIn',
                ti: '.ArchivingInformationArrayPropertyType'
              }, {
                en: 'imageQualityDegradationQuotationMode'
              }, {
                en: 'subsetOf',
                ti: '.EarthObservationPropertyType'
              }],
            t: 'ers'
          }]
      }, {
        ln: 'EarthObservationType',
        bti: 'GML_3_1_1.ObservationType',
        ps: [{
            n: 'version',
            rq: true,
            an: {
              lp: 'version'
            },
            t: 'a'
          }]
      }, {
        ln: 'BrowseInformationArrayPropertyType',
        ps: [{
            n: 'browseInformation',
            rq: true,
            col: true,
            en: 'BrowseInformation',
            ti: '.BrowseInformationType'
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
          }]
      }, {
        ln: 'MaskType',
        bti: 'GML_3_1_1.AbstractFeatureType',
        ps: [{
            n: 'maskMembers',
            rq: true,
            ti: '.MaskMembersPropertyType'
          }]
      }, {
        ln: 'CodeWithAuthorityType',
        ps: [{
            n: 'value',
            t: 'v'
          }, {
            n: 'codeSpace',
            rq: true,
            an: {
              lp: 'codeSpace'
            },
            t: 'a'
          }]
      }, {
        ln: 'MaskFeatureType',
        bti: 'GML_3_1_1.AbstractFeatureType',
        ps: [{
            n: 'maskType',
            rq: true,
            ti: '.CodeWithAuthorityType'
          }, {
            n: 'extentOf',
            rq: true,
            en: {
              lp: 'extentOf',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.SurfacePropertyType'
          }]
      }, {
        ln: 'DownlinkInformationType',
        ps: [{
            n: 'acquisitionStation',
            rq: true,
            ti: 'GML_3_1_1.CodeListType'
          }, {
            n: 'acquisitionDate',
            ti: 'DateTime'
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
            ti: '.CodeWithAuthorityType'
          }, {
            n: 'fileName',
            rq: true
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
        ln: 'SpecificInformationArrayPropertyType',
        ps: [{
            n: 'specificInformation',
            rq: true,
            col: true,
            en: 'SpecificInformation',
            ti: '.SpecificInformationType'
          }]
      }, {
        ln: 'AcquisitionType.WrsLongitudeGrid',
        tn: null,
        ps: [{
            n: 'value',
            ti: 'AnySimpleType',
            t: 'v'
          }, {
            n: 'codeSpace',
            an: {
              lp: 'codeSpace'
            },
            t: 'a'
          }]
      }, {
        ln: 'HistogramArrayPropertyType',
        ps: [{
            n: 'histogram',
            rq: true,
            col: true,
            en: 'Histogram',
            ti: '.HistogramType'
          }]
      }, {
        ln: 'ProductInformationType',
        ps: [{
            n: 'referenceSystemIdentifier',
            ti: '.CodeWithAuthorityType'
          }, {
            n: 'fileName',
            rq: true
          }, {
            n: 'version'
          }, {
            n: 'size',
            ti: 'GML_3_1_1.MeasureListType'
          }]
      }, {
        ln: 'MaskInformationArrayPropertyType',
        ps: [{
            n: 'maskInformation',
            rq: true,
            col: true,
            en: 'MaskInformation',
            ti: '.MaskInformationType'
          }]
      }, {
        ln: 'MaskMembersPropertyType',
        ps: [{
            n: 'maskFeature',
            mno: 0,
            col: true,
            en: 'MaskFeature',
            ti: '.MaskFeatureType'
          }]
      }, {
        ln: 'PlatformPropertyType',
        ps: [{
            n: 'platform',
            rq: true,
            en: 'Platform',
            ti: '.PlatformType'
          }]
      }, {
        ln: 'DownlinkInformationArrayPropertyType',
        ps: [{
            n: 'downlinkInformation',
            rq: true,
            col: true,
            en: 'DownlinkInformation',
            ti: '.DownlinkInformationType'
          }]
      }, {
        ln: 'EarthObservationEquipmentPropertyType',
        ps: [{
            n: 'earthObservationEquipment',
            rq: true,
            en: 'EarthObservationEquipment',
            ti: '.EarthObservationEquipmentType'
          }]
      }, {
        t: 'enum',
        ln: 'SensorTypePropertyType',
        vs: ['ALTIMETRIC', 'ATMOSPHERIC', 'OPTICAL', 'RADAR']
      }],
    eis: [{
        en: 'ArchivingInformation',
        ti: '.ArchivingInformationType'
      }, {
        en: 'imageQualityDegradationQuotationMode'
      }, {
        en: 'Sensor',
        ti: '.SensorType'
      }, {
        en: 'archivedIn',
        ti: '.ArchivingInformationArrayPropertyType',
        sc: '.EarthObservationMetaDataType'
      }, {
        en: 'Instrument',
        ti: '.InstrumentType'
      }, {
        en: 'imageQualityDegradation',
        ti: 'GML_3_1_1.MeasureType'
      }, {
        en: 'acquisitionSubType',
        ti: 'GML_3_1_1.CodeListType'
      }, {
        en: 'SpecificInformation',
        ti: '.SpecificInformationType'
      }, {
        en: 'acquisitionType'
      }, {
        en: 'EarthObservation',
        ti: '.EarthObservationType',
        sh: {
          lp: 'Observation',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'DownlinkInformation',
        ti: '.DownlinkInformationType'
      }, {
        en: 'doi'
      }, {
        en: 'composedOf',
        ti: '.EarthObservationPropertyType'
      }, {
        en: 'Footprint',
        ti: '.FootprintType',
        sh: {
          lp: '_Feature',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'histograms',
        ti: '.HistogramArrayPropertyType'
      }, {
        en: 'ProductInformation',
        ti: '.ProductInformationType'
      }, {
        en: 'Mask',
        ti: '.MaskType',
        sh: {
          lp: '_Feature',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'subsetOf',
        ti: '.EarthObservationPropertyType'
      }, {
        en: 'productType'
      }, {
        en: 'EarthObservationMetaData',
        ti: '.EarthObservationMetaDataType',
        sh: {
          lp: '_MetaData',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'downlinkedTo',
        ti: '.DownlinkInformationArrayPropertyType',
        sc: '.EarthObservationMetaDataType'
      }, {
        en: 'processing',
        ti: '.ProcessingInformationPropertyType',
        sc: '.EarthObservationMetaDataType'
      }, {
        en: 'Acquisition',
        ti: '.AcquisitionType'
      }, {
        en: 'MaskInformation',
        ti: '.MaskInformationType'
      }, {
        en: 'identifier'
      }, {
        en: 'Histogram',
        ti: '.HistogramType',
        sh: {
          lp: '_Object',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'MaskFeature',
        ti: '.MaskFeatureType',
        sh: {
          lp: '_Feature',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'statusDetail'
      }, {
        en: 'linkedWith',
        ti: '.EarthObservationPropertyType'
      }, {
        en: 'BrowseInformation',
        ti: '.BrowseInformationType'
      }, {
        en: 'EarthObservationResult',
        ti: '.EarthObservationResultType',
        sh: {
          lp: '_Feature',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'status'
      }, {
        en: 'vendorSpecific',
        ti: '.SpecificInformationArrayPropertyType',
        sc: '.EarthObservationMetaDataType'
      }, {
        en: 'ProcessingInformation',
        ti: '.ProcessingInformationType'
      }, {
        en: 'parentIdentifier'
      }, {
        en: 'EarthObservationEquipment',
        ti: '.EarthObservationEquipmentType',
        sh: {
          lp: '_Feature',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'maskMembers',
        ti: '.MaskMembersPropertyType'
      }, {
        en: 'Platform',
        ti: '.PlatformType'
      }]
  };
  return {
    EOP_1_0: EOP_1_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], EOP_1_0_Module_Factory);
}
else {
  var EOP_1_0_Module = EOP_1_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.EOP_1_0 = EOP_1_0_Module.EOP_1_0;
  }
  else {
    var EOP_1_0 = EOP_1_0_Module.EOP_1_0;
  }
}