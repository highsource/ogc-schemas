var OMEO_LMB_2_0_Module_Factory = function () {
  var OMEO_LMB_2_0 = {
    n: 'OMEO_LMB_2_0',
    dens: 'http:\/\/www.opengis.net\/lmb\/2.0',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['GML_3_2_1', 'XLink_1_0', 'OMEO_EOP_2_0'],
    tis: [{
        ln: 'SensorPropertyType',
        ps: [{
            n: 'sensor',
            rq: true,
            en: 'Sensor',
            ti: '.SensorType'
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
            n: 'observationMode'
          }, {
            n: 'verticalResolution',
            ti: 'GML_3_2_1.MeasureType'
          }]
      }, {
        ln: 'FootprintType',
        bti: 'OMEO_EOP_2_0.FootprintType',
        ps: [{
            n: 'maximumAltitude',
            ti: 'GML_3_2_1.MeasureType'
          }, {
            n: 'minimumAltitude',
            ti: 'GML_3_2_1.MeasureType'
          }, {
            n: 'nominalTrack',
            ti: 'GML_3_2_1.MultiCurvePropertyType'
          }, {
            n: 'occultationPoints',
            ti: 'GML_3_2_1.MultiPointPropertyType'
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
        ln: 'EarthObservationEquipmentType',
        bti: 'OMEO_EOP_2_0.EarthObservationEquipmentType',
        ps: [{
            n: 'rest',
            rq: true,
            mno: 2,
            mxo: 2,
            col: true,
            mx: false,
            dom: false,
            etis: [{
                en: 'sensor',
                ti: 'OMEO_EOP_2_0.SensorPropertyType'
              }, {
                en: 'acquisitionParameters',
                ti: 'OMEO_EOP_2_0.AcquisitionPropertyType'
              }],
            t: 'ers'
          }]
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
        ln: 'SensorType',
        bti: 'OMEO_EOP_2_0.SensorType',
        ps: [{
            n: 'measurementType'
          }]
      }, {
        ln: 'EarthObservationPropertyType',
        ps: [{
            n: 'earthObservation',
            rq: true,
            en: 'EarthObservation',
            ti: '.EarthObservationType'
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
        ln: 'EarthObservationEquipmentPropertyType',
        ps: [{
            n: 'earthObservationEquipment',
            rq: true,
            en: 'EarthObservationEquipment',
            ti: '.EarthObservationEquipmentType'
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
        ln: 'EarthObservationType',
        bti: 'OMEO_EOP_2_0.EarthObservationType'
      }, {
        t: 'enum',
        ln: 'MeasurementTypeValueType',
        vs: ['ABSORPTION', 'EMISSION']
      }],
    eis: [{
        en: 'Acquisition',
        ti: '.AcquisitionType',
        sh: {
          lp: 'Acquisition',
          ns: 'http:\/\/www.opengis.net\/eop\/2.0'
        }
      }, {
        en: 'acquisitionParameters',
        ti: 'OMEO_EOP_2_0.AcquisitionPropertyType',
        sc: '.EarthObservationEquipmentType'
      }, {
        en: 'Footprint',
        ti: '.FootprintType',
        sh: {
          lp: 'Footprint',
          ns: 'http:\/\/www.opengis.net\/eop\/2.0'
        }
      }, {
        en: 'Sensor',
        ti: '.SensorType',
        sh: {
          lp: 'Sensor',
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
        en: 'sensor',
        ti: 'OMEO_EOP_2_0.SensorPropertyType',
        sc: '.EarthObservationEquipmentType'
      }, {
        en: 'EarthObservation',
        ti: '.EarthObservationType',
        sh: {
          lp: 'EarthObservation',
          ns: 'http:\/\/www.opengis.net\/eop\/2.0'
        }
      }]
  };
  return {
    OMEO_LMB_2_0: OMEO_LMB_2_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], OMEO_LMB_2_0_Module_Factory);
}
else {
  var OMEO_LMB_2_0_Module = OMEO_LMB_2_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.OMEO_LMB_2_0 = OMEO_LMB_2_0_Module.OMEO_LMB_2_0;
  }
  else {
    var OMEO_LMB_2_0 = OMEO_LMB_2_0_Module.OMEO_LMB_2_0;
  }
}