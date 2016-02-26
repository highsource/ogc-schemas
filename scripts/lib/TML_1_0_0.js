var TML_1_0_0_Module_Factory = function () {
  var TML_1_0_0 = {
    n: 'TML_1_0_0',
    dens: 'http:\/\/www.opengis.net\/tml',
    deps: ['IC_2_0'],
    tis: [{
        ln: 'SystemType.Relations.TimeRelation',
        tn: null,
        ps: [{
            n: 'sysClkUidRef',
            ti: '.BindType'
          }, {
            n: 'timeReference',
            ti: '.BindType'
          }, {
            n: 'timeCoordinate',
            mno: 0,
            col: true,
            ti: '.SystemType.Relations.TimeRelation.TimeCoordinate'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'TemporalModel.CfTrigger',
        tn: null,
        ps: [{
            n: 'trigType',
            ti: '.BindType'
          }, {
            n: 'publicTrigger',
            ti: '.BindType'
          }, {
            n: 'period',
            ti: '.ValueType'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'ClusterDesc.DataUnitEncoding',
        tn: null,
        ps: [{
            n: 'dataUnitUidRef',
            ti: '.BindType'
          }, {
            n: 'dataType',
            ti: '.BindType'
          }, {
            n: 'dataUnitFieldSize',
            ti: '.ClusterDesc.DataUnitEncoding.DataUnitFieldSize'
          }, {
            n: 'endian',
            ti: '.BindType'
          }, {
            n: 'encode',
            ti: '.BindType'
          }, {
            n: 'numBase',
            ti: '.BindType'
          }, {
            n: 'handleAsType',
            ti: '.BindType'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'ProcessType.Input',
        tn: null,
        ps: [{
            n: 'inputIdent',
            ti: '.ProcessType.Input.InputIdent'
          }, {
            n: 'logicalDataStructure',
            mno: 0,
            col: true,
            ti: '.LogicalDataStructure'
          }, {
            n: 'dataValue',
            ti: '.BindType'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'SystemType.Relations.PropToPropRelation',
        tn: null,
        ps: [{
            n: 'relationDescription',
            ti: '.BindType'
          }, {
            n: 'uid',
            ti: '.BindType'
          }, {
            n: 'propUidRef',
            mno: 0,
            col: true,
            ti: '.BindType'
          }, {
            n: 'propagationMedium',
            mno: 0,
            col: true,
            ti: '.BindType'
          }, {
            n: 'propagationMechanism',
            mno: 0,
            col: true,
            ti: '.BindType'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'LogicalDataStructure',
        tn: null,
        ps: [{
            n: 'uid',
            ti: '.BindType'
          }, {
            n: 'name',
            ti: '.BindType'
          }, {
            n: 'ldsDimensionality',
            ti: '.BindType'
          }, {
            n: 'numOfDataSetsInCf',
            ti: '.BindType'
          }, {
            n: 'cfDataArray',
            ti: '.DataArrayType'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'ObjToDataRelation',
        tn: null,
        ps: [{
            n: 'relationDescription',
            ti: '.ObjToDataRelation.RelationDescription'
          }, {
            n: 'uid',
            ti: '.BindType'
          }, {
            n: 'object',
            mno: 0,
            col: true,
            ti: '.ObjToDataRelation.Object'
          }, {
            n: 'name',
            ti: '.BindType'
          }, {
            n: 'dataUidRef',
            ti: '.BindType'
          }, {
            n: 'value',
            ti: '.BindType'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }, {
            n: 'classification',
            ti: 'IC_2_0.ClassificationType',
            an: {
              lp: 'classification',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'ownerProducer',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'ownerProducer',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'scIcontrols',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'SCIcontrols',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'sarIdentifier',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'SARIdentifier',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'disseminationControls',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'disseminationControls',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'fgIsourceOpen',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'FGIsourceOpen',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'fgIsourceProtected',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'FGIsourceProtected',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'releasableTo',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'releasableTo',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'nonICmarkings',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nonICmarkings',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'classifiedBy',
            an: {
              lp: 'classifiedBy',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'classificationReason',
            an: {
              lp: 'classificationReason',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'derivedFrom',
            an: {
              lp: 'derivedFrom',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'declassDate',
            ti: 'Calendar',
            an: {
              lp: 'declassDate',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'declassEvent',
            an: {
              lp: 'declassEvent',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'declassException',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'declassException',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'typeOfExemptedSource',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'typeOfExemptedSource',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'dateOfExemptedSource',
            ti: 'Calendar',
            an: {
              lp: 'dateOfExemptedSource',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'declassManualReview',
            ti: 'Boolean',
            an: {
              lp: 'declassManualReview',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }]
      }, {
        ln: 'SystemType.Systems',
        tn: null,
        ps: [{
            n: 'system',
            mno: 0,
            col: true,
            ti: '.SystemType'
          }]
      }, {
        ln: 'SpatialModel.AmbiguitySpace',
        tn: null,
        ps: [{
            n: 'shape',
            mno: 0,
            col: true,
            ti: '.SpatialModel.AmbiguitySpace.Shape'
          }, {
            n: 'position',
            mno: 0,
            col: true,
            ti: '.SpatialModel.AmbiguitySpace.Position'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'BindType',
        ps: [{
            n: 'value',
            t: 'v'
          }, {
            n: 'bindUid',
            an: {
              lp: 'bindUid'
            },
            t: 'a'
          }, {
            n: 'bindUidRef',
            an: {
              lp: 'bindUidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'ResponseModels.SteadyStateResponse.PropValues.UOM',
        tn: null,
        bti: '.BindType',
        ps: [{
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'IdentificationType.Characterization.ValidatedBy',
        tn: null,
        ps: [{
            n: 'name',
            ti: '.BindType'
          }, {
            n: 'organization',
            ti: '.BindType'
          }, {
            n: 'email',
            ti: '.BindType'
          }, {
            n: 'phone',
            ti: '.BindType'
          }, {
            n: 'date',
            ti: '.BindType'
          }]
      }, {
        ln: 'ProcessType.Input.InputIdent',
        tn: null,
        ps: [{
            n: 'uid',
            ti: '.BindType'
          }, {
            n: 'name',
            ti: '.BindType'
          }, {
            n: 'description',
            ti: '.BindType'
          }]
      }, {
        ln: 'DataUnit',
        tn: null,
        ps: [{
            n: 'uid',
            ti: '.BindType'
          }, {
            n: 'name',
            ti: '.BindType'
          }, {
            n: 'variableName',
            ti: '.BindType'
          }, {
            n: 'dataType',
            ti: '.BindType'
          }, {
            n: 'bytesInBlob',
            ti: '.BindType'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'ProcessType.Output',
        tn: null,
        ps: [{
            n: 'outputIdent',
            ti: '.ProcessType.Output.OutputIdent'
          }, {
            n: 'logicalDataStructure',
            mno: 0,
            col: true,
            ti: '.LogicalDataStructure'
          }, {
            n: 'responseModels',
            ti: '.ResponseModels'
          }, {
            n: 'spatialModel',
            mno: 0,
            col: true,
            ti: '.SpatialModel'
          }, {
            n: 'temporalModel',
            ti: '.TemporalModel'
          }, {
            n: 'other',
            ti: 'AnyType'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'ResponseModels.SteadyStateResponse.Code.Listing',
        tn: null,
        bti: '.BindType'
      }, {
        ln: 'SpatialModel.AmbiguitySpace.Position',
        tn: null,
        bti: '.SpatialCoordType'
      }, {
        ln: 'DataArrayType',
        ps: [{
            n: 'uid',
            ti: '.BindType'
          }, {
            n: 'name',
            ti: '.BindType'
          }, {
            n: 'variableName',
            ti: '.BindType'
          }, {
            n: 'arrayOf',
            ti: '.BindType'
          }, {
            n: 'numObjInArray',
            ti: '.BindType'
          }, {
            n: 'dataSet',
            rq: true,
            ti: '.DataArrayType.DataSet'
          }, {
            n: 'dataArray',
            rq: true,
            ti: '.DataArrayType'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'ResponseModels.ImpulseResponse',
        tn: null,
        ps: [{
            n: 'dataUidRef',
            ti: '.BindType'
          }, {
            n: 'freqTime',
            ti: '.BindType'
          }, {
            n: 'amplitude',
            ti: '.ResponseModels.ImpulseResponse.Amplitude'
          }, {
            n: 'time',
            ti: '.ResponseModels.ImpulseResponse.Time'
          }, {
            n: 'frequency',
            ti: '.ValueType'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'Subject',
        tn: null,
        ps: [{
            n: 'otherAttributes',
            t: 'aa'
          }, {
            n: 'any',
            mno: 0,
            col: true,
            typed: false,
            mx: false,
            t: 'ae'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'ResponseModels.FrequencyResponse.Frequency',
        tn: null,
        bti: '.ValueType'
      }, {
        ln: 'ResponseModels.FrequencyResponse',
        tn: null,
        ps: [{
            n: 'dataUidRef',
            ti: '.BindType'
          }, {
            n: 'freqRespType',
            ti: '.BindType'
          }, {
            n: 'amplitude',
            ti: '.ResponseModels.FrequencyResponse.Amplitude'
          }, {
            n: 'phase',
            ti: '.ResponseModels.FrequencyResponse.Phase'
          }, {
            n: 'frequency',
            ti: '.ResponseModels.FrequencyResponse.Frequency'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'ProcessType.Identification.OwnedBy',
        tn: null,
        ps: [{
            n: 'name',
            ti: '.BindType'
          }, {
            n: 'organization',
            ti: '.BindType'
          }, {
            n: 'email',
            ti: '.BindType'
          }, {
            n: 'phone',
            ti: '.BindType'
          }, {
            n: 'date',
            ti: '.BindType'
          }]
      }, {
        ln: 'ClusterDesc.TransSeq.Sequence',
        tn: null,
        bti: '.BindType',
        ps: [{
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'SystemType.Relations.TimeRelation.TimeCoordinate',
        tn: null,
        ps: [{
            n: 'timeCoordType',
            ti: '.BindType'
          }, {
            n: 'absTimeUidRef',
            mno: 0,
            col: true,
            ti: '.BindType'
          }]
      }, {
        ln: 'CfSubSampling',
        tn: null,
        ps: [{
            n: 'cfStructComp',
            ti: '.BindType'
          }, {
            n: 'numOfSubSampleIndexPoints',
            ti: '.BindType'
          }, {
            n: 'subSampleCfIndexPts',
            ti: '.BindType'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'ClusterDesc.BinHeaderEncode.HeaderAttrib',
        tn: null,
        ps: [{
            n: 'headerAttribName',
            ti: '.BindType'
          }, {
            n: 'dataType',
            ti: '.BindType'
          }, {
            n: 'dataUnitFieldSize',
            ti: '.ClusterDesc.BinHeaderEncode.HeaderAttrib.DataUnitFieldSize'
          }, {
            n: 'endian',
            ti: '.BindType'
          }, {
            n: 'encode',
            ti: '.BindType'
          }, {
            n: 'numBase',
            ti: '.BindType'
          }, {
            n: 'handleAsType',
            ti: '.BindType'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'ResponseModels.ImpulseResponse.Time',
        tn: null,
        bti: '.ValueType'
      }, {
        ln: 'SystemType.Transducers',
        tn: null,
        ps: [{
            n: 'transducer',
            mno: 0,
            col: true,
            ti: '.TransducerType'
          }]
      }, {
        ln: 'ClusterDesc.TransSeq',
        tn: null,
        ps: [{
            n: 'seqOfThisDataStruct',
            mno: 0,
            col: true,
            ti: '.BindType'
          }, {
            n: 'inThisDataStruct',
            mno: 0,
            col: true,
            ti: '.BindType'
          }, {
            n: 'sequence',
            ti: '.ClusterDesc.TransSeq.Sequence'
          }]
      }, {
        ln: 'SystemType',
        ps: [{
            n: 'identification',
            ti: '.SystemType.Identification'
          }, {
            n: 'sysClk',
            ti: '.SystemType.SysClk'
          }, {
            n: 'systems',
            ti: '.SystemType.Systems'
          }, {
            n: 'subjects',
            ti: '.SystemType.Subjects'
          }, {
            n: 'transducers',
            ti: '.SystemType.Transducers'
          }, {
            n: 'processes',
            ti: '.SystemType.Processes'
          }, {
            n: 'relations',
            ti: '.SystemType.Relations'
          }, {
            n: 'clusterDescriptions',
            ti: '.SystemType.ClusterDescriptions'
          }, {
            n: 'otherProperties',
            ti: '.SystemType.OtherProperties'
          }, {
            n: 'classification',
            ti: 'IC_2_0.ClassificationType',
            an: {
              lp: 'classification',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'ownerProducer',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'ownerProducer',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'scIcontrols',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'SCIcontrols',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'sarIdentifier',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'SARIdentifier',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'disseminationControls',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'disseminationControls',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'fgIsourceOpen',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'FGIsourceOpen',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'fgIsourceProtected',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'FGIsourceProtected',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'releasableTo',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'releasableTo',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'nonICmarkings',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nonICmarkings',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'classifiedBy',
            an: {
              lp: 'classifiedBy',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'classificationReason',
            an: {
              lp: 'classificationReason',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'derivedFrom',
            an: {
              lp: 'derivedFrom',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'declassDate',
            ti: 'Calendar',
            an: {
              lp: 'declassDate',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'declassEvent',
            an: {
              lp: 'declassEvent',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'declassException',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'declassException',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'typeOfExemptedSource',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'typeOfExemptedSource',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'dateOfExemptedSource',
            ti: 'Calendar',
            an: {
              lp: 'dateOfExemptedSource',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'declassManualReview',
            ti: 'Boolean',
            an: {
              lp: 'declassManualReview',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'TransducerType',
        ps: [{
            n: 'identification',
            ti: '.TransducerType.Identification'
          }, {
            n: 'transducerClass',
            ti: '.TransducerType.TransducerClass'
          }, {
            n: 'logicalDataStructure',
            mno: 0,
            col: true,
            ti: '.LogicalDataStructure'
          }, {
            n: 'responseModels',
            ti: '.ResponseModels'
          }, {
            n: 'spatialModel',
            mno: 0,
            col: true,
            ti: '.SpatialModel'
          }, {
            n: 'temporalModel',
            mno: 0,
            col: true,
            ti: '.TemporalModel'
          }, {
            n: 'otherProperties',
            ti: '.TransducerType.OtherProperties'
          }, {
            n: 'classification',
            ti: 'IC_2_0.ClassificationType',
            an: {
              lp: 'classification',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'ownerProducer',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'ownerProducer',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'scIcontrols',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'SCIcontrols',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'sarIdentifier',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'SARIdentifier',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'disseminationControls',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'disseminationControls',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'fgIsourceOpen',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'FGIsourceOpen',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'fgIsourceProtected',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'FGIsourceProtected',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'releasableTo',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'releasableTo',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'nonICmarkings',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nonICmarkings',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'classifiedBy',
            an: {
              lp: 'classifiedBy',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'classificationReason',
            an: {
              lp: 'classificationReason',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'derivedFrom',
            an: {
              lp: 'derivedFrom',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'declassDate',
            ti: 'Calendar',
            an: {
              lp: 'declassDate',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'declassEvent',
            an: {
              lp: 'declassEvent',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'declassException',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'declassException',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'typeOfExemptedSource',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'typeOfExemptedSource',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'dateOfExemptedSource',
            ti: 'Calendar',
            an: {
              lp: 'dateOfExemptedSource',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'declassManualReview',
            ti: 'Boolean',
            an: {
              lp: 'declassManualReview',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'Tml.ExtSysRelations',
        tn: null,
        ps: [{
            n: 'objToObjRelation',
            mno: 0,
            col: true,
            ti: '.ObjToObjRelation'
          }, {
            n: 'objToDataRelation',
            mno: 0,
            col: true,
            ti: '.ObjToDataRelation'
          }, {
            n: 'otherRelations',
            mno: 0,
            col: true,
            ti: 'AnyType'
          }]
      }, {
        ln: 'SystemType.Subjects',
        tn: null,
        ps: [{
            n: 'subject',
            mno: 0,
            col: true,
            ti: '.Subject'
          }]
      }, {
        ln: 'SystemType.OtherProperties',
        tn: null,
        ps: [{
            n: 'property',
            mno: 0,
            col: true,
            ti: 'AnyType'
          }]
      }, {
        ln: 'IdentificationType.Calibration',
        tn: null,
        ps: [{
            n: 'calibratedBy',
            mno: 0,
            col: true,
            ti: '.IdentificationType.Calibration.CalibratedBy'
          }, {
            n: 'validatedBy',
            mno: 0,
            col: true,
            ti: '.IdentificationType.Calibration.ValidatedBy'
          }]
      }, {
        ln: 'ClusterDesc.ClusterProperties',
        tn: null,
        ps: [{
            n: 'direction',
            ti: '.BindType'
          }, {
            n: 'complexity',
            ti: '.BindType'
          }, {
            n: 'clusterType',
            ti: '.BindType'
          }, {
            n: 'clusterSize',
            ti: '.BindType'
          }]
      }, {
        ln: 'SystemType.Identification.Owner',
        tn: null,
        ps: [{
            n: 'name',
            ti: '.BindType'
          }, {
            n: 'organization',
            ti: '.BindType'
          }, {
            n: 'email',
            ti: '.BindType'
          }, {
            n: 'phone',
            ti: '.BindType'
          }, {
            n: 'date',
            ti: '.BindType'
          }]
      }, {
        ln: 'SystemType.Relations.DataToDataRelation.DataSink',
        tn: null,
        ps: [{
            n: 'name',
            ti: '.BindType'
          }, {
            n: 'dataUidRef',
            ti: '.SystemType.Relations.DataToDataRelation.DataSink.DataUidRef'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'SystemType.ClusterDescriptions',
        tn: null,
        ps: [{
            n: 'clusterDesc',
            mno: 0,
            col: true,
            ti: '.ClusterDesc'
          }]
      }, {
        ln: 'IdentificationType.Calibration.ValidatedBy',
        tn: null,
        ps: [{
            n: 'name',
            ti: '.BindType'
          }, {
            n: 'organization',
            ti: '.BindType'
          }, {
            n: 'email',
            ti: '.BindType'
          }, {
            n: 'phone',
            ti: '.BindType'
          }, {
            n: 'date',
            ti: '.BindType'
          }]
      }, {
        ln: 'ResponseModels',
        tn: null,
        ps: [{
            n: 'cfSubSampling',
            ti: '.CfSubSampling'
          }, {
            n: 'steadyStateResponse',
            mno: 0,
            col: true,
            ti: '.ResponseModels.SteadyStateResponse'
          }, {
            n: 'impulseResponse',
            mno: 0,
            col: true,
            ti: '.ResponseModels.ImpulseResponse'
          }, {
            n: 'frequencyResponse',
            mno: 0,
            col: true,
            ti: '.ResponseModels.FrequencyResponse'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'ResponseModels.SteadyStateResponse.DataValues',
        tn: null,
        bti: '.ValueType',
        ps: [{
            n: 'inputOutput',
            ti: '.BindType'
          }, {
            n: 'dataUidRef',
            ti: '.BindType'
          }, {
            n: 'variableName',
            ti: '.BindType'
          }, {
            n: 'calibData',
            mno: 0,
            col: true,
            ti: '.BindType'
          }]
      }, {
        ln: 'SystemType.Relations.DataToDataRelation.DataSink.DataUidRef',
        tn: null,
        bti: '.BindType'
      }, {
        ln: 'SpatialCoordType.SpaceCoords',
        tn: null,
        ps: [{
            n: 'posVelAccel',
            ti: '.BindType'
          }, {
            n: 'coordName',
            ti: '.BindType'
          }, {
            n: 'coords',
            ti: '.ValueType'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'SystemType.Identification.Operator',
        tn: null,
        ps: [{
            n: 'name',
            ti: '.BindType'
          }, {
            n: 'organization',
            ti: '.BindType'
          }, {
            n: 'email',
            ti: '.BindType'
          }, {
            n: 'phone',
            ti: '.BindType'
          }, {
            n: 'date',
            ti: '.BindType'
          }]
      }, {
        ln: 'Data',
        tn: null,
        ps: [{
            n: 'value',
            t: 'v'
          }, {
            n: 'ref',
            an: {
              lp: 'ref'
            },
            t: 'a'
          }, {
            n: 'clk',
            ti: 'Integer',
            an: {
              lp: 'clk'
            },
            t: 'a'
          }, {
            n: 'reference',
            an: {
              lp: 'reference'
            },
            t: 'a'
          }, {
            n: 'dateTime',
            ti: 'DateTime',
            an: {
              lp: 'dateTime'
            },
            t: 'a'
          }, {
            n: 'contents',
            an: {
              lp: 'contents'
            },
            t: 'a'
          }, {
            n: 'seq',
            ti: 'Integer',
            an: {
              lp: 'seq'
            },
            t: 'a'
          }, {
            n: 'total',
            ti: 'Integer',
            an: {
              lp: 'total'
            },
            t: 'a'
          }, {
            n: 'ismclass',
            ti: 'IC_2_0.ClassificationType',
            an: {
              lp: 'ismclass'
            },
            t: 'a'
          }]
      }, {
        ln: 'SystemType.Identification',
        tn: null,
        bti: '.IdentificationType',
        ps: [{
            n: 'manufacture',
            ti: '.BindType'
          }, {
            n: 'modelNumber',
            ti: '.BindType'
          }, {
            n: 'serialNumber',
            ti: '.BindType'
          }, {
            n: 'owner',
            ti: '.SystemType.Identification.Owner'
          }, {
            n: 'operator',
            ti: '.SystemType.Identification.Operator'
          }]
      }, {
        ln: 'TransducerType.Identification.OwnedBy',
        tn: null,
        ps: [{
            n: 'name',
            ti: '.BindType'
          }, {
            n: 'organization',
            ti: '.BindType'
          }, {
            n: 'email',
            ti: '.BindType'
          }, {
            n: 'phone',
            ti: '.BindType'
          }, {
            n: 'date',
            ti: '.BindType'
          }]
      }, {
        ln: 'ClusterDesc.DataUnitEncoding.DataUnitFieldSize',
        tn: null,
        ps: [{
            n: 'numBits',
            ti: '.BindType'
          }, {
            n: 'numSigBits',
            ti: '.BindType'
          }, {
            n: 'justification',
            ti: '.BindType'
          }, {
            n: 'beginTextDelimiter',
            ti: '.BindType'
          }, {
            n: 'endTextDelimiter',
            ti: '.BindType'
          }]
      }, {
        ln: 'SpatialModel.AmbiguitySpace.Shape.PwrProfile',
        tn: null,
        bti: '.BindType'
      }, {
        ln: 'SpatialModel',
        tn: null,
        ps: [{
            n: 'dataUidRef',
            ti: '.BindType'
          }, {
            n: 'cfSubSampling',
            mno: 0,
            col: true,
            ti: '.CfSubSampling'
          }, {
            n: 'ambiguitySpace',
            mno: 0,
            col: true,
            ti: '.SpatialModel.AmbiguitySpace'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'ResponseModels.SteadyStateResponse.ResponseParameters',
        tn: null,
        ps: [{
            n: 'codePlot',
            ti: '.BindType'
          }, {
            n: 'hysteresisDirection',
            ti: '.BindType'
          }, {
            n: 'calibrated',
            ti: '.BindType'
          }, {
            n: 'proportional',
            ti: '.BindType'
          }, {
            n: 'invertability',
            ti: '.BindType'
          }, {
            n: 'timeInvariant',
            ti: '.BindType'
          }, {
            n: 'linear',
            ti: '.BindType'
          }, {
            n: 'interCfInterpolate',
            ti: '.BindType'
          }, {
            n: 'intraCfInterpolate',
            ti: '.BindType'
          }]
      }, {
        ln: 'Accuracy',
        tn: null,
        ps: [{
            n: 'type',
            ti: '.BindType'
          }, {
            n: 'errorDistribution',
            ti: '.BindType'
          }, {
            n: 'factor',
            ti: '.BindType'
          }, {
            n: 'accyValues',
            ti: '.BindType'
          }]
      }, {
        ln: 'SystemType.SysClk',
        tn: null,
        ps: [{
            n: 'uid',
            ti: '.BindType'
          }, {
            n: 'name',
            ti: '.BindType'
          }, {
            n: 'period',
            ti: '.ValueType'
          }, {
            n: 'countNumBase',
            ti: '.BindType'
          }, {
            n: 'min',
            ti: '.BindType'
          }, {
            n: 'max',
            ti: '.BindType'
          }]
      }, {
        ln: 'ResponseModels.SteadyStateResponse.Code.Properties',
        tn: null,
        ps: [{
            n: 'codeType',
            ti: '.BindType'
          }, {
            n: 'codeLanguage',
            ti: '.BindType'
          }]
      }, {
        ln: 'SystemType.Relations',
        tn: null,
        ps: [{
            n: 'positionRelationAndTimeRelationAndObjToObjRelation',
            mno: 0,
            col: true,
            etis: [{
                en: 'positionRelation',
                ti: '.SystemType.Relations.PositionRelation'
              }, {
                en: 'timeRelation',
                ti: '.SystemType.Relations.TimeRelation'
              }, {
                en: 'objToObjRelation',
                ti: '.ObjToObjRelation'
              }, {
                en: 'objToDataRelation',
                ti: '.ObjToDataRelation'
              }, {
                en: 'dataToDataRelation',
                ti: '.SystemType.Relations.DataToDataRelation'
              }, {
                en: 'propToPropRelation',
                ti: '.SystemType.Relations.PropToPropRelation'
              }],
            t: 'es'
          }]
      }, {
        ln: 'SystemType.Processes',
        tn: null,
        ps: [{
            n: 'process',
            mno: 0,
            col: true,
            ti: '.ProcessType'
          }]
      }, {
        ln: 'ResponseModels.SteadyStateResponse',
        tn: null,
        ps: [{
            n: 'responseParameters',
            ti: '.ResponseModels.SteadyStateResponse.ResponseParameters'
          }, {
            n: 'propValues',
            mno: 0,
            col: true,
            ti: '.ResponseModels.SteadyStateResponse.PropValues'
          }, {
            n: 'dataValues',
            mno: 0,
            col: true,
            ti: '.ResponseModels.SteadyStateResponse.DataValues'
          }, {
            n: 'code',
            ti: '.ResponseModels.SteadyStateResponse.Code'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'TemporalModel.CfOffsetTime',
        tn: null,
        bti: '.ValueType',
        ps: [{
            n: 'dataUidRef',
            ti: '.BindType'
          }, {
            n: 'cfSubSampling',
            mno: 0,
            col: true,
            ti: '.CfSubSampling'
          }]
      }, {
        ln: 'ObjToObjRelation',
        tn: null,
        ps: [{
            n: 'relationDescription',
            ti: '.BindType'
          }, {
            n: 'uid',
            ti: '.BindType'
          }, {
            n: 'object',
            mno: 0,
            col: true,
            ti: '.ObjToObjRelation.Object'
          }, {
            n: 'confidence',
            ti: '.BindType'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }, {
            n: 'classification',
            ti: 'IC_2_0.ClassificationType',
            an: {
              lp: 'classification',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'ownerProducer',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'ownerProducer',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'scIcontrols',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'SCIcontrols',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'sarIdentifier',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'SARIdentifier',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'disseminationControls',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'disseminationControls',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'fgIsourceOpen',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'FGIsourceOpen',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'fgIsourceProtected',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'FGIsourceProtected',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'releasableTo',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'releasableTo',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'nonICmarkings',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nonICmarkings',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'classifiedBy',
            an: {
              lp: 'classifiedBy',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'classificationReason',
            an: {
              lp: 'classificationReason',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'derivedFrom',
            an: {
              lp: 'derivedFrom',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'declassDate',
            ti: 'Calendar',
            an: {
              lp: 'declassDate',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'declassEvent',
            an: {
              lp: 'declassEvent',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'declassException',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'declassException',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'typeOfExemptedSource',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'typeOfExemptedSource',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'dateOfExemptedSource',
            ti: 'Calendar',
            an: {
              lp: 'dateOfExemptedSource',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'declassManualReview',
            ti: 'Boolean',
            an: {
              lp: 'declassManualReview',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }]
      }, {
        ln: 'SystemType.Relations.DataToDataRelation.DataSource.DataUidRef',
        tn: null,
        bti: '.BindType'
      }, {
        ln: 'TemporalModel.AmbiguityTime',
        tn: null,
        bti: '.ValueType',
        ps: [{
            n: 'dataUidRef',
            ti: '.BindType'
          }, {
            n: 'cfSubSampling',
            mno: 0,
            col: true,
            ti: '.CfSubSampling'
          }]
      }, {
        ln: 'ClusterDesc',
        tn: null,
        ps: [{
            n: 'description',
            ti: '.BindType'
          }, {
            n: 'idMapping',
            ti: '.ClusterDesc.IdMapping'
          }, {
            n: 'clusterProperties',
            ti: '.ClusterDesc.ClusterProperties'
          }, {
            n: 'binHeaderEncode',
            ti: '.ClusterDesc.BinHeaderEncode'
          }, {
            n: 'timeTag',
            ti: '.ClusterDesc.TimeTag'
          }, {
            n: 'dataUnitEncoding',
            mno: 0,
            col: true,
            ti: '.ClusterDesc.DataUnitEncoding'
          }, {
            n: 'numCfInCluster',
            ti: '.BindType'
          }, {
            n: 'transSeq',
            mno: 0,
            col: true,
            ti: '.ClusterDesc.TransSeq'
          }, {
            n: 'classification',
            ti: 'IC_2_0.ClassificationType',
            an: {
              lp: 'classification',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'ownerProducer',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'ownerProducer',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'scIcontrols',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'SCIcontrols',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'sarIdentifier',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'SARIdentifier',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'disseminationControls',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'disseminationControls',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'fgIsourceOpen',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'FGIsourceOpen',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'fgIsourceProtected',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'FGIsourceProtected',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'releasableTo',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'releasableTo',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'nonICmarkings',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nonICmarkings',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'classifiedBy',
            an: {
              lp: 'classifiedBy',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'classificationReason',
            an: {
              lp: 'classificationReason',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'derivedFrom',
            an: {
              lp: 'derivedFrom',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'declassDate',
            ti: 'Calendar',
            an: {
              lp: 'declassDate',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'declassEvent',
            an: {
              lp: 'declassEvent',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'declassException',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'declassException',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'typeOfExemptedSource',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'typeOfExemptedSource',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'dateOfExemptedSource',
            ti: 'Calendar',
            an: {
              lp: 'dateOfExemptedSource',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'declassManualReview',
            ti: 'Boolean',
            an: {
              lp: 'declassManualReview',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'ResponseModels.SteadyStateResponse.PropValues',
        tn: null,
        bti: '.ValueType',
        ps: [{
            n: 'inputOutput',
            ti: '.BindType'
          }, {
            n: 'propName',
            ti: '.ResponseModels.SteadyStateResponse.PropValues.PropName'
          }, {
            n: 'propQualifier',
            ti: '.BindType'
          }, {
            n: 'uom',
            en: 'UOM',
            ti: '.ResponseModels.SteadyStateResponse.PropValues.UOM'
          }, {
            n: 'direction',
            ti: '.BindType'
          }, {
            n: 'variableName',
            ti: '.BindType'
          }, {
            n: 'calibProp',
            mno: 0,
            col: true,
            ti: '.BindType'
          }]
      }, {
        ln: 'Tml',
        tn: null,
        ps: [{
            n: 'systemOrSubjectOrTransducer',
            mno: 0,
            col: true,
            etis: [{
                en: 'system',
                ti: '.SystemType'
              }, {
                en: 'subject',
                ti: '.Subject'
              }, {
                en: 'transducer',
                ti: '.TransducerType'
              }, {
                en: 'process',
                ti: '.ProcessType'
              }, {
                en: 'extSysRelations',
                ti: '.Tml.ExtSysRelations'
              }, {
                en: 'data',
                ti: '.Data'
              }],
            t: 'es'
          }, {
            n: 'version',
            rq: true,
            an: {
              lp: 'version'
            },
            t: 'a'
          }, {
            n: 'classification',
            ti: 'IC_2_0.ClassificationType',
            an: {
              lp: 'classification',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'ownerProducer',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'ownerProducer',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'scIcontrols',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'SCIcontrols',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'sarIdentifier',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'SARIdentifier',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'disseminationControls',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'disseminationControls',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'fgIsourceOpen',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'FGIsourceOpen',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'fgIsourceProtected',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'FGIsourceProtected',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'releasableTo',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'releasableTo',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'nonICmarkings',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nonICmarkings',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'classifiedBy',
            an: {
              lp: 'classifiedBy',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'classificationReason',
            an: {
              lp: 'classificationReason',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'derivedFrom',
            an: {
              lp: 'derivedFrom',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'declassDate',
            ti: 'Calendar',
            an: {
              lp: 'declassDate',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'declassEvent',
            an: {
              lp: 'declassEvent',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'declassException',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'declassException',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'typeOfExemptedSource',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'typeOfExemptedSource',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'dateOfExemptedSource',
            ti: 'Calendar',
            an: {
              lp: 'dateOfExemptedSource',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'declassManualReview',
            ti: 'Boolean',
            an: {
              lp: 'declassManualReview',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'TransducerType.Identification',
        tn: null,
        bti: '.IdentificationType',
        ps: [{
            n: 'manufacture',
            ti: '.BindType'
          }, {
            n: 'modelNumber',
            ti: '.BindType'
          }, {
            n: 'serialNumber',
            ti: '.BindType'
          }, {
            n: 'ownedBy',
            mno: 0,
            col: true,
            ti: '.TransducerType.Identification.OwnedBy'
          }]
      }, {
        ln: 'ObjToDataRelation.Object',
        tn: null,
        ps: [{
            n: 'name',
            ti: '.BindType'
          }, {
            n: 'objType',
            ti: '.BindType'
          }, {
            n: 'cfSubSampling',
            ti: '.CfSubSampling'
          }, {
            n: 'objUidRef',
            ti: '.BindType'
          }, {
            n: 'objLocalID',
            ti: '.BindType'
          }, {
            n: 'confidence',
            ti: '.BindType'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'SpatialModel.AmbiguitySpace.Shape',
        tn: null,
        ps: [{
            n: 'pwrProfile',
            ti: '.SpatialModel.AmbiguitySpace.Shape.PwrProfile'
          }, {
            n: 'spaceCoordSystem',
            ti: '.BindType'
          }, {
            n: 'spaceLocCoords',
            mno: 0,
            col: true,
            ti: '.SpatialModel.AmbiguitySpace.Shape.SpaceLocCoords'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'IdentificationType',
        ps: [{
            n: 'uid',
            ti: '.BindType'
          }, {
            n: 'name',
            ti: '.BindType'
          }, {
            n: 'description',
            ti: '.BindType'
          }, {
            n: 'complexity',
            ti: '.BindType'
          }, {
            n: 'characterization',
            ti: '.IdentificationType.Characterization'
          }, {
            n: 'calibration',
            ti: '.IdentificationType.Calibration'
          }]
      }, {
        ln: 'IdentificationType.Characterization',
        tn: null,
        ps: [{
            n: 'characterizedBy',
            ti: '.IdentificationType.Characterization.CharacterizedBy'
          }, {
            n: 'validatedBy',
            ti: '.IdentificationType.Characterization.ValidatedBy'
          }]
      }, {
        ln: 'ClusterDesc.BinHeaderEncode',
        tn: null,
        ps: [{
            n: 'headerAttrib',
            mno: 0,
            col: true,
            ti: '.ClusterDesc.BinHeaderEncode.HeaderAttrib'
          }]
      }, {
        ln: 'SpatialModel.AmbiguitySpace.Shape.SpaceLocCoords',
        tn: null,
        ps: [{
            n: 'coordName',
            ti: '.BindType'
          }, {
            n: 'coords',
            ti: '.ValueType'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'DataArrayType.DataSet',
        tn: null,
        ps: [{
            n: 'uid',
            ti: '.BindType'
          }, {
            n: 'name',
            ti: '.BindType'
          }, {
            n: 'variableName',
            ti: '.BindType'
          }, {
            n: 'numObjInSet',
            ti: '.BindType'
          }, {
            n: 'dataUnitOrDataArray',
            mno: 0,
            col: true,
            etis: [{
                en: 'dataUnit',
                ti: '.DataUnit'
              }, {
                en: 'dataArray',
                ti: '.DataArrayType'
              }],
            t: 'es'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'IdentificationType.Calibration.CalibratedBy',
        tn: null,
        ps: [{
            n: 'name',
            ti: '.BindType'
          }, {
            n: 'organization',
            ti: '.BindType'
          }, {
            n: 'email',
            ti: '.BindType'
          }, {
            n: 'phone',
            ti: '.BindType'
          }, {
            n: 'date',
            ti: '.BindType'
          }]
      }, {
        ln: 'ClusterDesc.BinHeaderEncode.HeaderAttrib.DataUnitFieldSize',
        tn: null,
        ps: [{
            n: 'numBits',
            ti: '.BindType'
          }, {
            n: 'numSigBits',
            ti: '.BindType'
          }, {
            n: 'justification',
            ti: '.BindType'
          }, {
            n: 'beginTextDelimiter',
            ti: '.BindType'
          }, {
            n: 'endTextDelimiter',
            ti: '.BindType'
          }]
      }, {
        ln: 'ClusterDesc.TimeTag',
        tn: null,
        ps: [{
            n: 'sysClkUidRef',
            ti: '.BindType'
          }, {
            n: 'accuracy',
            ti: '.Accuracy'
          }]
      }, {
        ln: 'ResponseModels.FrequencyResponse.Phase',
        tn: null,
        bti: '.ValueType'
      }, {
        ln: 'SpatialCoordType',
        ps: [{
            n: 'spaceCoordSystem',
            ti: '.BindType'
          }, {
            n: 'spaceRefSystem',
            ti: '.BindType'
          }, {
            n: 'refObjUidRef',
            ti: '.BindType'
          }, {
            n: 'spaceCoords',
            mno: 0,
            col: true,
            ti: '.SpatialCoordType.SpaceCoords'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'ProcessType.OtherProperties',
        tn: null,
        ps: [{
            n: 'property',
            mno: 0,
            col: true,
            ti: 'AnyType'
          }]
      }, {
        ln: 'ProcessType',
        ps: [{
            n: 'identification',
            ti: '.ProcessType.Identification'
          }, {
            n: 'input',
            mno: 0,
            col: true,
            ti: '.ProcessType.Input'
          }, {
            n: 'output',
            mno: 0,
            col: true,
            ti: '.ProcessType.Output'
          }, {
            n: 'otherProperties',
            ti: '.ProcessType.OtherProperties'
          }, {
            n: 'classification',
            ti: 'IC_2_0.ClassificationType',
            an: {
              lp: 'classification',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'ownerProducer',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'ownerProducer',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'scIcontrols',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'SCIcontrols',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'sarIdentifier',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'SARIdentifier',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'disseminationControls',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'disseminationControls',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'fgIsourceOpen',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'FGIsourceOpen',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'fgIsourceProtected',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'FGIsourceProtected',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'releasableTo',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'releasableTo',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'nonICmarkings',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'nonICmarkings',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'classifiedBy',
            an: {
              lp: 'classifiedBy',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'classificationReason',
            an: {
              lp: 'classificationReason',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'derivedFrom',
            an: {
              lp: 'derivedFrom',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'declassDate',
            ti: 'Calendar',
            an: {
              lp: 'declassDate',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'declassEvent',
            an: {
              lp: 'declassEvent',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'declassException',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'declassException',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'typeOfExemptedSource',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'typeOfExemptedSource',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'dateOfExemptedSource',
            ti: 'Calendar',
            an: {
              lp: 'dateOfExemptedSource',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'declassManualReview',
            ti: 'Boolean',
            an: {
              lp: 'declassManualReview',
              ns: 'urn:us:gov:ic:ism:v2'
            },
            t: 'a'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'ValueType',
        ps: [{
            n: 'numValues',
            ti: '.BindType'
          }, {
            n: 'arrayType',
            ti: '.BindType'
          }, {
            n: 'fcnInterpol',
            ti: '.BindType'
          }, {
            n: 'valueDataType',
            ti: '.BindType'
          }, {
            n: 'values',
            ti: '.BindType'
          }, {
            n: 'mult',
            mno: 0,
            col: true,
            ti: '.BindType'
          }, {
            n: 'offset',
            mno: 0,
            col: true,
            ti: '.BindType'
          }, {
            n: 'accuracy',
            mno: 0,
            col: true,
            ti: '.Accuracy'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'TransducerType.OtherProperties',
        tn: null,
        ps: [{
            n: 'property',
            mno: 0,
            col: true,
            ti: 'AnyType'
          }]
      }, {
        ln: 'ResponseModels.FrequencyResponse.Amplitude',
        tn: null,
        bti: '.ValueType'
      }, {
        ln: 'TemporalModel',
        tn: null,
        ps: [{
            n: 'cfTrigger',
            ti: '.TemporalModel.CfTrigger'
          }, {
            n: 'cfDuration',
            ti: '.ValueType'
          }, {
            n: 'latencyTime',
            ti: '.ValueType'
          }, {
            n: 'ambiguityTime',
            mno: 0,
            col: true,
            ti: '.TemporalModel.AmbiguityTime'
          }, {
            n: 'cfOffsetTime',
            mno: 0,
            col: true,
            ti: '.TemporalModel.CfOffsetTime'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'ProcessType.Identification',
        tn: null,
        bti: '.IdentificationType',
        ps: [{
            n: 'manufacture',
            ti: '.BindType'
          }, {
            n: 'modelNumber',
            ti: '.BindType'
          }, {
            n: 'serialNumber',
            ti: '.BindType'
          }, {
            n: 'processVersion',
            ti: '.BindType'
          }, {
            n: 'ownedBy',
            mno: 0,
            col: true,
            ti: '.ProcessType.Identification.OwnedBy'
          }]
      }, {
        ln: 'SystemType.Relations.DataToDataRelation.DataSource',
        tn: null,
        ps: [{
            n: 'name',
            ti: '.BindType'
          }, {
            n: 'dataUidRef',
            ti: '.SystemType.Relations.DataToDataRelation.DataSource.DataUidRef'
          }, {
            n: 'value',
            ti: '.BindType'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'ResponseModels.ImpulseResponse.Amplitude',
        tn: null,
        bti: '.ValueType'
      }, {
        ln: 'SystemType.Relations.DataToDataRelation',
        tn: null,
        ps: [{
            n: 'relationDescription',
            ti: '.BindType'
          }, {
            n: 'uid',
            ti: '.BindType'
          }, {
            n: 'dataSource',
            ti: '.SystemType.Relations.DataToDataRelation.DataSource'
          }, {
            n: 'dataSink',
            mno: 0,
            col: true,
            ti: '.SystemType.Relations.DataToDataRelation.DataSink'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'TransducerType.TransducerClass',
        tn: null,
        ps: [{
            n: 'transmitterReceiver',
            ti: '.BindType'
          }, {
            n: 'insituRemote',
            ti: '.BindType'
          }, {
            n: 'spatialDependancy',
            ti: '.BindType'
          }]
      }, {
        ln: 'IdentificationType.Characterization.CharacterizedBy',
        tn: null,
        ps: [{
            n: 'name',
            ti: '.BindType'
          }, {
            n: 'organization',
            ti: '.BindType'
          }, {
            n: 'email',
            ti: '.BindType'
          }, {
            n: 'phone',
            ti: '.BindType'
          }, {
            n: 'date',
            ti: '.BindType'
          }]
      }, {
        ln: 'ResponseModels.SteadyStateResponse.PropValues.PropName',
        tn: null,
        bti: '.BindType',
        ps: [{
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'ClusterDesc.IdMapping',
        tn: null,
        ps: [{
            n: 'tapPointUidRef',
            mno: 0,
            col: true,
            ti: '.BindType'
          }, {
            n: 'localID',
            ti: '.BindType'
          }]
      }, {
        ln: 'ResponseModels.SteadyStateResponse.Code',
        tn: null,
        ps: [{
            n: 'properties',
            ti: '.ResponseModels.SteadyStateResponse.Code.Properties'
          }, {
            n: 'listing',
            ti: '.ResponseModels.SteadyStateResponse.Code.Listing'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }, {
        ln: 'ObjToDataRelation.RelationDescription',
        tn: null,
        bti: '.BindType'
      }, {
        ln: 'SystemType.Relations.PositionRelation',
        tn: null,
        bti: '.SpatialCoordType',
        ps: [{
            n: 'objUidRef',
            mno: 0,
            col: true,
            ti: '.BindType'
          }]
      }, {
        ln: 'ProcessType.Output.OutputIdent',
        tn: null,
        ps: [{
            n: 'uid',
            ti: '.BindType'
          }, {
            n: 'name',
            ti: '.BindType'
          }, {
            n: 'description',
            ti: '.BindType'
          }]
      }, {
        ln: 'ObjToObjRelation.Object',
        tn: null,
        ps: [{
            n: 'name'
          }, {
            n: 'objType',
            ti: '.BindType'
          }, {
            n: 'dirIndirSubj',
            ti: '.BindType'
          }, {
            n: 'objUidRef',
            ti: '.BindType'
          }, {
            n: 'refName',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'refUid',
            an: {
              lp: 'uid'
            },
            t: 'a'
          }, {
            n: 'refUidRef',
            an: {
              lp: 'uidRef'
            },
            t: 'a'
          }]
      }],
    eis: [{
        en: 'tml',
        ti: '.Tml'
      }, {
        en: 'complexity',
        ti: '.BindType'
      }, {
        en: 'accuracy',
        ti: '.Accuracy'
      }, {
        en: 'system',
        ti: '.SystemType'
      }, {
        en: 'subject',
        ti: '.Subject'
      }, {
        en: 'transducer',
        ti: '.TransducerType'
      }, {
        en: 'clusterDesc',
        ti: '.ClusterDesc'
      }, {
        en: 'spaceCoordSystem',
        ti: '.BindType'
      }, {
        en: 'spatialModel',
        ti: '.SpatialModel'
      }, {
        en: 'temporalModel',
        ti: '.TemporalModel'
      }, {
        en: 'objToDataRelation',
        ti: '.ObjToDataRelation'
      }, {
        en: 'logicalDataStructure',
        ti: '.LogicalDataStructure'
      }, {
        en: 'responseModels',
        ti: '.ResponseModels'
      }, {
        en: 'dataUnit',
        ti: '.DataUnit'
      }, {
        en: 'cfSubSampling',
        ti: '.CfSubSampling'
      }, {
        en: 'data',
        ti: '.Data'
      }, {
        en: 'process',
        ti: '.ProcessType'
      }, {
        en: 'objToObjRelation',
        ti: '.ObjToObjRelation'
      }]
  };
  return {
    TML_1_0_0: TML_1_0_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], TML_1_0_0_Module_Factory);
}
else {
  var TML_1_0_0_Module = TML_1_0_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.TML_1_0_0 = TML_1_0_0_Module.TML_1_0_0;
  }
  else {
    var TML_1_0_0 = TML_1_0_0_Module.TML_1_0_0;
  }
}