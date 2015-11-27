var OMEO_ALT_2_0_Module_Factory = function () {
  var OMEO_ALT_2_0 = {
    n: 'OMEO_ALT_2_0',
    dens: 'http:\/\/www.opengis.net\/alt\/2.0',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['XLink_1_0', 'GML_3_2_1', 'OMEO_EOP_2_0'],
    tis: [{
        ln: 'AuxiliaryInstrumentType',
        bti: 'OMEO_EOP_2_0.InstrumentType',
        ps: [{
            n: 'rest',
            rq: true,
            mxo: 1,
            col: true,
            mx: false,
            dom: false,
            en: 'instrumentType',
            t: 'er'
          }]
      }, {
        ln: 'ProcessingInformationType',
        bti: 'OMEO_EOP_2_0.ProcessingInformationType',
        ps: [{
            n: 'groundTrackUncertainty',
            ti: 'GML_3_2_1.MeasureType'
          }, {
            n: 'productContentsType',
            mno: 0,
            col: true
          }, {
            n: 'samplingRate',
            mno: 0,
            col: true,
            ti: 'GML_3_2_1.MeasureType'
          }]
      }, {
        ln: 'EarthObservationMetaDataType',
        bti: 'OMEO_EOP_2_0.EarthObservationMetaDataType',
        ps: [{
            n: 'rest',
            mno: 0,
            col: true,
            mx: false,
            dom: false,
            en: 'processing',
            ti: 'OMEO_EOP_2_0.ProcessingInformationPropertyType',
            t: 'er'
          }]
      }, {
        ln: 'EarthObservationPropertyType',
        ps: [{
            n: 'earthObservation',
            rq: true,
            en: 'EarthObservation',
            ti: '.EarthObservationType'
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
        ln: 'AuxiliaryInstrumentPropertyType',
        ps: [{
            n: 'auxiliaryInstrument',
            rq: true,
            en: 'AuxiliaryInstrument',
            ti: '.AuxiliaryInstrumentType'
          }, {
            n: 'owns',
            ti: 'Boolean',
            an: {
              lp: 'owns'
            },
            t: 'a'
          }]
      }, {
        ln: 'EarthObservationMetaDataPropertyType',
        ps: [{
            n: 'earthObservationMetaData',
            rq: true,
            en: 'EarthObservationMetaData',
            ti: '.EarthObservationMetaDataType'
          }, {
            n: 'owns',
            ti: 'Boolean',
            an: {
              lp: 'owns'
            },
            t: 'a'
          }]
      }, {
        ln: 'AcquisitionType',
        bti: 'OMEO_EOP_2_0.AcquisitionType',
        ps: [{
            n: 'cycleNumber',
            ti: 'Integer'
          }, {
            n: 'isSegment',
            ti: 'Boolean'
          }, {
            n: 'relativePassNumber',
            ti: 'Integer'
          }]
      }, {
        ln: 'EarthObservationType',
        bti: 'OMEO_EOP_2_0.EarthObservationType'
      }, {
        ln: 'AcquisitionPropertyType',
        ps: [{
            n: 'acquisition',
            rq: true,
            en: 'Acquisition',
            ti: '.AcquisitionType'
          }, {
            n: 'owns',
            ti: 'Boolean',
            an: {
              lp: 'owns'
            },
            t: 'a'
          }]
      }, {
        ln: 'FootprintPropertyType',
        ps: [{
            n: 'footprint',
            rq: true,
            en: 'Footprint',
            ti: '.FootprintType'
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
        ln: 'ProcessingInformationPropertyType',
        ps: [{
            n: 'processingInformation',
            rq: true,
            en: 'ProcessingInformation',
            ti: '.ProcessingInformationType'
          }, {
            n: 'owns',
            ti: 'Boolean',
            an: {
              lp: 'owns'
            },
            t: 'a'
          }]
      }, {
        ln: 'FootprintType',
        bti: 'OMEO_EOP_2_0.FootprintType',
        ps: [{
            n: 'nominalTrack',
            ti: 'GML_3_2_1.MultiCurvePropertyType'
          }]
      }, {
        ln: 'EarthObservationEquipmentPropertyType',
        ps: [{
            n: 'earthObservationEquipment',
            rq: true,
            en: 'EarthObservationEquipment',
            ti: '.EarthObservationEquipmentType'
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
        ln: 'EarthObservationEquipmentType',
        bti: 'OMEO_EOP_2_0.EarthObservationEquipmentType',
        ps: [{
            n: 'rest',
            mno: 0,
            col: true,
            mx: false,
            dom: false,
            etis: [{
                en: 'auxiliaryInstrument',
                ti: '.AuxiliaryInstrumentPropertyType'
              }, {
                en: 'platform',
                ti: 'OMEO_EOP_2_0.PlatformPropertyType'
              }, {
                en: 'instrument',
                ti: 'OMEO_EOP_2_0.InstrumentPropertyType'
              }],
            t: 'ers'
          }]
      }, {
        t: 'enum',
        ln: 'AuxiliaryInstrumentTypeValueEnumerationType',
        vs: ['OTHER', 'MICROWAVE_RADIOMETER', 'LASER', 'DOPPLER', 'GPS']
      }, {
        t: 'enum',
        ln: 'ProductContentsTypeValueEnumerationType',
        vs: ['REGIONAL', 'OTHER', 'OPEN_OCEAN', 'ICE', 'HYDROLOGY', 'COASTAL', 'CONTINENTAL']
      }],
    eis: [{
        en: 'ProcessingInformation',
        ti: '.ProcessingInformationType',
        sh: {
          lp: 'ProcessingInformation',
          ns: 'http:\/\/www.opengis.net\/eop\/2.0'
        }
      }, {
        en: 'instrument',
        ti: 'OMEO_EOP_2_0.InstrumentPropertyType',
        sc: '.EarthObservationEquipmentType'
      }, {
        en: 'auxiliaryInstrument',
        ti: '.AuxiliaryInstrumentPropertyType',
        sc: '.EarthObservationEquipmentType'
      }, {
        en: 'EarthObservation',
        ti: '.EarthObservationType',
        sh: {
          lp: 'EarthObservation',
          ns: 'http:\/\/www.opengis.net\/eop\/2.0'
        }
      }, {
        en: 'Acquisition',
        ti: '.AcquisitionType',
        sh: {
          lp: 'Acquisition',
          ns: 'http:\/\/www.opengis.net\/eop\/2.0'
        }
      }, {
        en: 'Footprint',
        ti: '.FootprintType',
        sh: {
          lp: 'Footprint',
          ns: 'http:\/\/www.opengis.net\/eop\/2.0'
        }
      }, {
        en: 'EarthObservationEquipment',
        ti: '.EarthObservationEquipmentType',
        sh: {
          lp: 'EarthObservationEquipment',
          ns: 'http:\/\/www.opengis.net\/eop\/2.0'
        }
      }, {
        en: 'platform',
        ti: 'OMEO_EOP_2_0.PlatformPropertyType',
        sc: '.EarthObservationEquipmentType'
      }, {
        en: 'processing',
        ti: 'OMEO_EOP_2_0.ProcessingInformationPropertyType',
        sc: '.EarthObservationMetaDataType'
      }, {
        en: 'instrumentType',
        sc: '.AuxiliaryInstrumentType'
      }, {
        en: 'EarthObservationMetaData',
        ti: '.EarthObservationMetaDataType',
        sh: {
          lp: 'EarthObservationMetaData',
          ns: 'http:\/\/www.opengis.net\/eop\/2.0'
        }
      }, {
        en: 'AuxiliaryInstrument',
        ti: '.AuxiliaryInstrumentType',
        sh: {
          lp: 'Instrument',
          ns: 'http:\/\/www.opengis.net\/eop\/2.0'
        }
      }]
  };
  return {
    OMEO_ALT_2_0: OMEO_ALT_2_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], OMEO_ALT_2_0_Module_Factory);
}
else {
  var OMEO_ALT_2_0_Module = OMEO_ALT_2_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.OMEO_ALT_2_0 = OMEO_ALT_2_0_Module.OMEO_ALT_2_0;
  }
  else {
    var OMEO_ALT_2_0 = OMEO_ALT_2_0_Module.OMEO_ALT_2_0;
  }
}