var WCST_1_1_Module_Factory = function () {
  var WCST_1_1 = {
    n: 'WCST_1_1',
    dens: 'http:\/\/www.opengis.net\/wcs\/1.1\/wcst',
    deps: ['OWS_1_1_0'],
    tis: [{
        ln: 'CoverageType',
        bti: 'OWS_1_1_0.ReferenceGroupType',
        ps: [{
            n: 'action',
            rq: true,
            en: 'Action',
            ti: '.Action'
          }]
      }, {
        ln: 'AcknowledgementType',
        ps: [{
            n: 'timeStamp',
            rq: true,
            en: 'TimeStamp',
            ti: 'DateTime'
          }, {
            n: 'requestId',
            rq: true,
            en: 'RequestId'
          }, {
            n: 'operationRequest',
            en: 'OperationRequest',
            ti: '.TransactionType'
          }]
      }, {
        ln: 'Action',
        tn: null,
        bti: 'OWS_1_1_0.CodeType'
      }, {
        ln: 'TransactionType',
        ps: [{
            n: 'inputCoverages',
            rq: true,
            en: 'InputCoverages',
            ti: 'OWS_1_1_0.ManifestType'
          }, {
            n: 'requestId',
            en: 'RequestId'
          }, {
            n: 'responseHandler',
            en: 'ResponseHandler'
          }, {
            n: 'service',
            rq: true,
            an: {
              lp: 'service'
            },
            t: 'a'
          }, {
            n: 'version',
            rq: true,
            an: {
              lp: 'version'
            },
            t: 'a'
          }]
      }, {
        ln: 'TransactionResponseType',
        ps: [{
            n: 'requestId',
            rq: true,
            en: 'RequestId'
          }, {
            n: 'identifier',
            rq: true,
            col: true,
            en: {
              lp: 'Identifier',
              ns: 'http:\/\/www.opengis.net\/ows\/1.1'
            },
            ti: 'OWS_1_1_0.CodeType'
          }]
      }],
    eis: [{
        en: 'Acknowledgement',
        ti: '.AcknowledgementType'
      }, {
        en: 'Action',
        ti: '.Action'
      }, {
        en: 'Coverage',
        ti: '.CoverageType',
        sh: {
          lp: 'ReferenceGroup',
          ns: 'http:\/\/www.opengis.net\/ows\/1.1'
        }
      }, {
        en: 'RequestId'
      }, {
        en: 'Transaction',
        ti: '.TransactionType'
      }, {
        en: 'TransactionResponse',
        ti: '.TransactionResponseType'
      }]
  };
  return {
    WCST_1_1: WCST_1_1
  };
};
if (typeof define === 'function' && define.amd) {
  define([], WCST_1_1_Module_Factory);
}
else {
  var WCST_1_1_Module = WCST_1_1_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.WCST_1_1 = WCST_1_1_Module.WCST_1_1;
  }
  else {
    var WCST_1_1 = WCST_1_1_Module.WCST_1_1;
  }
}