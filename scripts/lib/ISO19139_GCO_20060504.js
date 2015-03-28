var ISO19139_GCO_20060504_Module_Factory = function () {
  var ISO19139_GCO_20060504 = {
    n: 'ISO19139_GCO_20060504',
    dens: 'http:\/\/www.isotc211.org\/2005\/gco',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['XLink_1_0', 'GML_3_2_0'],
    tis: [{
        ln: 'MultiplicityType',
        bti: '.AbstractObjectType',
        ps: [{
            n: 'range',
            col: true,
            ti: '.MultiplicityRangePropertyType'
          }]
      }, {
        ln: 'DistancePropertyType',
        ps: [{
            n: 'distance',
            en: 'Distance',
            ti: 'GML_3_2_0.LengthType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason',
              ns: 'http:\/\/www.isotc211.org\/2005\/gco'
            },
            t: 'a'
          }]
      }, {
        ln: 'UomAreaPropertyType',
        ps: [{
            n: 'unitDefinition',
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'UnitDefinition',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_2_0.UnitDefinitionType',
            t: 'er'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason',
              ns: 'http:\/\/www.isotc211.org\/2005\/gco'
            },
            t: 'a'
          }, {
            n: 'uuidref',
            an: {
              lp: 'uuidref'
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
        ln: 'TypeNameType',
        bti: '.AbstractObjectType',
        ps: [{
            n: 'aName',
            ti: '.CharacterStringPropertyType'
          }]
      }, {
        ln: 'CodeListValueType',
        ps: [{
            n: 'value',
            t: 'v'
          }, {
            n: 'codeList',
            an: {
              lp: 'codeList'
            },
            t: 'a'
          }, {
            n: 'codeListValue',
            an: {
              lp: 'codeListValue'
            },
            t: 'a'
          }, {
            n: 'codeSpace',
            an: {
              lp: 'codeSpace'
            },
            t: 'a'
          }]
      }, {
        ln: 'NumberPropertyType',
        ps: [{
            n: 'real',
            en: 'Real',
            ti: 'Double'
          }, {
            n: 'decimal',
            en: 'Decimal',
            ti: 'Decimal'
          }, {
            n: 'integer',
            en: 'Integer',
            ti: 'Integer'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason',
              ns: 'http:\/\/www.isotc211.org\/2005\/gco'
            },
            t: 'a'
          }]
      }, {
        ln: 'LengthPropertyType',
        ps: [{
            n: 'length',
            mx: false,
            dom: false,
            typed: false,
            en: 'Length',
            ti: 'GML_3_2_0.LengthType',
            t: 'er'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason',
              ns: 'http:\/\/www.isotc211.org\/2005\/gco'
            },
            t: 'a'
          }]
      }, {
        ln: 'DecimalPropertyType',
        ps: [{
            n: 'decimal',
            en: 'Decimal',
            ti: 'Decimal'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason',
              ns: 'http:\/\/www.isotc211.org\/2005\/gco'
            },
            t: 'a'
          }]
      }, {
        ln: 'BinaryPropertyType',
        ps: [{
            n: 'binary',
            en: 'Binary',
            ti: '.BinaryType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason',
              ns: 'http:\/\/www.isotc211.org\/2005\/gco'
            },
            t: 'a'
          }]
      }, {
        ln: 'MemberNamePropertyType',
        ps: [{
            n: 'memberName',
            en: 'MemberName',
            ti: '.MemberNameType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason',
              ns: 'http:\/\/www.isotc211.org\/2005\/gco'
            },
            t: 'a'
          }, {
            n: 'uuidref',
            an: {
              lp: 'uuidref'
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
        ln: 'TypeNamePropertyType',
        ps: [{
            n: 'typeName',
            en: 'TypeName',
            ti: '.TypeNameType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason',
              ns: 'http:\/\/www.isotc211.org\/2005\/gco'
            },
            t: 'a'
          }, {
            n: 'uuidref',
            an: {
              lp: 'uuidref'
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
        ln: 'UomVolumePropertyType',
        ps: [{
            n: 'unitDefinition',
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'UnitDefinition',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_2_0.UnitDefinitionType',
            t: 'er'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason',
              ns: 'http:\/\/www.isotc211.org\/2005\/gco'
            },
            t: 'a'
          }, {
            n: 'uuidref',
            an: {
              lp: 'uuidref'
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
        ln: 'MeasurePropertyType',
        ps: [{
            n: 'measure',
            mx: false,
            dom: false,
            typed: false,
            en: 'Measure',
            ti: 'GML_3_2_0.MeasureType',
            t: 'er'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason',
              ns: 'http:\/\/www.isotc211.org\/2005\/gco'
            },
            t: 'a'
          }]
      }, {
        ln: 'BinaryType',
        ps: [{
            n: 'value',
            t: 'v'
          }, {
            n: 'src',
            an: {
              lp: 'src'
            },
            t: 'a'
          }]
      }, {
        ln: 'RecordTypeType',
        ps: [{
            n: 'value',
            t: 'v'
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
        ln: 'LocalNamePropertyType',
        ps: [{
            n: 'localName',
            en: 'LocalName',
            ti: 'GML_3_2_0.CodeType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason',
              ns: 'http:\/\/www.isotc211.org\/2005\/gco'
            },
            t: 'a'
          }]
      }, {
        ln: 'CharacterStringPropertyType',
        ps: [{
            n: 'characterString',
            mx: false,
            dom: false,
            typed: false,
            en: 'CharacterString',
            t: 'er'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason',
              ns: 'http:\/\/www.isotc211.org\/2005\/gco'
            },
            t: 'a'
          }]
      }, {
        ln: 'UnlimitedIntegerType',
        ps: [{
            n: 'value',
            ti: 'Integer',
            t: 'v'
          }, {
            n: 'isInfinite',
            ti: 'Boolean',
            an: {
              lp: 'isInfinite'
            },
            t: 'a'
          }]
      }, {
        ln: 'IntegerPropertyType',
        ps: [{
            n: 'integer',
            en: 'Integer',
            ti: 'Integer'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason',
              ns: 'http:\/\/www.isotc211.org\/2005\/gco'
            },
            t: 'a'
          }]
      }, {
        ln: 'MultiplicityRangePropertyType',
        ps: [{
            n: 'multiplicityRange',
            en: 'MultiplicityRange',
            ti: '.MultiplicityRangeType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason',
              ns: 'http:\/\/www.isotc211.org\/2005\/gco'
            },
            t: 'a'
          }, {
            n: 'uuidref',
            an: {
              lp: 'uuidref'
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
        ln: 'AbstractObjectType',
        ps: [{
            n: 'id',
            ti: 'ID',
            an: {
              lp: 'id'
            },
            t: 'a'
          }, {
            n: 'uuid',
            an: {
              lp: 'uuid'
            },
            t: 'a'
          }]
      }, {
        ln: 'RecordTypePropertyType',
        ps: [{
            n: 'recordType',
            en: 'RecordType',
            ti: '.RecordTypeType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason',
              ns: 'http:\/\/www.isotc211.org\/2005\/gco'
            },
            t: 'a'
          }]
      }, {
        ln: 'BooleanPropertyType',
        ps: [{
            n: '_boolean',
            en: 'Boolean',
            ti: 'Boolean'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason',
              ns: 'http:\/\/www.isotc211.org\/2005\/gco'
            },
            t: 'a'
          }]
      }, {
        ln: 'MultiplicityPropertyType',
        ps: [{
            n: 'multiplicity',
            en: 'Multiplicity',
            ti: '.MultiplicityType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason',
              ns: 'http:\/\/www.isotc211.org\/2005\/gco'
            },
            t: 'a'
          }, {
            n: 'uuidref',
            an: {
              lp: 'uuidref'
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
        ln: 'AnglePropertyType',
        ps: [{
            n: 'angle',
            en: 'Angle',
            ti: 'GML_3_2_0.AngleType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason',
              ns: 'http:\/\/www.isotc211.org\/2005\/gco'
            },
            t: 'a'
          }]
      }, {
        ln: 'DateTimePropertyType',
        ps: [{
            n: 'dateTime',
            en: 'DateTime',
            ti: 'Calendar'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason',
              ns: 'http:\/\/www.isotc211.org\/2005\/gco'
            },
            t: 'a'
          }]
      }, {
        ln: 'UomVelocityPropertyType',
        ps: [{
            n: 'unitDefinition',
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'UnitDefinition',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_2_0.UnitDefinitionType',
            t: 'er'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason',
              ns: 'http:\/\/www.isotc211.org\/2005\/gco'
            },
            t: 'a'
          }, {
            n: 'uuidref',
            an: {
              lp: 'uuidref'
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
        ln: 'MemberNameType',
        bti: '.AbstractObjectType',
        ps: [{
            n: 'aName',
            ti: '.CharacterStringPropertyType'
          }, {
            n: 'attributeType',
            ti: '.TypeNamePropertyType'
          }]
      }, {
        ln: 'GenericNamePropertyType',
        ps: [{
            n: 'abstractGenericName',
            mx: false,
            dom: false,
            typed: false,
            en: 'AbstractGenericName',
            ti: 'GML_3_2_0.CodeType',
            t: 'er'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason',
              ns: 'http:\/\/www.isotc211.org\/2005\/gco'
            },
            t: 'a'
          }]
      }, {
        ln: 'ObjectReferencePropertyType',
        ps: [{
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason',
              ns: 'http:\/\/www.isotc211.org\/2005\/gco'
            },
            t: 'a'
          }, {
            n: 'uuidref',
            an: {
              lp: 'uuidref'
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
        ln: 'RealPropertyType',
        ps: [{
            n: 'real',
            en: 'Real',
            ti: 'Double'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason',
              ns: 'http:\/\/www.isotc211.org\/2005\/gco'
            },
            t: 'a'
          }]
      }, {
        ln: 'DatePropertyType',
        ps: [{
            n: 'date',
            en: 'Date'
          }, {
            n: 'dateTime',
            en: 'DateTime',
            ti: 'Calendar'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason',
              ns: 'http:\/\/www.isotc211.org\/2005\/gco'
            },
            t: 'a'
          }]
      }, {
        ln: 'UnitOfMeasurePropertyType',
        ps: [{
            n: 'unitDefinition',
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'UnitDefinition',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_2_0.UnitDefinitionType',
            t: 'er'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason',
              ns: 'http:\/\/www.isotc211.org\/2005\/gco'
            },
            t: 'a'
          }, {
            n: 'uuidref',
            an: {
              lp: 'uuidref'
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
        ln: 'ScalePropertyType',
        ps: [{
            n: 'scale',
            en: 'Scale',
            ti: 'GML_3_2_0.ScaleType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason',
              ns: 'http:\/\/www.isotc211.org\/2005\/gco'
            },
            t: 'a'
          }]
      }, {
        ln: 'RecordPropertyType',
        ps: [{
            n: 'record',
            en: 'Record',
            ti: 'AnyType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason',
              ns: 'http:\/\/www.isotc211.org\/2005\/gco'
            },
            t: 'a'
          }, {
            n: 'uuidref',
            an: {
              lp: 'uuidref'
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
        ln: 'UomTimePropertyType',
        ps: [{
            n: 'unitDefinition',
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'UnitDefinition',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_2_0.UnitDefinitionType',
            t: 'er'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason',
              ns: 'http:\/\/www.isotc211.org\/2005\/gco'
            },
            t: 'a'
          }, {
            n: 'uuidref',
            an: {
              lp: 'uuidref'
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
        ln: 'UomAnglePropertyType',
        ps: [{
            n: 'unitDefinition',
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'UnitDefinition',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_2_0.UnitDefinitionType',
            t: 'er'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason',
              ns: 'http:\/\/www.isotc211.org\/2005\/gco'
            },
            t: 'a'
          }, {
            n: 'uuidref',
            an: {
              lp: 'uuidref'
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
        ln: 'UomLengthPropertyType',
        ps: [{
            n: 'unitDefinition',
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'UnitDefinition',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_2_0.UnitDefinitionType',
            t: 'er'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason',
              ns: 'http:\/\/www.isotc211.org\/2005\/gco'
            },
            t: 'a'
          }, {
            n: 'uuidref',
            an: {
              lp: 'uuidref'
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
        ln: 'UnlimitedIntegerPropertyType',
        ps: [{
            n: 'unlimitedInteger',
            en: 'UnlimitedInteger',
            ti: '.UnlimitedIntegerType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason',
              ns: 'http:\/\/www.isotc211.org\/2005\/gco'
            },
            t: 'a'
          }]
      }, {
        ln: 'MultiplicityRangeType',
        bti: '.AbstractObjectType',
        ps: [{
            n: 'lower',
            ti: '.IntegerPropertyType'
          }, {
            n: 'upper',
            ti: '.UnlimitedIntegerPropertyType'
          }]
      }, {
        ln: 'UomScalePropertyType',
        ps: [{
            n: 'unitDefinition',
            mx: false,
            dom: false,
            typed: false,
            en: {
              lp: 'UnitDefinition',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_2_0.UnitDefinitionType',
            t: 'er'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason',
              ns: 'http:\/\/www.isotc211.org\/2005\/gco'
            },
            t: 'a'
          }, {
            n: 'uuidref',
            an: {
              lp: 'uuidref'
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
        ln: 'ScopedNamePropertyType',
        ps: [{
            n: 'scopedName',
            en: 'ScopedName',
            ti: 'GML_3_2_0.CodeType'
          }, {
            n: 'nilReason',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nilReason',
              ns: 'http:\/\/www.isotc211.org\/2005\/gco'
            },
            t: 'a'
          }]
      }],
    eis: [{
        en: 'Measure',
        ti: 'GML_3_2_0.MeasureType'
      }, {
        en: 'Multiplicity',
        ti: '.MultiplicityType'
      }, {
        en: 'AbstractObject',
        ti: '.AbstractObjectType'
      }, {
        en: 'Record',
        ti: 'AnyType'
      }, {
        en: 'TypeName',
        ti: '.TypeNameType'
      }, {
        en: 'RecordType',
        ti: '.RecordTypeType'
      }, {
        en: 'Boolean',
        ti: 'Boolean'
      }, {
        en: 'Scale',
        ti: 'GML_3_2_0.ScaleType',
        sh: 'Measure'
      }, {
        en: 'ScopedName',
        ti: 'GML_3_2_0.CodeType',
        sh: 'AbstractGenericName'
      }, {
        en: 'Integer',
        ti: 'Integer'
      }, {
        en: 'Date'
      }, {
        en: 'LocalName',
        ti: 'GML_3_2_0.CodeType',
        sh: 'AbstractGenericName'
      }, {
        en: 'Real',
        ti: 'Double'
      }, {
        en: 'Length',
        ti: 'GML_3_2_0.LengthType',
        sh: 'Measure'
      }, {
        en: 'CharacterString'
      }, {
        en: 'Angle',
        ti: 'GML_3_2_0.AngleType',
        sh: 'Measure'
      }, {
        en: 'Binary',
        ti: '.BinaryType'
      }, {
        en: 'DateTime',
        ti: 'Calendar'
      }, {
        en: 'MemberName',
        ti: '.MemberNameType'
      }, {
        en: 'MultiplicityRange',
        ti: '.MultiplicityRangeType'
      }, {
        en: 'Decimal',
        ti: 'Decimal'
      }, {
        en: 'Distance',
        ti: 'GML_3_2_0.LengthType',
        sh: 'Length'
      }, {
        en: 'AbstractGenericName',
        ti: 'GML_3_2_0.CodeType'
      }, {
        en: 'UnlimitedInteger',
        ti: '.UnlimitedIntegerType'
      }]
  };
  return {
    ISO19139_GCO_20060504: ISO19139_GCO_20060504
  };
};
if (typeof define === 'function' && define.amd) {
  define([], ISO19139_GCO_20060504_Module_Factory);
}
else {
  var ISO19139_GCO_20060504_Module = ISO19139_GCO_20060504_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.ISO19139_GCO_20060504 = ISO19139_GCO_20060504_Module.ISO19139_GCO_20060504;
  }
  else {
    var ISO19139_GCO_20060504 = ISO19139_GCO_20060504_Module.ISO19139_GCO_20060504;
  }
}