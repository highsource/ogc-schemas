var WCS_1_0_0_Module_Factory = function () {
  var WCS_1_0_0 = {
    n: 'WCS_1_0_0',
    dens: 'http:\/\/www.opengis.net\/wcs',
    tis: [{
        ln: 'Keywords',
        ps: [{
            n: 'keyword',
            col: true
          }, {
            n: 'type',
            ti: 'GML_3_1_1.CodeType'
          }]
      }, {
        ln: 'CoverageOfferingBriefType',
        bti: 'WCS_1_0_0.AbstractDescriptionType',
        ps: [{
            n: 'lonLatEnvelope',
            ti: 'WCS_1_0_0.LonLatEnvelopeType'
          }, {
            n: 'keywords',
            col: true,
            ti: 'WCS_1_0_0.Keywords'
          }]
      }, {
        ln: 'SpatialDomainType',
        ps: [{
            n: 'envelope',
            col: true,
            mx: false,
            dom: false,
            typed: false,
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
        ln: 'CoverageDescription',
        ps: [{
            n: 'coverageOffering',
            col: true,
            en: 'CoverageOffering',
            ti: 'WCS_1_0_0.CoverageOfferingType'
          }, {
            n: 'version',
            t: 'a'
          }, {
            n: 'updateSequence',
            t: 'a'
          }]
      }, {
        ln: 'CoverageOfferingType',
        bti: 'WCS_1_0_0.CoverageOfferingBriefType',
        ps: [{
            n: 'domainSet',
            ti: 'WCS_1_0_0.DomainSetType'
          }, {
            n: 'rangeSet',
            ti: 'WCS_1_0_0.RangeSet'
          }, {
            n: 'supportedCRSs',
            ti: 'WCS_1_0_0.SupportedCRSsType'
          }, {
            n: 'supportedFormats',
            ti: 'WCS_1_0_0.SupportedFormatsType'
          }, {
            n: 'supportedInterpolations',
            ti: 'WCS_1_0_0.SupportedInterpolationsType'
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
                ti: 'WCS_1_0_0.TimePeriodType'
              }],
            t: 'es'
          }]
      }, {
        ln: 'SpatialSubsetType',
        bti: 'WCS_1_0_0.SpatialDomainType'
      }, {
        ln: 'SupportedFormatsType',
        ps: [{
            n: 'formats',
            col: true,
            ti: 'GML_3_1_1.CodeListType'
          }, {
            n: 'nativeFormat',
            t: 'a'
          }]
      }, {
        ln: 'GetCapabilities',
        ps: [{
            n: 'section'
          }, {
            n: 'service',
            t: 'a'
          }, {
            n: 'version',
            t: 'a'
          }, {
            n: 'updateSequence',
            t: 'a'
          }]
      }, {
        ln: 'DomainSetType',
        ps: [{
            n: 'spatialDomain',
            ti: 'WCS_1_0_0.SpatialDomainType'
          }, {
            n: 'optionalTemporalDomain',
            en: 'temporalDomain',
            ti: 'WCS_1_0_0.TimeSequenceType'
          }, {
            n: 'temporalDomain',
            ti: 'WCS_1_0_0.TimeSequenceType'
          }]
      }, {
        ln: 'AxisDescription',
        ps: [{
            n: 'axisDescription',
            en: 'AxisDescription',
            ti: 'WCS_1_0_0.AxisDescriptionType'
          }]
      }, {
        ln: 'AxisDescriptionType',
        bti: 'WCS_1_0_0.AbstractDescriptionType',
        ps: [{
            n: 'values',
            ti: 'WCS_1_0_0.AxisDescriptionType.Values'
          }, {
            n: 'semantic',
            an: {
              lp: 'semantic',
              ns: 'http:\/\/www.opengis.net\/wcs'
            },
            t: 'a'
          }, {
            n: 'refSys',
            t: 'a'
          }, {
            n: 'refSysLabel',
            t: 'a'
          }]
      }, {
        ln: 'ContentMetadata',
        ps: [{
            n: 'coverageOfferingBrief',
            col: true,
            en: 'CoverageOfferingBrief',
            ti: 'WCS_1_0_0.CoverageOfferingBriefType'
          }, {
            n: 'version',
            t: 'a'
          }, {
            n: 'updateSequence',
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
            ti: 'WCS_1_0_0.WCSCapabilityType.Request'
          }, {
            n: 'exception',
            en: 'Exception',
            ti: 'WCS_1_0_0.WCSCapabilityType.Exception'
          }, {
            n: 'vendorSpecificCapabilities',
            en: 'VendorSpecificCapabilities',
            ti: 'WCS_1_0_0.WCSCapabilityType.VendorSpecificCapabilities'
          }, {
            n: 'version',
            t: 'a'
          }, {
            n: 'updateSequence',
            t: 'a'
          }]
      }, {
        ln: 'SupportedInterpolationsType',
        ps: [{
            n: 'interpolationMethod',
            col: true
          }, {
            n: '_default',
            an: 'default',
            t: 'a'
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
        ln: 'LonLatEnvelopeType',
        bti: 'WCS_1_0_0.LonLatEnvelopeBaseType',
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
        ln: 'WCSCapabilitiesType',
        ps: [{
            n: 'service',
            en: 'Service',
            ti: 'WCS_1_0_0.ServiceType'
          }, {
            n: 'capability',
            en: 'Capability',
            ti: 'WCS_1_0_0.WCSCapabilityType'
          }, {
            n: 'contentMetadata',
            en: 'ContentMetadata',
            ti: 'WCS_1_0_0.ContentMetadata'
          }, {
            n: 'version',
            t: 'a'
          }, {
            n: 'updateSequence',
            t: 'a'
          }]
      }, {
        ln: 'ServiceType',
        bti: 'WCS_1_0_0.AbstractDescriptionType',
        ps: [{
            n: 'keywords',
            col: true,
            ti: 'WCS_1_0_0.Keywords'
          }, {
            n: 'responsibleParty',
            ti: 'WCS_1_0_0.ResponsiblePartyType'
          }, {
            n: 'fees',
            ti: 'GML_3_1_1.CodeListType'
          }, {
            n: 'accessConstraints',
            col: true,
            ti: 'GML_3_1_1.CodeListType'
          }, {
            n: 'version',
            t: 'a'
          }, {
            n: 'updateSequence',
            t: 'a'
          }]
      }, {
        ln: 'RangeSetType',
        bti: 'WCS_1_0_0.AbstractDescriptionType',
        ps: [{
            n: 'axisDescription',
            col: true,
            ti: 'WCS_1_0_0.AxisDescription'
          }, {
            n: 'nullValues',
            ti: 'WCS_1_0_0.ValueEnumType'
          }, {
            n: 'semantic',
            an: {
              lp: 'semantic',
              ns: 'http:\/\/www.opengis.net\/wcs'
            },
            t: 'a'
          }, {
            n: 'refSys',
            t: 'a'
          }, {
            n: 'refSysLabel',
            t: 'a'
          }]
      }, {
        ln: 'GetCoverage',
        ps: [{
            n: 'sourceCoverage'
          }, {
            n: 'domainSubset',
            ti: 'WCS_1_0_0.DomainSubsetType'
          }, {
            n: 'rangeSubset',
            ti: 'WCS_1_0_0.RangeSubsetType'
          }, {
            n: 'interpolationMethod'
          }, {
            n: 'output',
            ti: 'WCS_1_0_0.OutputType'
          }, {
            n: 'service',
            t: 'a'
          }, {
            n: 'version',
            t: 'a'
          }]
      }, {
        ln: 'DomainSubsetType',
        ps: [{
            n: 'spatialSubset',
            ti: 'WCS_1_0_0.SpatialSubsetType'
          }, {
            n: 'optionalTemporalSubset',
            en: 'temporalSubset',
            ti: 'WCS_1_0_0.TimeSequenceType'
          }, {
            n: 'temporalSubset',
            ti: 'WCS_1_0_0.TimeSequenceType'
          }]
      }, {
        ln: 'RangeSubsetType',
        ps: [{
            n: 'axisSubset',
            col: true,
            ti: 'WCS_1_0_0.RangeSubsetType.AxisSubset'
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
        ln: 'DescribeCoverage',
        ps: [{
            n: 'coverage',
            col: true,
            en: 'Coverage'
          }, {
            n: 'service',
            t: 'a'
          }, {
            n: 'version',
            t: 'a'
          }]
      }, {
        ln: 'RangeSet',
        ps: [{
            n: 'rangeSet',
            en: 'RangeSet',
            ti: 'WCS_1_0_0.RangeSetType'
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
            t: 'a'
          }]
      }, {
        ln: 'IntervalType',
        bti: 'WCS_1_0_0.ValueRangeType',
        ps: [{
            n: 'res',
            ti: 'WCS_1_0_0.TypedLiteralType'
          }]
      }, {
        ln: 'MetadataLinkType',
        bti: 'WCS_1_0_0.MetadataAssociationType',
        ps: [{
            n: 'metadataType',
            t: 'a'
          }]
      }, {
        ln: 'DCPTypeType',
        ps: [{
            n: 'http',
            en: 'HTTP',
            ti: 'WCS_1_0_0.DCPTypeType.HTTP'
          }]
      }, {
        ln: 'ValueEnumType',
        bti: 'WCS_1_0_0.ValueEnumBaseType',
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
        ln: 'ContactType',
        ps: [{
            n: 'phone',
            ti: 'WCS_1_0_0.TelephoneType'
          }, {
            n: 'address',
            ti: 'WCS_1_0_0.AddressType'
          }, {
            n: 'onlineResource',
            ti: 'WCS_1_0_0.OnlineResourceType'
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
            ti: 'WCS_1_0_0.ContactType'
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
        ln: 'LonLatEnvelopeBaseType',
        bti: 'GML_3_1_1.EnvelopeType'
      }, {
        ln: 'ValueRangeType',
        ps: [{
            n: 'min',
            ti: 'WCS_1_0_0.TypedLiteralType'
          }, {
            n: 'max',
            ti: 'WCS_1_0_0.TypedLiteralType'
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
        ln: 'ValueEnumBaseType',
        ps: [{
            n: 'intervalOrSingleValue',
            col: true,
            etis: [{
                en: 'interval',
                ti: 'WCS_1_0_0.IntervalType'
              }, {
                en: 'singleValue',
                ti: 'WCS_1_0_0.TypedLiteralType'
              }],
            t: 'es'
          }]
      }, {
        ln: 'AbstractDescriptionBaseType',
        bti: 'GML_3_1_1.AbstractGMLType'
      }, {
        ln: 'AbstractDescriptionType',
        bti: 'WCS_1_0_0.AbstractDescriptionBaseType',
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
        ln: 'MetadataAssociationType',
        bti: 'GML_3_1_1.MetaDataPropertyType'
      }, {
        ln: 'DCPTypeType.HTTP',
        ps: [{
            n: 'getOrPost',
            col: true,
            etis: [{
                en: 'Get',
                ti: 'WCS_1_0_0.DCPTypeType.HTTP.Get'
              }, {
                en: 'Post',
                ti: 'WCS_1_0_0.DCPTypeType.HTTP.Post'
              }],
            t: 'es'
          }]
      }, {
        ln: 'DCPTypeType.HTTP.Get',
        ps: [{
            n: 'onlineResource',
            en: 'OnlineResource',
            ti: 'WCS_1_0_0.OnlineResourceType'
          }]
      }, {
        ln: 'DCPTypeType.HTTP.Post',
        ps: [{
            n: 'onlineResource',
            en: 'OnlineResource',
            ti: 'WCS_1_0_0.OnlineResourceType'
          }]
      }, {
        ln: 'RangeSubsetType.AxisSubset',
        bti: 'WCS_1_0_0.ValueEnumBaseType',
        ps: [{
            n: 'name',
            t: 'a'
          }]
      }, {
        ln: 'WCSCapabilityType.Request',
        ps: [{
            n: 'getCapabilities',
            en: 'GetCapabilities',
            ti: 'WCS_1_0_0.WCSCapabilityType.Request.GetCapabilities'
          }, {
            n: 'describeCoverage',
            en: 'DescribeCoverage',
            ti: 'WCS_1_0_0.WCSCapabilityType.Request.DescribeCoverage'
          }, {
            n: 'getCoverage',
            en: 'GetCoverage',
            ti: 'WCS_1_0_0.WCSCapabilityType.Request.GetCoverage'
          }]
      }, {
        ln: 'WCSCapabilityType.Exception',
        ps: [{
            n: 'format',
            col: true,
            en: 'Format'
          }]
      }, {
        ln: 'WCSCapabilityType.VendorSpecificCapabilities',
        ps: [{
            n: 'any',
            dom: false,
            mx: false,
            t: 'ae'
          }]
      }, {
        ln: 'WCSCapabilityType.Request.GetCapabilities',
        ps: [{
            n: 'dcpType',
            col: true,
            en: 'DCPType',
            ti: 'WCS_1_0_0.DCPTypeType'
          }]
      }, {
        ln: 'WCSCapabilityType.Request.DescribeCoverage',
        ps: [{
            n: 'dcpType',
            col: true,
            en: 'DCPType',
            ti: 'WCS_1_0_0.DCPTypeType'
          }]
      }, {
        ln: 'WCSCapabilityType.Request.GetCoverage',
        ps: [{
            n: 'dcpType',
            col: true,
            en: 'DCPType',
            ti: 'WCS_1_0_0.DCPTypeType'
          }]
      }, {
        ln: 'AxisDescriptionType.Values',
        bti: 'WCS_1_0_0.ValueEnumType',
        ps: [{
            n: '_default',
            en: 'default',
            ti: 'WCS_1_0_0.TypedLiteralType'
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
        en: 'keywords',
        ti: 'WCS_1_0_0.Keywords'
      }, {
        en: 'CoverageDescription',
        ti: 'WCS_1_0_0.CoverageDescription'
      }, {
        en: 'GetCapabilities',
        ti: 'WCS_1_0_0.GetCapabilities'
      }, {
        en: 'axisDescription',
        ti: 'WCS_1_0_0.AxisDescription'
      }, {
        en: 'ContentMetadata',
        ti: 'WCS_1_0_0.ContentMetadata'
      }, {
        en: 'GetCoverage',
        ti: 'WCS_1_0_0.GetCoverage'
      }, {
        en: 'DescribeCoverage',
        ti: 'WCS_1_0_0.DescribeCoverage'
      }, {
        en: 'rangeSet',
        ti: 'WCS_1_0_0.RangeSet'
      }, {
        en: 'formats',
        ti: 'GML_3_1_1.CodeListType'
      }, {
        en: 'CoverageOfferingBrief',
        ti: 'WCS_1_0_0.CoverageOfferingBriefType',
        sh: {
          lp: '_GML',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'spatialDomain',
        ti: 'WCS_1_0_0.SpatialDomainType'
      }, {
        en: 'description'
      }, {
        en: 'singleValue',
        ti: 'WCS_1_0_0.TypedLiteralType'
      }, {
        en: 'temporalSubset',
        ti: 'WCS_1_0_0.TimeSequenceType'
      }, {
        en: 'spatialSubset',
        ti: 'WCS_1_0_0.SpatialSubsetType'
      }, {
        en: 'supportedFormats',
        ti: 'WCS_1_0_0.SupportedFormatsType'
      }, {
        en: 'domainSet',
        ti: 'WCS_1_0_0.DomainSetType'
      }, {
        en: 'Capability',
        ti: 'WCS_1_0_0.WCSCapabilityType'
      }, {
        en: 'supportedInterpolations',
        ti: 'WCS_1_0_0.SupportedInterpolationsType'
      }, {
        en: 'supportedCRSs',
        ti: 'WCS_1_0_0.SupportedCRSsType'
      }, {
        en: 'lonLatEnvelope',
        ti: 'WCS_1_0_0.LonLatEnvelopeType'
      }, {
        en: 'TimeSequence',
        ti: 'WCS_1_0_0.TimeSequenceType'
      }, {
        en: 'WCS_Capabilities',
        ti: 'WCS_1_0_0.WCSCapabilitiesType'
      }, {
        en: 'Service',
        ti: 'WCS_1_0_0.ServiceType',
        sh: {
          lp: '_GML',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'RangeSet',
        ti: 'WCS_1_0_0.RangeSetType',
        sh: {
          lp: '_GML',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'AxisDescription',
        ti: 'WCS_1_0_0.AxisDescriptionType',
        sh: {
          lp: '_GML',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'interpolationMethod'
      }, {
        en: 'name'
      }, {
        en: 'timePeriod',
        ti: 'WCS_1_0_0.TimePeriodType'
      }, {
        en: 'CoverageOffering',
        ti: 'WCS_1_0_0.CoverageOfferingType',
        sh: {
          lp: '_GML',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
      }, {
        en: 'temporalDomain',
        ti: 'WCS_1_0_0.TimeSequenceType'
      }, {
        en: 'interval',
        ti: 'WCS_1_0_0.IntervalType'
      }, {
        en: 'metadataLink',
        ti: 'WCS_1_0_0.MetadataLinkType',
        sh: {
          lp: 'metaDataProperty',
          ns: 'http:\/\/www.opengis.net\/gml'
        }
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
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.WCS_1_0_0 = WCS_1_0_0_Module_Factory().WCS_1_0_0;
  }
  else {
    var WCS_1_0_0 = WCS_1_0_0_Module_Factory().WCS_1_0_0;
  }
}