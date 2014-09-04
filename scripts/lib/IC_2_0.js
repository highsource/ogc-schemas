var IC_2_0_Module_Factory = function () {
  var IC_2_0 = {
    name: 'IC_2_0',
    typeInfos: [{
        type: 'enumInfo',
        localName: 'ClassificationType',
        baseTypeInfo: 'String',
        values: ['U', 'C', 'S', 'TS', 'R', 'CTS', 'CTS-B', 'CTS-BALK', 'NU', 'NR', 'NC', 'NS', 'NS-S', 'NS-A', 'CTSA', 'NSAT', 'NCA']
      }],
    elementInfos: []
  };
  return {
    IC_2_0: IC_2_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], IC_2_0_Module_Factory);
}
else {
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.IC_2_0 = IC_2_0_Module_Factory().IC_2_0;
  }
  else {
    var IC_2_0 = IC_2_0_Module_Factory().IC_2_0;
  }
}