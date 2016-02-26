var OMEO_SEN1_2_0_Module_Factory = function () {
  var OMEO_SEN1_2_0 = {
    n: 'OMEO_SEN1_2_0',
    dens: 'http:\/\/www.opengis.net\/sen1\/2.0',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['OMEO_SAR_2_0', 'XLink_1_0', 'ISO19139_GMD_20070417', 'OMEO_EOP_2_0'],
    tis: [{
        ln: 'QualityDisclaimerType',
        ps: [{
            n: 'oqcFailed',
            en: 'OQC_Failed',
            ti: 'Boolean'
          }, {
            n: 'oqcUpdated',
            en: 'OQC_Updated',
            ti: 'Boolean'
          }, {
            n: 'offQCResult',
            mno: 0,
            col: true,
            en: 'OffQC_Result'
          }, {
            n: 'offQCDescription',
            en: 'OffQC_Description'
          }, {
            n: 'disclaimer',
            en: 'Disclaimer'
          }]
      }, {
        ln: 'DQElementPropertyType',
        tn: 'DQ_Element_PropertyType',
        bti: 'ISO19139_GMD_20070417.DQElementPropertyType',
        ps: [{
            n: 'qualityDisclaimer',
            ti: '.QualityDisclaimerType'
          }]
      }, {
        ln: 'EarthObservationResultType',
        bti: 'OMEO_EOP_2_0.EarthObservationResultType',
        ps: [{
            n: 'timeliness'
          }]
      }, {
        ln: 'EarthObservationMetadataType',
        bti: 'OMEO_EOP_2_0.EarthObservationMetaDataType',
        ps: [{
            n: 'rest',
            rq: true,
            mxo: 1,
            col: true,
            mx: false,
            dom: false,
            en: 'parentIdentifier',
            t: 'er'
          }]
      }, {
        ln: 'EarthObservationMetadataPropertyType',
        ps: [{
            n: 'earthObservationMetadata',
            rq: true,
            en: 'EarthObservationMetadata',
            ti: '.EarthObservationMetadataType'
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
        bti: 'OMEO_SAR_2_0.EarthObservationType'
      }, {
        ln: 'AcquisitionType',
        bti: 'OMEO_SAR_2_0.AcquisitionType',
        ps: [{
            n: 'rest',
            mno: 0,
            mxo: 2,
            col: true,
            mx: false,
            dom: false,
            etis: [{
                en: 'polarisationChannels'
              }, {
                en: 'polarisationMode'
              }],
            t: 'ers'
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
        ln: 'EarthObservationResultPropertyType',
        ps: [{
            n: 'earthObservationResult',
            rq: true,
            en: 'EarthObservationResult',
            ti: '.EarthObservationResultType'
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
        t: 'enum',
        ln: 'TimelinessType',
        vs: ['NRT_10M', 'NRT_1H', 'NRT_3H', 'FAST_24H', 'ARCH_6H', 'ARCH_RUSH', 'ARCH_NORMAL']
      }, {
        t: 'enum',
        ln: 'QCResultType',
        vs: ['NOMINAL_DATA_QUALITY', 'DEGRADED_PRODUCT_RADIOMETRY', 'DEGRADED_PRODUCT_GEOLOCATION', 'DEGRADED_RADIOMETRIC_CALIBRATION', 'DEGRADED_PLATFORM_POINTING', 'DEGRADED_ORBIT_CONTROL', 'DEGRADED_PERFORMANCE_INSTRUMENT_ANOMALY', 'COMPLETE_PRODUCT_DEGRADATION', 'SLICE_PRODUCT_NON_CONCATENABLE']
      }, {
        t: 'enum',
        ln: 'PolarisationModeValueEnumerationType',
        vs: ['UNDEFINED', 'S', 'D']
      }, {
        t: 'enum',
        ln: 'PolarisationChannelsValueEnumerationType',
        vs: ['UNDEFINED', 'HH', 'HV', 'HH, HV', 'VV, VH']
      }],
    eis: [{
        en: 'EarthObservation',
        ti: '.EarthObservationType',
        sh: {
          lp: 'EarthObservation',
          ns: 'http:\/\/www.opengis.net\/sar\/2.0'
        }
      }, {
        en: 'EarthObservationResult',
        ti: '.EarthObservationResultType',
        sh: {
          lp: 'EarthObservationResult',
          ns: 'http:\/\/www.opengis.net\/eop\/2.0'
        }
      }, {
        en: 'EarthObservationMetadata',
        ti: '.EarthObservationMetadataType',
        sh: {
          lp: 'EarthObservationMetaData',
          ns: 'http:\/\/www.opengis.net\/eop\/2.0'
        }
      }, {
        en: 'Acquisition',
        ti: '.AcquisitionType',
        sh: {
          lp: 'Acquisition',
          ns: 'http:\/\/www.opengis.net\/sar\/2.0'
        }
      }, {
        en: 'polarisationChannels',
        sc: '.AcquisitionType'
      }, {
        en: 'polarisationMode',
        sc: '.AcquisitionType'
      }, {
        en: 'parentIdentifier',
        sc: '.EarthObservationMetadataType'
      }]
  };
  return {
    OMEO_SEN1_2_0: OMEO_SEN1_2_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], OMEO_SEN1_2_0_Module_Factory);
}
else {
  var OMEO_SEN1_2_0_Module = OMEO_SEN1_2_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.OMEO_SEN1_2_0 = OMEO_SEN1_2_0_Module.OMEO_SEN1_2_0;
  }
  else {
    var OMEO_SEN1_2_0 = OMEO_SEN1_2_0_Module.OMEO_SEN1_2_0;
  }
}