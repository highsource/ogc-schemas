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
            rq: true,
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
        ln: 'ModelType.Href',
        tn: null,
        ps: [{
            n: 'href',
            rq: true,
            t: 'a'
          }]
      }, {
        ln: 'VisualAssetType.Conditions',
        tn: null,
        ps: [{
            n: 'condition',
            rq: true,
            col: true,
            mx: false,
            dom: false,
            en: 'Condition',
            ti: '.ConditionType',
            t: 'er'
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
            rq: true,
            ti: '.ScreenAnchorType.Assets'
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
            rq: true,
            an: {
              lp: 'type'
            },
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
        ln: 'ConditionType',
        bti: '.ARElementType'
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
        ln: 'FeatureType.Anchors',
        tn: null,
        ps: [{
            n: 'anchor',
            mno: 0,
            col: true,
            mx: false,
            dom: false,
            en: 'Anchor',
            ti: '.AnchorType',
            t: 'er'
          }, {
            n: 'anchorRef',
            mno: 0,
            col: true,
            ti: '.FeatureType.Anchors.AnchorRef'
          }]
      }, {
        ln: 'GeometryType',
        bti: '.ARAnchorType',
        ps: [{
            n: 'point',
            rq: true,
            en: {
              lp: 'Point',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.PointType'
          }, {
            n: 'lineString',
            rq: true,
            en: {
              lp: 'LineString',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.LineStringType'
          }, {
            n: 'polygon',
            rq: true,
            en: {
              lp: 'Polygon',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.PolygonType'
          }]
      }, {
        ln: 'ScreenAnchorType.Assets',
        tn: null,
        ps: [{
            n: 'label',
            mno: 0,
            col: true,
            en: 'Label',
            ti: '.LabelType'
          }, {
            n: 'assetRef',
            mno: 0,
            col: true,
            ti: '.ScreenAnchorType.Assets.AssetRef'
          }]
      }, {
        ln: 'ARAnchorType.Assets.AssetRef',
        tn: null,
        ps: [{
            n: 'href',
            rq: true,
            t: 'a'
          }]
      }, {
        ln: 'ImageType.Href',
        tn: null,
        ps: [{
            n: 'href',
            rq: true,
            t: 'a'
          }]
      }, {
        ln: 'ArmlType',
        ps: [{
            n: 'arElements',
            rq: true,
            en: 'ARElements',
            ti: '.ArmlType.ARElements'
          }, {
            n: 'style',
            mno: 0,
            col: true,
            ti: '.ArmlType.Style'
          }, {
            n: 'script',
            mno: 0,
            col: true,
            ti: '.ArmlType.Script'
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
        ln: 'ArmlType.ARElements',
        tn: null,
        ps: [{
            n: 'arElement',
            mno: 0,
            col: true,
            mx: false,
            dom: false,
            en: 'ARElement',
            ti: '.ARElementType',
            t: 'er'
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
        ln: 'TrackerType',
        bti: '.ARElementType',
        ps: [{
            n: 'uri',
            rq: true,
            ti: '.TrackerType.Uri'
          }, {
            n: 'src',
            ti: '.TrackerType.Src'
          }]
      }, {
        ln: 'ImageType',
        bti: '.VisualAsset2DType',
        ps: [{
            n: 'href',
            rq: true,
            ti: '.ImageType.Href'
          }]
      }, {
        ln: 'ARAnchorType',
        bti: '.AnchorType',
        ps: [{
            n: 'assets',
            rq: true,
            ti: '.ARAnchorType.Assets'
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
        ln: 'ARAnchorType.Assets',
        tn: null,
        ps: [{
            n: 'visualAsset',
            mno: 0,
            col: true,
            mx: false,
            dom: false,
            en: 'VisualAsset',
            ti: '.VisualAssetType',
            t: 'er'
          }, {
            n: 'assetRef',
            mno: 0,
            col: true,
            ti: '.ARAnchorType.Assets.AssetRef'
          }]
      }, {
        ln: 'TextType',
        bti: '.VisualAsset2DType',
        ps: [{
            n: 'src',
            rq: true
          }, {
            n: 'style'
          }, {
            n: 'clazz',
            en: 'class'
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
            rq: true,
            t: 'a'
          }]
      }, {
        ln: 'LabelType.Href',
        tn: null,
        ps: [{
            n: 'href',
            rq: true,
            t: 'a'
          }]
      }, {
        ln: 'ModelType',
        bti: '.VisualAssetType',
        ps: [{
            n: 'href',
            rq: true,
            ti: '.ModelType.Href'
          }, {
            n: 'type'
          }, {
            n: 'scale',
            en: 'Scale',
            ti: '.ScaleType'
          }]
      }, {
        ln: 'ScreenAnchorType.Assets.AssetRef',
        tn: null,
        ps: [{
            n: 'href',
            rq: true,
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
        ln: 'RelativeToType',
        bti: '.ARAnchorType',
        ps: [{
            n: 'ref',
            rq: true,
            ti: '.RelativeToType.Ref'
          }, {
            n: 'point',
            rq: true,
            en: {
              lp: 'Point',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.PointType'
          }, {
            n: 'lineString',
            rq: true,
            en: {
              lp: 'LineString',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.LineStringType'
          }, {
            n: 'polygon',
            rq: true,
            en: {
              lp: 'Polygon',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.PolygonType'
          }]
      }, {
        ln: 'TrackableType',
        bti: '.ARAnchorType',
        ps: [{
            n: 'config',
            rq: true,
            col: true,
            ti: '.TrackableType.Config'
          }, {
            n: 'size',
            ti: 'Double'
          }]
      }, {
        ln: 'TrackableType.Config.Tracker',
        tn: null,
        ps: [{
            n: 'href',
            rq: true,
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
        ln: 'TrackableType.Config',
        tn: null,
        ps: [{
            n: 'tracker',
            rq: true,
            ti: '.TrackableType.Config.Tracker'
          }, {
            n: 'src',
            rq: true
          }, {
            n: 'order',
            ti: 'Int',
            an: {
              lp: 'order'
            },
            t: 'a'
          }]
      }, {
        ln: 'FeatureType.Metadata',
        tn: null,
        ps: [{
            n: 'any',
            mno: 0,
            col: true,
            mx: false,
            t: 'ae'
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
        ln: 'TrackerType.Src',
        tn: null,
        ps: [{
            n: 'href',
            rq: true,
            t: 'a'
          }]
      }, {
        ln: 'SelectedConditionType',
        bti: '.ConditionType',
        ps: [{
            n: 'listener'
          }, {
            n: 'selected',
            rq: true,
            ti: 'Boolean'
          }]
      }, {
        ln: 'FeatureType.Anchors.AnchorRef',
        tn: null,
        ps: [{
            n: 'href',
            rq: true,
            t: 'a'
          }]
      }],
    eis: [{
        en: 'Anchor',
        ti: '.AnchorType',
        sh: 'ARElement'
      }, {
        en: 'Label',
        ti: '.LabelType',
        sh: 'VisualAsset2D'
      }, {
        en: 'Condition',
        ti: '.ConditionType',
        sh: 'ARElement'
      }, {
        en: 'Text',
        ti: '.TextType',
        sh: 'VisualAsset2D'
      }, {
        en: 'Geometry',
        ti: '.GeometryType',
        sh: 'ARAnchor'
      }, {
        en: 'ARElement',
        ti: '.ARElementType'
      }, {
        en: 'Tracker',
        ti: '.TrackerType',
        sh: 'ARElement'
      }, {
        en: 'arml',
        ti: '.ArmlType'
      }, {
        en: 'Image',
        ti: '.ImageType',
        sh: 'VisualAsset2D'
      }, {
        en: 'Fill',
        ti: '.FillType',
        sh: 'VisualAsset2D'
      }, {
        en: 'DistanceCondition',
        ti: '.DistanceConditionType',
        sh: 'Condition'
      }, {
        en: 'Model',
        ti: '.ModelType',
        sh: 'VisualAsset'
      }, {
        en: 'VisualAsset2D',
        ti: '.VisualAsset2DType',
        sh: 'VisualAsset'
      }, {
        en: 'Feature',
        ti: '.FeatureType',
        sh: 'ARElement'
      }, {
        en: 'VisualAsset',
        ti: '.VisualAssetType',
        sh: 'ARElement'
      }, {
        en: 'SelectedCondition',
        ti: '.SelectedConditionType',
        sh: 'Condition'
      }, {
        en: 'RelativeTo',
        ti: '.RelativeToType',
        sh: 'ARAnchor'
      }, {
        en: 'Trackable',
        ti: '.TrackableType',
        sh: 'ARAnchor'
      }, {
        en: 'ScreenAnchor',
        ti: '.ScreenAnchorType',
        sh: 'Anchor'
      }, {
        en: 'ARAnchor',
        ti: '.ARAnchorType',
        sh: 'Anchor'
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