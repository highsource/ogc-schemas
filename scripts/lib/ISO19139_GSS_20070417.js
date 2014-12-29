var ISO19139_GSS_20070417_Module_Factory = function () {
  var ISO19139_GSS_20070417 = {
    n: 'ISO19139_GSS_20070417',
    dens: 'http:\/\/www.opengis.net\/gml\/3.2',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['GML_3_2_1', 'GML_3_2_1', 'XLink_1_0', 'XLink_1_0', 'XLink_1_0', 'XLink_1_0', 'XLink_1_0', 'XLink_1_0'],
    tis: [{
        ln: 'GMPointPropertyType',
        ps: [{
            n: 'point',
            en: 'Point',
            ti: 'GML_3_2_1.PointType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason',
              ns: 'http:\/\/www.isotc211.org\/2005\/gco'
            },
            t: 'a'
          }, {
            n: 'uuidref',
            an: {
              lp: 'uuidref'
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
        ln: 'GMObjectPropertyType',
        ps: [{
            n: 'abstractGeometry',
            mx: false,
            dom: false,
            typed: false,
            en: 'AbstractGeometry',
            ti: 'GML_3_2_1.AbstractGeometryType',
            t: 'er'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason',
              ns: 'http:\/\/www.isotc211.org\/2005\/gco'
            },
            t: 'a'
          }, {
            n: 'uuidref',
            an: {
              lp: 'uuidref'
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
    eis: []
  };
  return {
    ISO19139_GSS_20070417: ISO19139_GSS_20070417
  };
};
if (typeof define === 'function' && define.amd) {
  define([], ISO19139_GSS_20070417_Module_Factory);
}
else {
  var ISO19139_GSS_20070417_Module = ISO19139_GSS_20070417_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.ISO19139_GSS_20070417 = ISO19139_GSS_20070417_Module.ISO19139_GSS_20070417;
  }
  else {
    var ISO19139_GSS_20070417 = ISO19139_GSS_20070417_Module.ISO19139_GSS_20070417;
  }
}