var CityGML_Tunnel_2_0_Module_Factory = function () {
  var CityGML_Tunnel_2_0 = {
    n: 'CityGML_Tunnel_2_0',
    dens: 'http:\/\/www.opengis.net\/citygml\/tunnel\/2.0',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['GML_3_1_1', 'XLink_1_0', 'CityGML_2_0'],
    tis: [{
        ln: 'FloorSurfaceType',
        bti: '.AbstractBoundarySurfaceType',
        ps: [{
            n: 'genericApplicationPropertyOfFloorSurface',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfFloorSurface',
            ti: 'AnyType'
          }]
      }, {
        ln: 'TunnelType',
        bti: '.AbstractTunnelType',
        ps: [{
            n: 'genericApplicationPropertyOfTunnel',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfTunnel',
            ti: 'AnyType'
          }]
      }, {
        ln: 'AbstractTunnelType',
        bti: 'CityGML_2_0.AbstractSiteType',
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
            n: 'yearOfConstruction',
            ti: 'GYear'
          }, {
            n: 'yearOfDemolition',
            ti: 'GYear'
          }, {
            n: 'lod1Solid',
            ti: 'GML_3_1_1.SolidPropertyType'
          }, {
            n: 'lod1MultiSurface',
            ti: 'GML_3_1_1.MultiSurfacePropertyType'
          }, {
            n: 'lod1TerrainIntersection',
            ti: 'GML_3_1_1.MultiCurvePropertyType'
          }, {
            n: 'lod2Solid',
            ti: 'GML_3_1_1.SolidPropertyType'
          }, {
            n: 'lod2MultiSurface',
            ti: 'GML_3_1_1.MultiSurfacePropertyType'
          }, {
            n: 'lod2MultiCurve',
            ti: 'GML_3_1_1.MultiCurvePropertyType'
          }, {
            n: 'lod2TerrainIntersection',
            ti: 'GML_3_1_1.MultiCurvePropertyType'
          }, {
            n: 'outerTunnelInstallation',
            mno: 0,
            col: true,
            ti: '.TunnelInstallationPropertyType'
          }, {
            n: 'interiorTunnelInstallation',
            mno: 0,
            col: true,
            ti: '.IntTunnelInstallationPropertyType'
          }, {
            n: 'cityObjectBoundedBy',
            mno: 0,
            col: true,
            en: 'boundedBy',
            ti: '.BoundarySurfacePropertyType'
          }, {
            n: 'lod3Solid',
            ti: 'GML_3_1_1.SolidPropertyType'
          }, {
            n: 'lod3MultiSurface',
            ti: 'GML_3_1_1.MultiSurfacePropertyType'
          }, {
            n: 'lod3MultiCurve',
            ti: 'GML_3_1_1.MultiCurvePropertyType'
          }, {
            n: 'lod3TerrainIntersection',
            ti: 'GML_3_1_1.MultiCurvePropertyType'
          }, {
            n: 'lod4Solid',
            ti: 'GML_3_1_1.SolidPropertyType'
          }, {
            n: 'lod4MultiSurface',
            ti: 'GML_3_1_1.MultiSurfacePropertyType'
          }, {
            n: 'lod4MultiCurve',
            ti: 'GML_3_1_1.MultiCurvePropertyType'
          }, {
            n: 'lod4TerrainIntersection',
            ti: 'GML_3_1_1.MultiCurvePropertyType'
          }, {
            n: 'interiorHollowSpace',
            mno: 0,
            col: true,
            ti: '.InteriorHollowSpacePropertyType'
          }, {
            n: 'consistsOfTunnelPart',
            mno: 0,
            col: true,
            ti: '.TunnelPartPropertyType'
          }, {
            n: 'genericApplicationPropertyOfAbstractTunnel',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfAbstractTunnel',
            ti: 'AnyType'
          }]
      }, {
        ln: 'OuterCeilingSurfaceType',
        bti: '.AbstractBoundarySurfaceType',
        ps: [{
            n: 'genericApplicationPropertyOfOuterCeilingSurface',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfOuterCeilingSurface',
            ti: 'AnyType'
          }]
      }, {
        ln: 'AbstractOpeningType',
        bti: 'CityGML_2_0.AbstractCityObjectType',
        ps: [{
            n: 'lod3MultiSurface',
            ti: 'GML_3_1_1.MultiSurfacePropertyType'
          }, {
            n: 'lod4MultiSurface',
            ti: 'GML_3_1_1.MultiSurfacePropertyType'
          }, {
            n: 'lod3ImplicitRepresentation',
            ti: 'CityGML_2_0.ImplicitRepresentationPropertyType'
          }, {
            n: 'lod4ImplicitRepresentation',
            ti: 'CityGML_2_0.ImplicitRepresentationPropertyType'
          }, {
            n: 'genericApplicationPropertyOfOpening',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfOpening',
            ti: 'AnyType'
          }]
      }, {
        ln: 'TunnelFurnitureType',
        bti: 'CityGML_2_0.AbstractCityObjectType',
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
            n: 'lod4Geometry',
            ti: 'GML_3_1_1.GeometryPropertyType'
          }, {
            n: 'lod4ImplicitRepresentation',
            ti: 'CityGML_2_0.ImplicitRepresentationPropertyType'
          }, {
            n: 'genericApplicationPropertyOfTunnelFurniture',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfTunnelFurniture',
            ti: 'AnyType'
          }]
      }, {
        ln: 'RoofSurfaceType',
        bti: '.AbstractBoundarySurfaceType',
        ps: [{
            n: 'genericApplicationPropertyOfRoofSurface',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfRoofSurface',
            ti: 'AnyType'
          }]
      }, {
        ln: 'OpeningPropertyType',
        ps: [{
            n: 'opening',
            rq: true,
            mx: false,
            dom: false,
            en: '_Opening',
            ti: '.AbstractOpeningType',
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
        ln: 'HollowSpaceType',
        bti: 'CityGML_2_0.AbstractCityObjectType',
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
            n: 'lod4Solid',
            ti: 'GML_3_1_1.SolidPropertyType'
          }, {
            n: 'lod4MultiSurface',
            ti: 'GML_3_1_1.MultiSurfacePropertyType'
          }, {
            n: 'cityObjectBoundedBy',
            mno: 0,
            col: true,
            en: 'boundedBy',
            ti: '.BoundarySurfacePropertyType'
          }, {
            n: 'interiorFurniture',
            mno: 0,
            col: true,
            ti: '.InteriorFurniturePropertyType'
          }, {
            n: 'hollowSpaceInstallation',
            mno: 0,
            col: true,
            ti: '.IntTunnelInstallationPropertyType'
          }, {
            n: 'genericApplicationPropertyOfHollowSpace',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfHollowSpace',
            ti: 'AnyType'
          }]
      }, {
        ln: 'TunnelPartType',
        bti: '.AbstractTunnelType',
        ps: [{
            n: 'genericApplicationPropertyOfTunnelPart',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfTunnelPart',
            ti: 'AnyType'
          }]
      }, {
        ln: 'TunnelInstallationType',
        bti: 'CityGML_2_0.AbstractCityObjectType',
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
            n: 'lod2Geometry',
            ti: 'GML_3_1_1.GeometryPropertyType'
          }, {
            n: 'lod3Geometry',
            ti: 'GML_3_1_1.GeometryPropertyType'
          }, {
            n: 'lod4Geometry',
            ti: 'GML_3_1_1.GeometryPropertyType'
          }, {
            n: 'lod2ImplicitRepresentation',
            ti: 'CityGML_2_0.ImplicitRepresentationPropertyType'
          }, {
            n: 'lod3ImplicitRepresentation',
            ti: 'CityGML_2_0.ImplicitRepresentationPropertyType'
          }, {
            n: 'lod4ImplicitRepresentation',
            ti: 'CityGML_2_0.ImplicitRepresentationPropertyType'
          }, {
            n: 'cityObjectBoundedBy',
            mno: 0,
            col: true,
            en: 'boundedBy',
            ti: '.BoundarySurfacePropertyType'
          }, {
            n: 'genericApplicationPropertyOfTunnelInstallation',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfTunnelInstallation',
            ti: 'AnyType'
          }]
      }, {
        ln: 'TunnelInstallationPropertyType',
        ps: [{
            n: 'tunnelInstallation',
            rq: true,
            en: 'TunnelInstallation',
            ti: '.TunnelInstallationType'
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
        ln: 'InteriorHollowSpacePropertyType',
        ps: [{
            n: 'hollowSpace',
            rq: true,
            en: 'HollowSpace',
            ti: '.HollowSpaceType'
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
        ln: 'IntTunnelInstallationPropertyType',
        ps: [{
            n: 'intTunnelInstallation',
            rq: true,
            en: 'IntTunnelInstallation',
            ti: '.IntTunnelInstallationType'
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
        ln: 'TunnelPartPropertyType',
        ps: [{
            n: 'tunnelPart',
            rq: true,
            en: 'TunnelPart',
            ti: '.TunnelPartType'
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
        ln: 'WallSurfaceType',
        bti: '.AbstractBoundarySurfaceType',
        ps: [{
            n: 'genericApplicationPropertyOfWallSurface',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfWallSurface',
            ti: 'AnyType'
          }]
      }, {
        ln: 'OuterFloorSurfaceType',
        bti: '.AbstractBoundarySurfaceType',
        ps: [{
            n: 'genericApplicationPropertyOfOuterFloorSurface',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfOuterFloorSurface',
            ti: 'AnyType'
          }]
      }, {
        ln: 'AbstractBoundarySurfaceType',
        bti: 'CityGML_2_0.AbstractCityObjectType',
        ps: [{
            n: 'lod2MultiSurface',
            ti: 'GML_3_1_1.MultiSurfacePropertyType'
          }, {
            n: 'lod3MultiSurface',
            ti: 'GML_3_1_1.MultiSurfacePropertyType'
          }, {
            n: 'lod4MultiSurface',
            ti: 'GML_3_1_1.MultiSurfacePropertyType'
          }, {
            n: 'opening',
            mno: 0,
            col: true,
            ti: '.OpeningPropertyType'
          }, {
            n: 'genericApplicationPropertyOfBoundarySurface',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfBoundarySurface',
            ti: 'AnyType'
          }]
      }, {
        ln: 'InteriorFurniturePropertyType',
        ps: [{
            n: 'tunnelFurniture',
            rq: true,
            en: 'TunnelFurniture',
            ti: '.TunnelFurnitureType'
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
        ln: 'ClosureSurfaceType',
        bti: '.AbstractBoundarySurfaceType',
        ps: [{
            n: 'genericApplicationPropertyOfClosureSurface',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfClosureSurface',
            ti: 'AnyType'
          }]
      }, {
        ln: 'CeilingSurfaceType',
        bti: '.AbstractBoundarySurfaceType',
        ps: [{
            n: 'genericApplicationPropertyOfCeilingSurface',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfCeilingSurface',
            ti: 'AnyType'
          }]
      }, {
        ln: 'DoorType',
        bti: '.AbstractOpeningType',
        ps: [{
            n: 'genericApplicationPropertyOfDoor',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfDoor',
            ti: 'AnyType'
          }]
      }, {
        ln: 'BoundarySurfacePropertyType',
        ps: [{
            n: 'boundarySurface',
            rq: true,
            mx: false,
            dom: false,
            en: '_BoundarySurface',
            ti: '.AbstractBoundarySurfaceType',
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
        ln: 'IntTunnelInstallationType',
        bti: 'CityGML_2_0.AbstractCityObjectType',
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
            n: 'lod4Geometry',
            ti: 'GML_3_1_1.GeometryPropertyType'
          }, {
            n: 'lod4ImplicitRepresentation',
            ti: 'CityGML_2_0.ImplicitRepresentationPropertyType'
          }, {
            n: 'cityObjectBoundedBy',
            mno: 0,
            col: true,
            en: 'boundedBy',
            ti: '.BoundarySurfacePropertyType'
          }, {
            n: 'genericApplicationPropertyOfIntTunnelInstallation',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfIntTunnelInstallation',
            ti: 'AnyType'
          }]
      }, {
        ln: 'GroundSurfaceType',
        bti: '.AbstractBoundarySurfaceType',
        ps: [{
            n: 'genericApplicationPropertyOfGroundSurface',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfGroundSurface',
            ti: 'AnyType'
          }]
      }, {
        ln: 'WindowType',
        bti: '.AbstractOpeningType',
        ps: [{
            n: 'genericApplicationPropertyOfWindow',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfWindow',
            ti: 'AnyType'
          }]
      }, {
        ln: 'InteriorWallSurfaceType',
        bti: '.AbstractBoundarySurfaceType',
        ps: [{
            n: 'genericApplicationPropertyOfInteriorWallSurface',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfInteriorWallSurface',
            ti: 'AnyType'
          }]
      }],
    eis: [{
        en: 'TunnelPart',
        ti: '.TunnelPartType',
        sh: '_AbstractTunnel'
      }, {
        en: '_GenericApplicationPropertyOfOpening',
        ti: 'AnyType'
      }, {
        en: '_GenericApplicationPropertyOfTunnel',
        ti: 'AnyType'
      }, {
        en: '_GenericApplicationPropertyOfHollowSpace',
        ti: 'AnyType'
      }, {
        en: 'FloorSurface',
        ti: '.FloorSurfaceType',
        sh: '_BoundarySurface'
      }, {
        en: '_GenericApplicationPropertyOfDoor',
        ti: 'AnyType'
      }, {
        en: '_GenericApplicationPropertyOfWindow',
        ti: 'AnyType'
      }, {
        en: '_GenericApplicationPropertyOfWallSurface',
        ti: 'AnyType'
      }, {
        en: '_GenericApplicationPropertyOfGroundSurface',
        ti: 'AnyType'
      }, {
        en: '_GenericApplicationPropertyOfInteriorWallSurface',
        ti: 'AnyType'
      }, {
        en: 'RoofSurface',
        ti: '.RoofSurfaceType',
        sh: '_BoundarySurface'
      }, {
        en: 'IntTunnelInstallation',
        ti: '.IntTunnelInstallationType',
        sh: {
          lp: '_CityObject',
          ns: 'http:\/\/www.opengis.net\/citygml\/2.0'
        }
      }, {
        en: 'Door',
        ti: '.DoorType',
        sh: '_Opening'
      }, {
        en: '_GenericApplicationPropertyOfTunnelFurniture',
        ti: 'AnyType'
      }, {
        en: '_GenericApplicationPropertyOfOuterCeilingSurface',
        ti: 'AnyType'
      }, {
        en: 'HollowSpace',
        ti: '.HollowSpaceType',
        sh: {
          lp: '_CityObject',
          ns: 'http:\/\/www.opengis.net\/citygml\/2.0'
        }
      }, {
        en: 'InteriorWallSurface',
        ti: '.InteriorWallSurfaceType',
        sh: '_BoundarySurface'
      }, {
        en: 'OuterCeilingSurface',
        ti: '.OuterCeilingSurfaceType',
        sh: '_BoundarySurface'
      }, {
        en: '_GenericApplicationPropertyOfAbstractTunnel',
        ti: 'AnyType'
      }, {
        en: 'ClosureSurface',
        ti: '.ClosureSurfaceType',
        sh: '_BoundarySurface'
      }, {
        en: '_BoundarySurface',
        ti: '.AbstractBoundarySurfaceType',
        sh: {
          lp: '_CityObject',
          ns: 'http:\/\/www.opengis.net\/citygml\/2.0'
        }
      }, {
        en: '_GenericApplicationPropertyOfTunnelInstallation',
        ti: 'AnyType'
      }, {
        en: 'TunnelInstallation',
        ti: '.TunnelInstallationType',
        sh: {
          lp: '_CityObject',
          ns: 'http:\/\/www.opengis.net\/citygml\/2.0'
        }
      }, {
        en: '_GenericApplicationPropertyOfClosureSurface',
        ti: 'AnyType'
      }, {
        en: 'Window',
        ti: '.WindowType',
        sh: '_Opening'
      }, {
        en: '_GenericApplicationPropertyOfIntTunnelInstallation',
        ti: 'AnyType'
      }, {
        en: 'Tunnel',
        ti: '.TunnelType',
        sh: '_AbstractTunnel'
      }, {
        en: 'WallSurface',
        ti: '.WallSurfaceType',
        sh: '_BoundarySurface'
      }, {
        en: '_GenericApplicationPropertyOfTunnelPart',
        ti: 'AnyType'
      }, {
        en: '_AbstractTunnel',
        ti: '.AbstractTunnelType',
        sh: {
          lp: '_Site',
          ns: 'http:\/\/www.opengis.net\/citygml\/2.0'
        }
      }, {
        en: '_GenericApplicationPropertyOfFloorSurface',
        ti: 'AnyType'
      }, {
        en: 'GroundSurface',
        ti: '.GroundSurfaceType',
        sh: '_BoundarySurface'
      }, {
        en: '_GenericApplicationPropertyOfBoundarySurface',
        ti: 'AnyType'
      }, {
        en: 'TunnelFurniture',
        ti: '.TunnelFurnitureType',
        sh: {
          lp: '_CityObject',
          ns: 'http:\/\/www.opengis.net\/citygml\/2.0'
        }
      }, {
        en: 'OuterFloorSurface',
        ti: '.OuterFloorSurfaceType',
        sh: '_BoundarySurface'
      }, {
        en: '_GenericApplicationPropertyOfRoofSurface',
        ti: 'AnyType'
      }, {
        en: '_Opening',
        ti: '.AbstractOpeningType',
        sh: {
          lp: '_CityObject',
          ns: 'http:\/\/www.opengis.net\/citygml\/2.0'
        }
      }, {
        en: '_GenericApplicationPropertyOfOuterFloorSurface',
        ti: 'AnyType'
      }, {
        en: '_GenericApplicationPropertyOfCeilingSurface',
        ti: 'AnyType'
      }, {
        en: 'CeilingSurface',
        ti: '.CeilingSurfaceType',
        sh: '_BoundarySurface'
      }]
  };
  return {
    CityGML_Tunnel_2_0: CityGML_Tunnel_2_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], CityGML_Tunnel_2_0_Module_Factory);
}
else {
  var CityGML_Tunnel_2_0_Module = CityGML_Tunnel_2_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.CityGML_Tunnel_2_0 = CityGML_Tunnel_2_0_Module.CityGML_Tunnel_2_0;
  }
  else {
    var CityGML_Tunnel_2_0 = CityGML_Tunnel_2_0_Module.CityGML_Tunnel_2_0;
  }
}