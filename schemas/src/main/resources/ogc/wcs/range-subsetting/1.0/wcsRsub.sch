<?xml version="1.0" encoding="UTF-8"?>
<!-- 
    This Schematron Document is part of the WCS Range Subsetting Extension [OGC 12-040]
    which enables extracting range components ("bands, "channels") from a coverage in WCS client/server communication.
    Last updated: 2014-11-19
            
    WCS Range Subsetting Extension is an OGC Standard.
    Copyright (c) 2013, 2014 Open Geospatial Consortium.
    To obtain additional rights of use, visit http://www.opengeospatial.org/legal/.
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <sch:title>WCS Range Subsetting Extension Schematron Rules</sch:title>
    <sch:ns uri="http://www.opengis.net/wcs/2.0" prefix="wcs"/>
    <sch:ns uri="http://www.w3.org/1999/xlink" prefix="xlink"/>
    <sch:pattern>
        <sch:title>Requirement 1: /req/record-subsetting/extension-identifier</sch:title>
        <sch:rule context="//wcs:Capabilities">
            <sch:let name="profiles" value="string-join(//*[local-name()='ServiceIdentification']/*[local-name()='Profile'],' ')"/>
            <sch:assert test="contains($profiles,'http://www.opengis.net/spec/WCS_service-extension_range-subsetting/1.0/conf/record-subsetting')">
                A WCS service implementing conformance class record-subsetting of this Range Subsetting Extension shall include the following URI in the Profile element of the ServiceIdentification in a GetCapabilities response
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    <sch:pattern>
        <sch:title>Requirement 2: /req/record-subsetting/getCoverage-request-syntax</sch:title>
        <sch:rule context="//wcs:GetCoverage">
            <sch:assert test="count(//*[local-name()='RangeSubset'])=1">
                The GetCoverage wcs:Extension element shall contain exactly one RangeSubset element.
            </sch:assert>
        </sch:rule>
    </sch:pattern>
</sch:schema>
