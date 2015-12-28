var EOP_1_0_Module_Factory = function () {
  var EOP_1_0 = {
    n: 'EOP_1_0',
    dens: 'http:\/\/earth.esa.int\/eop',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['GML_3_1_1', 'XLink_1_0'],
    tis: [{
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
        ln: 'SensorPropertyType',
        ps: [{
            n: 'sensor',
            rq: true,
            en: 'Sensor',
            ti: '.SensorType'
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
        ln: 'SpecificInformationArrayPropertyType',
        ps: [{
            n: 'specificInformation',
            rq: true,
            col: true,
            en: 'SpecificInformation',
            ti: '.SpecificInformationType'
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
        ln: 'InstrumentType',
        ps: [{
            n: 'shortName',
            rq: true
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
        ln: 'HistogramArrayPropertyType',
        ps: [{
            n: 'histogram',
            rq: true,
            col: true,
            en: 'Histogram',
            ti: '.HistogramType'
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
        ln: 'MaskInformationArrayPropertyType',
        ps: [{
            n: 'maskInformation',
            rq: true,
            col: true,
            en: 'MaskInformation',
            ti: '.MaskInformationType'
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
        ln: 'BrowseInformationArrayPropertyType',
        ps: [{
            n: 'browseInformation',
            rq: true,
            col: true,
            en: 'BrowseInformation',
            ti: '.BrowseInformationType'
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
        ln: 'ProductInformationArrayPropertyType',
        ps: [{
            n: 'productInformation',
            rq: true,
            col: true,
            en: 'ProductInformation',
            ti: '.ProductInformationType'
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
        ln: 'ProcessingInformationPropertyType',
        ps: [{
            n: 'processingInformation',
            rq: true,
            en: 'ProcessingInformation',
            ti: '.ProcessingInformationType'
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
        ln: 'SpecificInformationType',
        ps: [{
            n: 'localAttribute',
            rq: true
          }, {
            n: 'localValue',
            rq: true
          }]
      }, {
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
        ln: 'ArchivingInformationArrayPropertyType',
        ps: [{
            n: 'archivingInformation',
            rq: true,
            col: true,
            en: 'ArchivingInformation',
            ti: '.ArchivingInformationType'
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
        ln: 'EarthObservationMetaDataType',
        bti: 'GML_3_1_1.AbstractMetaDataType',
        ps: [{
            n: 'contentOverrideForEarthObservationMetaDataType',
            dom: false,
            etis: [{
                en: 'imageQualityDegradationQuotationMode'
              }, {
                en: 'subsetOf',
                ti: '.EarthObservationPropertyType'
              }, {
                en: 'productType'
              }, {
                en: 'status'
              }, {
                en: 'imageQualityDegradation',
                ti: 'GML_3_1_1.MeasureType'
              }, {
                en: 'archivedIn',
                ti: '.ArchivingInformationArrayPropertyType'
              }, {
                en: 'acquisitionType'
              }, {
                en: 'identifier'
              }, {
                en: 'doi'
              }, {
                en: 'parentIdentifier'
              }, {
                en: 'processing',
                ti: '.ProcessingInformationPropertyType'
              }, {
                en: 'linkedWith',
                ti: '.EarthObservationPropertyType'
              }, {
                en: 'acquisitionSubType',
                ti: 'GML_3_1_1.CodeListType'
              }, {
                en: 'histograms',
                ti: '.HistogramArrayPropertyType'
              }, {
                en: 'vendorSpecific',
                ti: '.SpecificInformationArrayPropertyType'
              }, {
                en: 'composedOf',
                ti: '.EarthObservationPropertyType'
              }, {
                en: 'downlinkedTo',
                ti: '.DownlinkInformationArrayPropertyType'
              }],
            t: 'ers'
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
        ln: 'MaskMembersPropertyType',
        ps: [{
            n: 'maskFeature',
            mno: 0,
            col: true,
            en: 'MaskFeature',
            ti: '.MaskFeatureType'
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
        t: 'enum',
        ln: 'SensorTypePropertyType',
        vs: ['ALTIMETRIC', 'ATMOSPHERIC', 'OPTICAL', 'RADAR']
      }],
    eis: [{
        en: 'processing',
        ti: '.ProcessingInformationPropertyType',
        sc: '.EarthObservationMetaDataType'
      }, {
        en: 'EarthObservationEquipment',
        ti: '.EarthObservationEquipmentType',
        sh: {
          lp: '_Feature',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'histograms',
        ti: '.HistogramArrayPropertyType'
      }, {
        en: 'EarthObservationResult',
        ti: '.EarthObservationResultType',
        sh: {
          lp: '_Feature',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'Mask',
        ti: '.MaskType',
        sh: {
          lp: '_Feature',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'EarthObservationMetaData',
        ti: '.EarthObservationMetaDataType',
        sh: {
          lp: '_MetaData',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'imageQualityDegradation',
        ti: 'GML_3_1_1.MeasureType'
      }, {
        en: 'parentIdentifier'
      }, {
        en: 'SpecificInformation',
        ti: '.SpecificInformationType'
      }, {
        en: 'ArchivingInformation',
        ti: '.ArchivingInformationType'
      }, {
        en: 'statusDetail'
      }, {
        en: 'status'
      }, {
        en: 'Acquisition',
        ti: '.AcquisitionType'
      }, {
        en: 'maskMembers',
        ti: '.MaskMembersPropertyType'
      }, {
        en: 'archivedIn',
        ti: '.ArchivingInformationArrayPropertyType',
        sc: '.EarthObservationMetaDataType'
      }, {
        en: 'BrowseInformation',
        ti: '.BrowseInformationType'
      }, {
        en: 'ProcessingInformation',
        ti: '.ProcessingInformationType'
      }, {
        en: 'Sensor',
        ti: '.SensorType'
      }, {
        en: 'Footprint',
        ti: '.FootprintType',
        sh: {
          lp: '_Feature',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'acquisitionSubType',
        ti: 'GML_3_1_1.CodeListType'
      }, {
        en: 'productType'
      }, {
        en: 'DownlinkInformation',
        ti: '.DownlinkInformationType'
      }, {
        en: 'MaskInformation',
        ti: '.MaskInformationType'
      }, {
        en: 'Instrument',
        ti: '.InstrumentType'
      }, {
        en: 'subsetOf',
        ti: '.EarthObservationPropertyType'
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
        en: 'MaskFeature',
        ti: '.MaskFeatureType',
        sh: {
          lp: '_Feature',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'linkedWith',
        ti: '.EarthObservationPropertyType'
      }, {
        en: 'identifier'
      }, {
        en: 'vendorSpecific',
        ti: '.SpecificInformationArrayPropertyType',
        sc: '.EarthObservationMetaDataType'
      }, {
        en: 'doi'
      }, {
        en: 'imageQualityDegradationQuotationMode'
      }, {
        en: 'Platform',
        ti: '.PlatformType'
      }, {
        en: 'Histogram',
        ti: '.HistogramType',
        sh: {
          lp: '_Object',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'downlinkedTo',
        ti: '.DownlinkInformationArrayPropertyType',
        sc: '.EarthObservationMetaDataType'
      }, {
        en: 'composedOf',
        ti: '.EarthObservationPropertyType'
      }, {
        en: 'ProductInformation',
        ti: '.ProductInformationType'
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