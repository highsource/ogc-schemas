var CityGML_CityObjectGroup_1_0_Module_Factory = function () {
  var CityGML_CityObjectGroup_1_0 = {
    n: 'CityGML_CityObjectGroup_1_0',
    dens: 'http:\/\/www.opengis.net\/citygml\/cityobjectgroup\/1.0',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['XLink_1_0', 'CityGML_1_0', 'GML_3_1_1'],
    tis: [{
        ln: 'CityObjectGroupMemberType',
        ps: [{
            n: 'cityObject',
            rq: true,
            mx: false,
            dom: false,
            en: {
              lp: '_CityObject',
              ns: 'http:\/\/www.opengis.net\/citygml\/1.0'
            },
            ti: 'CityGML_1_0.AbstractCityObjectType',
            t: 'er'
          }, {
            n: 'cityObjectGroupMemberRole',
            an: {
              lp: 'role'
            },
            t: 'a'
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
        ln: 'CityObjectGroupType',
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
            n: 'groupMember',
            mno: 0,
            col: true,
            ti: '.CityObjectGroupMemberType'
          }, {
            n: 'parent',
            ti: '.CityObjectGroupParentType'
          }, {
            n: 'geometry',
            ti: 'GML_3_1_1.GeometryPropertyType'
          }, {
            n: 'genericApplicationPropertyOfCityObjectGroup',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfCityObjectGroup',
            ti: 'AnyType'
          }]
      }, {
        ln: 'CityObjectGroupParentType',
        ps: [{
            n: 'cityObject',
            rq: true,
            mx: false,
            dom: false,
            en: {
              lp: '_CityObject',
              ns: 'http:\/\/www.opengis.net\/citygml\/1.0'
            },
            ti: 'CityGML_1_0.AbstractCityObjectType',
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
      }],
    eis: [{
        en: '_GenericApplicationPropertyOfCityObjectGroup',
        ti: 'AnyType'
      }, {
        en: 'CityObjectGroup',
        ti: '.CityObjectGroupType',
        sh: {
          lp: '_CityObject',
          ns: 'http:\/\/www.opengis.net\/citygml\/1.0'
        }
      }]
  };
  return {
    CityGML_CityObjectGroup_1_0: CityGML_CityObjectGroup_1_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], CityGML_CityObjectGroup_1_0_Module_Factory);
}
else {
  var CityGML_CityObjectGroup_1_0_Module = CityGML_CityObjectGroup_1_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.CityGML_CityObjectGroup_1_0 = CityGML_CityObjectGroup_1_0_Module.CityGML_CityObjectGroup_1_0;
  }
  else {
    var CityGML_CityObjectGroup_1_0 = CityGML_CityObjectGroup_1_0_Module.CityGML_CityObjectGroup_1_0;
  }
}