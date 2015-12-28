var GML_1_0_0_Module_Factory = function () {
  var GML_1_0_0 = {
    n: 'GML_1_0_0',
    tis: [{
        ln: 'ExtentOf',
        tn: null,
        ps: [{
            n: 'polygon',
            en: {
              lp: 'Polygon'
            },
            ti: '.Polygon'
          }]
      }, {
        ln: 'CenterLineOf',
        tn: null,
        ps: [{
            n: 'lineString',
            en: {
              lp: 'LineString'
            },
            ti: '.LineString'
          }]
      }, {
        ln: 'MultiPointProperty',
        tn: null,
        ps: [{
            n: 'multiPoint',
            en: {
              lp: 'MultiPoint'
            },
            ti: '.MultiPoint'
          }]
      }, {
        ln: 'FeatureMember',
        tn: null,
        ps: [{
            n: 'typeName',
            an: {
              lp: 'typeName'
            },
            t: 'a'
          }, {
            n: 'featureOrFeatureCollection',
            col: true,
            etis: [{
                en: {
                  lp: 'Feature'
                },
                ti: '.Feature'
              }, {
                en: {
                  lp: 'FeatureCollection'
                },
                ti: '.FeatureCollection'
              }],
            t: 'es'
          }]
      }, {
        ln: 'MultiEdgeOf',
        tn: null,
        ps: [{
            n: 'multiLineString',
            en: {
              lp: 'MultiLineString'
            },
            ti: '.MultiLineString'
          }]
      }, {
        ln: 'EdgeOf',
        tn: null,
        ps: [{
            n: 'lineString',
            en: {
              lp: 'LineString'
            },
            ti: '.LineString'
          }]
      }, {
        ln: 'GeometryCollectionProperty',
        tn: null,
        ps: [{
            n: 'geometryCollection',
            en: {
              lp: 'GeometryCollection'
            },
            ti: '.GeometryCollection'
          }]
      }, {
        ln: 'GeometricProperty',
        tn: null,
        ps: [{
            n: 'typeName',
            an: {
              lp: 'typeName'
            },
            t: 'a'
          }, {
            n: 'pointOrLineStringOrPolygonOrMultiPointOrMultiLineStringOrMultiPolygonOrGeometryCollection',
            col: true,
            etis: [{
                en: {
                  lp: 'Point'
                },
                ti: '.Point'
              }, {
                en: {
                  lp: 'LineString'
                },
                ti: '.LineString'
              }, {
                en: {
                  lp: 'Polygon'
                },
                ti: '.Polygon'
              }, {
                en: {
                  lp: 'MultiPoint'
                },
                ti: '.MultiPoint'
              }, {
                en: {
                  lp: 'MultiLineString'
                },
                ti: '.MultiLineString'
              }, {
                en: {
                  lp: 'MultiPolygon'
                },
                ti: '.MultiPolygon'
              }, {
                en: {
                  lp: 'GeometryCollection'
                },
                ti: '.GeometryCollection'
              }],
            t: 'es'
          }]
      }, {
        ln: 'Coverage',
        tn: null,
        ps: [{
            n: 'polygon',
            en: {
              lp: 'Polygon'
            },
            ti: '.Polygon'
          }]
      }, {
        ln: 'InnerBoundaryIs',
        tn: null,
        ps: [{
            n: 'linearRing',
            en: {
              lp: 'LinearRing'
            },
            ti: '.LinearRing'
          }]
      }, {
        ln: 'Feature',
        tn: null,
        ps: [{
            n: 'typeName',
            an: {
              lp: 'typeName'
            },
            t: 'a'
          }, {
            n: 'identifier',
            an: {
              lp: 'identifier'
            },
            t: 'a'
          }, {
            n: 'description',
            en: {
              lp: 'description'
            }
          }, {
            n: 'name',
            en: {
              lp: 'name'
            }
          }, {
            n: 'boundedBy',
            en: {
              lp: 'boundedBy'
            },
            ti: '.BoundedBy'
          }, {
            n: 'property',
            col: true,
            en: {
              lp: 'property'
            },
            ti: '.Property'
          }, {
            n: 'geometricProperty',
            col: true,
            en: {
              lp: 'geometricProperty'
            },
            ti: '.GeometricProperty'
          }]
      }, {
        ln: 'MultiCoverage',
        tn: null,
        ps: [{
            n: 'multiPolygon',
            en: {
              lp: 'MultiPolygon'
            },
            ti: '.MultiPolygon'
          }]
      }, {
        ln: 'Position',
        tn: null,
        ps: [{
            n: 'point',
            en: {
              lp: 'Point'
            },
            ti: '.Point'
          }]
      }, {
        ln: 'GeometryMember',
        tn: null,
        ps: [{
            n: 'pointOrLineStringOrPolygonOrMultiPointOrMultiLineStringOrMultiPolygonOrGeometryCollection',
            col: true,
            etis: [{
                en: {
                  lp: 'Point'
                },
                ti: '.Point'
              }, {
                en: {
                  lp: 'LineString'
                },
                ti: '.LineString'
              }, {
                en: {
                  lp: 'Polygon'
                },
                ti: '.Polygon'
              }, {
                en: {
                  lp: 'MultiPoint'
                },
                ti: '.MultiPoint'
              }, {
                en: {
                  lp: 'MultiLineString'
                },
                ti: '.MultiLineString'
              }, {
                en: {
                  lp: 'MultiPolygon'
                },
                ti: '.MultiPolygon'
              }, {
                en: {
                  lp: 'GeometryCollection'
                },
                ti: '.GeometryCollection'
              }],
            t: 'es'
          }]
      }, {
        ln: 'MultiPolygonProperty',
        tn: null,
        ps: [{
            n: 'multiPolygon',
            en: {
              lp: 'MultiPolygon'
            },
            ti: '.MultiPolygon'
          }]
      }, {
        ln: 'CenterOf',
        tn: null,
        ps: [{
            n: 'point',
            en: {
              lp: 'Point'
            },
            ti: '.Point'
          }]
      }, {
        ln: 'PolygonProperty',
        tn: null,
        ps: [{
            n: 'polygon',
            en: {
              lp: 'Polygon'
            },
            ti: '.Polygon'
          }]
      }, {
        ln: 'BoundedBy',
        tn: null,
        ps: [{
            n: 'box',
            en: {
              lp: 'Box'
            },
            ti: '.Box'
          }]
      }, {
        ln: 'Property',
        tn: null,
        ps: [{
            n: 'typeName',
            an: {
              lp: 'typeName'
            },
            t: 'a'
          }, {
            n: 'type',
            an: {
              lp: 'type'
            },
            t: 'a'
          }, {
            n: 'value',
            t: 'v'
          }]
      }, {
        ln: 'FeatureCollection',
        tn: null,
        ps: [{
            n: 'typeName',
            an: {
              lp: 'typeName'
            },
            t: 'a'
          }, {
            n: 'identifier',
            an: {
              lp: 'identifier'
            },
            t: 'a'
          }, {
            n: 'description',
            en: {
              lp: 'description'
            }
          }, {
            n: 'name',
            en: {
              lp: 'name'
            }
          }, {
            n: 'boundedBy',
            en: {
              lp: 'boundedBy'
            },
            ti: '.BoundedBy'
          }, {
            n: 'property',
            col: true,
            en: {
              lp: 'property'
            },
            ti: '.Property'
          }, {
            n: 'geometricProperty',
            col: true,
            en: {
              lp: 'geometricProperty'
            },
            ti: '.GeometricProperty'
          }, {
            n: 'featureMember',
            col: true,
            en: {
              lp: 'featureMember'
            },
            ti: '.FeatureMember'
          }]
      }, {
        ln: 'Point',
        tn: null,
        ps: [{
            n: 'id',
            an: {
              lp: 'ID'
            },
            t: 'a'
          }, {
            n: 'srsName',
            an: {
              lp: 'srsName'
            },
            t: 'a'
          }, {
            n: 'coordinates',
            en: {
              lp: 'coordinates'
            },
            ti: '.Coordinates'
          }]
      }, {
        ln: 'PointProperty',
        tn: null,
        ps: [{
            n: 'point',
            en: {
              lp: 'Point'
            },
            ti: '.Point'
          }]
      }, {
        ln: 'MultiLocation',
        tn: null,
        ps: [{
            n: 'multiPoint',
            en: {
              lp: 'MultiPoint'
            },
            ti: '.MultiPoint'
          }]
      }, {
        ln: 'MultiPoint',
        tn: null,
        ps: [{
            n: 'id',
            an: {
              lp: 'ID'
            },
            t: 'a'
          }, {
            n: 'srsName',
            an: {
              lp: 'srsName'
            },
            t: 'a'
          }, {
            n: 'pointMember',
            col: true,
            en: {
              lp: 'pointMember'
            },
            ti: '.PointMember'
          }]
      }, {
        ln: 'MultiLineString',
        tn: null,
        ps: [{
            n: 'id',
            an: {
              lp: 'ID'
            },
            t: 'a'
          }, {
            n: 'srsName',
            an: {
              lp: 'srsName'
            },
            t: 'a'
          }, {
            n: 'lineStringMember',
            col: true,
            en: {
              lp: 'lineStringMember'
            },
            ti: '.LineStringMember'
          }]
      }, {
        ln: 'LineString',
        tn: null,
        ps: [{
            n: 'id',
            an: {
              lp: 'ID'
            },
            t: 'a'
          }, {
            n: 'srsName',
            an: {
              lp: 'srsName'
            },
            t: 'a'
          }, {
            n: 'coordinates',
            en: {
              lp: 'coordinates'
            },
            ti: '.Coordinates'
          }]
      }, {
        ln: 'LineStringProperty',
        tn: null,
        ps: [{
            n: 'lineString',
            en: {
              lp: 'LineString'
            },
            ti: '.LineString'
          }]
      }, {
        ln: 'Location',
        tn: null,
        ps: [{
            n: 'point',
            en: {
              lp: 'Point'
            },
            ti: '.Point'
          }]
      }, {
        ln: 'GeometryCollection',
        tn: null,
        ps: [{
            n: 'id',
            an: {
              lp: 'ID'
            },
            t: 'a'
          }, {
            n: 'srsName',
            an: {
              lp: 'srsName'
            },
            t: 'a'
          }, {
            n: 'geometryMember',
            col: true,
            en: {
              lp: 'geometryMember'
            },
            ti: '.GeometryMember'
          }]
      }, {
        ln: 'Coordinates',
        tn: null,
        ps: [{
            n: 'decimal',
            an: {
              lp: 'decimal'
            },
            t: 'a'
          }, {
            n: 'cs',
            an: {
              lp: 'cs'
            },
            t: 'a'
          }, {
            n: 'ts',
            an: {
              lp: 'ts'
            },
            t: 'a'
          }, {
            n: 'value',
            t: 'v'
          }]
      }, {
        ln: 'PointMember',
        tn: null,
        ps: [{
            n: 'point',
            en: {
              lp: 'Point'
            },
            ti: '.Point'
          }]
      }, {
        ln: 'MultiPosition',
        tn: null,
        ps: [{
            n: 'multiPoint',
            en: {
              lp: 'MultiPoint'
            },
            ti: '.MultiPoint'
          }]
      }, {
        ln: 'OuterBoundaryIs',
        tn: null,
        ps: [{
            n: 'linearRing',
            en: {
              lp: 'LinearRing'
            },
            ti: '.LinearRing'
          }]
      }, {
        ln: 'LineStringMember',
        tn: null,
        ps: [{
            n: 'lineString',
            en: {
              lp: 'LineString'
            },
            ti: '.LineString'
          }]
      }, {
        ln: 'Polygon',
        tn: null,
        ps: [{
            n: 'id',
            an: {
              lp: 'ID'
            },
            t: 'a'
          }, {
            n: 'srsName',
            an: {
              lp: 'srsName'
            },
            t: 'a'
          }, {
            n: 'outerBoundaryIs',
            en: {
              lp: 'outerBoundaryIs'
            },
            ti: '.OuterBoundaryIs'
          }, {
            n: 'innerBoundaryIs',
            col: true,
            en: {
              lp: 'innerBoundaryIs'
            },
            ti: '.InnerBoundaryIs'
          }]
      }, {
        ln: 'MultiCenterOf',
        tn: null,
        ps: [{
            n: 'multiPoint',
            en: {
              lp: 'MultiPoint'
            },
            ti: '.MultiPoint'
          }]
      }, {
        ln: 'GeometryProperty',
        tn: null,
        ps: [{
            n: 'pointOrLineStringOrPolygonOrMultiPointOrMultiLineStringOrMultiPolygonOrGeometryCollection',
            col: true,
            etis: [{
                en: {
                  lp: 'Point'
                },
                ti: '.Point'
              }, {
                en: {
                  lp: 'LineString'
                },
                ti: '.LineString'
              }, {
                en: {
                  lp: 'Polygon'
                },
                ti: '.Polygon'
              }, {
                en: {
                  lp: 'MultiPoint'
                },
                ti: '.MultiPoint'
              }, {
                en: {
                  lp: 'MultiLineString'
                },
                ti: '.MultiLineString'
              }, {
                en: {
                  lp: 'MultiPolygon'
                },
                ti: '.MultiPolygon'
              }, {
                en: {
                  lp: 'GeometryCollection'
                },
                ti: '.GeometryCollection'
              }],
            t: 'es'
          }]
      }, {
        ln: 'MultiExtentOf',
        tn: null,
        ps: [{
            n: 'multiPolygon',
            en: {
              lp: 'MultiPolygon'
            },
            ti: '.MultiPolygon'
          }]
      }, {
        ln: 'LinearRing',
        tn: null,
        ps: [{
            n: 'id',
            an: {
              lp: 'ID'
            },
            t: 'a'
          }, {
            n: 'coordinates',
            en: {
              lp: 'coordinates'
            },
            ti: '.Coordinates'
          }]
      }, {
        ln: 'MultiCenterLineOf',
        tn: null,
        ps: [{
            n: 'multiLineString',
            en: {
              lp: 'MultiLineString'
            },
            ti: '.MultiLineString'
          }]
      }, {
        ln: 'MultiLineStringProperty',
        tn: null,
        ps: [{
            n: 'multiLineString',
            en: {
              lp: 'MultiLineString'
            },
            ti: '.MultiLineString'
          }]
      }, {
        ln: 'PolygonMember',
        tn: null,
        ps: [{
            n: 'polygon',
            en: {
              lp: 'Polygon'
            },
            ti: '.Polygon'
          }]
      }, {
        ln: 'MultiPolygon',
        tn: null,
        ps: [{
            n: 'id',
            an: {
              lp: 'ID'
            },
            t: 'a'
          }, {
            n: 'srsName',
            an: {
              lp: 'srsName'
            },
            t: 'a'
          }, {
            n: 'polygonMember',
            col: true,
            en: {
              lp: 'polygonMember'
            },
            ti: '.PolygonMember'
          }]
      }, {
        ln: 'Box',
        tn: null,
        ps: [{
            n: 'id',
            an: {
              lp: 'ID'
            },
            t: 'a'
          }, {
            n: 'srsName',
            an: {
              lp: 'srsName'
            },
            t: 'a'
          }, {
            n: 'coordinates',
            en: {
              lp: 'coordinates'
            },
            ti: '.Coordinates'
          }]
      }],
    eis: [{
        en: {
          lp: 'edgeOf'
        },
        ti: '.EdgeOf'
      }, {
        en: {
          lp: 'multiPointProperty'
        },
        ti: '.MultiPointProperty'
      }, {
        en: {
          lp: 'MultiPolygon'
        },
        ti: '.MultiPolygon'
      }, {
        en: {
          lp: 'geometryCollectionProperty'
        },
        ti: '.GeometryCollectionProperty'
      }, {
        en: {
          lp: 'multiPolygonProperty'
        },
        ti: '.MultiPolygonProperty'
      }, {
        en: {
          lp: 'geometryMember'
        },
        ti: '.GeometryMember'
      }, {
        en: {
          lp: 'multiLocation'
        },
        ti: '.MultiLocation'
      }, {
        en: {
          lp: 'Box'
        },
        ti: '.Box'
      }, {
        en: {
          lp: 'multiExtentOf'
        },
        ti: '.MultiExtentOf'
      }, {
        en: {
          lp: 'coordinates'
        },
        ti: '.Coordinates'
      }, {
        en: {
          lp: 'multiCoverage'
        },
        ti: '.MultiCoverage'
      }, {
        en: {
          lp: 'MultiPoint'
        },
        ti: '.MultiPoint'
      }, {
        en: {
          lp: 'multiPosition'
        },
        ti: '.MultiPosition'
      }, {
        en: {
          lp: 'coverage'
        },
        ti: '.Coverage'
      }, {
        en: {
          lp: 'Feature'
        },
        ti: '.Feature'
      }, {
        en: {
          lp: 'geometryProperty'
        },
        ti: '.GeometryProperty'
      }, {
        en: {
          lp: 'featureMember'
        },
        ti: '.FeatureMember'
      }, {
        en: {
          lp: 'boundedBy'
        },
        ti: '.BoundedBy'
      }, {
        en: {
          lp: 'multiLineStringProperty'
        },
        ti: '.MultiLineStringProperty'
      }, {
        en: {
          lp: 'MultiLineString'
        },
        ti: '.MultiLineString'
      }, {
        en: {
          lp: 'Polygon'
        },
        ti: '.Polygon'
      }, {
        en: {
          lp: 'multiEdgeOf'
        },
        ti: '.MultiEdgeOf'
      }, {
        en: {
          lp: 'innerBoundaryIs'
        },
        ti: '.InnerBoundaryIs'
      }, {
        en: {
          lp: 'extentOf'
        },
        ti: '.ExtentOf'
      }, {
        en: {
          lp: 'polygonProperty'
        },
        ti: '.PolygonProperty'
      }, {
        en: {
          lp: 'location'
        },
        ti: '.Location'
      }, {
        en: {
          lp: 'outerBoundaryIs'
        },
        ti: '.OuterBoundaryIs'
      }, {
        en: {
          lp: 'position'
        },
        ti: '.Position'
      }, {
        en: {
          lp: 'pointProperty'
        },
        ti: '.PointProperty'
      }, {
        en: {
          lp: 'multiCenterOf'
        },
        ti: '.MultiCenterOf'
      }, {
        en: {
          lp: 'centerOf'
        },
        ti: '.CenterOf'
      }, {
        en: {
          lp: 'lineStringMember'
        },
        ti: '.LineStringMember'
      }, {
        en: {
          lp: 'polygonMember'
        },
        ti: '.PolygonMember'
      }, {
        en: {
          lp: 'property'
        },
        ti: '.Property'
      }, {
        en: {
          lp: 'centerLineOf'
        },
        ti: '.CenterLineOf'
      }, {
        en: {
          lp: 'multiCenterLineOf'
        },
        ti: '.MultiCenterLineOf'
      }, {
        en: {
          lp: 'GeometryCollection'
        },
        ti: '.GeometryCollection'
      }, {
        en: {
          lp: 'pointMember'
        },
        ti: '.PointMember'
      }, {
        en: {
          lp: 'LineString'
        },
        ti: '.LineString'
      }, {
        en: {
          lp: 'FeatureCollection'
        },
        ti: '.FeatureCollection'
      }, {
        en: {
          lp: 'Point'
        },
        ti: '.Point'
      }, {
        en: {
          lp: 'lineStringProperty'
        },
        ti: '.LineStringProperty'
      }, {
        en: {
          lp: 'geometricProperty'
        },
        ti: '.GeometricProperty'
      }, {
        en: {
          lp: 'LinearRing'
        },
        ti: '.LinearRing'
      }]
  };
  return {
    GML_1_0_0: GML_1_0_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], GML_1_0_0_Module_Factory);
}
else {
  var GML_1_0_0_Module = GML_1_0_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.GML_1_0_0 = GML_1_0_0_Module.GML_1_0_0;
  }
  else {
    var GML_1_0_0 = GML_1_0_0_Module.GML_1_0_0;
  }
}