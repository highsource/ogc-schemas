<?xml version="1.0" encoding="UTF-8"?>
<schema fpi="http://schemas.opengis.net/waterml/2.0/interleaved_timeseries_observation.sch" see="http://www.opengis.net/spec/waterml/2.0/req/xsd-measurement-timeseries-tvp-observation"
  xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!--
      WaterML 2.0 Part 2 is an OGC Standard.
      Copyright (c) 2015 Open Geospatial Consortium.
      To obtain additional rights of use, visit http://www.opengeospatial.org/legal/ .
  -->
  <!--
        This Schematron schema checks that the type of the observation result correspongs to a Gauging Observation.  
    -->
  <title>OGC WaterML2.0 part 2 Gauging Observation Check</title>
  <p>Verifies that the OM_Observation result type is valid according to the WaterML2 part 2 Gauging Observation.</p>
  <ns prefix="wml2" uri="http://www.opengis.net/waterml/2.0"/>
  <ns prefix="rgs" uri="http://www.opengis.net/waterml/part2/1.0"/>
  <ns prefix="om" uri="http://www.opengis.net/om/2.0"/>
  <ns prefix="gml" uri="http://www.opengis.net/gml/3.2"/>
  <ns prefix="xlink" uri="http://www.w3.org/1999/xlink"/>

  <xsl:import-schema schema-location="./waterml2-part2.xsd"
    namespace="http://www.opengis.net/waterml/part2/1.0"/>
  
  <xsl:import-schema schema-location="http://schemas.opengis.net/waterml/2.0/waterml2.xsd"
    namespace="http://www.opengis.net/waterml/2.0"/>

  <pattern id="result">
    <title>Test requirement: </title>
    <rule context="//om:OM_Observation/om:result">
      <assert test="schema-element(rgs:Gauging)">result must contain an element in the substitution group headed by rgs:GaugingType</assert>
    </rule>
  </pattern>
  
  <pattern id="featureOfInterest">
    <title>Test requirement: </title>
    <rule context="//om:OM_Observation/om:featureOfInterest">
      <assert test="schema-element(wml2:MonitoringPoint) | @xlink:href">feature of interest must be a Monitoring Point, or an xlink reference to one.</assert>
    </rule>
  </pattern>
  
  <pattern id="process">
    <title>Test requirement: </title>
    <rule context="//om:OM_Observation/om:procedure">
      <assert test="schema-element(rgs:GaugingProcess) | @xlink:href">Observation process must be a Gauging Process, or a reference to one. </assert>
    </rule>
  </pattern>
  
</schema>
