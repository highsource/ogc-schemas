var CityGML_Vegetation_1_0_Module_Factory = function () {
  var CityGML_Vegetation_1_0 = {
    n: 'CityGML_Vegetation_1_0',
    dens: 'http:\/\/www.opengis.net\/citygml\/vegetation\/1.0',
    deps: ['CityGML_1_0', 'GML_3_1_1'],
    tis: [{
        ln: 'AbstractVegetationObjectType',
        bti: 'CityGML_1_0.AbstractCityObjectType',
        ps: [{
            n: 'genericApplicationPropertyOfVegetationObject',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfVegetationObject',
            ti: 'AnyType'
          }]
      }, {
        ln: 'SolitaryVegetationObjectType',
        bti: '.AbstractVegetationObjectType',
        ps: [{
            n: 'clazz',
            en: 'class'
          }, {
            n: 'function',
            mno: 0,
            col: true
          }, {
            n: 'species'
          }, {
            n: 'height',
            ti: 'GML_3_1_1.LengthType'
          }, {
            n: 'trunkDiameter',
            ti: 'GML_3_1_1.LengthType'
          }, {
            n: 'crownDiameter',
            ti: 'GML_3_1_1.LengthType'
          }, {
            n: 'lod1Geometry',
            ti: 'GML_3_1_1.GeometryPropertyType'
          }, {
            n: 'lod2Geometry',
            ti: 'GML_3_1_1.GeometryPropertyType'
          }, {
            n: 'lod3Geometry',
            ti: 'GML_3_1_1.GeometryPropertyType'
          }, {
            n: 'lod4Geometry',
            ti: 'GML_3_1_1.GeometryPropertyType'
          }, {
            n: 'lod1ImplicitRepresentation',
            ti: 'CityGML_1_0.ImplicitRepresentationPropertyType'
          }, {
            n: 'lod2ImplicitRepresentation',
            ti: 'CityGML_1_0.ImplicitRepresentationPropertyType'
          }, {
            n: 'lod3ImplicitRepresentation',
            ti: 'CityGML_1_0.ImplicitRepresentationPropertyType'
          }, {
            n: 'lod4ImplicitRepresentation',
            ti: 'CityGML_1_0.ImplicitRepresentationPropertyType'
          }, {
            n: 'genericApplicationPropertyOfSolitaryVegetationObject',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfSolitaryVegetationObject',
            ti: 'AnyType'
          }]
      }, {
        ln: 'PlantCoverType',
        bti: '.AbstractVegetationObjectType',
        ps: [{
            n: 'clazz',
            en: 'class'
          }, {
            n: 'function',
            mno: 0,
            col: true
          }, {
            n: 'averageHeight',
            ti: 'GML_3_1_1.LengthType'
          }, {
            n: 'lod1MultiSurface',
            ti: 'GML_3_1_1.MultiSurfacePropertyType'
          }, {
            n: 'lod2MultiSurface',
            ti: 'GML_3_1_1.MultiSurfacePropertyType'
          }, {
            n: 'lod3MultiSurface',
            ti: 'GML_3_1_1.MultiSurfacePropertyType'
          }, {
            n: 'lod4MultiSurface',
            ti: 'GML_3_1_1.MultiSurfacePropertyType'
          }, {
            n: 'lod1MultiSolid',
            ti: 'GML_3_1_1.MultiSolidPropertyType'
          }, {
            n: 'lod2MultiSolid',
            ti: 'GML_3_1_1.MultiSolidPropertyType'
          }, {
            n: 'lod3MultiSolid',
            ti: 'GML_3_1_1.MultiSolidPropertyType'
          }, {
            n: 'genericApplicationPropertyOfPlantCover',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfPlantCover',
            ti: 'AnyType'
          }]
      }],
    eis: [{
        en: '_GenericApplicationPropertyOfVegetationObject',
        ti: 'AnyType'
      }, {
        en: '_GenericApplicationPropertyOfSolitaryVegetationObject',
        ti: 'AnyType'
      }, {
        en: 'PlantCover',
        ti: '.PlantCoverType',
        sh: '_VegetationObject'
      }, {
        en: '_VegetationObject',
        ti: '.AbstractVegetationObjectType',
        sh: {
          lp: '_CityObject',
          ns: 'http:\/\/www.opengis.net\/citygml\/1.0'
        }
      }, {
        en: 'SolitaryVegetationObject',
        ti: '.SolitaryVegetationObjectType',
        sh: '_VegetationObject'
      }, {
        en: '_GenericApplicationPropertyOfPlantCover',
        ti: 'AnyType'
      }]
  };
  return {
    CityGML_Vegetation_1_0: CityGML_Vegetation_1_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], CityGML_Vegetation_1_0_Module_Factory);
}
else {
  var CityGML_Vegetation_1_0_Module = CityGML_Vegetation_1_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.CityGML_Vegetation_1_0 = CityGML_Vegetation_1_0_Module.CityGML_Vegetation_1_0;
  }
  else {
    var CityGML_Vegetation_1_0 = CityGML_Vegetation_1_0_Module.CityGML_Vegetation_1_0;
  }
}