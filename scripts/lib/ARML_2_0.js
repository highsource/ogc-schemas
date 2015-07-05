var ARML_2_0_Module_Factory = function () {
  var ARML_2_0 = {
    n: 'ARML_2_0',
    dens: 'http:\/\/www.opengis.net\/arml\/2.0',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['GML_3_2_1'],
    tis: [{
        ln: 'TrackerType.Uri',
        tn: null,
        ps: [{
            n: 'href',
            t: 'a'
          }]
      }, {
        ln: 'ArmlType.ARElements',
        tn: null,
        ps: [{
            n: 'arElement',
            col: true,
            mx: false,
            dom: false,
            en: 'ARElement',
            ti: '.ARElementType',
            t: 'er'
          }]
      }, {
        ln: 'VisualAssetType.Conditions',
        tn: null,
        ps: [{
            n: 'condition',
            col: true,
            mx: false,
            dom: false,
            en: 'Condition',
            ti: '.ConditionType',
            t: 'er'
          }]
      }, {
        ln: 'TrackerType.Src',
        tn: null,
        ps: [{
            n: 'href',
            t: 'a'
          }]
      }, {
        ln: 'VisualAsset2DType',
        bti: '.VisualAssetType',
        ps: [{
            n: 'width'
          }, {
            n: 'height'
          }, {
            n: 'orientationMode'
          }, {
            n: 'backside'
          }]
      }, {
        ln: 'TrackableType.Config',
        tn: null,
        ps: [{
            n: 'tracker',
            ti: '.TrackableType.Config.Tracker'
          }, {
            n: 'src'
          }, {
            n: 'order',
            ti: 'Int',
            an: {
              lp: 'order'
            },
            t: 'a'
          }]
      }, {
        ln: 'ScaleType',
        ps: [{
            n: 'x',
            ti: 'Double'
          }, {
            n: 'y',
            ti: 'Double'
          }, {
            n: 'z',
            ti: 'Double'
          }]
      }, {
        ln: 'GeometryType',
        bti: '.ARAnchorType',
        ps: [{
            n: 'point',
            en: {
              lp: 'Point',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.PointType'
          }, {
            n: 'lineString',
            en: {
              lp: 'LineString',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.LineStringType'
          }, {
            n: 'polygon',
            en: {
              lp: 'Polygon',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.PolygonType'
          }]
      }, {
        ln: 'ImageType.Href',
        tn: null,
        ps: [{
            n: 'href',
            t: 'a'
          }]
      }, {
        ln: 'TrackableType',
        bti: '.ARAnchorType',
        ps: [{
            n: 'config',
            col: true,
            ti: '.TrackableType.Config'
          }, {
            n: 'size',
            ti: 'Double'
          }]
      }, {
        ln: 'LabelType.Href',
        tn: null,
        ps: [{
            n: 'href',
            t: 'a'
          }]
      }, {
        ln: 'ModelType',
        bti: '.VisualAssetType',
        ps: [{
            n: 'href',
            ti: '.ModelType.Href'
          }, {
            n: 'type'
          }, {
            n: 'scale',
            en: 'Scale',
            ti: '.ScaleType'
          }]
      }, {
        ln: 'LabelType',
        bti: '.VisualAsset2DType',
        ps: [{
            n: 'href',
            ti: '.LabelType.Href'
          }, {
            n: 'src',
            ti: 'AnyType'
          }, {
            n: 'hyperlinkBehavior'
          }, {
            n: 'viewportWidth',
            ti: 'Integer'
          }]
      }, {
        ln: 'OrientationType',
        ps: [{
            n: 'roll',
            ti: 'Double'
          }, {
            n: 'tilt',
            ti: 'Double'
          }, {
            n: 'heading',
            ti: 'Double'
          }]
      }, {
        ln: 'TextType',
        bti: '.VisualAsset2DType',
        ps: [{
            n: 'src'
          }, {
            n: 'style'
          }, {
            n: 'clazz',
            en: 'class'
          }]
      }, {
        ln: 'ArmlType',
        ps: [{
            n: 'arElements',
            en: 'ARElements',
            ti: '.ArmlType.ARElements'
          }, {
            n: 'style',
            col: true,
            ti: '.ArmlType.Style'
          }, {
            n: 'script',
            col: true,
            ti: '.ArmlType.Script'
          }]
      }, {
        ln: 'FillType',
        bti: '.VisualAsset2DType',
        ps: [{
            n: 'style'
          }, {
            n: 'clazz',
            en: 'class'
          }]
      }, {
        ln: 'DistanceConditionType',
        bti: '.ConditionType',
        ps: [{
            n: 'max',
            ti: 'Double'
          }, {
            n: 'min',
            ti: 'Double'
          }]
      }, {
        ln: 'ARAnchorType.Assets',
        tn: null,
        ps: [{
            n: 'visualAsset',
            col: true,
            mx: false,
            dom: false,
            en: 'VisualAsset',
            ti: '.VisualAssetType',
            t: 'er'
          }, {
            n: 'assetRef',
            col: true,
            ti: '.ARAnchorType.Assets.AssetRef'
          }]
      }, {
        ln: 'FeatureType.Anchors',
        tn: null,
        ps: [{
            n: 'anchor',
            col: true,
            mx: false,
            dom: false,
            en: 'Anchor',
            ti: '.AnchorType',
            t: 'er'
          }, {
            n: 'anchorRef',
            col: true,
            ti: '.FeatureType.Anchors.AnchorRef'
          }]
      }, {
        ln: 'ARAnchorType',
        bti: '.AnchorType',
        ps: [{
            n: 'assets',
            ti: '.ARAnchorType.Assets'
          }]
      }, {
        ln: 'ARAnchorType.Assets.AssetRef',
        tn: null,
        ps: [{
            n: 'href',
            t: 'a'
          }]
      }, {
        ln: 'ModelType.Href',
        tn: null,
        ps: [{
            n: 'href',
            t: 'a'
          }]
      }, {
        ln: 'AnchorType',
        bti: '.ARElementType',
        ps: [{
            n: 'enabled',
            ti: 'Boolean'
          }]
      }, {
        ln: 'ArmlType.Script',
        tn: null,
        ps: [{
            n: 'value',
            t: 'v'
          }, {
            n: 'type',
            an: {
              lp: 'type'
            },
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }]
      }, {
        ln: 'ScreenAnchorType.Assets',
        tn: null,
        ps: [{
            n: 'label',
            col: true,
            en: 'Label',
            ti: '.LabelType'
          }, {
            n: 'assetRef',
            col: true,
            ti: '.ScreenAnchorType.Assets.AssetRef'
          }]
      }, {
        ln: 'FeatureType.Metadata',
        tn: null,
        ps: [{
            n: 'any',
            col: true,
            mx: false,
            t: 'ae'
          }]
      }, {
        ln: 'ImageType',
        bti: '.VisualAsset2DType',
        ps: [{
            n: 'href',
            ti: '.ImageType.Href'
          }]
      }, {
        ln: 'ScreenAnchorType',
        bti: '.AnchorType',
        ps: [{
            n: 'style'
          }, {
            n: 'clazz',
            en: 'class'
          }, {
            n: 'assets',
            ti: '.ScreenAnchorType.Assets'
          }]
      }, {
        ln: 'VisualAssetType',
        bti: '.ARElementType',
        ps: [{
            n: 'enabled',
            ti: 'Boolean'
          }, {
            n: 'zOrder',
            ti: 'Int'
          }, {
            n: 'conditions',
            ti: '.VisualAssetType.Conditions'
          }, {
            n: 'orientation',
            en: 'Orientation',
            ti: '.OrientationType'
          }, {
            n: 'scalingMode',
            en: 'ScalingMode',
            ti: '.ScalingModeType'
          }]
      }, {
        ln: 'FeatureType',
        bti: '.ARElementType',
        ps: [{
            n: 'name'
          }, {
            n: 'description'
          }, {
            n: 'enabled',
            ti: 'Boolean'
          }, {
            n: 'metadata',
            ti: '.FeatureType.Metadata'
          }, {
            n: 'anchors',
            ti: '.FeatureType.Anchors'
          }]
      }, {
        ln: 'ARElementType',
        ps: [{
            n: 'id',
            ti: 'ID',
            an: {
              lp: 'id'
            },
            t: 'a'
          }]
      }, {
        ln: 'RelativeToType',
        bti: '.ARAnchorType',
        ps: [{
            n: 'ref',
            ti: '.RelativeToType.Ref'
          }, {
            n: 'point',
            en: {
              lp: 'Point',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.PointType'
          }, {
            n: 'lineString',
            en: {
              lp: 'LineString',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.LineStringType'
          }, {
            n: 'polygon',
            en: {
              lp: 'Polygon',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.PolygonType'
          }]
      }, {
        ln: 'ScalingModeType',
        bti: '.ARElementType',
        ps: [{
            n: 'minScalingDistance',
            ti: 'Double'
          }, {
            n: 'maxScalingDistance',
            ti: 'Double'
          }, {
            n: 'scalingFactor',
            ti: 'Double'
          }, {
            n: 'type',
            an: {
              lp: 'type'
            },
            t: 'a'
          }]
      }, {
        ln: 'TrackableType.Config.Tracker',
        tn: null,
        ps: [{
            n: 'href',
            t: 'a'
          }]
      }, {
        ln: 'SelectedConditionType',
        bti: '.ConditionType',
        ps: [{
            n: 'listener'
          }, {
            n: 'selected',
            ti: 'Boolean'
          }]
      }, {
        ln: 'RelativeToType.Ref',
        tn: null,
        ps: [{
            n: 'href',
            t: 'a'
          }]
      }, {
        ln: 'ScreenAnchorType.Assets.AssetRef',
        tn: null,
        ps: [{
            n: 'href',
            t: 'a'
          }]
      }, {
        ln: 'FeatureType.Anchors.AnchorRef',
        tn: null,
        ps: [{
            n: 'href',
            t: 'a'
          }]
      }, {
        ln: 'ConditionType',
        bti: '.ARElementType'
      }, {
        ln: 'ArmlType.Style',
        tn: null,
        ps: [{
            n: 'value',
            t: 'v'
          }, {
            n: 'type',
            an: {
              lp: 'type'
            },
            t: 'a'
          }, {
            n: 'href',
            t: 'a'
          }]
      }, {
        ln: 'TrackerType',
        bti: '.ARElementType',
        ps: [{
            n: 'uri',
            ti: '.TrackerType.Uri'
          }, {
            n: 'src',
            ti: '.TrackerType.Src'
          }]
      }],
    eis: [{
        en: 'Label',
        ti: '.LabelType',
        sh: 'VisualAsset2D'
      }, {
        en: 'RelativeTo',
        ti: '.RelativeToType',
        sh: 'ARAnchor'
      }, {
        en: 'ARAnchor',
        ti: '.ARAnchorType',
        sh: 'Anchor'
      }, {
        en: 'Fill',
        ti: '.FillType',
        sh: 'VisualAsset2D'
      }, {
        en: 'Anchor',
        ti: '.AnchorType',
        sh: 'ARElement'
      }, {
        en: 'ARElement',
        ti: '.ARElementType'
      }, {
        en: 'Image',
        ti: '.ImageType',
        sh: 'VisualAsset2D'
      }, {
        en: 'Model',
        ti: '.ModelType',
        sh: 'VisualAsset'
      }, {
        en: 'Text',
        ti: '.TextType',
        sh: 'VisualAsset2D'
      }, {
        en: 'ScreenAnchor',
        ti: '.ScreenAnchorType',
        sh: 'Anchor'
      }, {
        en: 'arml',
        ti: '.ArmlType'
      }, {
        en: 'SelectedCondition',
        ti: '.SelectedConditionType',
        sh: 'Condition'
      }, {
        en: 'DistanceCondition',
        ti: '.DistanceConditionType',
        sh: 'Condition'
      }, {
        en: 'Trackable',
        ti: '.TrackableType',
        sh: 'ARAnchor'
      }, {
        en: 'VisualAsset',
        ti: '.VisualAssetType',
        sh: 'ARElement'
      }, {
        en: 'Geometry',
        ti: '.GeometryType',
        sh: 'ARAnchor'
      }, {
        en: 'Condition',
        ti: '.ConditionType',
        sh: 'ARElement'
      }, {
        en: 'Feature',
        ti: '.FeatureType',
        sh: 'ARElement'
      }, {
        en: 'Tracker',
        ti: '.TrackerType',
        sh: 'ARElement'
      }, {
        en: 'VisualAsset2D',
        ti: '.VisualAsset2DType',
        sh: 'VisualAsset'
      }]
  };
  return {
    ARML_2_0: ARML_2_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], ARML_2_0_Module_Factory);
}
else {
  var ARML_2_0_Module = ARML_2_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.ARML_2_0 = ARML_2_0_Module.ARML_2_0;
  }
  else {
    var ARML_2_0 = ARML_2_0_Module.ARML_2_0;
  }
}