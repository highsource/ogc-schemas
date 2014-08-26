<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" fpi="http://schemas.opengis.net/sensorML/2.0/core.sch" queryBinding="xslt2">
    <!-- 
        SensorML is an OGC Standard.
        Copyright (c) 2014 Open Geospatial Consortium.
        To obtain additional rights of use, visit http://www.opengeospatial.org/legal/ .
    -->
    <!-- Version: 2.0.0 -->
    <sch:title>Additional validation rules for XML instances using the core SensorML schema</sch:title>
    <sch:ns uri="http://www.opengis.net/sensorML/2.0" prefix="sml"/>
    <sch:ns uri="http://www.opengis.net/swe/2.0" prefix="swe"/>
    <sch:ns uri="http://www.opengis.net/gml/2.0" prefix="swe"/>
    <sch:ns uri="http://www.w3.org/1999/xlink" prefix="xlink"/>
    
    <!-- xlink:href attribute -->
    <sch:pattern>
        <sch:title>Req 40</sch:title>
        <sch:rule context="//*">
            <sch:assert test="@xlink:href | * | @* or (normalize-space(.) != '')">
                The property element <name/> shall either have a inline vale or an xlink:href attribute. (Req 40)
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    
    <!-- gml:identifier property -->
    <sch:pattern>
        <sch:title>Req 46</sch:title>
        <sch:rule context="sml:DescribedObject">
            <sch:assert test="count(gml:identifier) = 1">
                There shall be one and only one "gml:identifier" for any DescribedObject. (Req 46)
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    <sch:pattern>
        <sch:title>Req 46</sch:title>
        <sch:rule context="sml:DescribedObject/gml:identifier">
            <sch:assert test="@codeSpace = 'uniqueID' ">
                The value of the "codespace" attribute of a "gml:identifier" must be "uniqueID". (Req 46)
            </sch:assert>
        </sch:rule>
	</sch:pattern>
	
	<!-- contact role -->
   <sch:pattern>
        <sch:title>Req 49</sch:title>
        <sch:rule context="sml:ContactList/sml:member">
            <sch:assert test="@xlink:arcrole">
                The "xlink:arcrole"is required for member properties of a ContactList. (Req 49)
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    
    <!-- feature of interest role -->
    <sch:pattern>
        <sch:title>Req 51</sch:title>
        <sch:rule context="sml:FeatureList/sml:member">
            <sch:assert test="@xlink:arcrole">
                The "xlink:arcrole" attribute is required for member properties of the FeatureList. (Req 51)
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    
    <!-- ObservableProperty -->
    <sch:pattern>
        <sch:title>Req 52</sch:title>
        <sch:rule context="//sml:ObservableProperty">
            <sch:assert test="@definition">
                The "definition" attribute is required for all ObservableProperty elements. (Req 52)
            </sch:assert>
        </sch:rule>
    </sch:pattern>
</sch:schema>