var ISO19139_GCO_20060504_Module_Factory = function () {
  var ISO19139_GCO_20060504 = {
    n: 'ISO19139_GCO_20060504',
    dens: 'http:\/\/www.isotc211.org\/2005\/gco',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['XLink_1_0', 'GML_3_2_0'],
    tis: [{
        ln: 'TypeNameType',
        tn: 'TypeName_Type',
        bti: '.AbstractObjectType',
        ps: [{
            n: 'aName',
            ti: '.CharacterStringPropertyType'
          }]
      }, {
        ln: 'UnlimitedIntegerPropertyType',
        tn: 'UnlimitedInteger_PropertyType',
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
        ln: 'CharacterStringPropertyType',
        tn: 'CharacterString_PropertyType',
        ps: [{
            n: 'characterString',
            mx: false,
            dom: false,
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
        ln: 'RealPropertyType',
        tn: 'Real_PropertyType',
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
        ln: 'DecimalPropertyType',
        tn: 'Decimal_PropertyType',
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
        ln: 'UomAreaPropertyType',
        tn: 'UomArea_PropertyType',
        ps: [{
            n: 'unitDefinition',
            mx: false,
            dom: false,
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
        ln: 'RecordTypeType',
        tn: 'RecordType_Type',
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
        ln: 'BooleanPropertyType',
        tn: 'Boolean_PropertyType',
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
        ln: 'MultiplicityRangePropertyType',
        tn: 'MultiplicityRange_PropertyType',
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
        ln: 'TypeNamePropertyType',
        tn: 'TypeName_PropertyType',
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
        ln: 'UomLengthPropertyType',
        tn: 'UomLength_PropertyType',
        ps: [{
            n: 'unitDefinition',
            mx: false,
            dom: false,
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
        ln: 'UomTimePropertyType',
        tn: 'UomTime_PropertyType',
        ps: [{
            n: 'unitDefinition',
            mx: false,
            dom: false,
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
        ln: 'DistancePropertyType',
        tn: 'Distance_PropertyType',
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
        ln: 'UomAnglePropertyType',
        tn: 'UomAngle_PropertyType',
        ps: [{
            n: 'unitDefinition',
            mx: false,
            dom: false,
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
        ln: 'NumberPropertyType',
        tn: 'Number_PropertyType',
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
        ln: 'MeasurePropertyType',
        tn: 'Measure_PropertyType',
        ps: [{
            n: 'measure',
            mx: false,
            dom: false,
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
        ln: 'LocalNamePropertyType',
        tn: 'LocalName_PropertyType',
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
        ln: 'UnlimitedIntegerType',
        tn: 'UnlimitedInteger_Type',
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
        ln: 'AnglePropertyType',
        tn: 'Angle_PropertyType',
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
        ln: 'MultiplicityRangeType',
        tn: 'MultiplicityRange_Type',
        bti: '.AbstractObjectType',
        ps: [{
            n: 'lower',
            ti: '.IntegerPropertyType'
          }, {
            n: 'upper',
            ti: '.UnlimitedIntegerPropertyType'
          }]
      }, {
        ln: 'UomVolumePropertyType',
        tn: 'UomVolume_PropertyType',
        ps: [{
            n: 'unitDefinition',
            mx: false,
            dom: false,
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
        tn: 'Scale_PropertyType',
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
        ln: 'MemberNamePropertyType',
        tn: 'MemberName_PropertyType',
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
        ln: 'UomVelocityPropertyType',
        tn: 'UomVelocity_PropertyType',
        ps: [{
            n: 'unitDefinition',
            mx: false,
            dom: false,
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
        ln: 'IntegerPropertyType',
        tn: 'Integer_PropertyType',
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
        ln: 'RecordPropertyType',
        tn: 'Record_PropertyType',
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
        ln: 'UnitOfMeasurePropertyType',
        tn: 'UnitOfMeasure_PropertyType',
        ps: [{
            n: 'unitDefinition',
            mx: false,
            dom: false,
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
        ln: 'BinaryType',
        tn: 'Binary_Type',
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
        ln: 'UomScalePropertyType',
        tn: 'UomScale_PropertyType',
        ps: [{
            n: 'unitDefinition',
            mx: false,
            dom: false,
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
        ln: 'AbstractObjectType',
        tn: 'AbstractObject_Type',
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
        tn: 'RecordType_PropertyType',
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
        ln: 'DateTimePropertyType',
        tn: 'DateTime_PropertyType',
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
        ln: 'DatePropertyType',
        tn: 'Date_PropertyType',
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
        ln: 'MultiplicityType',
        tn: 'Multiplicity_Type',
        bti: '.AbstractObjectType',
        ps: [{
            n: 'range',
            col: true,
            ti: '.MultiplicityRangePropertyType'
          }]
      }, {
        ln: 'MemberNameType',
        tn: 'MemberName_Type',
        bti: '.AbstractObjectType',
        ps: [{
            n: 'aName',
            ti: '.CharacterStringPropertyType'
          }, {
            n: 'attributeType',
            ti: '.TypeNamePropertyType'
          }]
      }, {
        ln: 'CodeListValueType',
        tn: 'CodeListValue_Type',
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
        ln: 'LengthPropertyType',
        tn: 'Length_PropertyType',
        ps: [{
            n: 'length',
            mx: false,
            dom: false,
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
        ln: 'ScopedNamePropertyType',
        tn: 'ScopedName_PropertyType',
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
      }, {
        ln: 'MultiplicityPropertyType',
        tn: 'Multiplicity_PropertyType',
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
        ln: 'ObjectReferencePropertyType',
        tn: 'ObjectReference_PropertyType',
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
        ln: 'GenericNamePropertyType',
        tn: 'GenericName_PropertyType',
        ps: [{
            n: 'abstractGenericName',
            mx: false,
            dom: false,
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
        ln: 'BinaryPropertyType',
        tn: 'Binary_PropertyType',
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
      }],
    eis: [{
        en: 'AbstractObject',
        ti: '.AbstractObjectType'
      }, {
        en: 'Date'
      }, {
        en: 'Scale',
        ti: 'GML_3_2_0.ScaleType',
        sh: 'Measure'
      }, {
        en: 'Real',
        ti: 'Double'
      }, {
        en: 'Measure',
        ti: 'GML_3_2_0.MeasureType'
      }, {
        en: 'Angle',
        ti: 'GML_3_2_0.AngleType',
        sh: 'Measure'
      }, {
        en: 'Distance',
        ti: 'GML_3_2_0.LengthType',
        sh: 'Length'
      }, {
        en: 'Integer',
        ti: 'Integer'
      }, {
        en: 'ScopedName',
        ti: 'GML_3_2_0.CodeType',
        sh: 'AbstractGenericName'
      }, {
        en: 'Length',
        ti: 'GML_3_2_0.LengthType',
        sh: 'Measure'
      }, {
        en: 'Multiplicity',
        ti: '.MultiplicityType'
      }, {
        en: 'Decimal',
        ti: 'Decimal'
      }, {
        en: 'DateTime',
        ti: 'Calendar'
      }, {
        en: 'RecordType',
        ti: '.RecordTypeType'
      }, {
        en: 'MemberName',
        ti: '.MemberNameType'
      }, {
        en: 'CharacterString'
      }, {
        en: 'Boolean',
        ti: 'Boolean'
      }, {
        en: 'MultiplicityRange',
        ti: '.MultiplicityRangeType'
      }, {
        en: 'Binary',
        ti: '.BinaryType'
      }, {
        en: 'AbstractGenericName',
        ti: 'GML_3_2_0.CodeType'
      }, {
        en: 'UnlimitedInteger',
        ti: '.UnlimitedIntegerType'
      }, {
        en: 'Record',
        ti: 'AnyType'
      }, {
        en: 'TypeName',
        ti: '.TypeNameType'
      }, {
        en: 'LocalName',
        ti: 'GML_3_2_0.CodeType',
        sh: 'AbstractGenericName'
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