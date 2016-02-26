var ISO19139_GCO_20070417_Module_Factory = function () {
  var ISO19139_GCO_20070417 = {
    n: 'ISO19139_GCO_20070417',
    dens: 'http:\/\/www.isotc211.org\/2005\/gco',
    dans: 'http:\/\/www.w3.org\/1999\/xlink',
    deps: ['XLink_1_0', 'GML_3_2_1'],
    tis: [{
        ln: 'MultiplicityType',
        tn: 'Multiplicity_Type',
        bti: '.AbstractObjectType',
        ps: [{
            n: 'range',
            rq: true,
            col: true,
            ti: '.MultiplicityRangePropertyType'
          }]
      }, {
        ln: 'CharacterStringPropertyType',
        tn: 'CharacterString_PropertyType',
        ps: [{
            n: 'characterString',
            rq: true,
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
        ln: 'BooleanPropertyType',
        tn: 'Boolean_PropertyType',
        ps: [{
            n: '_boolean',
            rq: true,
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
        ln: 'TypeNamePropertyType',
        tn: 'TypeName_PropertyType',
        ps: [{
            n: 'typeName',
            rq: true,
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
            rq: true,
            mx: false,
            dom: false,
            en: {
              lp: 'UnitDefinition',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.UnitDefinitionType',
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
        ln: 'LocalNamePropertyType',
        tn: 'LocalName_PropertyType',
        ps: [{
            n: 'localName',
            rq: true,
            en: 'LocalName',
            ti: 'GML_3_2_1.CodeType'
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
        ln: 'AnglePropertyType',
        tn: 'Angle_PropertyType',
        ps: [{
            n: 'angle',
            rq: true,
            en: 'Angle',
            ti: 'GML_3_2_1.AngleType'
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
        ln: 'DatePropertyType',
        tn: 'Date_PropertyType',
        ps: [{
            n: 'date',
            rq: true,
            en: 'Date'
          }, {
            n: 'dateTime',
            rq: true,
            en: 'DateTime',
            ti: 'DateTime'
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
        tn: 'UnitOfMeasure_PropertyType',
        ps: [{
            n: 'unitDefinition',
            rq: true,
            mx: false,
            dom: false,
            en: {
              lp: 'UnitDefinition',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.UnitDefinitionType',
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
        ln: 'IntegerPropertyType',
        tn: 'Integer_PropertyType',
        ps: [{
            n: 'integer',
            rq: true,
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
        ln: 'BinaryPropertyType',
        tn: 'Binary_PropertyType',
        ps: [{
            n: 'binary',
            rq: true,
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
        ln: 'DecimalPropertyType',
        tn: 'Decimal_PropertyType',
        ps: [{
            n: 'decimal',
            rq: true,
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
        ln: 'UomVolumePropertyType',
        tn: 'UomVolume_PropertyType',
        ps: [{
            n: 'unitDefinition',
            rq: true,
            mx: false,
            dom: false,
            en: {
              lp: 'UnitDefinition',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.UnitDefinitionType',
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
        ln: 'MultiplicityRangeType',
        tn: 'MultiplicityRange_Type',
        bti: '.AbstractObjectType',
        ps: [{
            n: 'lower',
            rq: true,
            ti: '.IntegerPropertyType'
          }, {
            n: 'upper',
            rq: true,
            ti: '.UnlimitedIntegerPropertyType'
          }]
      }, {
        ln: 'MemberNameType',
        tn: 'MemberName_Type',
        bti: '.AbstractObjectType',
        ps: [{
            n: 'aName',
            rq: true,
            ti: '.CharacterStringPropertyType'
          }, {
            n: 'attributeType',
            rq: true,
            ti: '.TypeNamePropertyType'
          }]
      }, {
        ln: 'DistancePropertyType',
        tn: 'Distance_PropertyType',
        ps: [{
            n: 'distance',
            rq: true,
            en: 'Distance',
            ti: 'GML_3_2_1.LengthType'
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
            rq: true,
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
        ln: 'TypeNameType',
        tn: 'TypeName_Type',
        bti: '.AbstractObjectType',
        ps: [{
            n: 'aName',
            rq: true,
            ti: '.CharacterStringPropertyType'
          }]
      }, {
        ln: 'MultiplicityPropertyType',
        tn: 'Multiplicity_PropertyType',
        ps: [{
            n: 'multiplicity',
            rq: true,
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
        ln: 'UomAnglePropertyType',
        tn: 'UomAngle_PropertyType',
        ps: [{
            n: 'unitDefinition',
            rq: true,
            mx: false,
            dom: false,
            en: {
              lp: 'UnitDefinition',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.UnitDefinitionType',
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
            rq: true,
            en: 'Real',
            ti: 'Double'
          }, {
            n: 'decimal',
            rq: true,
            en: 'Decimal',
            ti: 'Decimal'
          }, {
            n: 'integer',
            rq: true,
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
        ln: 'RealPropertyType',
        tn: 'Real_PropertyType',
        ps: [{
            n: 'real',
            rq: true,
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
        ln: 'GenericNamePropertyType',
        tn: 'GenericName_PropertyType',
        ps: [{
            n: 'abstractGenericName',
            rq: true,
            mx: false,
            dom: false,
            en: 'AbstractGenericName',
            ti: 'GML_3_2_1.CodeType',
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
        ln: 'RecordTypePropertyType',
        tn: 'RecordType_PropertyType',
        ps: [{
            n: 'recordType',
            rq: true,
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
        ln: 'UomScalePropertyType',
        tn: 'UomScale_PropertyType',
        ps: [{
            n: 'unitDefinition',
            rq: true,
            mx: false,
            dom: false,
            en: {
              lp: 'UnitDefinition',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.UnitDefinitionType',
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
        ln: 'DateTimePropertyType',
        tn: 'DateTime_PropertyType',
        ps: [{
            n: 'dateTime',
            rq: true,
            en: 'DateTime',
            ti: 'DateTime'
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
            rq: true,
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
        ln: 'UomVelocityPropertyType',
        tn: 'UomVelocity_PropertyType',
        ps: [{
            n: 'unitDefinition',
            rq: true,
            mx: false,
            dom: false,
            en: {
              lp: 'UnitDefinition',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.UnitDefinitionType',
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
            rq: true,
            en: 'Scale',
            ti: 'GML_3_2_1.ScaleType'
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
        ln: 'MeasurePropertyType',
        tn: 'Measure_PropertyType',
        ps: [{
            n: 'measure',
            rq: true,
            mx: false,
            dom: false,
            en: 'Measure',
            ti: 'GML_3_2_1.MeasureType',
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
        ln: 'UomAreaPropertyType',
        tn: 'UomArea_PropertyType',
        ps: [{
            n: 'unitDefinition',
            rq: true,
            mx: false,
            dom: false,
            en: {
              lp: 'UnitDefinition',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.UnitDefinitionType',
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
        ln: 'UnlimitedIntegerType',
        tn: 'UnlimitedInteger_Type',
        ps: [{
            n: 'value',
            ti: 'NonNegativeInteger',
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
        ln: 'LengthPropertyType',
        tn: 'Length_PropertyType',
        ps: [{
            n: 'length',
            rq: true,
            mx: false,
            dom: false,
            en: 'Length',
            ti: 'GML_3_2_1.LengthType',
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
            rq: true,
            en: 'ScopedName',
            ti: 'GML_3_2_1.CodeType'
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
        ln: 'UnlimitedIntegerPropertyType',
        tn: 'UnlimitedInteger_PropertyType',
        ps: [{
            n: 'unlimitedInteger',
            rq: true,
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
        ln: 'UomTimePropertyType',
        tn: 'UomTime_PropertyType',
        ps: [{
            n: 'unitDefinition',
            rq: true,
            mx: false,
            dom: false,
            en: {
              lp: 'UnitDefinition',
              ns: 'http:\/\/www.opengis.net\/gml\/3.2'
            },
            ti: 'GML_3_2_1.UnitDefinitionType',
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
        ln: 'MemberNamePropertyType',
        tn: 'MemberName_PropertyType',
        ps: [{
            n: 'memberName',
            rq: true,
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
        ln: 'CodeListValueType',
        tn: 'CodeListValue_Type',
        ps: [{
            n: 'value',
            t: 'v'
          }, {
            n: 'codeList',
            rq: true,
            an: {
              lp: 'codeList'
            },
            t: 'a'
          }, {
            n: 'codeListValue',
            rq: true,
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
      }],
    eis: [{
        en: 'MultiplicityRange',
        ti: '.MultiplicityRangeType'
      }, {
        en: 'DateTime',
        ti: 'DateTime'
      }, {
        en: 'RecordType',
        ti: '.RecordTypeType'
      }, {
        en: 'AbstractGenericName',
        ti: 'GML_3_2_1.CodeType'
      }, {
        en: 'CharacterString'
      }, {
        en: 'Boolean',
        ti: 'Boolean'
      }, {
        en: 'Scale',
        ti: 'GML_3_2_1.ScaleType',
        sh: 'Measure'
      }, {
        en: 'ScopedName',
        ti: 'GML_3_2_1.CodeType',
        sh: 'AbstractGenericName'
      }, {
        en: 'Real',
        ti: 'Double'
      }, {
        en: 'TypeName',
        ti: '.TypeNameType'
      }, {
        en: 'MemberName',
        ti: '.MemberNameType'
      }, {
        en: 'LocalName',
        ti: 'GML_3_2_1.CodeType',
        sh: 'AbstractGenericName'
      }, {
        en: 'Decimal',
        ti: 'Decimal'
      }, {
        en: 'Angle',
        ti: 'GML_3_2_1.AngleType',
        sh: 'Measure'
      }, {
        en: 'Measure',
        ti: 'GML_3_2_1.MeasureType'
      }, {
        en: 'Binary',
        ti: '.BinaryType'
      }, {
        en: 'AbstractObject',
        ti: '.AbstractObjectType'
      }, {
        en: 'Date'
      }, {
        en: 'Multiplicity',
        ti: '.MultiplicityType'
      }, {
        en: 'Distance',
        ti: 'GML_3_2_1.LengthType',
        sh: 'Length'
      }, {
        en: 'Length',
        ti: 'GML_3_2_1.LengthType',
        sh: 'Measure'
      }, {
        en: 'Integer',
        ti: 'Integer'
      }, {
        en: 'Record',
        ti: 'AnyType'
      }, {
        en: 'UnlimitedInteger',
        ti: '.UnlimitedIntegerType'
      }]
  };
  return {
    ISO19139_GCO_20070417: ISO19139_GCO_20070417
  };
};
if (typeof define === 'function' && define.amd) {
  define([], ISO19139_GCO_20070417_Module_Factory);
}
else {
  var ISO19139_GCO_20070417_Module = ISO19139_GCO_20070417_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.ISO19139_GCO_20070417 = ISO19139_GCO_20070417_Module.ISO19139_GCO_20070417;
  }
  else {
    var ISO19139_GCO_20070417 = ISO19139_GCO_20070417_Module.ISO19139_GCO_20070417;
  }
}