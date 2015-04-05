<?xml version="1.0" encoding="UTF-8"?>
<!-- 
    This Schematron Document is part of the WCS Interpolation Extension [OGC 12-049]
    which allows clients to influence interpolation methods used during the server's result coverage production in a GetCoverage request.
    Note that there is only a rule for the core conformance class in the Capabilities part and not for the additional conformance classes defined in this specification, as OGC currently has no scheme for expressing non-core conformance class in one Schematron file.
    Last updated: 2014-11-18
    WCS Interpolation is an OGC Standard.
    Copyright (c) 2013, 2014 Open Geospatial Consortium.
    To obtain additional rights of use, visit http://www.opengeospatial.org/legal/.
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <sch:title>WCS Interpolation Extension Schematron Rules</sch:title>
    <sch:ns uri="http://www.opengis.net/wcs/2.0" prefix="wcs"/>
    <sch:ns uri="http://www.w3.org/1999/xlink" prefix="xlink"/>
    <sch:pattern>
        <sch:title>Requirement 1: /req/interpolation/extension-identifier</sch:title>
        <sch:rule context="//wcs:Capabilities">
            <sch:let name="profiles" value="string-join(//*[local-name()='ServiceIdentification']/*[local-name()='Profile'],' ')"/>
            <sch:assert test="contains($profiles,'http://www.opengis.net/spec/WCS_service-extension_interpolation/1.0/conf/interpolation')">
                A WCS service implementing this Interpolation Extension shall include its identifying URI in the Profile element of the ServiceIdentification in a GetCapabilities response.
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    <sch:pattern>
        <sch:title>Requirement 2: /req/interpolation/getCoverage-request-syntax</sch:title>
        <sch:rule context="//wcs:GetCoverage">
            <sch:assert test="not(count(//*[local-name()='Interpolation'])&gt;1)">
                The GetCoverage wcs:Extension element shall contain at most one Interpolation element.
            </sch:assert>
        </sch:rule>
    </sch:pattern>
</sch:schema>
