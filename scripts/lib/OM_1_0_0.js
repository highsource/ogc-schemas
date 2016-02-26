var OM_1_0_0_Module_Factory = function () {
  var OM_1_0_0 = {
    n: 'OM_1_0_0',
    dens: 'http:\/\/www.opengis.net\/om\/1.0',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['XLink_1_0', 'SWE_1_0_1', 'GML_3_1_1', 'SensorML_1_0_1'],
    tis: [{
        ln: 'ObservationCollectionType',
        bti: 'GML_3_1_1.AbstractFeatureType',
        ps: [{
            n: 'member',
            rq: true,
            col: true,
            ti: '.ObservationPropertyType'
          }]
      }, {
        ln: 'ProcessPropertyType',
        ps: [{
            n: 'sensorMLProcess',
            rq: true,
            mx: false,
            dom: false,
            en: {
              lp: '_Process',
              ns: 'http:\/\/www.opengis.net\/sensorML\/1.0.1'
            },
            ti: 'SensorML_1_0_1.AbstractProcessType',
            t: 'er'
          }, {
            n: 'process',
            rq: true,
            en: 'Process',
            ti: 'AnyType'
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
        ln: 'AnyOrReferenceType',
        ps: [{
            n: 'any',
            rq: true,
            dom: false,
            mx: false,
            t: 'ae'
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
        ln: 'ObservationPropertyType',
        ps: [{
            n: 'observation',
            rq: true,
            en: 'Observation',
            ti: '.ObservationType'
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
        ln: 'ObservationType',
        bti: 'GML_3_1_1.AbstractFeatureType',
        ps: [{
            n: 'metadata',
            ti: '.AnyOrReferenceType'
          }, {
            n: 'samplingTime',
            rq: true,
            ti: 'SWE_1_0_1.TimeObjectPropertyType'
          }, {
            n: 'resultTime',
            ti: 'SWE_1_0_1.TimeObjectPropertyType'
          }, {
            n: 'procedure',
            rq: true,
            ti: '.ProcessPropertyType'
          }, {
            n: 'resultQuality',
            ti: '.AnyOrReferenceType'
          }, {
            n: 'observedProperty',
            rq: true,
            ti: 'SWE_1_0_1.PhenomenonPropertyType'
          }, {
            n: 'featureOfInterest',
            rq: true,
            ti: 'GML_3_1_1.FeaturePropertyType'
          }, {
            n: 'parameter',
            mno: 0,
            col: true,
            ti: 'SWE_1_0_1.AnyDataPropertyType'
          }, {
            n: 'result',
            rq: true,
            ti: 'AnyType'
          }]
      }],
    eis: [{
        en: 'ObservationCollection',
        ti: '.ObservationCollectionType',
        sh: {
          lp: '_Feature',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'Observation',
        ti: '.ObservationType',
        sh: {
          lp: '_Feature',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }]
  };
  return {
    OM_1_0_0: OM_1_0_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], OM_1_0_0_Module_Factory);
}
else {
  var OM_1_0_0_Module = OM_1_0_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.OM_1_0_0 = OM_1_0_0_Module.OM_1_0_0;
  }
  else {
    var OM_1_0_0 = OM_1_0_0_Module.OM_1_0_0;
  }
}