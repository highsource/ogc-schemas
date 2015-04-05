<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" fpi="http://schemas.opengis.net/sensorML/2.0/physical_system.sch" queryBinding="xslt2">
    <!-- 
        SensorML is an OGC Standard.
        Copyright (c) 2014 Open Geospatial Consortium.
        To obtain additional rights of use, visit http://www.opengeospatial.org/legal/ .
    -->
    <!-- Version: 2.0.0 -->
    <sch:title>Additional validation rules for XML instances including Physical Process components</sch:title>
    <sch:ns uri="http://www.opengis.net/sensorML/2.0" prefix="sml"/>
    <sch:ns uri="http://www.opengis.net/swe/2.0" prefix="swe"/>
    <sch:ns uri="http://www.opengis.net/gml/2.0" prefix="swe"/>
    <sch:ns uri="http://www.w3.org/1999/xlink" prefix="xlink"/>
    
    <!-- gml:identifier property -->
    <sch:pattern>
        <sch:title>Req 46</sch:title>
        <sch:rule context="sml:PhysicalSystem">
            <sch:assert test="count(gml:identifier) = 1">
                There shall be one and only one "gml:identifier" for any PhysicalSystem. (Req 46)
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    <sch:pattern>
        <sch:title>Req 46</sch:title>
        <sch:rule context="sml:PhysicalSystem/gml:identifier">
            <sch:assert test="@codeSpace = 'uniqueID' ">
                The value of the "codespace" attribute of a "gml:identifier" must be "uniqueID". (Req 46)
            </sch:assert>
        </sch:rule>
	</sch:pattern>
	
	<!-- IS THIS ALREADY COVERED BY REQUIRED PASSING OF AGGREGATEPROCESS?
	    <sch:pattern>
        <sch:title>Req 59</sch:title>
        <sch:rule context="sml:component">
            <sch:assert test="@xlink:href">
                The "xlink:href" attribute is required for the "component" property. (Req 59)
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    <sch:pattern>
        <sch:title>Req 59</sch:title>
        <sch:rule context="sml:component">
            <sch:assert test="@xlink:title">
                The "xlink:title" attribute is required for the "component" property. (Req 59)
            </sch:assert>
        </sch:rule>
    </sch:pattern> -->
</sch:schema>
