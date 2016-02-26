var CityGML_Relief_2_0_Module_Factory = function () {
  var CityGML_Relief_2_0 = {
    n: 'CityGML_Relief_2_0',
    dens: 'http:\/\/www.opengis.net\/citygml\/relief\/2.0',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['GML_3_1_1', 'CityGML_2_0', 'XLink_1_0'],
    tis: [{
        ln: 'ReliefComponentPropertyType',
        ps: [{
            n: 'reliefComponent',
            rq: true,
            mx: false,
            dom: false,
            en: '_ReliefComponent',
            ti: '.AbstractReliefComponentType',
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
        ln: 'GridPropertyType',
        tn: 'gridPropertyType',
        ps: [{
            n: 'rectifiedGridCoverage',
            rq: true,
            en: {
              lp: 'RectifiedGridCoverage',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.RectifiedGridCoverageType'
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
        ln: 'TinPropertyType',
        tn: 'tinPropertyType',
        ps: [{
            n: 'triangulatedSurface',
            rq: true,
            mx: false,
            dom: false,
            en: {
              lp: 'TriangulatedSurface',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.TriangulatedSurfaceType',
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
        ln: 'AbstractReliefComponentType',
        bti: 'CityGML_2_0.AbstractCityObjectType',
        ps: [{
            n: 'lod',
            rq: true,
            ti: 'Integer'
          }, {
            n: 'extent',
            ti: 'GML_3_1_1.PolygonPropertyType'
          }, {
            n: 'genericApplicationPropertyOfReliefComponent',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfReliefComponent',
            ti: 'AnyType'
          }]
      }, {
        ln: 'TINReliefType',
        bti: '.AbstractReliefComponentType',
        ps: [{
            n: 'tin',
            rq: true,
            ti: '.TinPropertyType'
          }, {
            n: 'genericApplicationPropertyOfTinRelief',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfTinRelief',
            ti: 'AnyType'
          }]
      }, {
        ln: 'MassPointReliefType',
        bti: '.AbstractReliefComponentType',
        ps: [{
            n: 'reliefPoints',
            rq: true,
            ti: 'GML_3_1_1.MultiPointPropertyType'
          }, {
            n: 'genericApplicationPropertyOfMassPointRelief',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfMassPointRelief',
            ti: 'AnyType'
          }]
      }, {
        ln: 'RasterReliefType',
        bti: '.AbstractReliefComponentType',
        ps: [{
            n: 'grid',
            rq: true,
            ti: '.GridPropertyType'
          }, {
            n: 'genericApplicationPropertyOfRasterRelief',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfRasterRelief',
            ti: 'AnyType'
          }]
      }, {
        ln: 'ReliefFeatureType',
        bti: 'CityGML_2_0.AbstractCityObjectType',
        ps: [{
            n: 'lod',
            rq: true,
            ti: 'Integer'
          }, {
            n: 'reliefComponent',
            rq: true,
            col: true,
            ti: '.ReliefComponentPropertyType'
          }, {
            n: 'genericApplicationPropertyOfReliefFeature',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfReliefFeature',
            ti: 'AnyType'
          }]
      }, {
        ln: 'BreaklineReliefType',
        bti: '.AbstractReliefComponentType',
        ps: [{
            n: 'ridgeOrValleyLines',
            ti: 'GML_3_1_1.MultiCurvePropertyType'
          }, {
            n: 'breaklines',
            ti: 'GML_3_1_1.MultiCurvePropertyType'
          }, {
            n: 'genericApplicationPropertyOfBreaklineRelief',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfBreaklineRelief',
            ti: 'AnyType'
          }]
      }],
    eis: [{
        en: 'RasterRelief',
        ti: '.RasterReliefType',
        sh: '_ReliefComponent'
      }, {
        en: 'MassPointRelief',
        ti: '.MassPointReliefType',
        sh: '_ReliefComponent'
      }, {
        en: 'TINRelief',
        ti: '.TINReliefType',
        sh: '_ReliefComponent'
      }, {
        en: '_GenericApplicationPropertyOfReliefComponent',
        ti: 'AnyType'
      }, {
        en: '_GenericApplicationPropertyOfTinRelief',
        ti: 'AnyType'
      }, {
        en: 'BreaklineRelief',
        ti: '.BreaklineReliefType',
        sh: '_ReliefComponent'
      }, {
        en: '_GenericApplicationPropertyOfMassPointRelief',
        ti: 'AnyType'
      }, {
        en: '_GenericApplicationPropertyOfBreaklineRelief',
        ti: 'AnyType'
      }, {
        en: 'ReliefFeature',
        ti: '.ReliefFeatureType',
        sh: {
          lp: '_CityObject',
          ns: 'http:\/\/www.opengis.net\/citygml\/2.0'
        }
      }, {
        en: '_GenericApplicationPropertyOfRasterRelief',
        ti: 'AnyType'
      }, {
        en: '_GenericApplicationPropertyOfReliefFeature',
        ti: 'AnyType'
      }, {
        en: '_ReliefComponent',
        ti: '.AbstractReliefComponentType',
        sh: {
          lp: '_CityObject',
          ns: 'http:\/\/www.opengis.net\/citygml\/2.0'
        }
      }, {
        en: 'Elevation',
        ti: 'GML_3_1_1.LengthType',
        sh: {
          lp: '_Object',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }]
  };
  return {
    CityGML_Relief_2_0: CityGML_Relief_2_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], CityGML_Relief_2_0_Module_Factory);
}
else {
  var CityGML_Relief_2_0_Module = CityGML_Relief_2_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.CityGML_Relief_2_0 = CityGML_Relief_2_0_Module.CityGML_Relief_2_0;
  }
  else {
    var CityGML_Relief_2_0 = CityGML_Relief_2_0_Module.CityGML_Relief_2_0;
  }
}