var CityGML_Waterbody_2_0_Module_Factory = function () {
  var CityGML_Waterbody_2_0 = {
    n: 'CityGML_Waterbody_2_0',
    dens: 'http:\/\/www.opengis.net\/citygml\/waterbody\/2.0',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['XLink_1_0', 'GML_3_1_1', 'CityGML_2_0'],
    tis: [{
        ln: 'WaterBodyType',
        bti: '.AbstractWaterObjectType',
        ps: [{
            n: 'clazz',
            en: 'class',
            ti: 'GML_3_1_1.CodeType'
          }, {
            n: 'function',
            mno: 0,
            col: true,
            ti: 'GML_3_1_1.CodeType'
          }, {
            n: 'usage',
            mno: 0,
            col: true,
            ti: 'GML_3_1_1.CodeType'
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
        ln: 'BoundedByWaterSurfacePropertyType',
        ps: [{
            n: 'waterBoundarySurface',
            rq: true,
            mx: false,
            dom: false,
            en: '_WaterBoundarySurface',
            ti: '.AbstractWaterBoundarySurfaceType',
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
        ln: 'AbstractWaterBoundarySurfaceType',
        bti: 'CityGML_2_0.AbstractCityObjectType',
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
        bti: 'CityGML_2_0.AbstractCityObjectType',
        ps: [{
            n: 'genericApplicationPropertyOfWaterObject',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfWaterObject',
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
        ln: 'WaterSurfaceType',
        bti: '.AbstractWaterBoundarySurfaceType',
        ps: [{
            n: 'waterLevel',
            ti: 'GML_3_1_1.CodeType'
          }, {
            n: 'genericApplicationPropertyOfWaterSurface',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfWaterSurface',
            ti: 'AnyType'
          }]
      }],
    eis: [{
        en: '_GenericApplicationPropertyOfWaterSurface',
        ti: 'AnyType'
      }, {
        en: 'WaterGroundSurface',
        ti: '.WaterGroundSurfaceType',
        sh: '_WaterBoundarySurface'
      }, {
        en: '_GenericApplicationPropertyOfWaterBody',
        ti: 'AnyType'
      }, {
        en: '_GenericApplicationPropertyOfWaterClosureSurface',
        ti: 'AnyType'
      }, {
        en: '_GenericApplicationPropertyOfWaterBoundarySurface',
        ti: 'AnyType'
      }, {
        en: '_WaterObject',
        ti: '.AbstractWaterObjectType',
        sh: {
          lp: '_CityObject',
          ns: 'http:\/\/www.opengis.net\/citygml\/2.0'
        }
      }, {
        en: '_GenericApplicationPropertyOfWaterGroundSurface',
        ti: 'AnyType'
      }, {
        en: 'WaterClosureSurface',
        ti: '.WaterClosureSurfaceType',
        sh: '_WaterBoundarySurface'
      }, {
        en: 'WaterSurface',
        ti: '.WaterSurfaceType',
        sh: '_WaterBoundarySurface'
      }, {
        en: '_GenericApplicationPropertyOfWaterObject',
        ti: 'AnyType'
      }, {
        en: '_WaterBoundarySurface',
        ti: '.AbstractWaterBoundarySurfaceType',
        sh: {
          lp: '_CityObject',
          ns: 'http:\/\/www.opengis.net\/citygml\/2.0'
        }
      }, {
        en: 'WaterBody',
        ti: '.WaterBodyType',
        sh: '_WaterObject'
      }]
  };
  return {
    CityGML_Waterbody_2_0: CityGML_Waterbody_2_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], CityGML_Waterbody_2_0_Module_Factory);
}
else {
  var CityGML_Waterbody_2_0_Module = CityGML_Waterbody_2_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.CityGML_Waterbody_2_0 = CityGML_Waterbody_2_0_Module.CityGML_Waterbody_2_0;
  }
  else {
    var CityGML_Waterbody_2_0 = CityGML_Waterbody_2_0_Module.CityGML_Waterbody_2_0;
  }
}