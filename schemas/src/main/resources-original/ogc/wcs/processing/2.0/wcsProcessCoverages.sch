<?xml version="1.0" encoding="UTF-8"?>
<!-- 
    This Schematron Document is part of the WCS Processing Extension [OGC 09-059r4]
    which introduces a request type, ProcessCoverages, allowing clients to send parametrized queries for evaluation on server-side.
    Last updated: 2014-11-26

    WCS Proccessing Extension is an OGC standard.

    Copyright (c) 2014 Open Geospatial Consortium.
    To obtain additional rights of use, visit http://www.opengeospatial.org/legal/.
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <sch:title>WCS Processing Extension Schematron Rules</sch:title>
    <sch:ns uri="http://www.opengis.net/wcs/2.0" prefix="wcs"/>
    <sch:ns uri="http://www.w3.org/1999/xlink" prefix="xlink"/>
    <sch:pattern>
        <sch:title>Requirement 1: extension-identifier</sch:title>
        <sch:rule context="//wcs:Capabilities">
            <sch:let name="profiles" value="string-join(//*[local-name()='ServiceIdentification']/*[local-name()='Profile'],' ')"/>
            <sch:assert test="contains($profiles,'http://www.opengis.net/spec/WCS_service-extension_processing/1.0/conf/processing')">
                A WCS service implementing this Processing Extension shall include its identifying URI in the Profile element of the ServiceIdentification in a GetCapabilities response.
            </sch:assert>
        </sch:rule>
    </sch:pattern>
</sch:schema>
