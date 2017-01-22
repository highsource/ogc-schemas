var CityGML_2_0_Module_Factory = function () {
  var CityGML_2_0 = {
    n: 'CityGML_2_0',
    dens: 'http:\/\/www.opengis.net\/citygml\/2.0',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['GML_3_1_1', 'XLink_1_0', 'xAL_2_0'],
    tis: [{
        ln: 'AddressType',
        bti: 'GML_3_1_1.AbstractFeatureType',
        ps: [{
            n: 'xalAddress',
            rq: true,
            ti: '.XalAddressPropertyType'
          }, {
            n: 'multiPoint',
            ti: 'GML_3_1_1.MultiPointPropertyType'
          }, {
            n: 'genericApplicationPropertyOfAddress',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfAddress',
            ti: 'AnyType'
          }]
      }, {
        ln: 'ImplicitGeometryType',
        bti: 'GML_3_1_1.AbstractGMLType',
        ps: [{
            n: 'mimeType',
            ti: 'GML_3_1_1.CodeType'
          }, {
            n: 'transformationMatrix',
            ti: {
              t: 'l',
              bti: 'Double'
            }
          }, {
            n: 'libraryObject'
          }, {
            n: 'relativeGMLGeometry',
            ti: 'GML_3_1_1.GeometryPropertyType'
          }, {
            n: 'referencePoint',
            rq: true,
            ti: 'GML_3_1_1.PointPropertyType'
          }]
      }, {
        ln: 'XalAddressPropertyType',
        tn: 'xalAddressPropertyType',
        ps: [{
            n: 'addressDetails',
            rq: true,
            en: {
              lp: 'AddressDetails',
              ns: 'urn:oasis:names:tc:ciq:xsdschema:xAL:2.0'
            },
            ti: 'xAL_2_0.AddressDetails'
          }]
      }, {
        ln: 'ExternalReferenceType',
        ps: [{
            n: 'informationSystem'
          }, {
            n: 'externalObject',
            rq: true,
            ti: '.ExternalObjectReferenceType'
          }]
      }, {
        ln: 'AddressPropertyType',
        ps: [{
            n: 'address',
            rq: true,
            en: 'Address',
            ti: '.AddressType'
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
        ln: 'ImplicitRepresentationPropertyType',
        ps: [{
            n: 'implicitGeometry',
            rq: true,
            en: 'ImplicitGeometry',
            ti: '.ImplicitGeometryType'
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
        ln: 'ExternalObjectReferenceType',
        ps: [{
            n: 'name',
            rq: true
          }, {
            n: 'uri',
            rq: true
          }]
      }, {
        ln: 'CityModelType',
        bti: 'GML_3_1_1.AbstractFeatureCollectionType',
        ps: [{
            n: 'genericApplicationPropertyOfCityModel',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfCityModel',
            ti: 'AnyType'
          }]
      }, {
        ln: 'AbstractSiteType',
        bti: '.AbstractCityObjectType',
        ps: [{
            n: 'genericApplicationPropertyOfSite',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfSite',
            ti: 'AnyType'
          }]
      }, {
        ln: 'GeneralizationRelationType',
        ps: [{
            n: 'cityObject',
            rq: true,
            mx: false,
            dom: false,
            en: '_CityObject',
            ti: '.AbstractCityObjectType',
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
        ln: 'AbstractCityObjectType',
        bti: 'GML_3_1_1.AbstractFeatureType',
        ps: [{
            n: 'creationDate',
            ti: 'Date'
          }, {
            n: 'terminationDate',
            ti: 'Date'
          }, {
            n: 'externalReference',
            mno: 0,
            col: true,
            ti: '.ExternalReferenceType'
          }, {
            n: 'generalizesTo',
            mno: 0,
            col: true,
            ti: '.GeneralizationRelationType'
          }, {
            n: 'relativeToTerrain'
          }, {
            n: 'relativeToWater'
          }, {
            n: 'genericApplicationPropertyOfCityObject',
            mno: 0,
            col: true,
            mx: false,
            dom: false,
            en: '_GenericApplicationPropertyOfCityObject',
            ti: 'AnyType',
            t: 'er'
          }]
      }, {
        t: 'enum',
        ln: 'RelativeToTerrainType',
        vs: ['entirelyAboveTerrain', 'substantiallyAboveTerrain', 'substantiallyAboveAndBelowTerrain', 'substantiallyBelowTerrain', 'entirelyBelowTerrain']
      }, {
        t: 'enum',
        ln: 'RelativeToWaterType',
        vs: ['entirelyAboveWaterSurface', 'substantiallyAboveWaterSurface', 'substantiallyAboveAndBelowWaterSurface', 'substantiallyBelowWaterSurface', 'entirelyBelowWaterSurface', 'temporarilyAboveAndBelowWaterSurface']
      }],
    eis: [{
        en: '_GenericApplicationPropertyOfCityModel',
        ti: 'AnyType'
      }, {
        en: 'Address',
        ti: '.AddressType',
        sh: {
          lp: '_Feature',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'CityModel',
        ti: '.CityModelType',
        sh: {
          lp: '_FeatureCollection',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: '_GenericApplicationPropertyOfSite',
        ti: 'AnyType'
      }, {
        en: 'cityObjectMember',
        ti: 'GML_3_1_1.FeaturePropertyType',
        sh: {
          lp: 'featureMember',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'ImplicitGeometry',
        ti: '.ImplicitGeometryType',
        sh: {
          lp: '_GML',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: '_GenericApplicationPropertyOfCityObject',
        ti: 'AnyType'
      }, {
        en: '_CityObject',
        ti: '.AbstractCityObjectType',
        sh: {
          lp: '_Feature',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: '_GenericApplicationPropertyOfAddress',
        ti: 'AnyType'
      }, {
        en: '_Site',
        ti: '.AbstractSiteType',
        sh: '_CityObject'
      }]
  };
  return {
    CityGML_2_0: CityGML_2_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], CityGML_2_0_Module_Factory);
}
else {
  var CityGML_2_0_Module = CityGML_2_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.CityGML_2_0 = CityGML_2_0_Module.CityGML_2_0;
  }
  else {
    var CityGML_2_0 = CityGML_2_0_Module.CityGML_2_0;
  }
}