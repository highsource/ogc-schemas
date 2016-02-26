var OMEO_SAR_2_0_Module_Factory = function () {
  var OMEO_SAR_2_0 = {
    n: 'OMEO_SAR_2_0',
    dens: 'http:\/\/www.opengis.net\/sar\/2.0',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['GML_3_2_1', 'XLink_1_0', 'OMEO_EOP_2_0'],
    tis: [{
        ln: 'EarthObservationType',
        bti: 'OMEO_EOP_2_0.EarthObservationType'
      }, {
        ln: 'AcquisitionType',
        bti: 'OMEO_EOP_2_0.AcquisitionType',
        ps: [{
            n: 'polarisationMode'
          }, {
            n: 'polarisationChannels'
          }, {
            n: 'antennaLookDirection'
          }, {
            n: 'minimumIncidenceAngle',
            ti: 'GML_3_2_1.AngleType'
          }, {
            n: 'maximumIncidenceAngle',
            ti: 'GML_3_2_1.AngleType'
          }, {
            n: 'incidenceAngleVariation',
            ti: 'GML_3_2_1.AngleType'
          }, {
            n: 'dopplerFrequency',
            ti: 'GML_3_2_1.MeasureType'
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
        t: 'enum',
        ln: 'AntennaLookDirectionValueEnumerationType',
        vs: ['LEFT', 'RIGHT']
      }, {
        t: 'enum',
        ln: 'PolarisationChannelsValueEnumerationType',
        vs: ['HH', 'HV', 'UNDEFINED', 'HV, VH', 'VV, VH', 'VV, HV', 'VH, HV', 'VH, VV', 'HH, HV', 'HH, VH', 'HH, VV', 'VH', 'VV']
      }, {
        t: 'enum',
        ln: 'PolarisationModeValueEnumerationType',
        vs: ['UNDEFINED', 'T', 'S', 'D', 'Q']
      }],
    eis: [{
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
      }]
  };
  return {
    OMEO_SAR_2_0: OMEO_SAR_2_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], OMEO_SAR_2_0_Module_Factory);
}
else {
  var OMEO_SAR_2_0_Module = OMEO_SAR_2_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.OMEO_SAR_2_0 = OMEO_SAR_2_0_Module.OMEO_SAR_2_0;
  }
  else {
    var OMEO_SAR_2_0 = OMEO_SAR_2_0_Module.OMEO_SAR_2_0;
  }
}