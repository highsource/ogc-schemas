var CityGML_Transportation_1_0_Module_Factory = function () {
  var CityGML_Transportation_1_0 = {
    n: 'CityGML_Transportation_1_0',
    dens: 'http:\/\/www.opengis.net\/citygml\/transportation\/1.0',
    deps: ['CityGML_1_0', 'GML_3_1_1'],
    tis: [{
        ln: 'AuxiliaryTrafficAreaType',
        bti: '.AbstractTransportationObjectType',
        ps: [{
            n: 'function',
            mno: 0,
            col: true
          }, {
            n: 'surfaceMaterial'
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
            n: 'genericApplicationPropertyOfAuxiliaryTrafficArea',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfAuxiliaryTrafficArea',
            ti: 'AnyType'
          }]
      }, {
        ln: 'TransportationComplexType',
        bti: '.AbstractTransportationObjectType',
        ps: [{
            n: 'function',
            mno: 0,
            col: true
          }, {
            n: 'usage',
            mno: 0,
            col: true
          }, {
            n: 'trafficArea',
            mno: 0,
            col: true,
            ti: '.TrafficAreaPropertyType'
          }, {
            n: 'auxiliaryTrafficArea',
            mno: 0,
            col: true,
            ti: '.AuxiliaryTrafficAreaPropertyType'
          }, {
            n: 'lod0Network',
            mno: 0,
            col: true,
            ti: 'GML_3_1_1.GeometricComplexPropertyType'
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
            n: 'genericApplicationPropertyOfTransportationComplex',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfTransportationComplex',
            ti: 'AnyType'
          }]
      }, {
        ln: 'TrafficAreaType',
        bti: '.AbstractTransportationObjectType',
        ps: [{
            n: 'usage',
            mno: 0,
            col: true
          }, {
            n: 'function',
            mno: 0,
            col: true
          }, {
            n: 'surfaceMaterial'
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
            n: 'genericApplicationPropertyOfTrafficArea',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfTrafficArea',
            ti: 'AnyType'
          }]
      }, {
        ln: 'RoadType',
        bti: '.TransportationComplexType',
        ps: [{
            n: 'genericApplicationPropertyOfRoad',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfRoad',
            ti: 'AnyType'
          }]
      }, {
        ln: 'TrackType',
        bti: '.TransportationComplexType',
        ps: [{
            n: 'genericApplicationPropertyOfTrack',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfTrack',
            ti: 'AnyType'
          }]
      }, {
        ln: 'TrafficAreaPropertyType',
        bti: 'GML_3_1_1.AssociationType'
      }, {
        ln: 'RailwayType',
        bti: '.TransportationComplexType',
        ps: [{
            n: 'genericApplicationPropertyOfRailway',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfRailway',
            ti: 'AnyType'
          }]
      }, {
        ln: 'SquareType',
        bti: '.TransportationComplexType',
        ps: [{
            n: 'genericApplicationPropertyOfSquare',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfSquare',
            ti: 'AnyType'
          }]
      }, {
        ln: 'AbstractTransportationObjectType',
        bti: 'CityGML_1_0.AbstractCityObjectType',
        ps: [{
            n: 'genericApplicationPropertyOfTransportationObject',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfTransportationObject',
            ti: 'AnyType'
          }]
      }, {
        ln: 'AuxiliaryTrafficAreaPropertyType',
        bti: 'GML_3_1_1.AssociationType'
      }],
    eis: [{
        en: 'Road',
        ti: '.RoadType',
        sh: 'TransportationComplex'
      }, {
        en: '_TransportationObject',
        ti: '.AbstractTransportationObjectType',
        sh: {
          lp: '_CityObject',
          ns: 'http:\/\/www.opengis.net\/citygml\/1.0'
        }
      }, {
        en: '_GenericApplicationPropertyOfTrack',
        ti: 'AnyType'
      }, {
        en: '_GenericApplicationPropertyOfRoad',
        ti: 'AnyType'
      }, {
        en: '_GenericApplicationPropertyOfRailway',
        ti: 'AnyType'
      }, {
        en: 'Square',
        ti: '.SquareType',
        sh: 'TransportationComplex'
      }, {
        en: '_GenericApplicationPropertyOfTrafficArea',
        ti: 'AnyType'
      }, {
        en: '_GenericApplicationPropertyOfTransportationComplex',
        ti: 'AnyType'
      }, {
        en: 'Railway',
        ti: '.RailwayType',
        sh: 'TransportationComplex'
      }, {
        en: '_GenericApplicationPropertyOfTransportationObject',
        ti: 'AnyType'
      }, {
        en: 'TransportationComplex',
        ti: '.TransportationComplexType',
        sh: '_TransportationObject'
      }, {
        en: 'Track',
        ti: '.TrackType',
        sh: 'TransportationComplex'
      }, {
        en: '_GenericApplicationPropertyOfSquare',
        ti: 'AnyType'
      }, {
        en: 'AuxiliaryTrafficArea',
        ti: '.AuxiliaryTrafficAreaType',
        sh: '_TransportationObject'
      }, {
        en: '_GenericApplicationPropertyOfAuxiliaryTrafficArea',
        ti: 'AnyType'
      }, {
        en: 'TrafficArea',
        ti: '.TrafficAreaType',
        sh: '_TransportationObject'
      }]
  };
  return {
    CityGML_Transportation_1_0: CityGML_Transportation_1_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], CityGML_Transportation_1_0_Module_Factory);
}
else {
  var CityGML_Transportation_1_0_Module = CityGML_Transportation_1_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.CityGML_Transportation_1_0 = CityGML_Transportation_1_0_Module.CityGML_Transportation_1_0;
  }
  else {
    var CityGML_Transportation_1_0 = CityGML_Transportation_1_0_Module.CityGML_Transportation_1_0;
  }
}