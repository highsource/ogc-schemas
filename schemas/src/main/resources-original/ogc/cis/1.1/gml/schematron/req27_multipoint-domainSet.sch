<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <sch:title>Requirement 27</sch:title>
    <sch:ns uri="http://www.opengis.net/cis/1.1" prefix="cis"/>
    <sch:ns uri="http://www.w3.org/1999/xlink" prefix="xlink"/>
    <sch:pattern>
        <sch:title>Req 27</sch:title>
        <sch:rule context="//cis:domainSet">
            <sch:assert test="self instance of cis:directMultiPoint">
                DomainSet shall be of type cis:directMultiPoint.
            </sch:assert>
        </sch:rule>
    </sch:pattern>
</sch:schema>


