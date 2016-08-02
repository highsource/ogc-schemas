<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="schematron_skeleton_for_eop.xsl"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:gml="http://www.opengis.net/gml/3.2" xmlns:eop="http://www.opengis.net/eop/2.1" xmlns:om="http://www.opengis.net/om/2.0" xmlns:opt="http://www.opengis.net/opt/2.1" xmlns:atm="http://www.opengis.net/atm/2.1" xmlns:sar="http://www.opengis.net/sar/2.1" xmlns:alt="http://www.opengis.net/alt/2.1" xmlns:lmb="http://www.opengis.net/lmb/2.1" xmlns:ssp="http://www.opengis.net/ssp/2.1">


	<ns prefix="eop" uri="http://www.opengis.net/eop/2.1"/>
	<ns prefix="sar" uri="http://www.opengis.net/sar/2.1"/>
	<ns prefix="opt" uri="http://www.opengis.net/opt/2.1"/>
	<ns prefix="alt" uri="http://www.opengis.net/alt/2.1"/>
	<ns prefix="atm" uri="http://www.opengis.net/atm/2.1"/>
	<ns prefix="lmb" uri="http://www.opengis.net/lmb/2.1"/>
	<ns prefix="ssp" uri="http://www.opengis.net/ssp/2.1"/>
	<ns prefix="om" uri="http://www.opengis.net/om/2.0"/>
	<ns prefix="gml" uri="http://www.opengis.net/gml/3.2"/>

	<!--
	Earth Observation Metadata profile of Observations and Measurements is an OGC Standard.
	Copyright (c) 2013 Open Geospatial Consortium. 
	To obtain additional rights of use, visit http://www.opengeospatial.org/legal/ .
	
	Version: 2.1.0
	-->
	<title>Technical document schema</title>
	<key name="author-e-mails" match="author" path="@e-mail"/>
	<!-- ============================================================== -->
	<!-- TEST: http://www.opengis.net/spec/EOMPOM/1.1/conf/earthobservation/metaDataProperty -->
	<!--  eop:metaDataProperty :  -->
	<!--  	+ expected contents is eop:EarthObservationMetadata or one of the thematic extensions (ssp or alt) corresponding to the producttype a or mission-specific extension with appropriate attribute eop:type-->
	<!-- ============================================================== -->
	
	<pattern id="metaDataProperty_strict" name="metaDataProperty_strict">
		<rule context="eop:EarthObservation/eop:metaDataProperty|opt:EarthObservation/eop:metaDataProperty|atm:EarthObservation/eop:metaDataProperty|lmb:EarthObservation/eop:metaDataProperty|sar:EarthObservation/eop:metaDataProperty">
			<assert test="eop:EarthObservationMetaData">eop:metaDataProperty : expected content is eop:EarthObservationMetadata for a eop:EarthObservation, opt:EarthObservation, atm:EarthObservation, sar:EarthObservation or lmb:EarthObservation</assert>
		</rule>
	</pattern>

	<pattern id="alt_metaDataProperty_strict" name="alt_metaDataProperty_strict">
		<rule context="alt:EarthObservation/eop:metaDataProperty">
			<assert test="eop:EarthObservationMetaData|alt:EarthObservationMetaData">alt:metaDataProperty : expected content is alt:EarthObservationMetadata or eop:EarthObservationMetaData for an alt:EarthObservation</assert>
		</rule>
	</pattern>

	<pattern id="ssp_metaDataProperty_strict" name="ssp_metaDataProperty_strict">
		<rule context="ssp:EarthObservation/eop:metaDataProperty">
			<assert test="eop:EarthObservationMetaData|ssp:EarthObservationMetaData">ssp:metaDataProperty : expected content is ssp:EarthObservationMetadata or or eop:EarthObservationMetaData for an ssp:EarthObservation</assert>
		</rule>
	</pattern>
	
	<!--
	  ! if root explicitly refers to  'eop:EarthObservation' or one of the thematic root elements using the eop:type attribute, content can be as in the preceding rule or can be an
	  ! extension of EarthObservationMetadata using the appropriate eop:type
	  !-->
	<pattern id="metaDataProperty_extended" name="metaDataProperty_extended">
		<rule context="*[@eop:type = 'eop:EarthObservation']/eop:metaDataProperty|*[@eop:type = 'opt:EarthObservation']/eop:metaDataProperty|*[@eop:type = 'atm:EarthObservation']/eop:metaDataProperty|*[@eop:type = 'lmb:EarthObservation']/eop:metaDataProperty|*[@eop:type = 'sar:EarthObservation']/eop:metaDataProperty">
			<assert test="eop:EarthObservationMetaData|*[@eop:type= 'eop:EarthObservationMetaData']">eop:metaDataProperty : expected content is eop:EarthObservationMetadata or an extension (with appropriate attribute eop:type) for a eop:EarthObservation, opt:EarthObservation, atm:EarthObservation, sar:EarthObservation or lmb:EarthObservation</assert>
		</rule>
	</pattern>

	<pattern id="alt_metaDataProperty_extended" name="alt_metaDataProperty_extended">
		<rule context="*[@eop:type = 'alt:EarthObservation']/eop:metaDataProperty">
			<assert test="eop:EarthObservationMetaData|*[@eop:type= 'eop:EarthObservationMetaData']|alt:EarthObservationMetaData|*[@eop:type= 'alt:EarthObservationMetaData']">eop:metaDataProperty : expected content is alt:EarthObservationMetadata or an extension (with appropriate attribute eop:type) for an alt:EarthObservation</assert>
		</rule>
	</pattern>
	
	<pattern id="ssp_metaDataProperty_extended" name="ssp_metaDataProperty_extended">
		<rule context="*[@eop:type = 'ssp:EarthObservation']/eop:metaDataProperty">
			<assert test="eop:EarthObservationMetaData|*[@eop:type= 'eop:EarthObservationMetaData']|ssp:EarthObservationMetaData|*[@eop:type= 'ssp:EarthObservationMetaData']">eop:metaDataProperty : expected content is ssp:EarthObservationMetadata or an extension (with appropriate attribute eop:type) for an ssp:EarthObservation</assert>
		</rule>
	</pattern>
	
	
	
	<!-- ============================================================== -->
	<!-- TEST http://www.opengis.net/spec/EOMPOM/1.1/conf/earthobservation/om_procedure  -->
	<!-- om:procedure :  -->
	<!--  	+ expected contents is an eop:EarthObservationEquipment element or an extension (alt, atm, lmb or ssp corresponding to the product type or mission-specific extension with appropriate attribute eop:type)-->
	<!-- ============================================================== -->
	<pattern id="using_strict" name="using_strict">
		<rule context="eop:EarthObservation/om:procedure|opt:EarthObservation/om:procedure|sar:EarthObservation/om:procedure">
			<assert test="eop:EarthObservationEquipment">om:procedure : expected contents is eop:EarthObservationEquipment for an eop:EarthObservation, opt:EarthObservation or sar:EarthObservation</assert>
		</rule>
	</pattern>
	<pattern id="ssp_using_strict" name="ssp_using_strict">
		<rule context="ssp:EarthObservation/om:procedure">
			<assert test="eop:EarthObservationEquipment|ssp:EarthObservationEquipment">om:procedure : expected contents is ssp:EarthObservationEquipment or eop:EarthObservationEquipment for an ssp:EarthObservation</assert>
		</rule>
	</pattern>
	<pattern id="lmb_using_strict" name="lmb_using_strict">
		<rule context="lmb:EarthObservation/om:procedure">
			<assert test="eop:EarthObservationEquipment|lmb:EarthObservationEquipment">om:procedure : expected contents is lmb:EarthObservationEquipment or eop:EarthObservationEquipment for an lmb:EarthObservation</assert>
		</rule>
	</pattern>
	<pattern id="atm_using_strict" name="atm_using_strict">
		<rule context="atm:EarthObservation/om:procedure">
			<assert test="eop:EarthObservationEquipment|atm:EarthObservationEquipment">om:procedure : expected contents is atm:EarthObservationEquipment or eop:EarthObservationEquipment for an atm:EarthObservation</assert>
		</rule>
	</pattern>
	<pattern id="alt_using_strict" name="alt_using_strict">
		<rule context="alt:EarthObservation/om:procedure">
			<assert test="eop:EarthObservationEquipment|alt:EarthObservationEquipment">om:procedure : expected contents is alt:EarthObservationEquipment or eop:EarthObservationEquipment for an alt:EarthObservation</assert>
		</rule>
	</pattern>

	<!--
	  ! if root explicitly refers to  'eop:EarthObservation' or one of the thematic root elements using the eop:type attribute, content can be as in the preceding rule or can be an
	  ! extension of eop:EarthObservationEquipment
	  !-->
	<pattern id="using_extended" name="using_extended">
		<rule context="*[@eop:type = 'eop:EarthObservation']/om:procedure|*[@eop:type = 'opt:EarthObservation']/om:procedure|	*[@eop:type = 'sar:EarthObservation']/om:procedure">
			<assert test="eop:EarthObservationEquipment|*[@eop:type= 'eop:EarthObservationEquipment']">om:procedure : expected contents is eop:EarthObservationEquipment or an extension (with appropriate attribute eop:type)</assert>
		</rule>
	</pattern>

	<pattern id="ssp_using_extended" name="ssp_using_extended">
		<rule context="*[@eop:type = 'ssp:EarthObservation']/om:procedure">
			<assert test="eop:EarthObservationEquipment|*[@eop:type= 'eop:EarthObservationEquipment']|ssp:EarthObservationEquipment|*[@eop:type= 'ssp:EarthObservationEquipment']">om:procedure : expected contents is ssp:EarthObservationEquipment or an extension (with appropriate attribute eop:type)</assert>
		</rule>
	</pattern>

	<pattern id="lmb_using_extended" name="lmb_using_extended">
		<rule context="*[@eop:type = 'lmb:EarthObservation']/om:procedure">
			<assert test="eop:EarthObservationEquipment|*[@eop:type= 'eop:EarthObservationEquipment']|lmb:EarthObservationEquipment|*[@eop:type= 'lmb:EarthObservationEquipment']">om:procedure : expected contents is lmb:EarthObservationEquipment or an extension (with appropriate attribute eop:type)</assert>
		</rule>
	</pattern>

	<pattern id="atm_using_extended" name="atm_using_extended">
		<rule context="*[@eop:type = 'atm:EarthObservation']/om:procedure">
			<assert test="eop:EarthObservationEquipment|*[@eop:type= 'eop:EarthObservationEquipment']|atm:EarthObservationEquipment|*[@eop:type= 'atm:EarthObservationEquipment']">om:procedure : expected contents is atm:EarthObservationEquipment or an extension (with appropriate attribute eop:type)</assert>
		</rule>
	</pattern>

	<pattern id="alt_using_extended" name="alt_using_extended">
		<rule context="*[@eop:type = 'alt:EarthObservation']/om:procedure">
			<assert test="eop:EarthObservationEquipment|*[@eop:type= 'eop:EarthObservationEquipment']|alt:EarthObservationEquipment|*[@eop:type= 'alt:EarthObservationEquipment']">om:procedure : expected contents is alt:EarthObservationEquipment or an extension (with appropriate attribute eop:type)</assert>
		</rule>
	</pattern>

	
	
	<!-- ============================================================== -->
	<!-- TEST http://www.opengis.net/spec/EOMPOM/1.1/conf/earthobservation/acquisitionParameters -->
	<!--  eop:EarthObservationEquipment in sar :  -->
	<!--  	+ expected contents of eop:acquisitionParameters is sar:Acquisition. -->
	<!-- ============================================================== -->
	<pattern id="eop_acquisition_strict" name="eop_acquisition_strict">
		<rule context="eop:EarthObservation/om:procedure/*/eop:acquisitionParameters|opt:EarthObservation/om:procedure/*/eop:acquisitionParameters|ssp:EarthObservation/om:procedure/*/eop:acquisitionParameters">
			<assert test="eop:Acquisition">eop:EarthObservationEquipment: expected contents of eop:acquisitionParameters is eop:Acquisition for an eop:EarthObservation, opt:EarthObservation or ssp:EarthObservation</assert>
		</rule>
	</pattern>
	<pattern id="sar_acquisition_strict" name="sar_acquisition_strict">
		<rule context="sar:EarthObservation/om:procedure/*/eop:acquisitionParameters">
			<assert test="eop:Acquisition|sar:Acquisition">sar:EarthObservationEquipment: expected contents of eop:acquisitionParameters is eop:Acquisition or sar:Acquisition for an sar:EarthObservation</assert>
		</rule>
	</pattern>
	<pattern id="alt_acquisition_strict" name="alt_acquisition_strict">
		<rule context="alt:EarthObservation/om:procedure/*/eop:acquisitionParameters">
			<assert test="eop:Acquisition|alt:Acquisition">alt:EarthObservationEquipment: expected of contents eop:acquisitionParameters is eop:Acquisition or alt:Acquisition for an alt:EarthObservation</assert>
		</rule>
	</pattern>
	<pattern id="atm_acquisition_strict" name="atm_acquisition_strict">
		<rule context="atm:EarthObservation/om:procedure/*/eop:acquisitionParameters">
			<assert test="eop:Acquisition|atm:Acquisition">atm:EarthObservationEquipment: expected of contents eop:acquisitionParameters is eop:Acquisition or  atm:Acquisition for an atm:EarthObservation</assert>
		</rule>
	</pattern>
	<pattern id="lmb_acquisition_strict" name="lmb_acquisition_strict">
		<rule context="lmb:EarthObservation/om:procedure/*/eop:acquisitionParameters">
			<assert test="eop:Acquisition|lmb:Acquisition">lmb:EarthObservationEquipment: expected of contents eop:acquisitionParameters is eop:Acquisition or  lmb:Acquisition for an lmb:EarthObservation</assert>
		</rule>
	</pattern>
	
		<pattern id="eop_acquisition_extended" name="eop_acquisition_extended">
		<rule context="eop:EarthObservation/om:procedure/*/eop:acquisitionParameters|opt:EarthObservation/om:procedure/*/eop:acquisitionParameters|ssp:EarthObservation/om:procedure/*/eop:acquisitionParameters|*[@eop:type='eop:EarthObservation']/om:procedure/*/eop:acquisitionParameters|*[@eop:type='opt:EarthObservation']/om:procedure/*/eop:acquisitionParameters|*[@eop:type='ssp:EarthObservation']/om:procedure/*/eop:acquisitionParameters">
			<assert test="eop:Acquisition|*[@eop:type= 'eop:Acquisition']">eop:EarthObservationEquipment: expected contents of eop:acquisitionParameters is eop:Acquisition or an extension (with appropriate attribute eop:type) for an eop:EarthObservation, opt:EarthObservation or ssp:EarthObservation</assert>
		</rule>
	</pattern>
	<pattern id="sar_acquisition_extended" name="sar_acquisition_extended">
		<rule context="*[@eop:type = 'sar:EarthObservation']/om:procedure/*/eop:acquisitionParameters">
			<assert test="eop:Acquisition|*[@eop:type= 'eop:Acquisition']|sar:Acquisition|*[@eop:type= 'sar:Acquisition']">sar:EarthObservationEquipment: expected contents of eop:acquisitionParameters is sar:Acquisition  or an extension (with appropriate attribute eop:type) for an sar:EarthObservation</assert>
		</rule>
	</pattern>
	
	<pattern id="alt_acquisition_extended" name="alt_acquisition_extended">
		<rule context="*[@eop:type = 'alt:EarthObservation']/om:procedure/*/eop:acquisitionParameters">
			<assert test="eop:Acquisition|*[@eop:type= 'eop:Acquisition']|alt:Acquisition|*[@eop:type= 'sar:Acquisition']">alt:EarthObservationEquipment: expected of contents eop:acquisitionParameters is alt:Acquisition  or an extension (with appropriate attribute eop:type) for an alt:EarthObservation</assert>
		</rule>
	</pattern>
	<pattern id="atm_acquisition_extended" name="atm_acquisition_extended">
		<rule context="*[@eop:type = 'atm:EarthObservation']/om:procedure/*/eop:acquisitionParameters">
			<assert test="eop:Acquisition|*[@eop:type= 'eop:Acquisition']|atm:Acquisition|*[@eop:type= 'atm:Acquisition']">atm:EarthObservationEquipment: expected of contents eop:acquisitionParameters is atm:Acquisition  or an extension (with appropriate attribute eop:type) for an atm:EarthObservation</assert>
		</rule>
	</pattern>
	<pattern id="lmb_acquisition_extended" name="lmb_acquisition_extended">
		<rule context="*[@eop:type = 'lmb:EarthObservation']/om:procedure/*/eop:acquisitionParameters">
			<assert test="eop:Acquisition|*[@eop:type= 'eop:Acquisition']|lmb:Acquisition|*[@eop:type= 'lmb:Acquisition']">lmb:EarthObservationEquipment: expected of contents eop:acquisitionParameters is lmb:Acquisition or an extension (with appropriate attribute eop:type)  for an lmb:EarthObservation</assert>
		</rule>
	</pattern>
	<!-- ============================================================== -->
	<!-- TEST http://www.opengis.net/spec/EOMPOM/1.1/conf/earthobservation/om_result -->
	<!--  om:result :  -->
	<!--  	+ expected contents is eop:EarthObservationResult. -->
	<!-- ============================================================== -->
	<!--
	  ! 
	  !-->
	<pattern id="result_strict" name="result_strict">
		<rule context="eop:EarthObservation/om:result|alt:EarthObservation/om:result|lmb:EarthObservation/om:result|sar:EarthObservation/om:result">
			<assert test="eop:EarthObservationResult">om:result : expected content is eop:EarthObservationResult for a eop:EarthObservation, alt:EarthObservation, lmb:EarthObservation or sar:EarthObservation</assert>
		</rule>
	</pattern>

	<pattern id="opt_result_strict" name="opt_result_strict">
		<rule context="opt:EarthObservation/om:result">
			<assert test="eop:EarthObservationResult|opt:EarthObservationResult">om:result : expected content is opt:EarthObservationResult or eop:EarthObservationResult for a opt:EarthObservation</assert>
		</rule>
	</pattern>

	<pattern id="atm_result_strict" name="atm_result_strict">
		<rule context="atm:EarthObservation/om:result">
			<assert test="eop:EarthObservationResult|atm:EarthObservationResult">om:result : expected content is atm:EarthObservationResult or eop:EarthObservationResult for a atm:EarthObservation</assert>
		</rule>
	</pattern>

	<pattern id="ssp_result_strict" name="ssp_result_strict">
		<rule context="ssp:EarthObservation/om:result">
			<assert test="eop:EarthObservationResult|ssp:EarthObservationResult">om:result : expected content is ssp:EarthObservationResult or eop:EarthObservationResult for a ssp:EarthObservation</assert>
		</rule>
	</pattern>
	
	<!--
	  ! 
	  !-->
	<pattern id="result_extended" name="result_extended">
		<rule context="*[@eop:type = 'eop:EarthObservation']/om:result|*[@eop:type = 'alt:EarthObservation']/om:result|*[@eop:type = 'lmb:EarthObservation']/om:result|*[@eop:type = 'sar:EarthObservation']/om:result">
			<assert test="eop:EarthObservationResult|*[@eop:type= 'eop:EarthObservationResult']">om:result : expected content is eop:EarthObservationResult or an extension (with appropriate attribute eop:type)</assert>
		</rule>
	</pattern>

	<pattern id="opt_result_extended" name="opt_result_extended">
		<rule context="*[@eop:type = 'opt:EarthObservation']/om:result">
			<assert test="eop:EarthObservationResult|*[@eop:type= 'eop:EarthObservationResult']|opt:EarthObservationResult|*[@eop:type= 'opt:EarthObservationResult']">om:result : expected content is opt:EarthObservationResult or an extension (with appropriate attribute eop:type)</assert>
		</rule>
	</pattern>

    <pattern id="atm_result_extended" name="atm_result_extended">
		<rule context="*[@eop:type = 'atm:EarthObservation']/om:result">
			<assert test="eop:EarthObservationResult|*[@eop:type= 'eop:EarthObservationResult']|atm:EarthObservationResult|*[@eop:type= 'atm:EarthObservationResult']">om:result : expected content is atm:EarthObservationResult or an extension (with appropriate attribute eop:type)</assert>
		</rule>
	</pattern>

    <pattern id="ssp_result_extended" name="ssp_result_extended">
		<rule context="*[@eop:type = 'ssp:EarthObservation']/om:result">
			<assert test="eop:EarthObservationResult|*[@eop:type= 'eop:EarthObservationResult']|ssp:EarthObservationResult|*[@eop:type= 'ssp:EarthObservationResult']">om:result : expected content is ssp:EarthObservationResult or an extension (with appropriate attribute eop:type)</assert>
		</rule>
	</pattern>
	
	<!-- ============================================================== -->
	<!-- TEST http://www.opengis.net/spec/EOMPOM/1.1/conf/earthobservation/om_featureOfInterest -->
	<!--  gml:target :  -->
	<!--  	+ expected contents is eop:Footprint. -->
	<!-- ============================================================== -->
	<pattern id="eop_featureOfInterest" name="eop_featureOfInterest">
		<rule context="eop:EarthObservation/om:featureOfInterest|atm:EarthObservation/om:featureOfInterest|opt:EarthObservation/om:featureOfInterest|sar:EarthObservation/om:featureOfInterest">
			<assert test="eop:Footprint">om:featureOfInterest : expected contents is eop:Footprint</assert>
		</rule>
	</pattern>
		<pattern id="alt_featureOfInterest" name="alt_featureOfInterest">
		<rule context="alt:EarthObservation/om:featureOfInterest">
			<assert test="alt:Footprint">om:featureOfInterest : expected contents is alt:Footprint</assert>
		</rule>
	</pattern>
    <pattern id="lmb_featureOfInterest" name="lmb_featureOfInterest">
		<rule context="lmb:EarthObservation/om:featureOfInterest">
			<assert test="lmb:Footprint">om:featureOfInterest : expected contents is lmb:Footprint</assert>
		</rule>
	</pattern>
	<pattern id="ssp_featureOfInterest" name="ssp_featureOfInterest">
		<rule context="ssp:EarthObservation/om:featureOfInterest">
			<assert test="ssp:Footprint">om:featureOfInterest : expected contents is ssp:Footprint</assert>
		</rule>
	</pattern>
	
	<!-- ============================================================== -->
	<!--  TEST: http://www.opengis.net/spec/EOMPOM/1.1/conf/earthobservation/om_phenomenonTime -->	
	<!--  om:phenomenonTime :  -->
	<!--  	+ expected contents is gml:TimePeriod/gml:beginPosition.   -->
	<!--  	                                      gml:TimePeriod/gml:endPosition.   -->
	<!-- ============================================================== -->
	<pattern id="validTime_beginPosition" name="validTime_beginPosition">
		<rule context="om:phenomenonTime">
			<assert test="gml:TimePeriod/gml:beginPosition">gml:validTime : expected contents is gml:TimePeriod/gml:beginPosition</assert>
		</rule>
	</pattern>
	<pattern id="validTime_endPosition" name="validTime_endPosition">
		<rule context="om:phenomenonTime">
			<assert test="gml:TimePeriod/gml:endPosition">gml:validTime : expected contents is gml:TimePeriod/gml:endPosition</assert>
		</rule>
	</pattern>
	
	<!-- ============================================================== -->
	<!--TEST http://www.opengis.net/spec/EOMPOM/1.1/conf/earthobservation/multiExtentOf-->
	<!--  Footprint eop:multiExtentOf :  -->
	<!--  	+ expected contents is gml:MultiSurface/gml:surfaceMembers/gml:Polygon/gml:exterior/gml:LinearRing/gml:posList. -->
	<!-- ============================================================== -->
	<pattern id="footprint_extentOf" name="footprint_extentOf">
		<rule context="eop:multiExtentOf">
			<assert test="gml:MultiSurface/gml:surfaceMembers/gml:Polygon/gml:exterior/gml:LinearRing/gml:posList">eop:multiExtentOf: expected contents is gml:Polygon/gml:exterior/gml:LinearRing/gml:posList</assert>
		</rule>
	</pattern>
	
	<!-- ============================================================== -->
	<!--TEST http://www.opengis.net/spec/EOMPOM/1.1/conf/earthobservation/centerOf-->
	<!--  Footprint eop:centerOf :  -->
	<!--  	+ expected contents is gml:Point/gml:pos. -->
	<!-- ============================================================== -->
	<pattern id="footprint_centerOf" name="footprint_centerOf">
		<rule context="eop:centerOf">
			<assert test="gml:Point/gml:pos">eop:centerOf : expected contents is gml:Point/gml:pos</assert>
		</rule>
	</pattern>
</schema>
