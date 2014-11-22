<?xml version="1.0" encoding="UTF-8"?>
<sch:schema
    xmlns="http://purl.oclc.org/dsdl/schematron"
    xmlns:sch="http://purl.oclc.org/dsdl/schematron"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    queryBinding="xslt">
    <sch:title>Additional validation rules for EO-WCS XML instances.</sch:title>
    <sch:ns prefix="gmlcov" uri="http://www.opengis.net/gmlcov/1.0"/>
    <sch:ns prefix="gml" uri="http://www.opengis.net/gml/3.2"/>
    <sch:ns prefix="wcs" uri="http://www.opengis.net/wcs/2.0"/>
    <sch:ns prefix="wcseo" uri="http://www.opengis.net/wcs/wcseo/1.0"/>
    <sch:ns prefix="eop" uri="http://www.opengis.net/eop/2.0"/>
    <sch:ns prefix="om" uri="http://www.opengis.net/om/2.0"/>
    <sch:pattern>
        <sch:title>Requirement 1</sch:title>
        <sch:rule context="gmlcov:metadata">
            <sch:assert test="gmlcov:Extension/wcseo:EOMetadata">
                A EOWCS::EOMetadata instance shall conform to Table 2, Figure 2, 
                Figure 3, and the XML schema being part of this standard.
                
                Rule used in wcseo:RectifiedDataset, wcseo:RectifiedStitchedMosaic, 
                wcseo:ReferenceableDataset, and wcseo:ReferenceableStitchedMosaic 
                elements in GetCoverage responses and wcs:CoverageDescription 
                elements in DescribeEOCoverageSet and DescribeCoverage responses.
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    <sch:pattern>
        <sch:title>Requirement 2</sch:title>
        <sch:rule context="wcseo:EOMetadata/eop:EarthObservation">
            <sch:assert test="om:featureOfInterest/eop:Footprint">
                The EOWCS::EOMetadata element of EOWCS::ReferenceableEOCoverage 
                and EOWCS::RectifiedEOCoverage instances shall contain an 
                eop:EarthObservation/om:featureOfInterest/eop:Footprint element.
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    <sch:pattern>
        <sch:title>Requirement 4</sch:title>
        <sch:rule context="wcseo:RectifiedDataset">
            <sch:assert test="gmlcov:metadata">
                EOWCS::ReferenceableEOCoverage and EOWCS::RectifiedEOCoverage 
                instances shall contain one metadata element of type 
                EOWCS::EOMetadata.
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    <sch:pattern>
        <sch:title>Requirement 4</sch:title>
        <sch:rule context="wcseo:RectifiedStitchedMosaic">
            <sch:assert test="gmlcov:metadata">
                EOWCS::ReferenceableEOCoverage and EOWCS::RectifiedEOCoverage 
                instances shall contain one metadata element of type 
                EOWCS::EOMetadata.
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    <sch:pattern>
        <sch:title>Requirement 4</sch:title>
        <sch:rule context="wcseo:ReferenceableDataset">
            <sch:assert test="gmlcov:metadata">
                EOWCS::ReferenceableEOCoverage and EOWCS::RectifiedEOCoverage 
                instances shall contain one metadata element of type 
                EOWCS::EOMetadata.
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    <sch:pattern>
        <sch:title>Requirement 4</sch:title>
        <sch:rule context="wcseo:ReferenceableStitchedMosaic">
            <sch:assert test="gmlcov:metadata">
                EOWCS::ReferenceableEOCoverage and EOWCS::RectifiedEOCoverage 
                instances shall contain one metadata element of type 
                EOWCS::EOMetadata.
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    <sch:pattern>
        <sch:title>Requirement 38</sch:title>
        <sch:rule context="wcs:CoverageDescription">
            <sch:assert test="gmlcov:metadata">
                wcs:CoverageDescription shall always have one gmlcov:metadata child element.
                Rule used in wcs:CoverageDescription elements in DescribeEOCoverageSet and DescribeCoverage responses.
            </sch:assert>
        </sch:rule>
    </sch:pattern>
<!-- TODO: Ensure wcs:CoverageSubtype is correctly set in CoverageSummary and CoverageDescription for EO Coverages. -->
<!-- TODO: Go to all requirements and include relevant tests e.g 5, 7. -->
</sch:schema>
