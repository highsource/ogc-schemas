var OM_2_0_Module_Factory = function () {
  var OM_2_0 = {
    n: 'OM_2_0',
    dens: 'http:\/\/www.opengis.net\/om\/2.0',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['XLink_1_0', 'GML_3_2_1', 'ISO19139_GMD_20070417'],
    tis: [{
        ln: 'OMProcessPropertyType',
        tn: 'OM_ProcessPropertyType',
        ps: [{
            n: 'any',
            rq: true,
            mx: false,
            t: 'ae'
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
        ln: 'OMObservationPropertyType',
        tn: 'OM_ObservationPropertyType',
        ps: [{
            n: 'omObservation',
            rq: true,
            en: 'OM_Observation',
            ti: '.OMObservationType'
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
        ln: 'OMObservationType',
        tn: 'OM_ObservationType',
        bti: 'GML_3_2_1.AbstractFeatureType',
        ps: [{
            n: 'type',
            ti: 'GML_3_2_1.ReferenceType'
          }, {
            n: 'metadata',
            ti: 'ISO19139_GMD_20070417.MDMetadataPropertyType'
          }, {
            n: 'relatedObservation',
            mno: 0,
            col: true,
            ti: '.ObservationContextPropertyType'
          }, {
            n: 'phenomenonTime',
            rq: true,
            ti: '.TimeObjectPropertyType'
          }, {
            n: 'resultTime',
            rq: true,
            ti: 'GML_3_2_1.TimeInstantPropertyType'
          }, {
            n: 'validTime',
            ti: 'GML_3_2_1.TimePeriodPropertyType'
          }, {
            n: 'procedure',
            rq: true,
            ti: '.OMProcessPropertyType'
          }, {
            n: 'parameter',
            mno: 0,
            col: true,
            ti: '.NamedValuePropertyType'
          }, {
            n: 'observedProperty',
            rq: true,
            ti: 'GML_3_2_1.ReferenceType'
          }, {
            n: 'featureOfInterest',
            rq: true,
            ti: 'GML_3_2_1.FeaturePropertyType'
          }, {
            n: 'resultQuality',
            mno: 0,
            col: true,
            ti: 'ISO19139_GMD_20070417.DQElementPropertyType'
          }, {
            n: 'result',
            rq: true,
            ti: 'AnyType'
          }]
      }, {
        ln: 'NamedValuePropertyType',
        ps: [{
            n: 'namedValue',
            rq: true,
            en: 'NamedValue',
            ti: '.NamedValueType'
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
        ln: 'TimeObjectPropertyType',
        ps: [{
            n: 'abstractTimeObject',
            rq: true,
            mx: false,
            dom: false,
            en: {
              lp: 'AbstractTimeObject',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.AbstractTimeObjectType',
            t: 'er'
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
        ln: 'ObservationContextPropertyType',
        ps: [{
            n: 'observationContext',
            rq: true,
            en: 'ObservationContext',
            ti: '.ObservationContextType'
          }]
      }, {
        ln: 'ObservationContextType',
        ps: [{
            n: 'role',
            rq: true,
            ti: 'GML_3_2_1.ReferenceType'
          }, {
            n: 'relatedObservation',
            rq: true,
            ti: 'GML_3_2_1.ReferenceType'
          }]
      }, {
        ln: 'NamedValueType',
        ps: [{
            n: 'name',
            rq: true,
            ti: 'GML_3_2_1.ReferenceType'
          }, {
            n: 'value',
            rq: true,
            ti: 'AnyType'
          }]
      }],
    eis: [{
        en: 'ObservationContext',
        ti: '.ObservationContextType'
      }, {
        en: 'OM_Observation',
        ti: '.OMObservationType',
        sh: {
          lp: 'AbstractFeature',
          ns: 'http:\/\/www.opengis.net\/gml\/3.2'
        }
      }, {
        en: 'NamedValue',
        ti: '.NamedValueType'
      }, {
        en: 'result',
        ti: 'AnyType'
      }]
  };
  return {
    OM_2_0: OM_2_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], OM_2_0_Module_Factory);
}
else {
  var OM_2_0_Module = OM_2_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.OM_2_0 = OM_2_0_Module.OM_2_0;
  }
  else {
    var OM_2_0 = OM_2_0_Module.OM_2_0;
  }
}