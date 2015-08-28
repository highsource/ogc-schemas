var ARML_2_0_Module_Factory = function () {
  var ARML_2_0 = {
    n: 'ARML_2_0',
    dens: 'http:\/\/www.opengis.net\/arml\/2.0',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['GML_3_2_1'],
    tis: [{
        ln: 'FeatureType.Metadata',
        tn: null,
        ps: [{
            n: 'any',
            col: true,
            mx: false,
            t: 'ae'
          }]
      }, {
        ln: 'ScreenAnchorType.Assets.AssetRef',
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
        ln: 'TrackerType.Uri',
        tn: null,
        ps: [{
            n: 'href',
            t: 'a'
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
        ln: 'TrackableType.Config.Tracker',
        tn: null,
        ps: [{
            n: 'href',
            t: 'a'
          }]
      }, {
        ln: 'ImageType.Href',
        tn: null,
        ps: [{
            n: 'href',
            t: 'a'
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
        ln: 'FeatureType.Anchors.AnchorRef',
        tn: null,
        ps: [{
            n: 'href',
            t: 'a'
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
        ln: 'FillType',
        bti: '.VisualAsset2DType',
        ps: [{
            n: 'style'
          }, {
            n: 'clazz',
            en: 'class'
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
        ln: 'ImageType',
        bti: '.VisualAsset2DType',
        ps: [{
            n: 'href',
            ti: '.ImageType.Href'
          }]
      }, {
        ln: 'ConditionType',
        bti: '.ARElementType'
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
        ln: 'LabelType.Href',
        tn: null,
        ps: [{
            n: 'href',
            t: 'a'
          }]
      }, {
        ln: 'ARAnchorType',
        bti: '.AnchorType',
        ps: [{
            n: 'assets',
            ti: '.ARAnchorType.Assets'
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
        ln: 'TrackerType.Src',
        tn: null,
        ps: [{
            n: 'href',
            t: 'a'
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
        ln: 'AnchorType',
        bti: '.ARElementType',
        ps: [{
            n: 'enabled',
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
        ln: 'ARAnchorType.Assets.AssetRef',
        tn: null,
        ps: [{
            n: 'href',
            t: 'a'
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
        ln: 'ModelType.Href',
        tn: null,
        ps: [{
            n: 'href',
            t: 'a'
          }]
      }],
    eis: [{
        en: 'ARAnchor',
        ti: '.ARAnchorType',
        sh: 'Anchor'
      }, {
        en: 'VisualAsset2D',
        ti: '.VisualAsset2DType',
        sh: 'VisualAsset'
      }, {
        en: 'Condition',
        ti: '.ConditionType',
        sh: 'ARElement'
      }, {
        en: 'Trackable',
        ti: '.TrackableType',
        sh: 'ARAnchor'
      }, {
        en: 'ScreenAnchor',
        ti: '.ScreenAnchorType',
        sh: 'Anchor'
      }, {
        en: 'Fill',
        ti: '.FillType',
        sh: 'VisualAsset2D'
      }, {
        en: 'Model',
        ti: '.ModelType',
        sh: 'VisualAsset'
      }, {
        en: 'Geometry',
        ti: '.GeometryType',
        sh: 'ARAnchor'
      }, {
        en: 'Image',
        ti: '.ImageType',
        sh: 'VisualAsset2D'
      }, {
        en: 'ARElement',
        ti: '.ARElementType'
      }, {
        en: 'SelectedCondition',
        ti: '.SelectedConditionType',
        sh: 'Condition'
      }, {
        en: 'DistanceCondition',
        ti: '.DistanceConditionType',
        sh: 'Condition'
      }, {
        en: 'Anchor',
        ti: '.AnchorType',
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
        en: 'VisualAsset',
        ti: '.VisualAssetType',
        sh: 'ARElement'
      }, {
        en: 'arml',
        ti: '.ArmlType'
      }, {
        en: 'RelativeTo',
        ti: '.RelativeToType',
        sh: 'ARAnchor'
      }, {
        en: 'Label',
        ti: '.LabelType',
        sh: 'VisualAsset2D'
      }, {
        en: 'Text',
        ti: '.TextType',
        sh: 'VisualAsset2D'
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