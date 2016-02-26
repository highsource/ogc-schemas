var CityGML_Waterbody_1_0_Module_Factory = function () {
  var CityGML_Waterbody_1_0 = {
    n: 'CityGML_Waterbody_1_0',
    dens: 'http:\/\/www.opengis.net\/citygml\/waterbody\/1.0',
    deps: ['GML_3_1_1', 'CityGML_1_0'],
    tis: [{
        ln: 'WaterBodyType',
        bti: '.AbstractWaterObjectType',
        ps: [{
            n: 'clazz',
            en: 'class'
          }, {
            n: 'function',
            mno: 0,
            col: true
          }, {
            n: 'usage',
            mno: 0,
            col: true
          }, {
            n: 'lod0MultiCurve',
            ti: 'GML_3_1_1.MultiCurvePropertyType'
          }, {
            n: 'lod0MultiSurface',
            ti: 'GML_3_1_1.MultiSurfacePropertyType'
          }, {
            n: 'lod1MultiCurve',
            ti: 'GML_3_1_1.MultiCurvePropertyType'
          }, {
            n: 'lod1MultiSurface',
            ti: 'GML_3_1_1.MultiSurfacePropertyType'
          }, {
            n: 'lod1Solid',
            ti: 'GML_3_1_1.SolidPropertyType'
          }, {
            n: 'lod2Solid',
            ti: 'GML_3_1_1.SolidPropertyType'
          }, {
            n: 'lod3Solid',
            ti: 'GML_3_1_1.SolidPropertyType'
          }, {
            n: 'lod4Solid',
            ti: 'GML_3_1_1.SolidPropertyType'
          }, {
            n: 'cityObjectBoundedBy',
            mno: 0,
            col: true,
            en: 'boundedBy',
            ti: '.BoundedByWaterSurfacePropertyType'
          }, {
            n: 'genericApplicationPropertyOfWaterBody',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfWaterBody',
            ti: 'AnyType'
          }]
      }, {
        ln: 'WaterGroundSurfaceType',
        bti: '.AbstractWaterBoundarySurfaceType',
        ps: [{
            n: 'genericApplicationPropertyOfWaterGroundSurface',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfWaterGroundSurface',
            ti: 'AnyType'
          }]
      }, {
        ln: 'BoundedByWaterSurfacePropertyType',
        bti: 'GML_3_1_1.AssociationType'
      }, {
        ln: 'WaterClosureSurfaceType',
        bti: '.AbstractWaterBoundarySurfaceType',
        ps: [{
            n: 'genericApplicationPropertyOfWaterClosureSurface',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfWaterClosureSurface',
            ti: 'AnyType'
          }]
      }, {
        ln: 'AbstractWaterBoundarySurfaceType',
        bti: 'CityGML_1_0.AbstractCityObjectType',
        ps: [{
            n: 'lod2Surface',
            ti: 'GML_3_1_1.SurfacePropertyType'
          }, {
            n: 'lod3Surface',
            ti: 'GML_3_1_1.SurfacePropertyType'
          }, {
            n: 'lod4Surface',
            ti: 'GML_3_1_1.SurfacePropertyType'
          }, {
            n: 'genericApplicationPropertyOfWaterBoundarySurface',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfWaterBoundarySurface',
            ti: 'AnyType'
          }]
      }, {
        ln: 'AbstractWaterObjectType',
        bti: 'CityGML_1_0.AbstractCityObjectType',
        ps: [{
            n: 'genericApplicationPropertyOfWaterObject',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfWaterObject',
            ti: 'AnyType'
          }]
      }, {
        ln: 'WaterSurfaceType',
        bti: '.AbstractWaterBoundarySurfaceType',
        ps: [{
            n: 'waterLevel'
          }, {
            n: 'genericApplicationPropertyOfWaterSurface',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfWaterSurface',
            ti: 'AnyType'
          }]
      }],
    eis: [{
        en: 'WaterBody',
        ti: '.WaterBodyType',
        sh: '_WaterObject'
      }, {
        en: '_WaterBoundarySurface',
        ti: '.AbstractWaterBoundarySurfaceType',
        sh: {
          lp: '_CityObject',
          ns: 'http:\/\/www.opengis.net\/citygml\/1.0'
        }
      }, {
        en: '_GenericApplicationPropertyOfWaterClosureSurface',
        ti: 'AnyType'
      }, {
        en: '_GenericApplicationPropertyOfWaterSurface',
        ti: 'AnyType'
      }, {
        en: '_GenericApplicationPropertyOfWaterBody',
        ti: 'AnyType'
      }, {
        en: 'WaterClosureSurface',
        ti: '.WaterClosureSurfaceType',
        sh: '_WaterBoundarySurface'
      }, {
        en: 'WaterGroundSurface',
        ti: '.WaterGroundSurfaceType',
        sh: '_WaterBoundarySurface'
      }, {
        en: '_GenericApplicationPropertyOfWaterObject',
        ti: 'AnyType'
      }, {
        en: 'WaterSurface',
        ti: '.WaterSurfaceType',
        sh: '_WaterBoundarySurface'
      }, {
        en: '_GenericApplicationPropertyOfWaterGroundSurface',
        ti: 'AnyType'
      }, {
        en: '_GenericApplicationPropertyOfWaterBoundarySurface',
        ti: 'AnyType'
      }, {
        en: '_WaterObject',
        ti: '.AbstractWaterObjectType',
        sh: {
          lp: '_CityObject',
          ns: 'http:\/\/www.opengis.net\/citygml\/1.0'
        }
      }]
  };
  return {
    CityGML_Waterbody_1_0: CityGML_Waterbody_1_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], CityGML_Waterbody_1_0_Module_Factory);
}
else {
  var CityGML_Waterbody_1_0_Module = CityGML_Waterbody_1_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.CityGML_Waterbody_1_0 = CityGML_Waterbody_1_0_Module.CityGML_Waterbody_1_0;
  }
  else {
    var CityGML_Waterbody_1_0 = CityGML_Waterbody_1_0_Module.CityGML_Waterbody_1_0;
  }
}