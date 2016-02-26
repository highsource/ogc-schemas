var CityGML_Appearance_1_0_Module_Factory = function () {
  var CityGML_Appearance_1_0 = {
    n: 'CityGML_Appearance_1_0',
    dens: 'http:\/\/www.opengis.net\/citygml\/appearance\/1.0',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['GML_3_1_1', 'XLink_1_0'],
    tis: [{
        ln: 'GeoreferencedTextureType',
        bti: '.AbstractTextureType',
        ps: [{
            n: 'preferWorldFile',
            ti: 'Boolean'
          }, {
            n: 'referencePoint',
            ti: 'GML_3_1_1.PointPropertyType'
          }, {
            n: 'orientation',
            ti: {
              t: 'l',
              bti: 'Double'
            }
          }, {
            n: 'target',
            mno: 0,
            col: true
          }, {
            n: 'genericApplicationPropertyOfGeoreferencedTexture',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfGeoreferencedTexture',
            ti: 'AnyType'
          }]
      }, {
        ln: 'TexCoordGenType',
        bti: '.AbstractTextureParameterizationType',
        ps: [{
            n: 'worldToTexture',
            rq: true,
            ti: '.TexCoordGenType.WorldToTexture'
          }, {
            n: 'genericApplicationPropertyOfTexCoordGen',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfTexCoordGen',
            ti: 'AnyType'
          }]
      }, {
        ln: 'TextureAssociationType',
        ps: [{
            n: 'textureParameterization',
            rq: true,
            mx: false,
            dom: false,
            en: '_TextureParameterization',
            ti: '.AbstractTextureParameterizationType',
            t: 'er'
          }, {
            n: 'uri',
            rq: true,
            an: {
              lp: 'uri'
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
        ln: 'AbstractTextureType',
        bti: '.AbstractSurfaceDataType',
        ps: [{
            n: 'imageURI',
            rq: true
          }, {
            n: 'mimeType'
          }, {
            n: 'textureType'
          }, {
            n: 'wrapMode'
          }, {
            n: 'borderColor',
            ti: {
              t: 'l',
              bti: 'Double'
            }
          }, {
            n: 'genericApplicationPropertyOfTexture',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfTexture',
            ti: 'AnyType'
          }]
      }, {
        ln: 'TexCoordGenType.WorldToTexture',
        tn: null,
        ps: [{
            n: 'value',
            ti: {
              t: 'l',
              bti: 'Double'
            },
            t: 'v'
          }, {
            n: 'srsName',
            an: {
              lp: 'srsName'
            },
            t: 'a'
          }, {
            n: 'srsDimension',
            ti: 'PositiveInteger',
            an: {
              lp: 'srsDimension'
            },
            t: 'a'
          }, {
            n: 'axisLabels',
            ti: {
              t: 'l',
              bti: 'NCName'
            },
            an: {
              lp: 'axisLabels'
            },
            t: 'a'
          }, {
            n: 'uomLabels',
            ti: {
              t: 'l',
              bti: 'NCName'
            },
            an: {
              lp: 'uomLabels'
            },
            t: 'a'
          }]
      }, {
        ln: 'TexCoordListType.TextureCoordinates',
        tn: null,
        ps: [{
            n: 'value',
            ti: {
              t: 'l',
              bti: 'Double'
            },
            t: 'v'
          }, {
            n: 'ring',
            rq: true,
            an: {
              lp: 'ring'
            },
            t: 'a'
          }]
      }, {
        ln: 'SurfaceDataPropertyType',
        ps: [{
            n: 'surfaceData',
            mx: false,
            dom: false,
            en: '_SurfaceData',
            ti: '.AbstractSurfaceDataType',
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
        ln: 'AbstractSurfaceDataType',
        bti: 'GML_3_1_1.AbstractFeatureType',
        ps: [{
            n: 'isFront',
            ti: 'Boolean'
          }, {
            n: 'genericApplicationPropertyOfSurfaceData',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfSurfaceData',
            ti: 'AnyType'
          }]
      }, {
        ln: 'X3DMaterialType',
        bti: '.AbstractSurfaceDataType',
        ps: [{
            n: 'ambientIntensity',
            ti: 'Double'
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
          }, {
            n: 'specularColor',
            ti: {
              t: 'l',
              bti: 'Double'
            }
          }, {
            n: 'shininess',
            ti: 'Double'
          }, {
            n: 'transparency',
            ti: 'Double'
          }, {
            n: 'isSmooth',
            ti: 'Boolean'
          }, {
            n: 'target',
            mno: 0,
            col: true
          }, {
            n: 'genericApplicationPropertyOfX3DMaterial',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfX3DMaterial',
            ti: 'AnyType'
          }]
      }, {
        ln: 'AppearanceType',
        bti: 'GML_3_1_1.AbstractFeatureType',
        ps: [{
            n: 'theme'
          }, {
            n: 'surfaceDataMember',
            mno: 0,
            col: true,
            ti: '.SurfaceDataPropertyType'
          }, {
            n: 'genericApplicationPropertyOfAppearance',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfAppearance',
            ti: 'AnyType'
          }]
      }, {
        ln: 'AppearancePropertyType',
        bti: 'GML_3_1_1.FeaturePropertyType',
        ps: [{
            n: 'appearance',
            rq: true,
            en: 'Appearance',
            ti: '.AppearanceType'
          }]
      }, {
        ln: 'TexCoordListType',
        bti: '.AbstractTextureParameterizationType',
        ps: [{
            n: 'textureCoordinates',
            rq: true,
            col: true,
            ti: '.TexCoordListType.TextureCoordinates'
          }, {
            n: 'genericApplicationPropertyOfTexCoordList',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfTexCoordList',
            ti: 'AnyType'
          }]
      }, {
        ln: 'ParameterizedTextureType',
        bti: '.AbstractTextureType',
        ps: [{
            n: 'target',
            mno: 0,
            col: true,
            ti: '.TextureAssociationType'
          }, {
            n: 'genericApplicationPropertyOfParameterizedTexture',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfParameterizedTexture',
            ti: 'AnyType'
          }]
      }, {
        ln: 'AbstractTextureParameterizationType',
        bti: 'GML_3_1_1.AbstractGMLType',
        ps: [{
            n: 'genericApplicationPropertyOfTextureParameterization',
            mno: 0,
            col: true,
            en: '_GenericApplicationPropertyOfTextureParameterization',
            ti: 'AnyType'
          }]
      }, {
        t: 'enum',
        ln: 'WrapModeType',
        vs: ['none', 'wrap', 'mirror', 'clamp', 'border']
      }, {
        t: 'enum',
        ln: 'TextureTypeType',
        vs: ['specific', 'typical', 'unknown']
      }],
    eis: [{
        en: '_TextureParameterization',
        ti: '.AbstractTextureParameterizationType',
        sh: {
          lp: '_GML',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: '_SurfaceData',
        ti: '.AbstractSurfaceDataType',
        sh: {
          lp: '_Feature',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: '_GenericApplicationPropertyOfSurfaceData',
        ti: 'AnyType'
      }, {
        en: '_GenericApplicationPropertyOfTexture',
        ti: 'AnyType'
      }, {
        en: '_GenericApplicationPropertyOfParameterizedTexture',
        ti: 'AnyType'
      }, {
        en: '_Texture',
        ti: '.AbstractTextureType',
        sh: '_SurfaceData'
      }, {
        en: 'TexCoordGen',
        ti: '.TexCoordGenType',
        sh: '_TextureParameterization'
      }, {
        en: '_GenericApplicationPropertyOfAppearance',
        ti: 'AnyType'
      }, {
        en: 'ParameterizedTexture',
        ti: '.ParameterizedTextureType',
        sh: '_Texture'
      }, {
        en: 'appearanceMember',
        ti: '.AppearancePropertyType',
        sh: {
          lp: 'featureMember',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: '_GenericApplicationPropertyOfTexCoordList',
        ti: 'AnyType'
      }, {
        en: '_GenericApplicationPropertyOfTexCoordGen',
        ti: 'AnyType'
      }, {
        en: '_GenericApplicationPropertyOfTextureParameterization',
        ti: 'AnyType'
      }, {
        en: '_GenericApplicationPropertyOfGeoreferencedTexture',
        ti: 'AnyType'
      }, {
        en: 'appearance',
        ti: '.AppearancePropertyType',
        sh: {
          lp: '_GenericApplicationPropertyOfCityObject',
          ns: 'http:\/\/www.opengis.net\/citygml\/1.0'
        }
      }, {
        en: '_GenericApplicationPropertyOfX3DMaterial',
        ti: 'AnyType'
      }, {
        en: 'X3DMaterial',
        ti: '.X3DMaterialType',
        sh: '_SurfaceData'
      }, {
        en: 'TexCoordList',
        ti: '.TexCoordListType',
        sh: '_TextureParameterization'
      }, {
        en: 'GeoreferencedTexture',
        ti: '.GeoreferencedTextureType',
        sh: '_Texture'
      }]
  };
  return {
    CityGML_Appearance_1_0: CityGML_Appearance_1_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], CityGML_Appearance_1_0_Module_Factory);
}
else {
  var CityGML_Appearance_1_0_Module = CityGML_Appearance_1_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.CityGML_Appearance_1_0 = CityGML_Appearance_1_0_Module.CityGML_Appearance_1_0;
  }
  else {
    var CityGML_Appearance_1_0 = CityGML_Appearance_1_0_Module.CityGML_Appearance_1_0;
  }
}