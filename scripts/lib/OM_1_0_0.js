var OM_1_0_0_Module_Factory = function () {
  var OM_1_0_0 = {
    n: 'OM_1_0_0',
    dens: 'http:\/\/www.opengis.net\/om\/1.0',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    tis: [{
        ln: 'ObservationType',
        bti: 'GML_3_1_1.AbstractFeatureType',
        ps: [{
            n: 'metadata',
            ti: 'OM_1_0_0.AnyOrReferenceType'
          }, {
            n: 'samplingTime',
            ti: 'SWE_1_0_1.TimeObjectPropertyType'
          }, {
            n: 'resultTime',
            ti: 'SWE_1_0_1.TimeObjectPropertyType'
          }, {
            n: 'procedure',
            ti: 'OM_1_0_0.ProcessPropertyType'
          }, {
            n: 'resultQuality',
            ti: 'OM_1_0_0.AnyOrReferenceType'
          }, {
            n: 'observedProperty',
            ti: 'SWE_1_0_1.PhenomenonPropertyType'
          }, {
            n: 'featureOfInterest',
            ti: 'GML_3_1_1.FeaturePropertyType'
          }, {
            n: 'parameter',
            col: true,
            ti: 'SWE_1_0_1.AnyDataPropertyType'
          }, {
            n: 'result',
            ti: 'AnyType'
          }]
      }, {
        ln: 'ObservationCollectionType',
        bti: 'GML_3_1_1.AbstractFeatureType',
        ps: [{
            n: 'member',
            col: true,
            ti: 'OM_1_0_0.ObservationPropertyType'
          }]
      }, {
        ln: 'ObservationPropertyType',
        ps: [{
            n: 'observation',
            en: 'Observation',
            ti: 'OM_1_0_0.ObservationType'
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
        ln: 'ProcessPropertyType',
        ps: [{
            n: 'content',
            col: true,
            mx: false,
            dom: false,
            typed: false,
            etis: [{
                en: {
                  lp: '_Process',
                  ns: 'http:\/\/www.opengis.net\/sensorML\/1.0.1'
                },
                ti: 'SensorML_1_0_1.AbstractProcessType'
              }, {
                en: 'Process',
                ti: 'AnyType'
              }],
            t: 'ers'
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
      }],
    eis: [{
        en: 'Observation',
        ti: 'OM_1_0_0.ObservationType',
        sh: {
          lp: '_Feature',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'ObservationCollection',
        ti: 'OM_1_0_0.ObservationCollectionType',
        sh: {
          lp: '_Feature',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'Process',
        ti: 'AnyType',
        sc: 'OM_1_0_0.ProcessPropertyType'
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
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.OM_1_0_0 = OM_1_0_0_Module_Factory().OM_1_0_0;
  }
  else {
    var OM_1_0_0 = OM_1_0_0_Module_Factory().OM_1_0_0;
  }
}