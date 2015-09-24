var GML4WCS_1_0_0_Module_Factory = function () {
  var GML4WCS_1_0_0 = {
    n: 'GML4WCS_1_0_0',
    dens: 'http:\/\/www.opengis.net\/gml',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['XLink_1_0'],
    tis: [{
        ln: 'TimePositionType',
        ps: [{
            n: 'value',
            t: 'v'
          }, {
            n: 'calendarEraName',
            an: {
              lp: 'calendarEraName'
            },
            t: 'a'
          }, {
            n: 'frame',
            an: {
              lp: 'frame'
            },
            t: 'a'
          }, {
            n: 'indeterminatePosition',
            an: {
              lp: 'indeterminatePosition'
            },
            t: 'a'
          }]
      }, {
        ln: 'AbstractGMLType',
        ps: [{
            n: 'metaDataProperty',
            mno: 0,
            col: true,
            mx: false,
            dom: false,
            ti: '.MetaDataPropertyType',
            t: 'er'
          }, {
            n: 'description',
            ti: '.StringOrRefType'
          }, {
            n: 'name',
            mno: 0,
            col: true,
            ti: '.CodeType'
          }]
      }, {
        ln: 'CodeType',
        ps: [{
            n: 'value',
            t: 'v'
          }, {
            n: 'codeSpace',
            an: {
              lp: 'codeSpace'
            },
            t: 'a'
          }]
      }, {
        ln: 'AbstractGeometryBaseType',
        bti: '.AbstractGMLType'
      }, {
        ln: 'GridEnvelopeType',
        ps: [{
            n: 'low',
            rq: true,
            ti: {
              t: 'l',
              bti: 'Integer'
            }
          }, {
            n: 'high',
            rq: true,
            ti: {
              t: 'l',
              bti: 'Integer'
            }
          }]
      }, {
        ln: 'CodeListType',
        ps: [{
            n: 'value',
            ti: {
              t: 'l'
            },
            t: 'v'
          }, {
            n: 'codeSpace',
            an: {
              lp: 'codeSpace'
            },
            t: 'a'
          }]
      }, {
        ln: 'AbstractMetaDataType',
        ps: [{
            n: 'content',
            t: 'v'
          }, {
            n: 'id',
            ti: 'ID',
            an: {
              lp: 'id',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            t: 'a'
          }]
      }, {
        ln: 'EnvelopeWithTimePeriodType',
        bti: '.EnvelopeType',
        ps: [{
            n: 'timePosition',
            rq: true,
            mno: 2,
            mxo: 2,
            col: true,
            ti: '.TimePositionType'
          }, {
            n: 'frame',
            an: {
              lp: 'frame'
            },
            t: 'a'
          }]
      }, {
        ln: 'AbstractSurfaceType',
        bti: '.AbstractGeometricPrimitiveType'
      }, {
        ln: 'GridLimitsType',
        ps: [{
            n: 'gridEnvelope',
            rq: true,
            en: 'GridEnvelope',
            ti: '.GridEnvelopeType'
          }]
      }, {
        ln: 'DirectPositionType',
        ps: [{
            n: 'value',
            ti: {
              t: 'l',
              bti: 'Double'
            },
            t: 'v'
          }, {
            n: 'dimension',
            ti: 'Integer',
            an: {
              lp: 'dimension'
            },
            t: 'a'
          }]
      }, {
        ln: 'VectorType',
        bti: '.DirectPositionType'
      }, {
        ln: 'AbstractGeometricPrimitiveType',
        bti: '.AbstractGeometryType'
      }, {
        ln: 'AbstractRingType',
        bti: '.AbstractGeometryType'
      }, {
        ln: 'ReferenceType',
        ps: [{
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
        ln: 'AbstractRingPropertyType',
        ps: [{
            n: 'linearRing',
            rq: true,
            en: 'LinearRing',
            ti: '.LinearRingType'
          }]
      }, {
        ln: 'LinearRingType',
        bti: '.AbstractRingType',
        ps: [{
            n: 'pos',
            rq: true,
            mno: 4,
            col: true,
            ti: '.DirectPositionType'
          }]
      }, {
        ln: 'PolygonType',
        bti: '.AbstractSurfaceType',
        ps: [{
            n: 'exterior',
            ti: '.AbstractRingPropertyType'
          }, {
            n: 'interior',
            mno: 0,
            col: true,
            ti: '.AbstractRingPropertyType'
          }]
      }, {
        ln: 'MetaDataPropertyType',
        ps: [{
            n: 'metaData',
            en: '_MetaData',
            ti: '.AbstractMetaDataType'
          }, {
            n: 'about',
            an: {
              lp: 'about'
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
        ln: 'RectifiedGridType',
        bti: '.GridType',
        ps: [{
            n: 'origin',
            rq: true,
            ti: '.PointType'
          }, {
            n: 'offsetVector',
            rq: true,
            col: true,
            ti: '.VectorType'
          }]
      }, {
        ln: 'GridType',
        bti: '.AbstractGeometryType',
        ps: [{
            n: 'limits',
            rq: true,
            ti: '.GridLimitsType'
          }, {
            n: 'axisName',
            rq: true,
            col: true
          }, {
            n: 'dimension',
            rq: true,
            ti: 'Integer',
            an: {
              lp: 'dimension'
            },
            t: 'a'
          }]
      }, {
        ln: 'BoundingShapeType',
        ps: [{
            n: 'envelope',
            rq: true,
            mx: false,
            dom: false,
            en: 'Envelope',
            ti: '.EnvelopeType',
            t: 'er'
          }]
      }, {
        ln: 'PointType',
        bti: '.AbstractGeometryType',
        ps: [{
            n: 'pos',
            rq: true,
            ti: '.DirectPositionType'
          }]
      }, {
        ln: 'AbstractGeometryType',
        bti: '.AbstractGeometryBaseType',
        ps: [{
            n: 'srsName',
            an: {
              lp: 'srsName'
            },
            t: 'a'
          }]
      }, {
        ln: 'StringOrRefType',
        ps: [{
            n: 'value',
            t: 'v'
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
        ln: 'EnvelopeType',
        bti: '.AbstractGeometryType',
        ps: [{
            n: 'pos',
            rq: true,
            mno: 2,
            mxo: 2,
            col: true,
            ti: '.DirectPositionType'
          }]
      }, {
        t: 'enum',
        ln: 'TimeIndeterminateValueType',
        vs: ['after', 'before', 'now', 'unknown']
      }],
    eis: [{
        en: 'LinearRing',
        ti: '.LinearRingType',
        sh: '_Ring'
      }, {
        en: 'timePosition',
        ti: '.TimePositionType'
      }, {
        en: 'metaDataProperty',
        ti: '.MetaDataPropertyType'
      }, {
        en: 'pos',
        ti: '.DirectPositionType'
      }, {
        en: '_Object',
        ti: 'AnyType'
      }, {
        en: 'Grid',
        ti: '.GridType',
        sh: '_Geometry'
      }, {
        en: 'EnvelopeWithTimePeriod',
        ti: '.EnvelopeWithTimePeriodType',
        sh: 'Envelope'
      }, {
        en: '_Ring',
        ti: '.AbstractRingType',
        sh: '_Geometry'
      }, {
        en: '_GeometricPrimitive',
        ti: '.AbstractGeometricPrimitiveType',
        sh: '_Geometry'
      }, {
        en: 'Polygon',
        ti: '.PolygonType',
        sh: '_Surface'
      }, {
        en: '_Geometry',
        ti: '.AbstractGeometryType',
        sh: '_GML'
      }, {
        en: '_Surface',
        ti: '.AbstractSurfaceType',
        sh: '_GeometricPrimitive'
      }, {
        en: 'Envelope',
        ti: '.EnvelopeType',
        sh: '_Geometry'
      }, {
        en: '_MetaData',
        ti: '.AbstractMetaDataType',
        sh: '_Object'
      }, {
        en: 'boundedBy',
        ti: '.BoundingShapeType'
      }, {
        en: 'RectifiedGrid',
        ti: '.RectifiedGridType',
        sh: 'Grid'
      }, {
        en: '_GML',
        ti: '.AbstractGMLType',
        sh: '_Object'
      }, {
        en: 'name',
        ti: '.CodeType'
      }, {
        en: 'description',
        ti: '.StringOrRefType'
      }, {
        en: 'interior',
        ti: '.AbstractRingPropertyType'
      }, {
        en: 'exterior',
        ti: '.AbstractRingPropertyType'
      }]
  };
  return {
    GML4WCS_1_0_0: GML4WCS_1_0_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], GML4WCS_1_0_0_Module_Factory);
}
else {
  var GML4WCS_1_0_0_Module = GML4WCS_1_0_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.GML4WCS_1_0_0 = GML4WCS_1_0_0_Module.GML4WCS_1_0_0;
  }
  else {
    var GML4WCS_1_0_0 = GML4WCS_1_0_0_Module.GML4WCS_1_0_0;
  }
}