var GMLCOV_GeoTIFF_1_0_Module_Factory = function () {
  var GMLCOV_GeoTIFF_1_0 = {
    n: 'GMLCOV_GeoTIFF_1_0',
    dens: 'http:\/\/www.opengis.net\/gmlcov\/geotiff\/1.0',
    tis: [{
        ln: 'ParametersType',
        tn: 'parametersType',
        ps: [{
            n: 'compression'
          }, {
            n: 'jpegQuality',
            en: 'jpeg_quality',
            ti: 'Integer'
          }, {
            n: 'predictor'
          }, {
            n: 'interleave'
          }, {
            n: 'tiling',
            ti: 'Boolean'
          }, {
            n: 'tileheight',
            ti: 'Integer'
          }, {
            n: 'tilewidth',
            ti: 'Integer'
          }]
      }, {
        t: 'enum',
        ln: 'InterleaveType',
        vs: ['Pixel', 'Band']
      }, {
        t: 'enum',
        ln: 'PredictorType',
        vs: ['None', 'Horizontal', 'FloatingPoint']
      }, {
        t: 'enum',
        ln: 'CompressionType',
        vs: ['None', 'PackBits', 'Huffman', 'LZW', 'JPEG', 'Deflate']
      }],
    eis: [{
        en: 'parameters',
        ti: '.ParametersType'
      }]
  };
  return {
    GMLCOV_GeoTIFF_1_0: GMLCOV_GeoTIFF_1_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], GMLCOV_GeoTIFF_1_0_Module_Factory);
}
else {
  var GMLCOV_GeoTIFF_1_0_Module = GMLCOV_GeoTIFF_1_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.GMLCOV_GeoTIFF_1_0 = GMLCOV_GeoTIFF_1_0_Module.GMLCOV_GeoTIFF_1_0;
  }
  else {
    var GMLCOV_GeoTIFF_1_0 = GMLCOV_GeoTIFF_1_0_Module.GMLCOV_GeoTIFF_1_0;
  }
}