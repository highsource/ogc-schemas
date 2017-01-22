var CityGML_Relief_1_0_Module_Factory = function () {
  var CityGML_Relief_1_0 = {
    n: 'CityGML_Relief_1_0',
    dens: 'http:\/\/www.opengis.net\/citygml\/relief\/1.0',
    deps: ['GML_3_1_1', 'CityGML_1_0'],
    tis: [{
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
        ln: 'GridPropertyType',
        tn: 'gridPropertyType',
        bti: 'GML_3_1_1.AssociationType'
      }, {
        ln: 'ReliefComponentPropertyType',
        bti: 'GML_3_1_1.AssociationType'
      }, {
        ln: 'TinPropertyType',
        tn: 'tinPropertyType',
        bti: 'GML_3_1_1.AssociationType'
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
        ln: 'ReliefFeatureType',
        bti: 'CityGML_1_0.AbstractCityObjectType',
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
        ln: 'AbstractReliefComponentType',
        bti: 'CityGML_1_0.AbstractCityObjectType',
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
        en: 'BreaklineRelief',
        ti: '.BreaklineReliefType',
        sh: '_ReliefComponent'
      }, {
        en: 'ReliefFeature',
        ti: '.ReliefFeatureType',
        sh: {
          lp: '_CityObject',
          ns: 'http:\/\/www.opengis.net\/citygml\/1.0'
        }
      }, {
        en: '_GenericApplicationPropertyOfBreaklineRelief',
        ti: 'AnyType'
      }, {
        en: 'Elevation',
        ti: 'GML_3_1_1.LengthType',
        sh: {
          lp: '_Object',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: '_ReliefComponent',
        ti: '.AbstractReliefComponentType',
        sh: {
          lp: '_CityObject',
          ns: 'http:\/\/www.opengis.net\/citygml\/1.0'
        }
      }, {
        en: '_GenericApplicationPropertyOfReliefComponent',
        ti: 'AnyType'
      }, {
        en: '_GenericApplicationPropertyOfTinRelief',
        ti: 'AnyType'
      }, {
        en: 'RasterRelief',
        ti: '.RasterReliefType',
        sh: '_ReliefComponent'
      }, {
        en: '_GenericApplicationPropertyOfRasterRelief',
        ti: 'AnyType'
      }, {
        en: 'MassPointRelief',
        ti: '.MassPointReliefType',
        sh: '_ReliefComponent'
      }, {
        en: '_GenericApplicationPropertyOfMassPointRelief',
        ti: 'AnyType'
      }, {
        en: '_GenericApplicationPropertyOfReliefFeature',
        ti: 'AnyType'
      }, {
        en: 'TINRelief',
        ti: '.TINReliefType',
        sh: '_ReliefComponent'
      }]
  };
  return {
    CityGML_Relief_1_0: CityGML_Relief_1_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], CityGML_Relief_1_0_Module_Factory);
}
else {
  var CityGML_Relief_1_0_Module = CityGML_Relief_1_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.CityGML_Relief_1_0 = CityGML_Relief_1_0_Module.CityGML_Relief_1_0;
  }
  else {
    var CityGML_Relief_1_0 = CityGML_Relief_1_0_Module.CityGML_Relief_1_0;
  }
}