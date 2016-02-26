var EOP_1_0_Module_Factory = function () {
  var EOP_1_0 = {
    n: 'EOP_1_0',
    dens: 'http:\/\/earth.esa.int\/eop',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['GML_3_1_1', 'XLink_1_0'],
    tis: [{
        ln: 'HistogramArrayPropertyType',
        ps: [{
            n: 'histogram',
            rq: true,
            col: true,
            en: 'Histogram',
            ti: '.HistogramType'
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
        ln: 'MaskType',
        bti: 'GML_3_1_1.AbstractFeatureType',
        ps: [{
            n: 'maskMembers',
            rq: true,
            ti: '.MaskMembersPropertyType'
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
        ln: 'SensorPropertyType',
        ps: [{
            n: 'sensor',
            rq: true,
            en: 'Sensor',
            ti: '.SensorType'
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
        ln: 'ProductInformationArrayPropertyType',
        ps: [{
            n: 'productInformation',
            rq: true,
            col: true,
            en: 'ProductInformation',
            ti: '.ProductInformationType'
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
        ln: 'DownlinkInformationArrayPropertyType',
        ps: [{
            n: 'downlinkInformation',
            rq: true,
            col: true,
            en: 'DownlinkInformation',
            ti: '.DownlinkInformationType'
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
        ln: 'EarthObservationMetaDataType',
        bti: 'GML_3_1_1.AbstractMetaDataType',
        ps: [{
            n: 'contentOverrideForEarthObservationMetaDataType',
            dom: false,
            etis: [{
                en: 'vendorSpecific',
                ti: '.SpecificInformationArrayPropertyType'
              }, {
                en: 'status'
              }, {
                en: 'imageQualityDegradation',
                ti: 'GML_3_1_1.MeasureType'
              }, {
                en: 'histograms',
                ti: '.HistogramArrayPropertyType'
              }, {
                en: 'parentIdentifier'
              }, {
                en: 'productType'
              }, {
                en: 'subsetOf',
                ti: '.EarthObservationPropertyType'
              }, {
                en: 'linkedWith',
                ti: '.EarthObservationPropertyType'
              }, {
                en: 'downlinkedTo',
                ti: '.DownlinkInformationArrayPropertyType'
              }, {
                en: 'acquisitionType'
              }, {
                en: 'processing',
                ti: '.ProcessingInformationPropertyType'
              }, {
                en: 'doi'
              }, {
                en: 'composedOf',
                ti: '.EarthObservationPropertyType'
              }, {
                en: 'archivedIn',
                ti: '.ArchivingInformationArrayPropertyType'
              }, {
                en: 'acquisitionSubType',
                ti: 'GML_3_1_1.CodeListType'
              }, {
                en: 'identifier'
              }, {
                en: 'imageQualityDegradationQuotationMode'
              }],
            t: 'ers'
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
        ln: 'InstrumentType',
        ps: [{
            n: 'shortName',
            rq: true
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
        ln: 'EarthObservationEquipmentPropertyType',
        ps: [{
            n: 'earthObservationEquipment',
            rq: true,
            en: 'EarthObservationEquipment',
            ti: '.EarthObservationEquipmentType'
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
        ln: 'MaskInformationArrayPropertyType',
        ps: [{
            n: 'maskInformation',
            rq: true,
            col: true,
            en: 'MaskInformation',
            ti: '.MaskInformationType'
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
        ln: 'ProcessingInformationPropertyType',
        ps: [{
            n: 'processingInformation',
            rq: true,
            en: 'ProcessingInformation',
            ti: '.ProcessingInformationType'
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
        ln: 'InstrumentPropertyType',
        ps: [{
            n: 'instrument',
            rq: true,
            en: 'Instrument',
            ti: '.InstrumentType'
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
        t: 'enum',
        ln: 'SensorTypePropertyType',
        vs: ['ALTIMETRIC', 'ATMOSPHERIC', 'OPTICAL', 'RADAR']
      }],
    eis: [{
        en: 'ArchivingInformation',
        ti: '.ArchivingInformationType'
      }, {
        en: 'processing',
        ti: '.ProcessingInformationPropertyType',
        sc: '.EarthObservationMetaDataType'
      }, {
        en: 'EarthObservationMetaData',
        ti: '.EarthObservationMetaDataType',
        sh: {
          lp: '_MetaData',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'EarthObservationEquipment',
        ti: '.EarthObservationEquipmentType',
        sh: {
          lp: '_Feature',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'SpecificInformation',
        ti: '.SpecificInformationType'
      }, {
        en: 'acquisitionType'
      }, {
        en: 'acquisitionSubType',
        ti: 'GML_3_1_1.CodeListType'
      }, {
        en: 'ProductInformation',
        ti: '.ProductInformationType'
      }, {
        en: 'ProcessingInformation',
        ti: '.ProcessingInformationType'
      }, {
        en: 'imageQualityDegradation',
        ti: 'GML_3_1_1.MeasureType'
      }, {
        en: 'linkedWith',
        ti: '.EarthObservationPropertyType'
      }, {
        en: 'EarthObservation',
        ti: '.EarthObservationType',
        sh: {
          lp: 'Observation',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'subsetOf',
        ti: '.EarthObservationPropertyType'
      }, {
        en: 'composedOf',
        ti: '.EarthObservationPropertyType'
      }, {
        en: 'BrowseInformation',
        ti: '.BrowseInformationType'
      }, {
        en: 'parentIdentifier'
      }, {
        en: 'Acquisition',
        ti: '.AcquisitionType'
      }, {
        en: 'histograms',
        ti: '.HistogramArrayPropertyType'
      }, {
        en: 'downlinkedTo',
        ti: '.DownlinkInformationArrayPropertyType',
        sc: '.EarthObservationMetaDataType'
      }, {
        en: 'productType'
      }, {
        en: 'statusDetail'
      }, {
        en: 'Histogram',
        ti: '.HistogramType',
        sh: {
          lp: '_Object',
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
        en: 'vendorSpecific',
        ti: '.SpecificInformationArrayPropertyType',
        sc: '.EarthObservationMetaDataType'
      }, {
        en: 'Sensor',
        ti: '.SensorType'
      }, {
        en: 'doi'
      }, {
        en: 'Instrument',
        ti: '.InstrumentType'
      }, {
        en: 'Platform',
        ti: '.PlatformType'
      }, {
        en: 'status'
      }, {
        en: 'identifier'
      }, {
        en: 'archivedIn',
        ti: '.ArchivingInformationArrayPropertyType',
        sc: '.EarthObservationMetaDataType'
      }, {
        en: 'EarthObservationResult',
        ti: '.EarthObservationResultType',
        sh: {
          lp: '_Feature',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'MaskInformation',
        ti: '.MaskInformationType'
      }, {
        en: 'imageQualityDegradationQuotationMode'
      }, {
        en: 'maskMembers',
        ti: '.MaskMembersPropertyType'
      }, {
        en: 'DownlinkInformation',
        ti: '.DownlinkInformationType'
      }, {
        en: 'Footprint',
        ti: '.FootprintType',
        sh: {
          lp: '_Feature',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'MaskFeature',
        ti: '.MaskFeatureType',
        sh: {
          lp: '_Feature',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
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