<?xml version="1.0" encoding="UTF-8"?>
<!--
    This Schematron Document is part of the WCS 2.0 CRS Extension 1.0 [OGC 11-053]
    which enables expressing Coordinate Reference Sytems (CRSs) in WCS client/server communication.
    Last updated: 2015-12-17
    Version: 1.0.0
    Copyright (c) 2012, 2015 Open Geospatial Consortium.
    To obtain additional rights of use, visit http://www.opengeospatial.org/legal/.
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <sch:title>WCS CRS Extension Schematron Rules</sch:title>
    <sch:ns uri="http://www.opengis.net/wcs/2.0" prefix="wcs"/>
    <sch:ns uri="http://www.w3.org/1999/xlink" prefix="xlink"/>
    <sch:pattern>
        <sch:title>Requirement 1: /req/crs/extension-identifier</sch:title>
        <sch:rule context="//wcs:Capabilities">
            <sch:let name="profiles" value="string-join(//*[local-name()='ServiceIdentification']/*[local-name()='Profile'],' ')"/>
            <sch:assert test="contains(profiles,'http://www.opengis.net/spec/wcs/crs/1.0/conf/crs')">
                To indicate that the WCS CRS extension is implemented by this server, there shall be a profile element containing the extension identifier.
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    <sch:pattern>
        <sch:title>Requirement 3: /req/crs/wcsServiceMetadata-crs</sch:title>
        <sch:rule context="//wcs:Capabilities">
            <sch:assert test="count(//*[local-name()='CrsMetadata'])=1">
                The Capabilities document shall contain a CrsMetadata element.
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    <sch:pattern>
        <sch:title>Requirement 6: /req/crs/getCoverage-crs</sch:title>
        <sch:rule context="//wcs:GetCoverage">
            <sch:assert test="count(//*[local-name()='GetCoverageCrs'])=1">
                Cardinality of the GetCoverageCrs element shall be 1.
            </sch:assert>
        </sch:rule>
    </sch:pattern>
</sch:schema>
