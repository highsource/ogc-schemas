var CityGML_CityFuntiture_1_0_Module_Factory = function () {
  var CityGML_CityFuntiture_1_0 = {
    n: 'CityGML_CityFuntiture_1_0',
    dens: 'http:\/\/www.opengis.net\/citygml\/cityfurniture\/1.0',
    deps: ['CityGML_1_0', 'GML_3_1_1'],
    tis: [{
        ln: 'CityFurnitureType',
        bti: 'CityGML_1_0.AbstractCityObjectType',
        ps: [{
            n: 'clazz',
            en: 'class'
          }, {
            n: 'function',
            mno: 0,
            col: true
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
            n: 'lod1TerrainIntersection',
            ti: 'GML_3_1_1.MultiCurvePropertyType'
          }, {
            n: 'lod2TerrainIntersection',
            ti: 'GML_3_1_1.MultiCurvePropertyType'
          }, {
            n: 'lod3TerrainIntersection',
            ti: 'GML_3_1_1.MultiCurvePropertyType'
          }, {
            n: 'lod4TerrainIntersection',
            ti: 'GML_3_1_1.MultiCurvePropertyType'
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
            n: 'genericApplicationPropertyOfCityFurniture',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfCityFurniture',
            ti: 'AnyType'
          }]
      }],
    eis: [{
        en: '_GenericApplicationPropertyOfCityFurniture',
        ti: 'AnyType'
      }, {
        en: 'CityFurniture',
        ti: '.CityFurnitureType',
        sh: {
          lp: '_CityObject',
          ns: 'http:\/\/www.opengis.net\/citygml\/1.0'
        }
      }]
  };
  return {
    CityGML_CityFuntiture_1_0: CityGML_CityFuntiture_1_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], CityGML_CityFuntiture_1_0_Module_Factory);
}
else {
  var CityGML_CityFuntiture_1_0_Module = CityGML_CityFuntiture_1_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.CityGML_CityFuntiture_1_0 = CityGML_CityFuntiture_1_0_Module.CityGML_CityFuntiture_1_0;
  }
  else {
    var CityGML_CityFuntiture_1_0 = CityGML_CityFuntiture_1_0_Module.CityGML_CityFuntiture_1_0;
  }
}