<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="schematron_skeleton_for_eop.xsl"?>
<schema xmlns="http://www.ascc.net/xml/schematron" xmlns:phr="http://eop.cnes.fr/phr" xmlns:gml="http://www.opengis.net/gml" xmlns:eop="http://earth.esa.int/eop" xmlns:opt="http://earth.esa.int/opt">
	<title>Technical document schema</title>
	<key name="author-e-mails" match="author" use="@e-mail"/>
	<!-- ============================================================== -->
	<!--  gml:metaDataProperty :  -->
	<!--  	+ expected contents is eop:EarthObservationMetadata  -->
	<!-- ============================================================== -->
	<!--
	  ! if root is 'eop:EarthObservation' , content is always as expected in the eop level (i.e no extension is possible)
	  ! Since  'opt:EarthObservation' does not extend metadataProperty, expected content is the same as with eop
	  ! Note : should be the same for other thematic schemas
	  !-->
	<pattern id="metaDataProperty_strict" name="metaDataProperty_strict">
		<rule context="(eop:EarthObservation/gml:metaDataProperty)|(opt:EarthObservation/gml:metaDataProperty)|(sar:EarthObservation/gml:metaDataProperty)|(atm:EarthObservation/gml:metaDataProperty)">
			<assert test="eop:EarthObservationMetaData">gml:metaDataProperty : expected content is eop:EarthObservationMetadata for a eop:EarthObservation, opt:EarthObservation, sar:EarthObservation or atm:EarthObservation</assert>
		</rule>
	</pattern>
	<!--
	  ! if root explicitaly refers to  'eop:EarthObservation' or one of the thematic root element, content can be as in the preceding rule or can be an
	  ! extension of eop:EarthObservationMetadata
	  !-->
	<pattern id="metaDataProperty_extended" name="metaDataProperty_extended">
		<rule context="*[@eop:type = 'eop:EarthObservation' or @eop:type = 'opt:EarthObservation' or @eop:type = 'sar:EarthObservation' or @eop:type = 'atm:EarthObservation']/gml:metaDataProperty">
			<assert test="eop:EarthObservationMetaData|*[@eop:type= 'eop:EarthObservationMetaData']">gml:metaDataProperty : expected content is eop:EarthObservationMetadata or an extension (with appropriate attribute eop:type)</assert>
		</rule>
	</pattern>
	
	
	<!-- ============================================================== -->
	<!--  gml:using :  -->
	<!--  	+ expected contents is eop:EarthObservationEquipment. -->
	<!-- ============================================================== -->
	<pattern id="using" name="using">
		<rule context="gml:using">
			<assert test="eop:EarthObservationEquipment">gml:using : expected contents is eop:EarthObservationEquipment</assert>
		</rule>
	</pattern>

	
	<!-- ============================================================== -->
	<!--  eop:EarthObservationEquipment in opt :  -->
	<!--  	+ expected contents of eop:acquisitionParameters is opt:Acquisition. -->
	<!-- ============================================================== -->
	<pattern id="opt_acquisition" name="opt_acquisition">
		<rule context="opt:EarthObservation/gml:using/eop:EarthObservationEquipment/eop:acquisitionParameters">
			<assert test="opt:Acquisition">opt:EarthObservationEquipment: expected of contents eop:acquisitionParameters is opt:Acquisition</assert>
		</rule>
	</pattern>


	<!-- ============================================================== -->
	<!--  eop:EarthObservationEquipment in sar :  -->
	<!--  	+ expected contents of eop:acquisitionParameters is opt:Acquisition. -->
	<!-- ============================================================== -->
	<pattern id="sar_acquisition" name="sar_acquisition">
		<rule context="sar:EarthObservation/gml:using/eop:EarthObservationEquipment/eop:acquisitionParameters">
			<assert test="sar:Acquisition">sar:EarthObservationEquipment: expected of contents eop:acquisitionParameters is sar:Acquisition</assert>
		</rule>
	</pattern>
	

	<!-- ============================================================== -->
	<!--  gml:resultOf :  -->
	<!--  	+ expected contents is eop:EarthObservationResult. -->
	<!-- ============================================================== -->
	<!--
	  ! 
	  !-->
	<pattern id="resultOf_strict" name="resultOf_strict">
		<rule context="eop:EarthObservation/gml:resultOf">
			<assert test="eop:EarthObservationResult">gml:resultOf : expected content is eop:EarthObservationResult for a eop:EarthObservation</assert>
		</rule>
	</pattern>
	<pattern id="resultOf_strict" name="resultOf_strict">
		<rule context="opt:EarthObservation/gml:resultOf">
			<assert test="opt:EarthObservationResult">gml:resultOf : expected content is opt:EarthObservationResult for a opt:EarthObservation</assert>
		</rule>
	</pattern>
	<!--
	  ! 
	  !-->
	<pattern id="resultOf_extended" name="resultOf_extended">
		<rule context="*[@eop:type = 'eop:EarthObservation']/gml:resultOf">
			<assert test="eop:EarthObservationResult|*[@eop:type= 'eop:EarthObservationResult']">gml:resultOf : expected content is eop:EarthObservationResult or an extension (with appropriate attribute eop:type)</assert>
		</rule>
	</pattern>
	<pattern id="resultOf_extended" name="resultOf_extended">
		<rule context="*[@eop:type = 'opt:EarthObservation']/gml:resultOf">
			<assert test="opt:EarthObservationResult|*[@eop:type= 'opt:EarthObservationResult']">gml:resultOf : expected content is opt:EarthObservationResult or an extension (with appropriate attribute eop:type)</assert>
		</rule>
	</pattern>
	<!-- ============================================================== -->
	<!--  gml:target :  -->
	<!--  	+ expected contents is eop:Footprint. -->
	<!-- ============================================================== -->
	<pattern id="target" name="target">
		<rule context="gml:target">
			<assert test="eop:Footprint">gml:target : expected contents is eop:Footprint</assert>
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
