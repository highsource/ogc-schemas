<?xml version="1.0" encoding="UTF-8"?>
<schema fpi="http://schemas.opengis.net/gwml/2.2/xml-rules.sch" see="http://www.opengis.net/def/gwml/2.2/req/well-xsd" 
xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!--
        This schematron schema checks the XML encoding requirements of OGC GWML2.1, as specified
        in the requirements class: http://www.opengis.net/spec/gwml/2.2/req/xsd-xml-rules

        (adapted from WaterML 2.0)

        OGC WaterML 2.0 Part 4 - GroundWaterML 2 is an OGC Standard.
        Copyright (c) 2016 Open Geospatial Consortium.
        To obtain additional rights of use, visit http://www.opengeospatial.org/legal/ .

        version="2.2.0"
    -->
    <xsl:import-schema schema-location="http://schemas.opengis.net/sweCommon/2.0/swe.xsd" namespace="http://www.opengis.net/swe/2.0"/>
    <xsl:import-schema schema-location="http://schemas.opengis.net/gwml/2.2/gwml2-well.xsd" namespace="http://www.opengis.net/gwml-well/2.2"/>
    <xsl:import-schema schema-location="http://schemas.opengis.net/gml/3.2.1/gml.xsd" namespace="http://www.opengis.net/gml/3.2"/>

	<title>OGC GWML 2.1 XML encoding tests</title>
	<p>This schematron schema checks the water well XML encoding requirements of OGC GWML 2.2, as specified
    in the requirements class: http://www.opengis.net/def/gwml/2.2/req/xsd-xml-rules</p>
	<ns prefix="wml2" uri="http://www.opengis.net/waterml/2.0"/>
	<ns prefix="om" uri="http://www.opengis.net/om/2.0"/>
	<ns prefix="gml" uri="http://www.opengis.net/gml/3.2"/>
	<ns prefix="xlink" uri="http://www.w3.org/1999/xlink"/>
	<ns prefix="swe" uri="http://www.opengis.net/swe/2.0"/>
	<ns prefix="gwml2wc" uri="http://www.opengis.net/gwml-wellconstruction/2.2"/>
	<ns prefix="gwml2w" uri="http://www.opengis.net/gwml-well/2.2"/>
	<ns prefix="sams" uri="http://www.opengis.net/samplingSpatial/2.0"/>
	<!-- the logic for sch:report is opposite to assert; you report if the statement is true -->

	<pattern id="req.well-xsd.origin-elevation">
		<title>Test requirement: /req/well-xsd/origin-elevation</title>
		<rule context="gwml2w:GW_Well">
			<assert test="count(gwml2w:gwWellReferenceElevation/gwml2w:Elevation[gwml2w:elevationType/@xlink:href='http://resource.gwml.org/def/elevationType/originElevation']) = 1">A GW_Well needs at least one origin Elevation</assert>
		</rule>
	</pattern>

	<pattern id="req.well-xsd.obs-relative-pos-spatial-reference">
		<title>Test requirement: /req/well-xsd/obs-relative-pos-spatial-reference</title>
		<rule context="//om:OM_Observation/om:parameter/om:NamedValue[om:name/@xlink:href='http://www.opengis.net/def/param-name/GWML/2.2/referenceGeometry']">
			<assert test="schema-element(gml:Curve)">The reference geometry for Observation along a path must be a gml:Curve</assert>
		</rule>
	</pattern>

	<pattern id="req.well-xsd.waterwell-observation-fromparam">
		<title>Test requirement: /req/well-xsd/waterwell-observation-fromparam</title>
		<rule context="//om:OM_Observation/om:parameter/om:NamedValue[om:name/@xlink:href='http://www.opengis.net/def/param-name/GWML/2.2/fromDistance']">
			<assert test="schema-element(swe:Quantity)">Relative position along a well must be encoded as a swe:Quantity</assert>
		</rule>
	</pattern>

		<pattern id="req.well-xsd.waterwell-observation-toparam">
		<title>Test requirement: /req/well-xsd/waterwell-observation-toparam</title>
		<rule context="//om:OM_Observation/om:parameter/om:NamedValue[om:name/@xlink:href='http://www.opengis.net/def/param-name/GWML/2.2/toDistance']">
			<assert test="schema-element(swe:Quantity)">Relative position along a well must be encoded as a swe:Quantity</assert>
		</rule>
	</pattern>

	<pattern id="req.well-xsd.waterwell-sf-spatial-reference">
		<title>Test requirement: /req/well-xsd/waterwell-sf-spatial-reference</title>
		<rule context="//om:OM_Observation/om:parameter/om:NamedValue[om:name/@xlink:href='http://www.opengis.net/def/param-name/GWML/2.2/referenceGeometry']">
			<assert test="schema-element(gml:Curve)">The reference geometry for Specimen along a path must be a gml:Curve</assert>
		</rule>
	</pattern>

	<pattern id="req.well-xsd.waterwell-sf-fromparam">
		<title>Test requirement: /req/well-xsd/waterwell-sf-fromparam</title>
		<!-- must fix this, it can be SamplingFeature *or* its descendant -->
		<rule context="//sams:SF_SamplingFeature/sams:parameter/om:NamedValue[om:name/@xlink:href='http://www.opengis.net/def/param-name/GWML/2.2/fromDistance']">
			<assert test="schema-element(swe:Quantity)">Relative position along a well must be encoded as a swe:Quantity</assert>
		</rule>
	</pattern>

	<pattern id="req.well-xsd.waterwell-sf-toparam">
		<title>Test requirement: /req/well-xsd/waterwell-sf-toparam</title>
		<!-- must fix this, it can be SamplingFeature *or* its descendant -->
		<rule context="//sams:SF_SamplingFeature/sams:parameter/om:NamedValue[om:name/@xlink:href='http://www.opengis.net/def/param-name/GWML/2.2/toDistance']">
			<assert test="schema-element(swe:Quantity)">Relative position along a well must be encoded as a swe:Quantity</assert>
		</rule>
	</pattern>

	<pattern id="req.well-xsd.well-geology">
		<title>Test requirement: /req/well-xsd/well-geology</title>
		<rule context="gwml2w:GW_Well/sams:relatedObservation">
			<assert test="not(schema-element(gwml2w:GW_GeologyLog))">Geology log shall be referenced from a GW_Well using gwWellGeology</assert>
		</rule>
	</pattern>

	<pattern id="req.well-xsd.log-coverage">
		<title>Test requirement: /req/well-xsd/log-coverage</title>
		<rule context="gwml2w:GW_GeologyLog/om:result">
			<assert test="gwml2w:GW_GeologyLogCoverage">Result of a GW_GeologyLog shall be a GW_GeologyLogCoverage</assert>
		</rule>
	</pattern>

	<pattern id="req.well-xsd.log-depth-order">
		<title>Test requirement: /req/well-xsd/log-depth-order</title>
		<rule context="gwml2w:LogValue">
		<let name="from" value="gwml2w:fromDepth/swe:Quantity"/>
		<let name="to" value="gwml2w:toDepth/swe:Quantity"/>
		<!-- either one of the value is nil OR from is less than to -->
			<assert test="$from/swe:value/@nil='true' or $to/swe:value/@nil='true' or $from/swe:value le $to/swe:value">fromDepth must be less that toDepth</assert>
		</rule>
	</pattern>

</schema>
