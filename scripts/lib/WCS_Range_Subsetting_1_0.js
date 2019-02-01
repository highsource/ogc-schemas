var WCS_Range_Subsetting_1_0_Module_Factory = function () {
  var WCS_Range_Subsetting_1_0 = {
    n: 'WCS_Range_Subsetting_1_0',
    dens: 'http:\/\/www.opengis.net\/wcs\/range-subsetting\/1.0',
    tis: [{
        ln: 'RangeSubsetType',
        ps: [{
            n: 'rangeItem',
            rq: true,
            col: true,
            en: 'RangeItem',
            ti: '.RangeItemType'
          }]
      }, {
        ln: 'RangeIntervalType',
        ps: [{
            n: 'startComponent',
            rq: true,
            ti: 'NCName'
          }, {
            n: 'endComponent',
            rq: true,
            ti: 'NCName'
          }]
      }, {
        ln: 'RangeItemType',
        ps: [{
            n: 'rangeComponent',
            rq: true,
            en: 'RangeComponent',
            ti: 'NCName'
          }, {
            n: 'rangeInterval',
            rq: true,
            en: 'RangeInterval',
            ti: '.RangeIntervalType'
          }]
      }],
    eis: [{
        en: 'RangeSubset',
        ti: '.RangeSubsetType'
      }]
  };
  return {
    WCS_Range_Subsetting_1_0: WCS_Range_Subsetting_1_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], WCS_Range_Subsetting_1_0_Module_Factory);
}
else {
  var WCS_Range_Subsetting_1_0_Module = WCS_Range_Subsetting_1_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.WCS_Range_Subsetting_1_0 = WCS_Range_Subsetting_1_0_Module.WCS_Range_Subsetting_1_0;
  }
  else {
    var WCS_Range_Subsetting_1_0 = WCS_Range_Subsetting_1_0_Module.WCS_Range_Subsetting_1_0;
  }
}