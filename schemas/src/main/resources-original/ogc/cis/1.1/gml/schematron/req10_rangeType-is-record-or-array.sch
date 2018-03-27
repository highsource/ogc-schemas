<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <sch:title>Requirement 10</sch:title>
    <sch:ns uri="http://www.opengis.net/cis/1.1" prefix="cis"/>
    <sch:ns uri="http://www.opengis.net/swe/2.0" prefix="swe"/>
    <sch:ns uri="http://www.w3.org/1999/xlink" prefix="xlink"/>
    <sch:pattern>
        <sch:title>Req 10</sch:title>
        <sch:rule context="//rangeType">
            <sch:assert test="count(//DataRecord]|//DataArray)!=0 and count(//DataChoice|//Vector|//Matrix)=0">
                In a coverage instantiating class coverage, for all SWE Common AbstractDataComponent items in a cov¬erage range type structure, the concrete subtype used shall be one of DataRecord and DataArray.
            </sch:assert>
        </sch:rule>
    </sch:pattern>
</sch:schema>
