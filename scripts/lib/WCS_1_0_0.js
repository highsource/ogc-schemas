var WCS_1_0_0_Module_Factory = function () {
  var WCS_1_0_0 = {
    n: 'WCS_1_0_0',
    dens: 'http:\/\/www.opengis.net\/wcs',
    deps: ['GML_3_1_1', 'XLink_1_0'],
    tis: [{
        ln: 'DCPTypeType.HTTP',
        tn: null,
        ps: [{
            n: 'getOrPost',
            col: true,
            etis: [{
                en: 'Get',
                ti: '.DCPTypeType.HTTP.Get'
              }, {
                en: 'Post',
                ti: '.DCPTypeType.HTTP.Post'
              }],
            t: 'es'
          }]
      }, {
        ln: 'AxisDescription',
        tn: null,
        ps: [{
            n: 'axisDescription',
            en: 'AxisDescription',
            ti: '.AxisDescriptionType'
          }]
      }, {
        ln: 'CoverageOfferingBriefType',
        bti: '.AbstractDescriptionType',
        ps: [{
            n: 'lonLatEnvelope',
            ti: '.LonLatEnvelopeType'
          }, {
            n: 'keywords',
            col: true,
            ti: '.Keywords'
          }]
      }, {
        ln: 'SpatialDomainType',
        ps: [{
            n: 'envelope',
            col: true,
            mx: false,
            dom: false,
            en: {
              lp: 'Envelope',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.EnvelopeType',
            t: 'er'
          }, {
            n: 'grid',
            col: true,
            en: {
              lp: 'Grid',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.GridType'
          }, {
            n: 'polygon',
            col: true,
            en: {
              lp: 'Polygon',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.PolygonType'
          }]
      }, {
        ln: 'ResponsiblePartyType',
        ps: [{
            n: 'individualName'
          }, {
            n: 'optionalOrganisationName',
            en: 'organisationName'
          }, {
            n: 'organisationName'
          }, {
            n: 'positionName'
          }, {
            n: 'contactInfo',
            ti: '.ContactType'
          }]
      }, {
        ln: 'AxisDescriptionType',
        bti: '.AbstractDescriptionType',
        ps: [{
            n: 'values',
            ti: '.AxisDescriptionType.Values'
          }, {
            n: 'semantic',
            an: {
              lp: 'semantic',
              ns: 'http:\/\/www.opengis.net\/wcs'
            },
            t: 'a'
          }, {
            n: 'refSys',
            an: {
              lp: 'refSys'
            },
            t: 'a'
          }, {
            n: 'refSysLabel',
            an: {
              lp: 'refSysLabel'
            },
            t: 'a'
          }]
      }, {
        ln: 'LonLatEnvelopeBaseType',
        bti: 'GML_3_1_1.EnvelopeType'
      }, {
        ln: 'MetadataLinkType',
        bti: '.MetadataAssociationType',
        ps: [{
            n: 'metadataType',
            an: {
              lp: 'metadataType'
            },
            t: 'a'
          }]
      }, {
        ln: 'DCPTypeType.HTTP.Get',
        tn: null,
        ps: [{
            n: 'onlineResource',
            en: 'OnlineResource',
            ti: '.OnlineResourceType'
          }]
      }, {
        ln: 'DomainSetType',
        ps: [{
            n: 'spatialDomain',
            ti: '.SpatialDomainType'
          }, {
            n: 'optionalTemporalDomain',
            en: 'temporalDomain',
            ti: '.TimeSequenceType'
          }, {
            n: 'temporalDomain',
            ti: '.TimeSequenceType'
          }]
      }, {
        ln: 'DomainSubsetType',
        ps: [{
            n: 'spatialSubset',
            ti: '.SpatialSubsetType'
          }, {
            n: 'optionalTemporalSubset',
            en: 'temporalSubset',
            ti: '.TimeSequenceType'
          }, {
            n: 'temporalSubset',
            ti: '.TimeSequenceType'
          }]
      }, {
        ln: 'DescribeCoverage',
        tn: null,
        ps: [{
            n: 'coverage',
            col: true,
            en: 'Coverage'
          }, {
            n: 'service',
            an: {
              lp: 'service'
            },
            t: 'a'
          }, {
            n: 'version',
            an: {
              lp: 'version'
            },
            t: 'a'
          }]
      }, {
        ln: 'ValueEnumBaseType',
        tn: 'valueEnumBaseType',
        ps: [{
            n: 'intervalOrSingleValue',
            col: true,
            etis: [{
                en: 'interval',
                ti: '.IntervalType'
              }, {
                en: 'singleValue',
                ti: '.TypedLiteralType'
              }],
            t: 'es'
          }]
      }, {
        ln: 'OnlineResourceType',
        ps: [{
            n: 'type',
            ti: 'XLink_1_0.TypeType',
            an: {
              lp: 'type',
              ns: 'http:\/\/www.w3.org\/1999\/xlink'
            },
            t: 'a'
          }, {
            n: 'href',
            an: {
              lp: 'href',
              ns: 'http:\/\/www.w3.org\/1999\/xlink'
            },
            t: 'a'
          }, {
            n: 'role',
            an: {
              lp: 'role',
              ns: 'http:\/\/www.w3.org\/1999\/xlink'
            },
            t: 'a'
          }, {
            n: 'arcrole',
            an: {
              lp: 'arcrole',
              ns: 'http:\/\/www.w3.org\/1999\/xlink'
            },
            t: 'a'
          }, {
            n: 'title',
            an: {
              lp: 'title',
              ns: 'http:\/\/www.w3.org\/1999\/xlink'
            },
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            an: {
              lp: 'show',
              ns: 'http:\/\/www.w3.org\/1999\/xlink'
            },
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            an: {
              lp: 'actuate',
              ns: 'http:\/\/www.w3.org\/1999\/xlink'
            },
            t: 'a'
          }]
      }, {
        ln: 'SupportedInterpolationsType',
        ps: [{
            n: 'interpolationMethod',
            col: true
          }, {
            n: '_default',
            an: {
              lp: 'default'
            },
            t: 'a'
          }]
      }, {
        ln: 'AbstractDescriptionType',
        bti: '.AbstractDescriptionBaseType',
        ps: [{
            n: 'wcsDescription',
            en: 'description'
          }, {
            n: 'wcsName',
            en: 'name'
          }, {
            n: 'label'
          }]
      }, {
        ln: 'ValueRangeType',
        tn: 'valueRangeType',
        ps: [{
            n: 'min',
            ti: '.TypedLiteralType'
          }, {
            n: 'max',
            ti: '.TypedLiteralType'
          }, {
            n: 'type',
            an: {
              lp: 'type',
              ns: 'http:\/\/www.opengis.net\/wcs'
            },
            t: 'a'
          }, {
            n: 'semantic',
            an: {
              lp: 'semantic',
              ns: 'http:\/\/www.opengis.net\/wcs'
            },
            t: 'a'
          }, {
            n: 'atomic',
            ti: 'Boolean',
            an: {
              lp: 'atomic'
            },
            t: 'a'
          }, {
            n: 'closure',
            ti: {
              t: 'l'
            },
            an: {
              lp: 'closure',
              ns: 'http:\/\/www.opengis.net\/wcs'
            },
            t: 'a'
          }]
      }, {
        ln: 'LonLatEnvelopeType',
        bti: '.LonLatEnvelopeBaseType',
        ps: [{
            n: 'timePosition',
            col: true,
            en: {
              lp: 'timePosition',
              ns: 'http:\/\/www.opengis.net\/gml'
            },
            ti: 'GML_3_1_1.TimePositionType'
          }]
      }, {
        ln: 'OutputType',
        ps: [{
            n: 'crs',
            ti: 'GML_3_1_1.CodeType'
          }, {
            n: 'format',
            ti: 'GML_3_1_1.CodeType'
          }]
      }, {
        ln: 'ContentMetadata',
        tn: null,
        ps: [{
            n: 'coverageOfferingBrief',
            col: true,
            en: 'CoverageOfferingBrief',
            ti: '.CoverageOfferingBriefType'
          }, {
            n: 'version',
            an: {
              lp: 'version'
            },
            t: 'a'
          }, {
            n: 'updateSequence',
            an: {
              lp: 'updateSequence'
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
            an: {
              lp: 'type',
              ns: 'http:\/\/www.w3.org\/1999\/xlink'
            },
            t: 'a'
          }, {
            n: 'href',
            an: {
              lp: 'href',
              ns: 'http:\/\/www.w3.org\/1999\/xlink'
            },
            t: 'a'
          }, {
            n: 'role',
            an: {
              lp: 'role',
              ns: 'http:\/\/www.w3.org\/1999\/xlink'
            },
            t: 'a'
          }, {
            n: 'arcrole',
            an: {
              lp: 'arcrole',
              ns: 'http:\/\/www.w3.org\/1999\/xlink'
            },
            t: 'a'
          }, {
            n: 'title',
            an: {
              lp: 'title',
              ns: 'http:\/\/www.w3.org\/1999\/xlink'
            },
            t: 'a'
          }, {
            n: 'show',
            ti: 'XLink_1_0.ShowType',
            an: {
              lp: 'show',
              ns: 'http:\/\/www.w3.org\/1999\/xlink'
            },
            t: 'a'
          }, {
            n: 'actuate',
            ti: 'XLink_1_0.ActuateType',
            an: {
              lp: 'actuate',
              ns: 'http:\/\/www.w3.org\/1999\/xlink'
            },
            t: 'a'
          }]
      }, {
        ln: 'WCSCapabilityType',
        ps: [{
            n: 'request',
            en: 'Request',
            ti: '.WCSCapabilityType.Request'
          }, {
            n: 'exception',
            en: 'Exception',
            ti: '.WCSCapabilityType.Exception'
          }, {
            n: 'vendorSpecificCapabilities',
            en: 'VendorSpecificCapabilities',
            ti: '.WCSCapabilityType.VendorSpecificCapabilities'
          }, {
            n: 'version',
            an: {
              lp: 'version'
            },
            t: 'a'
          }, {
            n: 'updateSequence',
            an: {
              lp: 'updateSequence'
            },
            t: 'a'
          }]
      }, {
        ln: 'RangeSubsetType',
        ps: [{
            n: 'axisSubset',
            col: true,
            ti: '.RangeSubsetType.AxisSubset'
          }]
      }, {
        ln: 'RangeSet',
        tn: null,
        ps: [{
            n: 'rangeSet',
            en: 'RangeSet',
            ti: '.RangeSetType'
          }]
      }, {
        ln: 'TypedLiteralType',
        ps: [{
            n: 'value',
            t: 'v'
          }, {
            n: 'type',
            an: {
              lp: 'type',
              ns: 'http:\/\/www.opengis.net\/wcs'
            },
            t: 'a'
          }]
      }, {
        ln: 'ValueEnumType',
        tn: 'valueEnumType',
        bti: '.ValueEnumBaseType',
        ps: [{
            n: 'type',
            an: {
              lp: 'type',
              ns: 'http:\/\/www.opengis.net\/wcs'
            },
            t: 'a'
          }, {
            n: 'semantic',
            an: {
              lp: 'semantic',
              ns: 'http:\/\/www.opengis.net\/wcs'
            },
            t: 'a'
          }]
      }, {
        ln: 'WCSCapabilityType.VendorSpecificCapabilities',
        tn: null,
        ps: [{
            n: 'any',
            dom: false,
            mx: false,
            t: 'ae'
          }]
      }, {
        ln: 'TimePeriodType',
        ps: [{
            n: 'beginPosition',
            ti: 'GML_3_1_1.TimePositionType'
          }, {
            n: 'endPosition',
            ti: 'GML_3_1_1.TimePositionType'
          }, {
            n: 'timeResolution'
          }, {
            n: 'frame',
            an: {
              lp: 'frame'
            },
            t: 'a'
          }]
      }, {
        ln: 'IntervalType',
        tn: 'intervalType',
        bti: '.ValueRangeType',
        ps: [{
            n: 'res',
            ti: '.TypedLiteralType'
          }]
      }, {
        ln: 'RangeSetType',
        bti: '.AbstractDescriptionType',
        ps: [{
            n: 'axisDescription',
            col: true,
            ti: '.AxisDescription'
          }, {
            n: 'nullValues',
            ti: '.ValueEnumType'
          }, {
            n: 'semantic',
            an: {
              lp: 'semantic',
              ns: 'http:\/\/www.opengis.net\/wcs'
            },
            t: 'a'
          }, {
            n: 'refSys',
            an: {
              lp: 'refSys'
            },
            t: 'a'
          }, {
            n: 'refSysLabel',
            an: {
              lp: 'refSysLabel'
            },
            t: 'a'
          }]
      }, {
        ln: 'ServiceType',
        bti: '.AbstractDescriptionType',
        ps: [{
            n: 'keywords',
            col: true,
            ti: '.Keywords'
          }, {
            n: 'responsibleParty',
            ti: '.ResponsiblePartyType'
          }, {
            n: 'fees',
            ti: 'GML_3_1_1.CodeListType'
          }, {
            n: 'accessConstraints',
            col: true,
            ti: 'GML_3_1_1.CodeListType'
          }, {
            n: 'version',
            an: {
              lp: 'version'
            },
            t: 'a'
          }, {
            n: 'updateSequence',
            an: {
              lp: 'updateSequence'
            },
            t: 'a'
          }]
      }, {
        ln: 'TelephoneType',
        ps: [{
            n: 'voice',
            col: true
          }, {
            n: 'facsimile',
            col: true
          }]
      }, {
        ln: 'GetCapabilities',
        tn: null,
        ps: [{
            n: 'section'
          }, {
            n: 'service',
            an: {
              lp: 'service'
            },
            t: 'a'
          }, {
            n: 'version',
            an: {
              lp: 'version'
            },
            t: 'a'
          }, {
            n: 'updateSequence',
            an: {
              lp: 'updateSequence'
            },
            t: 'a'
          }]
      }, {
        ln: 'WCSCapabilityType.Request.GetCoverage',
        tn: null,
        ps: [{
            n: 'dcpType',
            col: true,
            en: 'DCPType',
            ti: '.DCPTypeType'
          }]
      }, {
        ln: 'CoverageOfferingType',
        bti: '.CoverageOfferingBriefType',
        ps: [{
            n: 'domainSet',
            ti: '.DomainSetType'
          }, {
            n: 'rangeSet',
            ti: '.RangeSet'
          }, {
            n: 'supportedCRSs',
            ti: '.SupportedCRSsType'
          }, {
            n: 'supportedFormats',
            ti: '.SupportedFormatsType'
          }, {
            n: 'supportedInterpolations',
            ti: '.SupportedInterpolationsType'
          }]
      }, {
        ln: 'TimeSequenceType',
        ps: [{
            n: 'timePositionOrTimePeriod',
            col: true,
            etis: [{
                en: {
                  lp: 'timePosition',
                  ns: 'http:\/\/www.opengis.net\/gml'
                },
                ti: 'GML_3_1_1.TimePositionType'
              }, {
                en: 'timePeriod',
                ti: '.TimePeriodType'
              }],
            t: 'es'
          }]
      }, {
        ln: 'WCSCapabilityType.Exception',
        tn: null,
        ps: [{
            n: 'format',
            col: true,
            en: 'Format'
          }]
      }, {
        ln: 'RangeSubsetType.AxisSubset',
        tn: null,
        bti: '.ValueEnumBaseType',
        ps: [{
            n: 'name',
            an: {
              lp: 'name'
            },
            t: 'a'
          }]
      }, {
        ln: 'ContactType',
        ps: [{
            n: 'phone',
            ti: '.TelephoneType'
          }, {
            n: 'address',
            ti: '.AddressType'
          }, {
            n: 'onlineResource',
            ti: '.OnlineResourceType'
          }]
      }, {
        ln: 'AxisDescriptionType.Values',
        tn: null,
        bti: '.ValueEnumType',
        ps: [{
            n: '_default',
            en: 'default',
            ti: '.TypedLiteralType'
          }]
      }, {
        ln: 'SupportedFormatsType',
        ps: [{
            n: 'formats',
            col: true,
            ti: 'GML_3_1_1.CodeListType'
          }, {
            n: 'nativeFormat',
            an: {
              lp: 'nativeFormat'
            },
            t: 'a'
          }]
      }, {
        ln: 'DCPTypeType',
        ps: [{
            n: 'http',
            en: 'HTTP',
            ti: '.DCPTypeType.HTTP'
          }]
      }, {
        ln: 'SupportedCRSsType',
        ps: [{
            n: 'requestResponseCRSs',
            col: true,
            ti: 'GML_3_1_1.CodeListType'
          }, {
            n: 'requestCRSs',
            col: true,
            ti: 'GML_3_1_1.CodeListType'
          }, {
            n: 'responseCRSs',
            col: true,
            ti: 'GML_3_1_1.CodeListType'
          }, {
            n: 'nativeCRSs',
            col: true,
            ti: 'GML_3_1_1.CodeListType'
          }]
      }, {
        ln: 'MetadataAssociationType',
        bti: 'GML_3_1_1.MetaDataPropertyType'
      }, {
        ln: 'DCPTypeType.HTTP.Post',
        tn: null,
        ps: [{
            n: 'onlineResource',
            en: 'OnlineResource',
            ti: '.OnlineResourceType'
          }]
      }, {
        ln: 'SpatialSubsetType',
        bti: '.SpatialDomainType'
      }, {
        ln: 'CoverageDescription',
        tn: null,
        ps: [{
            n: 'coverageOffering',
            col: true,
            en: 'CoverageOffering',
            ti: '.CoverageOfferingType'
          }, {
            n: 'version',
            an: {
              lp: 'version'
            },
            t: 'a'
          }, {
            n: 'updateSequence',
            an: {
              lp: 'updateSequence'
            },
            t: 'a'
          }]
      }, {
        ln: 'AbstractDescriptionBaseType',
        bti: 'GML_3_1_1.AbstractGMLType'
      }, {
        ln: 'WCSCapabilityType.Request.DescribeCoverage',
        tn: null,
        ps: [{
            n: 'dcpType',
            col: true,
            en: 'DCPType',
            ti: '.DCPTypeType'
          }]
      }, {
        ln: 'WCSCapabilityType.Request.GetCapabilities',
        tn: null,
        ps: [{
            n: 'dcpType',
            col: true,
            en: 'DCPType',
            ti: '.DCPTypeType'
          }]
      }, {
        ln: 'AddressType',
        ps: [{
            n: 'deliveryPoint',
            col: true
          }, {
            n: 'city'
          }, {
            n: 'administrativeArea'
          }, {
            n: 'postalCode'
          }, {
            n: 'country'
          }, {
            n: 'electronicMailAddress',
            col: true
          }]
      }, {
        ln: 'WCSCapabilityType.Request',
        tn: null,
        ps: [{
            n: 'getCapabilities',
            en: 'GetCapabilities',
            ti: '.WCSCapabilityType.Request.GetCapabilities'
          }, {
            n: 'describeCoverage',
            en: 'DescribeCoverage',
            ti: '.WCSCapabilityType.Request.DescribeCoverage'
          }, {
            n: 'getCoverage',
            en: 'GetCoverage',
            ti: '.WCSCapabilityType.Request.GetCoverage'
          }]
      }, {
        ln: 'WCSCapabilitiesType',
        tn: 'WCS_CapabilitiesType',
        ps: [{
            n: 'service',
            en: 'Service',
            ti: '.ServiceType'
          }, {
            n: 'capability',
            en: 'Capability',
            ti: '.WCSCapabilityType'
          }, {
            n: 'contentMetadata',
            en: 'ContentMetadata',
            ti: '.ContentMetadata'
          }, {
            n: 'version',
            an: {
              lp: 'version'
            },
            t: 'a'
          }, {
            n: 'updateSequence',
            an: {
              lp: 'updateSequence'
            },
            t: 'a'
          }]
      }, {
        ln: 'GetCoverage',
        tn: null,
        ps: [{
            n: 'sourceCoverage'
          }, {
            n: 'domainSubset',
            ti: '.DomainSubsetType'
          }, {
            n: 'rangeSubset',
            ti: '.RangeSubsetType'
          }, {
            n: 'interpolationMethod'
          }, {
            n: 'output',
            ti: '.OutputType'
          }, {
            n: 'service',
            an: {
              lp: 'service'
            },
            t: 'a'
          }, {
            n: 'version',
            an: {
              lp: 'version'
            },
            t: 'a'
          }]
      }, {
        ln: 'Keywords',
        tn: null,
        ps: [{
            n: 'keyword',
            col: true
          }, {
            n: 'type',
            ti: 'GML_3_1_1.CodeType'
          }]
      }, {
        t: 'enum',
        ln: 'CapabilitiesSectionType',
        vs: ['\/', '\/WCS_Capabilities\/Service', '\/WCS_Capabilities\/Capability', '\/WCS_Capabilities\/ContentMetadata']
      }, {
        t: 'enum',
        ln: 'InterpolationMethodType',
        vs: ['nearest neighbor', 'bilinear', 'bicubic', 'lost area', 'barycentric', 'none']
      }],
    eis: [{
        en: 'temporalSubset',
        ti: '.TimeSequenceType'
      }, {
        en: 'GetCoverage',
        ti: '.GetCoverage'
      }, {
        en: 'name'
      }, {
        en: 'WCS_Capabilities',
        ti: '.WCSCapabilitiesType'
      }, {
        en: 'axisDescription',
        ti: '.AxisDescription'
      }, {
        en: 'supportedFormats',
        ti: '.SupportedFormatsType'
      }, {
        en: 'timePeriod',
        ti: '.TimePeriodType'
      }, {
        en: 'DescribeCoverage',
        ti: '.DescribeCoverage'
      }, {
        en: 'CoverageDescription',
        ti: '.CoverageDescription'
      }, {
        en: 'AxisDescription',
        ti: '.AxisDescriptionType',
        sh: {
          lp: '_GML',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'ContentMetadata',
        ti: '.ContentMetadata'
      }, {
        en: 'GetCapabilities',
        ti: '.GetCapabilities'
      }, {
        en: 'interval',
        ti: '.IntervalType'
      }, {
        en: 'formats',
        ti: 'GML_3_1_1.CodeListType'
      }, {
        en: 'supportedCRSs',
        ti: '.SupportedCRSsType'
      }, {
        en: 'Capability',
        ti: '.WCSCapabilityType'
      }, {
        en: 'RangeSet',
        ti: '.RangeSetType',
        sh: {
          lp: '_GML',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'keywords',
        ti: '.Keywords'
      }, {
        en: 'CoverageOfferingBrief',
        ti: '.CoverageOfferingBriefType',
        sh: {
          lp: '_GML',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'Service',
        ti: '.ServiceType',
        sh: {
          lp: '_GML',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'spatialDomain',
        ti: '.SpatialDomainType'
      }, {
        en: 'domainSet',
        ti: '.DomainSetType'
      }, {
        en: 'singleValue',
        ti: '.TypedLiteralType'
      }, {
        en: 'spatialSubset',
        ti: '.SpatialSubsetType'
      }, {
        en: 'description'
      }, {
        en: 'rangeSet',
        ti: '.RangeSet'
      }, {
        en: 'CoverageOffering',
        ti: '.CoverageOfferingType',
        sh: {
          lp: '_GML',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'lonLatEnvelope',
        ti: '.LonLatEnvelopeType'
      }, {
        en: 'TimeSequence',
        ti: '.TimeSequenceType'
      }, {
        en: 'supportedInterpolations',
        ti: '.SupportedInterpolationsType'
      }, {
        en: 'interpolationMethod'
      }, {
        en: 'metadataLink',
        ti: '.MetadataLinkType',
        sh: {
          lp: 'metaDataProperty',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'temporalDomain',
        ti: '.TimeSequenceType'
      }]
  };
  return {
    WCS_1_0_0: WCS_1_0_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], WCS_1_0_0_Module_Factory);
}
else {
  var WCS_1_0_0_Module = WCS_1_0_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.WCS_1_0_0 = WCS_1_0_0_Module.WCS_1_0_0;
  }
  else {
    var WCS_1_0_0 = WCS_1_0_0_Module.WCS_1_0_0;
  }
}