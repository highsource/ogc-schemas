<?xml version="1.0" encoding="UTF-8"?>
<schema  see="http://www.opengis.net/spec/gwml/2.2/req/xsd-xml-rules" xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!--
        This schematron schema checks the XML encoding requirements of OGC GWML2.0, as specified
        in the requirements class: http://www.opengis.net/spec/gwml/2.0/req/xsd-xml-rules

        (adapted from WaterML 2.0)

        OGC WaterML 2.0 Part 4 - GroundWaterML 2 is an OGC Standard.
        Copyright (c) 2016 Open Geospatial Consortium.
        To obtain additional rights of use, visit http://www.opengeospatial.org/legal/ .

        version="2.2.0"
    -->
    <xsl:import-schema schema-location="http://schemas.opengis.net/sweCommon/2.0/simple_components.xsd" namespace="http://www.opengis.net/swe/2.0"/>

	<title>OGC GWML 2.1 XML encoding tests</title>
	<p>This schematron schema checks the core XML encoding requirements of OGC GWML 2.1, as specified
    in the requirements class: http://www.opengis.net/spec/gwml/2.2/req/xsd-xml-rules</p>
	<ns prefix="om" uri="http://www.opengis.net/om/2.0"/>
	<ns prefix="gml" uri="http://www.opengis.net/gml/3.2"/>
	<ns prefix="xlink" uri="http://www.w3.org/1999/xlink"/>
	<ns prefix="swe" uri="http://www.opengis.net/swe/2.0"/>

	<!-- the logic for sch:report is opposite to assert; you report if the statement is true -->
	<pattern id="xlink-title">
		<title>Test recommendation: /req/xsd-xml-rules/xlink-title</title>
		<rule context="*[@xlink:href]">
			<report test="not(starts-with(@xlink:href, '#') ) and not(@xlink:title)">If an xlink:href is used to reference a controlled vocabulary item, the element should encode the
        xlink:title attribute with a text description of the referenced item.If an xlink:href is used to reference a controlled vocabulary item, the
        element should encode the xlink:title attribute with a text description of the referenced item.</report>
		</rule>
	</pattern>

	<pattern id="unit-of-measure">
		<title>Test requirement: /req/xsd-xml-rules/unit-of-measure</title>
		<rule context="swe:Quantity">
			<assert test="swe:uom">Quantity must have a UOM</assert>
		</rule>
		<rule context="om:OM_Measurement/om:result">
			<assert test="@uom">OM_Measurement must have a UOM</assert>
		</rule>
	</pattern>
	<pattern id="swe-types">
		<title>Test requirement: /req/xsd-xml-rules/swe-types</title>
		<rule context="swe:Category">
			<assert test="not(swe:quality) and not(swe:nilValues) and not(swe:constraint)">When using the SWE Common types, the following elements shall not be used: 
        swe:quality (AbstractSimpleComponentType), swe:nilValues (AbstractSimpleComponentType), swe:constraint.</assert>
		</rule>
		<rule context="swe:QuantityType">
			<assert test="not(swe:quality) and not(swe:nilValues) and not(swe:constraint)">When using the SWE Common types, the following elements shall not be used: 
        swe:quality (AbstractSimpleComponentType), swe:nilValues (AbstractSimpleComponentType), swe:constraint.
       </assert>
		</rule>
		<rule context="swe:Quantity">
			<assert test="not(swe:quality) and not(swe:nilValues) and not(swe:constraint)">When using the SWE Common types, the following elements shall not be used: 
        swe:quality (AbstractSimpleComponentType), swe:nilValues (AbstractSimpleComponentType), swe:constraint.
       </assert>
		</rule>
	</pattern>

</schema>
