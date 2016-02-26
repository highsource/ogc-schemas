var CityGML_TexturedSurface_1_0_Module_Factory = function () {
  var CityGML_TexturedSurface_1_0 = {
    n: 'CityGML_TexturedSurface_1_0',
    dens: 'http:\/\/www.opengis.net\/citygml\/texturedsurface\/1.0',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['XLink_1_0', 'GML_3_1_1'],
    tis: [{
        ln: 'AppearancePropertyType',
        ps: [{
            n: 'appearance',
            rq: true,
            mx: false,
            dom: false,
            en: '_Appearance',
            ti: '.AbstractAppearanceType',
            t: 'er'
          }, {
            n: 'orientation',
            ti: 'GML_3_1_1.SignType',
            an: {
              lp: 'orientation'
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
        ln: 'MaterialType',
        bti: '.AbstractAppearanceType',
        ps: [{
            n: 'shininess',
            ti: 'Double'
          }, {
            n: 'transparency',
            ti: 'Double'
          }, {
            n: 'ambientIntensity',
            ti: 'Double'
          }, {
            n: 'specularColor',
            ti: {
              t: 'l',
              bti: 'Double'
            }
          }, {
            n: 'diffuseColor',
            ti: {
              t: 'l',
              bti: 'Double'
            }
          }, {
            n: 'emissiveColor',
            ti: {
              t: 'l',
              bti: 'Double'
            }
          }]
      }, {
        ln: 'SimpleTextureType',
        bti: '.AbstractAppearanceType',
        ps: [{
            n: 'textureMap',
            rq: true
          }, {
            n: 'textureCoordinates',
            rq: true,
            ti: {
              t: 'l',
              bti: 'Double'
            }
          }, {
            n: 'textureType'
          }, {
            n: 'repeat',
            ti: 'Boolean'
          }]
      }, {
        ln: 'TexturedSurfaceType',
        bti: 'GML_3_1_1.OrientableSurfaceType',
        ps: [{
            n: 'appearance',
            rq: true,
            col: true,
            ti: '.AppearancePropertyType'
          }]
      }, {
        ln: 'AbstractAppearanceType',
        bti: 'GML_3_1_1.AbstractGMLType'
      }, {
        t: 'enum',
        ln: 'TextureTypeType',
        vs: ['specific', 'typical', 'unknown']
      }],
    eis: [{
        en: 'Material',
        ti: '.MaterialType',
        sh: '_Appearance'
      }, {
        en: 'appearance',
        ti: '.AppearancePropertyType'
      }, {
        en: 'TexturedSurface',
        ti: '.TexturedSurfaceType',
        sh: {
          lp: 'OrientableSurface',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'SimpleTexture',
        ti: '.SimpleTextureType',
        sh: '_Appearance'
      }, {
        en: '_Appearance',
        ti: '.AbstractAppearanceType',
        sh: {
          lp: '_GML',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }]
  };
  return {
    CityGML_TexturedSurface_1_0: CityGML_TexturedSurface_1_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], CityGML_TexturedSurface_1_0_Module_Factory);
}
else {
  var CityGML_TexturedSurface_1_0_Module = CityGML_TexturedSurface_1_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.CityGML_TexturedSurface_1_0 = CityGML_TexturedSurface_1_0_Module.CityGML_TexturedSurface_1_0;
  }
  else {
    var CityGML_TexturedSurface_1_0 = CityGML_TexturedSurface_1_0_Module.CityGML_TexturedSurface_1_0;
  }
}