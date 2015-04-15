var Filter_1_1_0_Module_Factory = function () {
  var Filter_1_1_0 = {
    n: 'Filter_1_1_0',
    dens: 'http:\/\/www.opengis.net\/ogc',
    deps: ['GML_3_1_1'],
    tis: [{
        ln: 'PropertyIsNullType',
        bti: '.ComparisonOpsType',
        ps: [{
            n: 'propertyName',
            en: 'PropertyName',
            ti: '.PropertyNameType'
          }]
      }, {
        ln: 'DistanceType',
        ps: [{
            n: 'value',
            ti: 'Double',
            t: 'v'
          }, {
            n: 'units',
            an: {
              lp: 'units'
            },
            t: 'a'
          }]
      }, {
        ln: 'ExpressionType'
      }, {
        ln: 'FeatureIdType',
        bti: '.AbstractIdType',
        ps: [{
            n: 'fid',
            ti: 'ID',
            an: {
              lp: 'fid'
            },
            t: 'a'
          }]
      }, {
        ln: 'AbstractIdType'
      }, {
        ln: 'PropertyNameType',
        bti: '.ExpressionType',
        ps: [{
            n: 'content',
            t: 'v'
          }]
      }, {
        ln: 'ComparisonOperatorsType',
        ps: [{
            n: 'comparisonOperator',
            col: true,
            en: 'ComparisonOperator'
          }]
      }, {
        ln: 'LogicalOperators',
        tn: null
      }, {
        ln: 'ScalarCapabilitiesType',
        tn: 'Scalar_CapabilitiesType',
        ps: [{
            n: 'logicalOperators',
            en: 'LogicalOperators',
            ti: '.LogicalOperators'
          }, {
            n: 'comparisonOperators',
            en: 'ComparisonOperators',
            ti: '.ComparisonOperatorsType'
          }, {
            n: 'arithmeticOperators',
            en: 'ArithmeticOperators',
            ti: '.ArithmeticOperatorsType'
          }]
      }, {
        ln: 'BinarySpatialOpType',
        bti: '.SpatialOpsType',
        ps: [{
            n: 'propertyName1',
            en: 'PropertyName',
            ti: '.PropertyNameType'
          }, {
            n: 'propertyName2',
            en: 'PropertyName',
            ti: '.PropertyNameType'
          }, {
            n: 'geometry',
            mx: false,
            dom: false,
            en: {
              lp: '_Geometry',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.AbstractGeometryType',
            t: 'er'
          }, {
            n: 'envelope',
            mx: false,
            dom: false,
            en: {
              lp: 'Envelope',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.EnvelopeType',
            t: 'er'
          }]
      }, {
        ln: 'BinaryLogicOpType',
        bti: '.LogicOpsType',
        ps: [{
            n: 'ops',
            col: true,
            mx: false,
            dom: false,
            etis: [{
                en: 'comparisonOps',
                ti: '.ComparisonOpsType'
              }, {
                en: 'logicOps',
                ti: '.LogicOpsType'
              }, {
                en: 'Function',
                ti: '.FunctionType'
              }, {
                en: 'spatialOps',
                ti: '.SpatialOpsType'
              }],
            t: 'ers'
          }]
      }, {
        ln: 'SortPropertyType',
        ps: [{
            n: 'propertyName',
            en: 'PropertyName',
            ti: '.PropertyNameType'
          }, {
            n: 'sortOrder',
            en: 'SortOrder'
          }]
      }, {
        ln: 'FID',
        tn: null
      }, {
        ln: 'LowerBoundaryType',
        ps: [{
            n: 'expression',
            mx: false,
            dom: false,
            ti: '.ExpressionType',
            t: 'er'
          }]
      }, {
        ln: 'FunctionNamesType',
        ps: [{
            n: 'functionName',
            col: true,
            en: 'FunctionName',
            ti: '.FunctionNameType'
          }]
      }, {
        ln: 'PropertyIsBetweenType',
        bti: '.ComparisonOpsType',
        ps: [{
            n: 'expression',
            mx: false,
            dom: false,
            ti: '.ExpressionType',
            t: 'er'
          }, {
            n: 'lowerBoundary',
            en: 'LowerBoundary',
            ti: '.LowerBoundaryType'
          }, {
            n: 'upperBoundary',
            en: 'UpperBoundary',
            ti: '.UpperBoundaryType'
          }]
      }, {
        ln: 'EID',
        tn: null
      }, {
        ln: 'FunctionNameType',
        ps: [{
            n: 'value',
            t: 'v'
          }, {
            n: 'nArgs',
            an: {
              lp: 'nArgs'
            },
            t: 'a'
          }]
      }, {
        ln: 'FunctionType',
        bti: '.ExpressionType',
        ps: [{
            n: 'expression',
            col: true,
            mx: false,
            dom: false,
            ti: '.ExpressionType',
            t: 'er'
          }, {
            n: 'name',
            an: {
              lp: 'name'
            },
            t: 'a'
          }]
      }, {
        ln: 'BinaryOperatorType',
        bti: '.ExpressionType',
        ps: [{
            n: 'expression',
            col: true,
            mx: false,
            dom: false,
            ti: '.ExpressionType',
            t: 'er'
          }]
      }, {
        ln: 'PropertyIsLikeType',
        bti: '.ComparisonOpsType',
        ps: [{
            n: 'propertyName',
            en: 'PropertyName',
            ti: '.PropertyNameType'
          }, {
            n: 'literal',
            en: 'Literal',
            ti: '.LiteralType'
          }, {
            n: 'wildCard',
            an: {
              lp: 'wildCard'
            },
            t: 'a'
          }, {
            n: 'singleChar',
            an: {
              lp: 'singleChar'
            },
            t: 'a'
          }, {
            n: 'escapeChar',
            an: {
              lp: 'escapeChar'
            },
            t: 'a'
          }, {
            n: 'matchCase',
            ti: 'Boolean',
            an: {
              lp: 'matchCase'
            },
            t: 'a'
          }]
      }, {
        ln: 'SpatialOperatorType',
        ps: [{
            n: 'geometryOperands',
            en: 'GeometryOperands',
            ti: '.GeometryOperandsType'
          }, {
            n: 'name',
            an: {
              lp: 'name'
            },
            t: 'a'
          }]
      }, {
        ln: 'FilterType',
        ps: [{
            n: 'spatialOps',
            mx: false,
            dom: false,
            ti: '.SpatialOpsType',
            t: 'er'
          }, {
            n: 'comparisonOps',
            mx: false,
            dom: false,
            ti: '.ComparisonOpsType',
            t: 'er'
          }, {
            n: 'logicOps',
            mx: false,
            dom: false,
            ti: '.LogicOpsType',
            t: 'er'
          }, {
            n: 'id',
            col: true,
            mx: false,
            dom: false,
            en: '_Id',
            ti: '.AbstractIdType',
            t: 'er'
          }]
      }, {
        ln: 'BinaryComparisonOpType',
        bti: '.ComparisonOpsType',
        ps: [{
            n: 'expression',
            col: true,
            mx: false,
            dom: false,
            ti: '.ExpressionType',
            t: 'er'
          }, {
            n: 'matchCase',
            ti: 'Boolean',
            an: {
              lp: 'matchCase'
            },
            t: 'a'
          }]
      }, {
        ln: 'LiteralType',
        bti: '.ExpressionType',
        ps: [{
            n: 'content',
            col: true,
            dom: false,
            t: 'ae'
          }]
      }, {
        ln: 'IdCapabilitiesType',
        tn: 'Id_CapabilitiesType',
        ps: [{
            n: 'ids',
            col: true,
            etis: [{
                en: 'EID',
                ti: '.EID'
              }, {
                en: 'FID',
                ti: '.FID'
              }],
            t: 'es'
          }]
      }, {
        ln: 'ComparisonOpsType'
      }, {
        ln: 'SimpleArithmetic',
        tn: null
      }, {
        ln: 'LogicOpsType'
      }, {
        ln: 'SortByType',
        ps: [{
            n: 'sortProperty',
            col: true,
            en: 'SortProperty',
            ti: '.SortPropertyType'
          }]
      }, {
        ln: 'UpperBoundaryType',
        ps: [{
            n: 'expression',
            mx: false,
            dom: false,
            ti: '.ExpressionType',
            t: 'er'
          }]
      }, {
        ln: 'UnaryLogicOpType',
        bti: '.LogicOpsType',
        ps: [{
            n: 'comparisonOps',
            mx: false,
            dom: false,
            ti: '.ComparisonOpsType',
            t: 'er'
          }, {
            n: 'spatialOps',
            mx: false,
            dom: false,
            ti: '.SpatialOpsType',
            t: 'er'
          }, {
            n: 'logicOps',
            mx: false,
            dom: false,
            ti: '.LogicOpsType',
            t: 'er'
          }, {
            n: 'function',
            en: 'Function',
            ti: '.FunctionType'
          }]
      }, {
        ln: 'DistanceBufferType',
        bti: '.SpatialOpsType',
        ps: [{
            n: 'propertyName',
            en: 'PropertyName',
            ti: '.PropertyNameType'
          }, {
            n: 'geometry',
            mx: false,
            dom: false,
            en: {
              lp: '_Geometry',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.AbstractGeometryType',
            t: 'er'
          }, {
            n: 'distance',
            en: 'Distance',
            ti: '.DistanceType'
          }]
      }, {
        ln: 'SpatialOperatorsType',
        ps: [{
            n: 'spatialOperator',
            col: true,
            en: 'SpatialOperator',
            ti: '.SpatialOperatorType'
          }]
      }, {
        ln: 'SpatialCapabilitiesType',
        tn: 'Spatial_CapabilitiesType',
        ps: [{
            n: 'geometryOperands',
            en: 'GeometryOperands',
            ti: '.GeometryOperandsType'
          }, {
            n: 'spatialOperators',
            en: 'SpatialOperators',
            ti: '.SpatialOperatorsType'
          }]
      }, {
        ln: 'SpatialOpsType'
      }, {
        ln: 'ArithmeticOperatorsType',
        ps: [{
            n: 'ops',
            col: true,
            etis: [{
                en: 'SimpleArithmetic',
                ti: '.SimpleArithmetic'
              }, {
                en: 'Functions',
                ti: '.FunctionsType'
              }],
            t: 'es'
          }]
      }, {
        ln: 'GmlObjectIdType',
        bti: '.AbstractIdType',
        ps: [{
            n: 'id',
            ti: 'ID',
            an: {
              lp: 'id',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            t: 'a'
          }]
      }, {
        ln: 'FilterCapabilities',
        tn: null,
        ps: [{
            n: 'spatialCapabilities',
            en: 'Spatial_Capabilities',
            ti: '.SpatialCapabilitiesType'
          }, {
            n: 'scalarCapabilities',
            en: 'Scalar_Capabilities',
            ti: '.ScalarCapabilitiesType'
          }, {
            n: 'idCapabilities',
            en: 'Id_Capabilities',
            ti: '.IdCapabilitiesType'
          }]
      }, {
        ln: 'BBOXType',
        bti: '.SpatialOpsType',
        ps: [{
            n: 'propertyName',
            en: 'PropertyName',
            ti: '.PropertyNameType'
          }, {
            n: 'envelope',
            mx: false,
            dom: false,
            en: {
              lp: 'Envelope',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.EnvelopeType',
            t: 'er'
          }]
      }, {
        ln: 'GeometryOperandsType',
        ps: [{
            n: 'geometryOperand',
            col: true,
            en: 'GeometryOperand',
            ti: 'QName'
          }]
      }, {
        ln: 'FunctionsType',
        ps: [{
            n: 'functionNames',
            en: 'FunctionNames',
            ti: '.FunctionNamesType'
          }]
      }, {
        t: 'enum',
        ln: 'ComparisonOperatorType',
        vs: ['LessThan', 'GreaterThan', 'LessThanEqualTo', 'GreaterThanEqualTo', 'EqualTo', 'NotEqualTo', 'Like', 'Between', 'NullCheck']
      }, {
        t: 'enum',
        ln: 'SpatialOperatorNameType',
        vs: ['BBOX', 'Equals', 'Disjoint', 'Intersects', 'Touches', 'Crosses', 'Within', 'Contains', 'Overlaps', 'Beyond', 'DWithin']
      }, {
        t: 'enum',
        ln: 'SortOrderType',
        vs: ['DESC', 'ASC']
      }],
    eis: [{
        en: 'Filter_Capabilities',
        ti: '.FilterCapabilities'
      }, {
        en: 'FID',
        ti: '.FID'
      }, {
        en: '_Id',
        ti: '.AbstractIdType'
      }, {
        en: 'expression',
        ti: '.ExpressionType'
      }, {
        en: 'Disjoint',
        ti: '.BinarySpatialOpType',
        sh: 'spatialOps'
      }, {
        en: 'Literal',
        ti: '.LiteralType',
        sh: 'expression'
      }, {
        en: 'Function',
        ti: '.FunctionType',
        sh: 'expression'
      }, {
        en: 'And',
        ti: '.BinaryLogicOpType',
        sh: 'logicOps'
      }, {
        en: 'Not',
        ti: '.UnaryLogicOpType',
        sh: 'logicOps'
      }, {
        en: 'Beyond',
        ti: '.DistanceBufferType',
        sh: 'spatialOps'
      }, {
        en: 'Add',
        ti: '.BinaryOperatorType',
        sh: 'expression'
      }, {
        en: 'PropertyIsNotEqualTo',
        ti: '.BinaryComparisonOpType',
        sh: 'comparisonOps'
      }, {
        en: 'PropertyIsGreaterThanOrEqualTo',
        ti: '.BinaryComparisonOpType',
        sh: 'comparisonOps'
      }, {
        en: 'Sub',
        ti: '.BinaryOperatorType',
        sh: 'expression'
      }, {
        en: 'DWithin',
        ti: '.DistanceBufferType',
        sh: 'spatialOps'
      }, {
        en: 'Filter',
        ti: '.FilterType'
      }, {
        en: 'PropertyIsGreaterThan',
        ti: '.BinaryComparisonOpType',
        sh: 'comparisonOps'
      }, {
        en: 'Touches',
        ti: '.BinarySpatialOpType',
        sh: 'spatialOps'
      }, {
        en: 'spatialOps',
        ti: '.SpatialOpsType'
      }, {
        en: 'PropertyIsLessThan',
        ti: '.BinaryComparisonOpType',
        sh: 'comparisonOps'
      }, {
        en: 'Contains',
        ti: '.BinarySpatialOpType',
        sh: 'spatialOps'
      }, {
        en: 'PropertyIsBetween',
        ti: '.PropertyIsBetweenType',
        sh: 'comparisonOps'
      }, {
        en: 'SimpleArithmetic',
        ti: '.SimpleArithmetic'
      }, {
        en: 'Or',
        ti: '.BinaryLogicOpType',
        sh: 'logicOps'
      }, {
        en: 'Mul',
        ti: '.BinaryOperatorType',
        sh: 'expression'
      }, {
        en: 'Intersects',
        ti: '.BinarySpatialOpType',
        sh: 'spatialOps'
      }, {
        en: 'PropertyIsNull',
        ti: '.PropertyIsNullType',
        sh: 'comparisonOps'
      }, {
        en: 'logicOps',
        ti: '.LogicOpsType'
      }, {
        en: 'GmlObjectId',
        ti: '.GmlObjectIdType',
        sh: '_Id'
      }, {
        en: 'Div',
        ti: '.BinaryOperatorType',
        sh: 'expression'
      }, {
        en: 'comparisonOps',
        ti: '.ComparisonOpsType'
      }, {
        en: 'FeatureId',
        ti: '.FeatureIdType',
        sh: '_Id'
      }, {
        en: 'Equals',
        ti: '.BinarySpatialOpType',
        sh: 'spatialOps'
      }, {
        en: 'PropertyIsEqualTo',
        ti: '.BinaryComparisonOpType',
        sh: 'comparisonOps'
      }, {
        en: 'BBOX',
        ti: '.BBOXType',
        sh: 'spatialOps'
      }, {
        en: 'EID',
        ti: '.EID'
      }, {
        en: 'Overlaps',
        ti: '.BinarySpatialOpType',
        sh: 'spatialOps'
      }, {
        en: 'Crosses',
        ti: '.BinarySpatialOpType',
        sh: 'spatialOps'
      }, {
        en: 'LogicalOperators',
        ti: '.LogicalOperators'
      }, {
        en: 'PropertyIsLessThanOrEqualTo',
        ti: '.BinaryComparisonOpType',
        sh: 'comparisonOps'
      }, {
        en: 'SortBy',
        ti: '.SortByType'
      }, {
        en: 'Within',
        ti: '.BinarySpatialOpType',
        sh: 'spatialOps'
      }, {
        en: 'PropertyName',
        ti: '.PropertyNameType',
        sh: 'expression'
      }, {
        en: 'PropertyIsLike',
        ti: '.PropertyIsLikeType',
        sh: 'comparisonOps'
      }]
  };
  return {
    Filter_1_1_0: Filter_1_1_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], Filter_1_1_0_Module_Factory);
}
else {
  var Filter_1_1_0_Module = Filter_1_1_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.Filter_1_1_0 = Filter_1_1_0_Module.Filter_1_1_0;
  }
  else {
    var Filter_1_1_0 = Filter_1_1_0_Module.Filter_1_1_0;
  }
}