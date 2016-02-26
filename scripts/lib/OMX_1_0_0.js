var OMX_1_0_0_Module_Factory = function () {
  var OMX_1_0_0 = {
    n: 'OMX_1_0_0',
    dens: 'http:\/\/www.opengis.net\/omx\/1.0',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['XLink_1_0', 'OM_1_0_0', 'SensorML_1_0_1', 'GML_3_1_1'],
    tis: [{
        ln: 'CalculationProcessPropertyType',
        ps: [{
            n: 'calculationProcess',
            rq: true,
            en: 'CalculationProcess',
            ti: '.CalculationProcessType'
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
        ln: 'InstrumentPropertyType',
        ps: [{
            n: 'instrument',
            rq: true,
            en: 'Instrument',
            ti: '.InstrumentType'
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
        ln: 'CalculationProcessType',
        bti: '.ObservationProcessType'
      }, {
        ln: 'ObservationProcessPropertyType',
        ps: [{
            n: 'observationProcess',
            rq: true,
            mx: false,
            dom: false,
            en: 'ObservationProcess',
            ti: '.ObservationProcessType',
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
        ln: 'InstrumentType',
        bti: '.ObservationProcessType'
      }, {
        ln: 'ObservationProcessType',
        bti: 'SensorML_1_0_1.AbstractProcessType',
        ps: [{
            n: 'method',
            rq: true,
            ti: 'GML_3_1_1.CodeType'
          }, {
            n: 'resultQuality',
            ti: 'OM_1_0_0.AnyOrReferenceType'
          }]
      }],
    eis: [{
        en: 'PointCoverageObs',
        ti: 'OM_1_0_0.ObservationType',
        sh: {
          lp: 'Observation',
          ns: 'http:\/\/www.opengis.net\/om\/1.0'
        }
      }, {
        en: 'Instrument',
        ti: '.InstrumentType',
        sh: 'ObservationProcess'
      }, {
        en: 'ComplexObservation',
        ti: 'OM_1_0_0.ObservationType',
        sh: {
          lp: 'Observation',
          ns: 'http:\/\/www.opengis.net\/om\/1.0'
        }
      }, {
        en: 'DiscreteCoverageObservation',
        ti: 'OM_1_0_0.ObservationType',
        sh: {
          lp: 'Observation',
          ns: 'http:\/\/www.opengis.net\/om\/1.0'
        }
      }, {
        en: 'CalculationProcess',
        ti: '.CalculationProcessType',
        sh: 'ObservationProcess'
      }, {
        en: 'TruthObservation',
        ti: 'OM_1_0_0.ObservationType',
        sh: {
          lp: 'Observation',
          ns: 'http:\/\/www.opengis.net\/om\/1.0'
        }
      }, {
        en: 'ObservationProcess',
        ti: '.ObservationProcessType',
        sh: {
          lp: '_Process',
          ns: 'http:\/\/www.opengis.net\/sensorML\/1.0.1'
        }
      }, {
        en: 'DiscreteCoverageObs',
        ti: 'OM_1_0_0.ObservationType',
        sh: {
          lp: 'Observation',
          ns: 'http:\/\/www.opengis.net\/om\/1.0'
        }
      }, {
        en: 'GeometryObservation',
        ti: 'OM_1_0_0.ObservationType',
        sh: {
          lp: 'Observation',
          ns: 'http:\/\/www.opengis.net\/om\/1.0'
        }
      }, {
        en: 'Measurement',
        ti: 'OM_1_0_0.ObservationType',
        sh: {
          lp: 'Observation',
          ns: 'http:\/\/www.opengis.net\/om\/1.0'
        }
      }, {
        en: 'PointCoverageObservation',
        ti: 'OM_1_0_0.ObservationType',
        sh: {
          lp: 'Observation',
          ns: 'http:\/\/www.opengis.net\/om\/1.0'
        }
      }, {
        en: 'CategoryObservation',
        ti: 'OM_1_0_0.ObservationType',
        sh: {
          lp: 'Observation',
          ns: 'http:\/\/www.opengis.net\/om\/1.0'
        }
      }, {
        en: 'TemporalObservation',
        ti: 'OM_1_0_0.ObservationType',
        sh: {
          lp: 'Observation',
          ns: 'http:\/\/www.opengis.net\/om\/1.0'
        }
      }, {
        en: 'TimeSeriesObservation',
        ti: 'OM_1_0_0.ObservationType',
        sh: {
          lp: 'Observation',
          ns: 'http:\/\/www.opengis.net\/om\/1.0'
        }
      }, {
        en: 'CountObservation',
        ti: 'OM_1_0_0.ObservationType',
        sh: {
          lp: 'Observation',
          ns: 'http:\/\/www.opengis.net\/om\/1.0'
        }
      }, {
        en: 'ElementCoverageObservation',
        ti: 'OM_1_0_0.ObservationType',
        sh: {
          lp: 'Observation',
          ns: 'http:\/\/www.opengis.net\/om\/1.0'
        }
      }, {
        en: 'TimeSeriesObs',
        ti: 'OM_1_0_0.ObservationType',
        sh: {
          lp: 'Observation',
          ns: 'http:\/\/www.opengis.net\/om\/1.0'
        }
      }]
  };
  return {
    OMX_1_0_0: OMX_1_0_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], OMX_1_0_0_Module_Factory);
}
else {
  var OMX_1_0_0_Module = OMX_1_0_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.OMX_1_0_0 = OMX_1_0_0_Module.OMX_1_0_0;
  }
  else {
    var OMX_1_0_0 = OMX_1_0_0_Module.OMX_1_0_0;
  }
}