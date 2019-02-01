var CityGML_CityObjectGroup_2_0_Module_Factory = function () {
  var CityGML_CityObjectGroup_2_0 = {
    n: 'CityGML_CityObjectGroup_2_0',
    dens: 'http:\/\/www.opengis.net\/citygml\/cityobjectgroup\/2.0',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['XLink_1_0', 'CityGML_2_0', 'GML_3_1_1'],
    tis: [{
        ln: 'CityObjectGroupType',
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
        ln: 'CityObjectGroupMemberType',
        ps: [{
            n: 'cityObject',
            rq: true,
            mx: false,
            dom: false,
            en: {
              lp: '_CityObject',
              ns: 'http:\/\/www.opengis.net\/citygml\/2.0'
            },
            ti: 'CityGML_2_0.AbstractCityObjectType',
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
        ln: 'CityObjectGroupParentType',
        ps: [{
            n: 'cityObject',
            rq: true,
            mx: false,
            dom: false,
            en: {
              lp: '_CityObject',
              ns: 'http:\/\/www.opengis.net\/citygml\/2.0'
            },
            ti: 'CityGML_2_0.AbstractCityObjectType',
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
        en: 'CityObjectGroup',
        ti: '.CityObjectGroupType',
        sh: {
          lp: '_CityObject',
          ns: 'http:\/\/www.opengis.net\/citygml\/2.0'
        }
      }, {
        en: '_GenericApplicationPropertyOfCityObjectGroup',
        ti: 'AnyType'
      }]
  };
  return {
    CityGML_CityObjectGroup_2_0: CityGML_CityObjectGroup_2_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], CityGML_CityObjectGroup_2_0_Module_Factory);
}
else {
  var CityGML_CityObjectGroup_2_0_Module = CityGML_CityObjectGroup_2_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.CityGML_CityObjectGroup_2_0 = CityGML_CityObjectGroup_2_0_Module.CityGML_CityObjectGroup_2_0;
  }
  else {
    var CityGML_CityObjectGroup_2_0 = CityGML_CityObjectGroup_2_0_Module.CityGML_CityObjectGroup_2_0;
  }
}