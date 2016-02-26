var SamplingSpecimen_2_0_Module_Factory = function () {
  var SamplingSpecimen_2_0 = {
    n: 'SamplingSpecimen_2_0',
    dens: 'http:\/\/www.opengis.net\/samplingSpecimen\/2.0',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['Sampling_2_0', 'GML_3_2_1', 'XLink_1_0', 'ISO19139_GMD_20070417', 'OM_2_0'],
    tis: [{
        ln: 'SFSpecimenType',
        tn: 'SF_SpecimenType',
        bti: 'Sampling_2_0.SFSamplingFeatureType',
        ps: [{
            n: 'materialClass',
            rq: true,
            ti: 'GML_3_2_1.ReferenceType'
          }, {
            n: 'samplingTime',
            rq: true,
            ti: 'OM_2_0.TimeObjectPropertyType'
          }, {
            n: 'samplingMethod',
            ti: 'Sampling_2_0.SFProcessPropertyType'
          }, {
            n: 'samplingLocation',
            ti: 'GML_3_2_1.GeometryPropertyType'
          }, {
            n: 'processingDetails',
            mno: 0,
            col: true,
            ti: '.PreparationStepPropertyType'
          }, {
            n: 'size',
            ti: '.SFSpecimenType.Size'
          }, {
            n: 'currentLocation',
            ti: '.LocationPropertyType'
          }, {
            n: 'specimenType',
            ti: 'GML_3_2_1.ReferenceType'
          }]
      }, {
        ln: 'PreparationStepType',
        ps: [{
            n: 'time',
            rq: true,
            ti: '.PreparationStepType.Time'
          }, {
            n: 'processOperator',
            rq: true,
            ti: 'ISO19139_GMD_20070417.CIResponsiblePartyPropertyType'
          }, {
            n: 'processingDetails',
            rq: true,
            ti: 'GML_3_2_1.ReferenceType'
          }]
      }, {
        ln: 'SFSpecimenPropertyType',
        tn: 'SF_SpecimenPropertyType',
        ps: [{
            n: 'sfSpecimen',
            rq: true,
            en: 'SF_Specimen',
            ti: '.SFSpecimenType'
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
        ln: 'SFSpecimenType.Size',
        tn: null,
        bti: 'GML_3_2_1.MeasureType',
        ps: [{
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
        ln: 'PreparationStepType.Time',
        tn: null,
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
        ln: 'LocationPropertyType',
        ps: [{
            n: 'abstractGeometry',
            rq: true,
            mx: false,
            dom: false,
            en: {
              lp: 'AbstractGeometry',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.AbstractGeometryType',
            t: 'er'
          }, {
            n: 'exGeographicDescription',
            rq: true,
            en: {
              lp: 'EX_GeographicDescription',
              ns: 'http:\/\/www.isotc211.org\/2005\/gmd'
            },
            ti: 'ISO19139_GMD_20070417.EXGeographicDescriptionType'
          }, {
            n: 'unionSemantics',
            an: {
              lp: 'unionSemantics'
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
        ln: 'PreparationStepPropertyType',
        ps: [{
            n: 'preparationStep',
            rq: true,
            en: 'PreparationStep',
            ti: '.PreparationStepType'
          }]
      }],
    eis: [{
        en: 'PreparationStep',
        ti: '.PreparationStepType'
      }, {
        en: 'SF_Specimen',
        ti: '.SFSpecimenType',
        sh: {
          lp: 'SF_SamplingFeature',
          ns: 'http:\/\/www.opengis.net\/sampling\/2.0'
        }
      }]
  };
  return {
    SamplingSpecimen_2_0: SamplingSpecimen_2_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], SamplingSpecimen_2_0_Module_Factory);
}
else {
  var SamplingSpecimen_2_0_Module = SamplingSpecimen_2_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.SamplingSpecimen_2_0 = SamplingSpecimen_2_0_Module.SamplingSpecimen_2_0;
  }
  else {
    var SamplingSpecimen_2_0 = SamplingSpecimen_2_0_Module.SamplingSpecimen_2_0;
  }
}