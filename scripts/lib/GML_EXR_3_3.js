var GML_EXR_3_3_Module_Factory = function () {
  var GML_EXR_3_3 = {
    n: 'GML_EXR_3_3',
    dens: 'http:\/\/www.opengis.net\/gml\/3.3\/exr',
    tis: [],
    eis: [{
        en: 'extendedEncodingRule'
      }]
  };
  return {
    GML_EXR_3_3: GML_EXR_3_3
  };
};
if (typeof define === 'function' && define.amd) {
  define([], GML_EXR_3_3_Module_Factory);
}
else {
  var GML_EXR_3_3_Module = GML_EXR_3_3_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.GML_EXR_3_3 = GML_EXR_3_3_Module.GML_EXR_3_3;
  }
  else {
    var GML_EXR_3_3 = GML_EXR_3_3_Module.GML_EXR_3_3;
  }
}