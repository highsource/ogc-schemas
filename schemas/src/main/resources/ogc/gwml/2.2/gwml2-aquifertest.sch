<?xml version="1.0" encoding="UTF-8"?>
<schema fpi="http://schemas.opengis.net/gwml/2.2/xml-rules.sch" see="http://www.opengis.net/def/gwml/2.2/aquifer-test-xsd" 
xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!--
        This schematron schema checks the XML encoding requirements of OGC GWML2.0, as specified
        in the requirements class: http://www.opengis.net/spec/gwml/2.0/req/xsd-xml-rules

        (adapted from WaterML 2.0)

        OGC WaterML 2.0 Part 4 - GroundWaterML 2 is an OGC Standard.
        Copyright (c) 2016 Open Geospatial Consortium.
        To obtain additional rights of use, visit http://www.opengeospatial.org/legal/ .

        version="2.2.0"
    -->
    <xsl:import-schema schema-location="http://schemas.opengis.net/gwml/2.2/gwml2-aquifertest.xsd" namespace="http://www.opengis.net/gwml-aquifertest/2.2"/>
	<xsl:import-schema schema-location="http://schemas.opengis.net/gwml/2.2/gwml2-main.xsd" namespace="http://www.opengis.net/gwml-main/2.2"/>

	<title>OGC GWML 2.2 XML encoding tests</title>
	<p>This schematron schema checks the aqwuifer test XML encoding requirements of OGC GWML 2.2, as specified
    in the requirements class: http://www.opengis.net/spec/gwml/2.2/req/aquifer-test-xsd</p>
	<ns prefix="wml2" uri="http://www.opengis.net/waterml/2.0"/>
	<ns prefix="om" uri="http://www.opengis.net/om/2.0"/>
	<ns prefix="gml" uri="http://www.opengis.net/gml/3.2"/>
	<ns prefix="xlink" uri="http://www.w3.org/1999/xlink"/>
	<ns prefix="swe" uri="http://www.opengis.net/swe/2.0"/>
	<ns prefix="gwml2at" uri="http://www.opengis.net/gwml-aquifertest/2.2"/>
	<ns prefix="gwml2w" uri="http://www.opengis.net/gwml-well/2.2"/>
	<ns prefix="gwml2" uri="http://www.opengis.net/gwml-main/2.2"/>
	<ns prefix="sams" uri="http://www.opengis.net/samplingSpatial/2.0"/>

	<pattern id="req.aquifer-test-xsd.sampledfeature">
		<title>Test requirement: /req/aquifer-test-xsd/sampledfeature</title>
		<!-- must check schematron , this should apply to all subtypes -->
		<rule context="gwml2at:GW_AquiferTest/sams:sampledFeature">
			<assert test="schema-element(gwml2:GW_HydrogeoUnit)">The test's sampledFeature must be a GW_HydrogeoUnit</assert>
		</rule>
	</pattern>

</schema>
