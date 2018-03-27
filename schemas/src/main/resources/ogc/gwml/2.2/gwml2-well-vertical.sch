<?xml version="1.0" encoding="UTF-8"?>
<schema fpi="http://schemas.opengis.net/gwml/2.2/xml-rules.sch" see="http://www.opengis.net/def/gwml/2.2/req/vertical-well-xsd" 
xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!--
        This schematron schema checks the XML encoding requirements of OGC GWML2.2, as specified
        in the requirements class: http://www.opengis.net/spec/gwml/2.2/req/xsd-xml-rules

        (adapted from WaterML 2.0)

        OGC WaterML 2.0 Part 4 - GroundWaterML 2 is an OGC Standard.
        Copyright (c) 2016 Open Geospatial Consortium.
        To obtain additional rights of use, visit http://www.opengeospatial.org/legal/ .

        version="2.2.0"
    -->
    <xsl:import-schema schema-location="http://schemas.opengis.net/gwml/2.2/gwml2-well.xsd" namespace="http://www.opengis.net/gwml-well/2.2"/>

	<title>OGC GWML 2.1 XML encoding tests</title>
	<p>This schematron schema checks the core XML encoding requirements of OGC GWML 2.2, as specified
    in the requirements class: http://www.opengis.net/spec/gwml/2.2/req/vertical-well-xsd</p>
	<ns prefix="wml2" uri="http://www.opengis.net/waterml/2.0"/>
	<ns prefix="om" uri="http://www.opengis.net/om/2.0"/>
	<ns prefix="gml" uri="http://www.opengis.net/gml/3.2"/>
	<ns prefix="xlink" uri="http://www.w3.org/1999/xlink"/>
	<ns prefix="swe" uri="http://www.opengis.net/swe/2.0"/>
	<ns prefix="gwml2wc" uri="http://www.opengis.net/gwml-wellconstruction/2.2"/>
	<ns prefix="gwml2w" uri="http://www.opengis.net/gwml-well/2.2"/>
	<ns prefix="sams" uri="http://www.opengis.net/samplingSpatial/2.0"/>

	<pattern id="req.vertical-well-xsd.waterwell-shape">
		<title>Test requirement: /req/vertical-well-xsd/waterwell-shape</title>
		<!-- gwml2-well schematron already checks that it's a gml:Curve -->
		<rule context="gwml2w:GW_Well/sams:shape/gml:Curve">
			<assert test="count(gml:segments) = 1">Only 1 segments in a vertical well</assert>
		</rule>
		<rule context="gwml2w:GW_Well/sams:shape/gml:Curve/gml:segments/gml:LineStringSegment">
			<assert test="count(tokenize(gml:posList,' ')) = 6">a 3D LineStringSegment having 2 vertices shall have 6 coordinates</assert>
		</rule>
	</pattern>

	<pattern id="req.vertical-well-xsd.endvertex">
		<title>Test requirement: /req/vertical-well-xsd/endvertex</title>
		<rule context="gwml2w:GW_Well/sams:shape/gml:Curve/gml:segments/gml:LineStringSegment">
		<let name="pos" value="tokenize(gwml2w:GW_Well/sams:shape/gml:Curve/gml:segments[1]/gml:LineStringSegment/gml:posList,' ')"/>
		<assert test="$pos[1] = $pos[4] and $pos[2] = $pos[5]">x and y of first and last vertices must be the same</assert>
		</rule>
	</pattern>

</schema>
