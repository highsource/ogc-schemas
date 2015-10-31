var CityGML_LandUse_1_0_Module_Factory = function () {
  var CityGML_LandUse_1_0 = {
    n: 'CityGML_LandUse_1_0',
    dens: 'http:\/\/www.opengis.net\/citygml\/landuse\/1.0',
    deps: ['CityGML_1_0', 'GML_3_1_1'],
    tis: [{
        ln: 'LandUseType',
        bti: 'CityGML_1_0.AbstractCityObjectType',
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
            n: 'lod0MultiSurface',
            ti: 'GML_3_1_1.MultiSurfacePropertyType'
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
            n: 'genericApplicationPropertyOfLandUse',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfLandUse',
            ti: 'AnyType'
          }]
      }],
    eis: [{
        en: 'LandUse',
        ti: '.LandUseType',
        sh: {
          lp: '_CityObject',
          ns: 'http:\/\/www.opengis.net\/citygml\/1.0'
        }
      }, {
        en: '_GenericApplicationPropertyOfLandUse',
        ti: 'AnyType'
      }]
  };
  return {
    CityGML_LandUse_1_0: CityGML_LandUse_1_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], CityGML_LandUse_1_0_Module_Factory);
}
else {
  var CityGML_LandUse_1_0_Module = CityGML_LandUse_1_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.CityGML_LandUse_1_0 = CityGML_LandUse_1_0_Module.CityGML_LandUse_1_0;
  }
  else {
    var CityGML_LandUse_1_0 = CityGML_LandUse_1_0_Module.CityGML_LandUse_1_0;
  }
}