var CityGML_1_0_Module_Factory = function () {
  var CityGML_1_0 = {
    n: 'CityGML_1_0',
    dens: 'http:\/\/www.opengis.net\/citygml\/1.0',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['GML_3_1_1', 'XLink_1_0', 'xAL_2_0'],
    tis: [{
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
        ln: 'ExternalReferenceType',
        ps: [{
            n: 'informationSystem'
          }, {
            n: 'externalObject',
            rq: true,
            ti: '.ExternalObjectReferenceType'
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
        ln: 'AddressPropertyType',
        bti: 'GML_3_1_1.AssociationType'
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
        ln: 'ImplicitGeometryType',
        bti: 'GML_3_1_1.AbstractGMLType',
        ps: [{
            n: 'mimeType'
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
        ln: 'ExternalObjectReferenceType',
        ps: [{
            n: 'name',
            rq: true
          }, {
            n: 'uri',
            rq: true
          }]
      }, {
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
        ln: 'ImplicitRepresentationPropertyType',
        bti: 'GML_3_1_1.AssociationType'
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
      }],
    eis: [{
        en: 'ImplicitGeometry',
        ti: '.ImplicitGeometryType',
        sh: {
          lp: '_GML',
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
        en: '_Site',
        ti: '.AbstractSiteType',
        sh: '_CityObject'
      }, {
        en: '_GenericApplicationPropertyOfAddress',
        ti: 'AnyType'
      }, {
        en: '_GenericApplicationPropertyOfCityModel',
        ti: 'AnyType'
      }, {
        en: '_GenericApplicationPropertyOfSite',
        ti: 'AnyType'
      }, {
        en: '_GenericApplicationPropertyOfCityObject',
        ti: 'AnyType'
      }, {
        en: 'cityObjectMember',
        ti: 'GML_3_1_1.FeaturePropertyType',
        sh: {
          lp: 'featureMember',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: '_CityObject',
        ti: '.AbstractCityObjectType',
        sh: {
          lp: '_Feature',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'Address',
        ti: '.AddressType',
        sh: {
          lp: '_Feature',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }]
  };
  return {
    CityGML_1_0: CityGML_1_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], CityGML_1_0_Module_Factory);
}
else {
  var CityGML_1_0_Module = CityGML_1_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.CityGML_1_0 = CityGML_1_0_Module.CityGML_1_0;
  }
  else {
    var CityGML_1_0 = CityGML_1_0_Module.CityGML_1_0;
  }
}