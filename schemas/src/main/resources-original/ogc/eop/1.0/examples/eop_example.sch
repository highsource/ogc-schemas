<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="schematron_skeleton_for_eop.xsl"?>
<schema xmlns="http://www.ascc.net/xml/schematron" xmlns:phr="http://eop.cnes.fr/phr" xmlns:gml="http://www.opengis.net/gml" xmlns:eop="http://earth.esa.int/eop" xmlns:opt="http://earth.esa.int/opt">
	<title>Technical document schema</title>
	<key name="author-e-mails" match="author" use="@e-mail"/>
	<phase id="full-check">
		<active pattern="metaDataProperty"/>
		<active pattern="validTime_beginPosition"/>
		<active pattern="validTime_endPosition"/>
		<active pattern="using"/>
		<active pattern="target"/>
		<active pattern="footprint_extentOf"/>
		<active pattern="footprint_centerOf"/>
		<active pattern="resultOf"/>
	</phase>

	<!-- ============================================================== -->
	<!--  gml:metaDataProperty :  -->
	<!--  	+ expected contents is eop:EarthObservationMetadata. -->
	<!-- ============================================================== -->
	<pattern id="metaDataProperty" name="metaDataProperty">
		<rule context="gml:metaDataProperty">
			<assert test="eop:EarthObservationMetaData"> ERROR ! gml:metaDataProperty : expected contents is eop:EarthObservationMetadata</assert>
		</rule>
	</pattern>

	<!-- ============================================================== -->
	<!--  gml:validTime :  -->
	<!--  	+ expected contents is gml:TimePeriod/gml:beginPosition.   -->
	<!--  	                                      gml:TimePeriod/gml:endPosition.   -->
	<!-- ============================================================== -->
	<pattern id="validTime_beginPosition" name="validTime_beginPosition">
		<rule context="gml:validTime">
			<assert test="gml:TimePeriod/gml:beginPosition"> ERROR ! gml:validTime : expected contents is gml:TimePeriod/gml:beginPostition</assert>
		</rule>
	</pattern>
	<pattern id="validTime_endPosition" name="validTime_endPosition">
		<rule context="gml:validTime">
			<assert test="gml:TimePeriod/gml:endPosition"> ERROR ! gml:validTime : expected contents is gml:TimePeriod/gml:endPostition</assert>
		</rule>
	</pattern>

	<!-- ============================================================== -->
	<!--  gml:using :  -->
	<!--  	+ expected contents is eop:EarthObservationEquipment. -->
	<!-- ============================================================== -->
	<pattern id="using" name="using">
		<rule context="gml:using">
			<assert test="eop:EarthObservationEquipment"> ERROR ! gml:using : expected contents is eop:EarthObservationEquipment</assert>
		</rule>
	</pattern>

	<!-- ============================================================== -->
	<!--  gml:target :  -->
	<!--  	+ expected contents is eop:Footprint. -->
	<!-- ============================================================== -->
	<pattern id="target" name="target">
		<rule context="gml:target">
			<assert test="eop:Footprint"> ERROR ! gml:target : expected contents is eop:Footprint</assert>
		</rule>
	</pattern>
		
	<!-- ============================================================== -->
	<!--  Footprint gml:extentOf :  -->
	<!--  	+ expected contents is gml:Polygon/gml:exterior/gml:LinearRing/gml:posList. -->
	<!-- ============================================================== -->
	<pattern id="footprint_extentOf" name="footprint_extentOf">
		<rule context="gml:extentOf">
			<assert test="gml:Polygon/gml:exterior/gml:LinearRing/gml:posList"> ERROR ! gml:extentOf : expected contents is gml:Polygon/gml:exterior/gml:LinearRing/gml:posList</assert>
		</rule>
	</pattern>
		
	<!-- ============================================================== -->
	<!--  Footprint gml:centerOf :  -->
	<!--  	+ expected contents is gml:Point/gml:pos. -->
	<!-- ============================================================== -->
	<pattern id="footprint_centerOf" name="footprint_centerOf">
		<rule context="gml:centerOf">
			<assert test="gml:Point/gml:pos"> ERROR ! gml:centerOf : expected contents is gml:Point/gml:pos</assert>
		</rule>
	</pattern>

	<!-- ============================================================== -->
	<!--  gml:resultOf :  -->
	<!--  	+ expected contents is eop:EarthObservationResult. -->
	<!-- ============================================================== -->
	<pattern id="resultOf" name="resultOf">
		<rule context="gml:resultOf">
			<assert test="eop:EarthObservationResult"> ERROR ! gml:resultOf : expected contents is eop:EarthObservationResult</assert>
		</rule>
	</pattern>



</schema>
