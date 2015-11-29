<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="schematron_skeleton_for_hma.xsl"?>
<schema xmlns="http://www.ascc.net/xml/schematron" xmlns:phr="http://hma.cnes.fr/phr" xmlns:gml="http://www.opengis.net/gml" xmlns:hma="http://earth.esa.int/hma" xmlns:ohr="http://earth.esa.int/ohr">
	<title>Technical document schema</title>
	<key name="author-e-mails" match="author" use="@e-mail"/>
	<!-- ============================================================== -->
	<!--  gml:metaDataProperty :  -->
	<!--  	+ expected contents is hma:EarthObservationMetadata  -->
	<!-- ============================================================== -->
	<!--
	  ! if root is 'hma:EarthObservation' , content is always as expected in the hma level (i.e no extension is possible)
	  ! Since  'ohr:EarthObservation' does not extend metadataProperty, expected content is the same as with hma
	  ! Note : should be the same for other thematic schemas
	  !-->
	<pattern id="metaDataProperty_strict" name="metaDataProperty_strict">
		<rule context="(hma:EarthObservation/gml:metaDataProperty)|(ohr:EarthObservation/gml:metaDataProperty)|(sar:EarthObservation/gml:metaDataProperty)|(atm:EarthObservation/gml:metaDataProperty)">
			<assert test="hma:EarthObservationMetaData">gml:metaDataProperty : expected content is hma:EarthObservationMetadata for a hma:EarthObservation, ohr:EarthObservation, sar:EarthObservation or atm:EarthObservation</assert>
		</rule>
	</pattern>
	<!--
	  ! if root explicitaly refers to  'hma:EarthObservation' or one of the thematic root element, content can be as in the preceding rule or can be an
	  ! extension of hma:EarthObservationMetadata
	  !-->
	<pattern id="metaDataProperty_extended" name="metaDataProperty_extended">
		<rule context="*[@hma:type = 'hma:EarthObservation' or @hma:type = 'ohr:EarthObservation' or @hma:type = 'sar:EarthObservation' or @hma:type = 'atm:EarthObservation']/gml:metaDataProperty">
			<assert test="hma:EarthObservationMetaData|*[@hma:type= 'hma:EarthObservationMetaData']">gml:metaDataProperty : expected content is hma:EarthObservationMetadata or an extension (with appropriate attribute hma:type)</assert>
		</rule>
	</pattern>
	
	
	<!-- ============================================================== -->
	<!--  gml:using :  -->
	<!--  	+ expected contents is hma:EarthObservationEquipment. -->
	<!-- ============================================================== -->
	<pattern id="using" name="using">
		<rule context="gml:using">
			<assert test="hma:EarthObservationEquipment">gml:using : expected contents is hma:EarthObservationEquipment</assert>
		</rule>
	</pattern>

	
	<!-- ============================================================== -->
	<!--  hma:EarthObservationEquipment in ohr :  -->
	<!--  	+ expected contents of hma:acquisitionParameters is ohr:Acquisition. -->
	<!-- ============================================================== -->
	<pattern id="ohr_acquisition" name="ohr_acquisition">
		<rule context="ohr:EarthObservation/gml:using/hma:EarthObservationEquipment/hma:acquisitionParameters">
			<assert test="ohr:Acquisition">ohr:EarthObservationEquipment: expected of contents hma:acquisitionParameters is ohr:Acquisition</assert>
		</rule>
	</pattern>


	<!-- ============================================================== -->
	<!--  hma:EarthObservationEquipment in sar :  -->
	<!--  	+ expected contents of hma:acquisitionParameters is ohr:Acquisition. -->
	<!-- ============================================================== -->
	<pattern id="sar_acquisition" name="sar_acquisition">
		<rule context="sar:EarthObservation/gml:using/hma:EarthObservationEquipment/hma:acquisitionParameters">
			<assert test="sar:Acquisition">sar:EarthObservationEquipment: expected of contents hma:acquisitionParameters is sar:Acquisition</assert>
		</rule>
	</pattern>
	

	<!-- ============================================================== -->
	<!--  gml:resultOf :  -->
	<!--  	+ expected contents is hma:EarthObservationResult. -->
	<!-- ============================================================== -->
	<!--
	  ! 
	  !-->
	<pattern id="resultOf_strict" name="resultOf_strict">
		<rule context="hma:EarthObservation/gml:resultOf">
			<assert test="hma:EarthObservationResult">gml:resultOf : expected content is hma:EarthObservationResult for a hma:EarthObservation</assert>
		</rule>
	</pattern>
	<pattern id="resultOf_strict" name="resultOf_strict">
		<rule context="ohr:EarthObservation/gml:resultOf">
			<assert test="ohr:EarthObservationResult">gml:resultOf : expected content is ohr:EarthObservationResult for a ohr:EarthObservation</assert>
		</rule>
	</pattern>
	<!--
	  ! 
	  !-->
	<pattern id="resultOf_extended" name="resultOf_extended">
		<rule context="*[@hma:type = 'hma:EarthObservation']/gml:resultOf">
			<assert test="hma:EarthObservationResult|*[@hma:type= 'hma:EarthObservationResult']">gml:resultOf : expected content is hma:EarthObservationResult or an extension (with appropriate attribute hma:type)</assert>
		</rule>
	</pattern>
	<pattern id="resultOf_extended" name="resultOf_extended">
		<rule context="*[@hma:type = 'ohr:EarthObservation']/gml:resultOf">
			<assert test="ohr:EarthObservationResult|*[@hma:type= 'ohr:EarthObservationResult']">gml:resultOf : expected content is ohr:EarthObservationResult or an extension (with appropriate attribute hma:type)</assert>
		</rule>
	</pattern>
	<!-- ============================================================== -->
	<!--  gml:target :  -->
	<!--  	+ expected contents is hma:Footprint. -->
	<!-- ============================================================== -->
	<pattern id="target" name="target">
		<rule context="gml:target">
			<assert test="hma:Footprint">gml:target : expected contents is hma:Footprint</assert>
		</rule>
	</pattern>
	<!-- ============================================================== -->
	<!--  gml:validTime :  -->
	<!--  	+ expected contents is gml:TimePeriod/gml:beginPosition.   -->
	<!--  	                                      gml:TimePeriod/gml:endPosition.   -->
	<!-- ============================================================== -->
	<pattern id="validTime_beginPosition" name="validTime_beginPosition">
		<rule context="gml:validTime">
			<assert test="gml:TimePeriod/gml:beginPosition">gml:validTime : expected contents is gml:TimePeriod/gml:beginPostition</assert>
		</rule>
	</pattern>
	<pattern id="validTime_endPosition" name="validTime_endPosition">
		<rule context="gml:validTime">
			<assert test="gml:TimePeriod/gml:endPosition">gml:validTime : expected contents is gml:TimePeriod/gml:endPostition</assert>
		</rule>
	</pattern>
	<!-- ============================================================== -->
	<!--  Footprint gml:multiExtentOf :  -->
	<!--  	+ expected contents is gml:MultiSurface/gml:surfaceMembers/gml:Polygon/gml:exterior/gml:LinearRing/gml:posList. -->
	<!-- ============================================================== -->
	<pattern id="footprint_extentOf" name="footprint_extentOf">
		<rule context="gml:extentOf">
			<assert test="gml:MultiSurface/gml:surfaceMembers/gml:Polygon/gml:exterior/gml:LinearRing/gml:posList">gml:extentOf : expected contents is gml:Polygon/gml:exterior/gml:LinearRing/gml:posList</assert>
		</rule>
	</pattern>
	<!-- ============================================================== -->
	<!--  Footprint gml:centerOf :  -->
	<!--  	+ expected contents is gml:Point/gml:pos. -->
	<!-- ============================================================== -->
	<pattern id="footprint_centerOf" name="footprint_centerOf">
		<rule context="gml:centerOf">
			<assert test="gml:Point/gml:pos">gml:centerOf : expected contents is gml:Point/gml:pos</assert>
		</rule>
	</pattern>
</schema>
