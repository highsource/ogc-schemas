var IC_2_0_Module_Factory = function () {
  var IC_2_0 = {
    n: 'IC_2_0',
    tis: [{
        t: 'enum',
        ln: 'ClassificationType',
        bti: 'NMToken',
        vs: ['U', 'C', 'S', 'TS', 'R', 'CTS', 'CTS-B', 'CTS-BALK', 'NU', 'NR', 'NC', 'NS', 'NS-S', 'NS-A', 'CTSA', 'NSAT', 'NCA']
      }],
    eis: []
  };
  return {
    IC_2_0: IC_2_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], IC_2_0_Module_Factory);
}
else {
  var IC_2_0_Module = IC_2_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.IC_2_0 = IC_2_0_Module.IC_2_0;
  }
  else {
    var IC_2_0 = IC_2_0_Module.IC_2_0;
  }
}