<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron">
  <!--
        OGC EO SPS 2.0 is an OGC Standard.
        Copyright (c) 2011 Open Geospatial Consortium.
        To obtain additional rights of use, visit http://www.opengeospatial.org/legal/ .
        
        version="2.0.0"
  -->
  <!-- -->
  <sch:title>Constraints for XML encoding of EO tasking parameters</sch:title>
  <!-- -->
  <sch:ns prefix="swe" uri="http://www.opengis.net/swe/2.0"/>
  <sch:ns prefix="sps" uri="http://www.opengis.net/sps/2.0"/>
  <sch:ns prefix="xlink" uri="http://www.w3.org/1999/xlink"/>
  <!-- -->
  <!--==============================-->
  <!--=== Base abstract patterns ===-->
  <!--==============================-->
  <!-- -->
  <sch:pattern id="SweParam" abstract="true">
    <sch:rule context="//*[@definition='$def']">
      <sch:report  test=".">
        Checking attributes of parameter <sch:value-of select="@definition"/>
      </sch:report>
      <sch:assert test="contains('$name', concat('/', concat(../@name, '/')))">
        The <sch:value-of select="../@name"/> parameter shall have the name attribute set to <sch:value-of select="substring('$name', 2, string-length('$name')-2)"/>
      </sch:assert>
      <sch:assert test="contains('$type', concat('/', concat(local-name(.), '/')))">
        The <sch:value-of select="../@name"/> parameter shall be of type <sch:value-of select="substring('$type', 2, string-length('$type')-2)"/>
      </sch:assert>
      <sch:assert test="('$parent_def' = 'none') or contains('$parent_def', concat('+', concat(../../@definition, '+')))">
        The <sch:value-of select="../@name"/> parameter shall only be used in the <sch:value-of select="substring('$parent_def', 2, string-length('$parent_def')-2)"/> parameter group
      </sch:assert>
    </sch:rule>
  </sch:pattern>
  <!-- -->
  <sch:pattern id="SweParamWithUom" abstract="true">
    <sch:rule context="//*[@definition='$def']">
      <sch:report test=".">
        Checking attributes of parameter <sch:value-of select="@definition"/>
      </sch:report>
      <sch:assert test="contains('$name', concat('/', concat(../@name, '/')))">
        The <sch:value-of select="../@name"/> parameter shall have the name attribute set to <sch:value-of select="substring('$name', 2, string-length('$name')-2)"/>
      </sch:assert>
      <sch:assert test="contains('$type', concat('/', concat(local-name(.), '/')))">
        The <sch:value-of select="../@name"/> parameter shall be of type <sch:value-of select="substring('$type', 2, string-length('$type')-2)"/>
      </sch:assert>
      <sch:assert test="('$parent_def' = 'none') or contains('$parent_def', concat('+', concat(../../@definition, '+')))">
        The <sch:value-of select="../@name"/> parameter shall only be used in the <sch:value-of select="substring('$parent_def', 2, string-length('$parent_def')-2)"/> parameter group
      </sch:assert>
      <sch:assert test="('$uom_code' = 'none') or (swe:uom/@code = '$uom_code')">
        The <sch:value-of select="../@name"/> parameter shall have the unit code <sch:value-of select="'$uom_code'"/>
      </sch:assert>
      <sch:assert test="('$uom_href' = 'none') or (swe:uom/@xlink:href = '$uom_href')">
        The <sch:value-of select="../@name"/> parameter shall have the unit <sch:value-of select="'$uom_href'"/>
      </sch:assert>
    </sch:rule>
  </sch:pattern>
  <!-- -->
  <sch:pattern id="SweParamWithCodespace" abstract="true">
    <sch:rule context="//*[@definition='$def']">
      <sch:report test=".">
        Checking attributes of parameter <sch:value-of select="@definition"/>
      </sch:report>
      <sch:assert test="contains('$name', concat('/', concat(../@name, '/')))">
        The <sch:value-of select="../@name"/> parameter shall have the name attribute set to <sch:value-of select="substring('$name', 2, string-length('$name')-2)"/>
      </sch:assert>
      <sch:assert test="contains('$type', concat('/', concat(local-name(.), '/')))">
        The <sch:value-of select="../@name"/> parameter shall be of type <sch:value-of select="substring('$type', 2, string-length('$type')-2)"/>
      </sch:assert>
      <sch:assert test="('$parent_def' = 'none') or contains('$parent_def', concat('+', concat(../../@definition, '+')))">
        The <sch:value-of select="../@name"/> parameter shall only be used in the <sch:value-of select="substring('$parent_def', 2, string-length('$parent_def')-2)"/> parameter group
      </sch:assert>
      <sch:assert test="starts-with(swe:codeSpace/@xlink:href, 'http://')">
        The <sch:value-of select="../@name"/> parameter shall have a codespace defined with an HTTP URI
      </sch:assert>
      <sch:assert test="('$code_space' = 'none') or (swe:codeSpace/@xlink:href = '$code_space')">
        The <sch:value-of select="../@name"/> parameter shall have the codespace <sch:value-of select="'$code_space'"/>
      </sch:assert>
    </sch:rule>
  </sch:pattern>
  <!--======================-->
  <!--=== All parameters ===-->
  <!--======================-->
  <sch:pattern id="DefinitionAttribute">
    <sch:rule context="//swe:Boolean | //swe:Text | //swe:Count[not(parent::swe:elementCount)] | //swe:CountRange | //swe:Quantity | //swe:QuantityRange |
                       //swe:Time | //swe:TimeRange | //swe:Category | //swe:DataRecord | //swe:DataChoice | //swe:DataArray">
      <sch:assert test="parent::swe:choiceValue or (@definition != '')">
        The <sch:value-of select="local-name(.)"/> data component shall have a definition attribute
      </sch:assert>
    </sch:rule>
  </sch:pattern>
  <!--======================-->
  <!--=== Root parameter ===-->
  <!--======================-->
  <sch:pattern id="Root">
    <sch:rule context="/sps:DescribeTaskingResponse/sps:taskingParameters">
      <sch:report test=".">
        Checking presence of valid root parameter: <sch:value-of select="*/@definition"/>
      </sch:report>
      <sch:assert test="(*/@definition = 'http://www.opengis.net/def/property/OGC-EO/0/CoverageProgrammingRequest') or 
                        (*/@definition = 'http://www.opengis.net/def/property/OGC-EO/0/SwathProgrammingRequest')">
        The root parameter shall be CoverageProgrammingRequest or SwathProgrammingRequest
      </sch:assert>
    </sch:rule>
  </sch:pattern>
  <!--==================================-->
  <!--=== CoverageProgrammingRequest ===-->
  <!--==================================-->
  <sch:pattern id="CoverageProgrammingRequest" is-a="SweParam">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/CoverageProgrammingRequest"/>
    <sch:param name="name" value="/CoverageProgrammingRequest/"/>
    <sch:param name="type" value="/DataRecord/"/>
    <sch:param name="parent_def" value="none"/>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//*[@definition='http://www.opengis.net/def/property/OGC-EO/0/CoverageProgrammingRequest']">
      <sch:report test=".">
        Checking structure of parameter <sch:value-of select="@definition"/>
      </sch:report>
      <sch:assert test="swe:field/*[@definition = 'http://www.opengis.net/def/property/OGC-EO/0/RegionOfInterest']">
        The parameter RegionOfInterest shall be present
      </sch:assert>
      <sch:assert test="swe:field/*[@definition = 'http://www.opengis.net/def/property/OGC-EO/0/TimeOfInterest']">
        The parameter TimeOfInterest shall be present
      </sch:assert>
    </sch:rule>
  </sch:pattern>
  <!--===============================-->
  <!--=== SwathProgrammingRequest ===-->
  <!--===============================-->
  <sch:pattern id="SwathProgrammingRequest" is-a="SweParam">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/SwathProgrammingRequest"/>
    <sch:param name="name" value="/SwathProgrammingRequest/"/>
    <sch:param name="type" value="/DataRecord/"/>
    <sch:param name="parent_def" value="none"/>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//*[@definition='http://www.opengis.net/def/property/OGC-EO/0/SwathProgrammingRequest']">
      <sch:report test=".">
        Checking structure of parameter <sch:value-of select="@definition"/>
      </sch:report>
      <sch:assert test="swe:field/swe:DataArray/swe:elementType/*[@definition = 'http://www.opengis.net/def/property/OGC-EO/0/SwathSegment']">
        The parameter SwathSegment shall be present
      </sch:assert>
    </sch:rule>
  </sch:pattern>
  <!--========================-->
  <!--=== QualityOfService ===-->
  <!--========================-->
  <sch:pattern id="QualityOfService" is-a="SweParam">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/QualityOfService"/>
    <sch:param name="name" value="/QualityOfService/"/>
    <sch:param name="type" value="/DataRecord/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/CoverageProgrammingRequest+http://www.opengis.net/def/property/OGC-EO/0/SwathProgrammingRequest+"/>
  </sch:pattern>
  <!--=====================-->
  <!--=== PriorityLevel ===-->
  <!--=====================-->
  <sch:pattern id="PriorityLevel" is-a="SweParam">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/PriorityLevel"/>
    <sch:param name="name" value="/PriorityLevel/"/>
    <sch:param name="type" value="/Category/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/QualityOfService+"/>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//*[@definition='http://www.opengis.net/def/property/OGC-EO/0/PriorityLevel']">
      <sch:report test=".">
        Checking enumeration of parameter <sch:value-of select="@definition"/>
      </sch:report>
      <sch:assert test="swe:constraint/swe:AllowedTokens/swe:value = 'STANDARD'">
        The value 'STANDARD' shall be a possible choice for the PriorityLevel parameter
      </sch:assert>
      <sch:assert test="swe:constraint/swe:AllowedTokens/swe:value = 'HIGH'">
        The value 'HIGH' shall be a possible choice for the PriorityLevel parameter
      </sch:assert>
    </sch:rule>
  </sch:pattern>
  <!--====================-->
  <!--=== SwathSegment ===-->
  <!--====================-->
  <sch:pattern id="SwathSegment" is-a="SweParam">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/SwathSegment"/>
    <sch:param name="name" value="/SwathSegment/"/>
    <sch:param name="type" value="/DataRecord/"/>
    <sch:param name="parent_def" value="none"/>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//*[@definition='http://www.opengis.net/def/property/OGC-EO/0/SwathSegment']">
      <sch:report test=".">
        Checking structure of parameter <sch:value-of select="@definition"/>
      </sch:report>
      <sch:assert test="swe:field/*[@definition = 'http://www.opengis.net/def/property/OGC-EO/0/StartOrbit']">
        The parameter SwathSegment/StartOrbit shall be present
      </sch:assert>
      <sch:assert test="swe:field/*[@definition = 'http://www.opengis.net/def/property/OGC-EO/0/StartFrame']">
        The parameter SwathSegment/StartFrame shall be present
      </sch:assert>
      <sch:assert test="swe:field/*[@definition = 'http://www.opengis.net/def/property/OGC-EO/0/StopOrbit']">
        The parameter SwathSegment/StopOrbit shall be present
      </sch:assert>
      <sch:assert test="swe:field/*[@definition = 'http://www.opengis.net/def/property/OGC-EO/0/StopFrame']">
        The parameter SwathSegment/StopFrame shall be present
      </sch:assert>
    </sch:rule>
  </sch:pattern>
  <!--=============-->
  <!--=== Cycle ===-->
  <!--=============-->
  <sch:pattern id="Cycle" is-a="SweParam">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/Cycle"/>
    <sch:param name="name" value="/Cycle/"/>
    <sch:param name="type" value="/Count/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/SwathSegment+"/>
  </sch:pattern>
  <!--=============-->
  <!--=== Track ===-->
  <!--=============-->
  <sch:pattern id="Track" is-a="SweParam">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/Track"/>
    <sch:param name="name" value="/Track/"/>
    <sch:param name="type" value="/Count/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/SwathSegment+"/>
  </sch:pattern>
  <!--==================-->
  <!--=== StartOrbit ===-->
  <!--==================-->
  <sch:pattern id="StartOrbit" is-a="SweParam">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/StartOrbit"/>
    <sch:param name="name" value="/StartOrbit/"/>
    <sch:param name="type" value="/Count/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/SwathSegment+"/>
  </sch:pattern>
  <!--==================-->
  <!--=== StartFrame ===-->
  <!--==================-->
  <sch:pattern id="StartFrame" is-a="SweParam">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/StartFrame"/>
    <sch:param name="name" value="/StartFrame/"/>
    <sch:param name="type" value="/Count/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/SwathSegment+"/>
  </sch:pattern>
  <!--==================-->
  <!--=== StopOrbit ===-->
  <!--==================-->
  <sch:pattern id="StopOrbit" is-a="SweParam">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/StopOrbit"/>
    <sch:param name="name" value="/StopOrbit/"/>
    <sch:param name="type" value="/Count/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/SwathSegment+"/>
  </sch:pattern>
  <!--=================-->
  <!--=== StopFrame ===-->
  <!--=================-->
  <sch:pattern id="StopFrame" is-a="SweParam">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/StopFrame"/>
    <sch:param name="name" value="/StopFrame/"/>
    <sch:param name="type" value="/Count/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/SwathSegment+"/>
  </sch:pattern>
  <!--========================-->
  <!--=== RegionOfInterest ===-->
  <!--========================-->
  <sch:pattern id="RegionOfInterest" is-a="SweParam">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/RegionOfInterest"/>
    <sch:param name="name" value="/RegionOfInterest/"/>
    <sch:param name="type" value="/DataChoice/DataRecord/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/CoverageProgrammingRequest+"/>
  </sch:pattern>
  <sch:pattern id="RegionOfInterest_Choice">
    <sch:rule context="//swe:DataChoice[@definition='http://www.opengis.net/def/property/OGC-EO/0/RegionOfInterest']">
      <sch:report test=".">
        Checking structure of parameter <sch:value-of select="@definition"/>
      </sch:report>
      <sch:assert test="swe:item/*[@definition='http://www.opengis.net/def/objectType/ISO-19107/2003/GM_Polygon'] and 
                        swe:item/*[@definition='http://www.opengis.net/def/objectType/ISO-19107/2003/GM_Circle']">
        The RegionOfInterest DataChoice shall be a choice of GM_Polygon and GM_Circle parameters
      </sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="RegionOfInterest_Single">
    <sch:rule context="//swe:DataRecord[@definition='http://www.opengis.net/def/property/OGC-EO/0/RegionOfInterest']">
      <sch:report test=".">
        Checking structure of parameter <sch:value-of select="@definition"/>
      </sch:report>
      <sch:assert test="count(swe:field) = 1">
        The RegionOfInterest DataRecord shall contain a single entry
      </sch:assert>
      <sch:assert test="swe:field/*[@definition='http://www.opengis.net/def/objectType/ISO-19107/2003/GM_Polygon'] |
                        swe:field/*[@definition='http://www.opengis.net/def/objectType/ISO-19107/2003/GM_Circle']">
        The RegionOfInterest DataRecord shall contain a GM_Polygon or GM_Circle parameters
      </sch:assert>
    </sch:rule>
  </sch:pattern>
  <!--==================-->
  <!--=== GM_Polygon ===-->
  <!--==================-->
  <sch:pattern id="Polygon" is-a="SweParam">
    <sch:param name="def" value="http://www.opengis.net/def/objectType/ISO-19107/2003/GM_Polygon"/>
    <sch:param name="name" value="/Polygon/"/>
    <sch:param name="type" value="/DataRecord/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/RegionOfInterest+"/>
  </sch:pattern>
  <sch:pattern id="Polygon_Structure">
    <sch:rule context="//swe:DataRecord[@definition='http://www.opengis.net/def/objectType/ISO-19107/2003/GM_Polygon']">
      <sch:report test=".">
        Checking structure of parameter <sch:value-of select="@definition"/>
      </sch:report>
      <sch:assert test="(count(swe:field) = 1) and (swe:field[1]/@name = 'Exterior')">
        The Polygon shall contain an exterior only as its first field
      </sch:assert>
      <sch:assert test="swe:field[1]/swe:DataArray[@definition = 'http://www.opengis.net/def/objectType/ISO-19107/2003/GM_Ring']">
        The exterior field shall contain a LinearRing
      </sch:assert>
    </sch:rule>
  </sch:pattern>
  <!--===============-->
  <!--=== GM_Ring ===-->
  <!--===============-->
  <sch:pattern id="LinearRing_Structure">
    <sch:rule context="//swe:DataArray[@definition='http://www.opengis.net/def/objectType/ISO-19107/2003/GM_Ring']">
      <sch:report test=".">
        Checking structure of parameter <sch:value-of select="@definition"/>
      </sch:report>
      <sch:assert test="swe:elementType/@name = 'Point'">
        The elementType of the Ring DataArray shall be named Point
      </sch:assert>
      <sch:assert test="swe:elementType/swe:Vector[@referenceFrame='http://www.opengis.net/def/crs/EPSG/0/4326']">
        The elementType of the Ring DataArray shall be a Vector expressed in the 4326 (lat,lon) reference system
      </sch:assert>
    </sch:rule>
  </sch:pattern>  
  <!--=================-->
  <!--=== GM_Circle ===-->
  <!--=================-->
  <sch:pattern id="Circle" is-a="SweParam">
    <sch:param name="def" value="http://www.opengis.net/def/objectType/ISO-19107/2003/GM_Circle"/>
    <sch:param name="name" value="/Circle/"/>
    <sch:param name="type" value="/DataRecord/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/RegionOfInterest+"/>
  </sch:pattern>
  <sch:pattern id="Circle_Structure">
    <sch:rule context="//swe:DataRecord[@definition='http://www.opengis.net/def/objectType/ISO-19107/2003/GM_Circle']">
      <sch:report test=".">
        Checking structure of parameter <sch:value-of select="@definition"/>
      </sch:report>
      <sch:assert test="swe:field[1]/@name = 'Center'">
        The first field of the Circle parameter shall be Center
      </sch:assert>
      <sch:assert test="swe:field[1]/swe:Vector[@referenceFrame='http://www.opengis.net/def/crs/EPSG/0/4326']">
        The Center field of the Circle shall be a vector expressed in the 4326 (lat,lon) reference system
      </sch:assert>
      <sch:assert test="swe:field[2]/swe:Quantity[@definition='http://www.opengis.net/def/property/OGC-EO/0/Radius']">
        The second field of the Circle parameter shall be Radius
      </sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="Radius" is-a="SweParamWithUom">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/Radius"/>
    <sch:param name="name" value="/Radius/"/>
    <sch:param name="type" value="/Quantity/"/>
    <sch:param name="uom_code" value="km"/>
    <sch:param name="uom_href" value="none"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/objectType/ISO-19107/2003/GM_Circle+"/>
  </sch:pattern>
  <!--====================-->
  <!--=== 4326 Vectors ===-->
  <!--====================-->
  <sch:pattern id="Vector_Structure">
    <sch:rule context="//swe:Vector[@referenceFrame='http://www.opengis.net/def/crs/EPSG/0/4326']">
      <sch:report test=".">
        Checking structure of vector <sch:value-of select="../@name"/>
      </sch:report>
      <sch:assert test="swe:coordinate[1]/swe:Quantity[@definition = 'http://www.opengis.net/def/property/OGC/0/GeodeticLatitude']">
        The first component of a vector should be GeodeticLatitude
      </sch:assert>
      <sch:assert test="swe:coordinate[1]/swe:Quantity[@axisID = 'Lat']">
        The first component of a vector should have have an axisID attribute with value 'Lat'
      </sch:assert>
      <sch:assert test="swe:coordinate[2]/swe:Quantity[@definition = 'http://www.opengis.net/def/property/OGC/0/Longitude']">
        The second component of a vector should be Longitude
      </sch:assert>
      <sch:assert test="swe:coordinate[2]/swe:Quantity[@axisID = 'Long']">
        The second component of a vector should have have an axisID attribute with value 'Long'
      </sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern id="Latitude" is-a="SweParamWithUom">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC/0/GeodeticLatitude"/>
    <sch:param name="name" value="/Lat/"/>
    <sch:param name="type" value="/Quantity/"/>
    <sch:param name="uom_code" value="deg"/>
    <sch:param name="uom_href" value="none"/>
    <sch:param name="parent_def" value="none"/>
  </sch:pattern>
  <sch:pattern id="Longitude" is-a="SweParamWithUom">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC/0/Longitude"/>
    <sch:param name="name" value="/Lon/"/>
    <sch:param name="type" value="/Quantity/"/>
    <sch:param name="uom_code" value="deg"/>
    <sch:param name="uom_href" value="none"/>
    <sch:param name="parent_def" value="none"/>
  </sch:pattern>
  <!--======================-->
  <!--=== TimeOfInterest ===-->
  <!--======================-->
  <sch:pattern id="TimeOfInterest" is-a="SweParam">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/TimeOfInterest"/>
    <sch:param name="name" value="/TimeOfInterest/"/>
    <sch:param name="type" value="/DataChoice/DataRecord/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/CoverageProgrammingRequest+http://www.opengis.net/def/property/OGC-EO/0/SwathProgrammingRequest+"/>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//swe:DataChoice[@definition='http://www.opengis.net/def/property/OGC-EO/0/TimeOfInterest']">
      <sch:report test=".">
        Checking structure of parameter <sch:value-of select="@definition"/>
      </sch:report>
      <sch:assert test="swe:item/*[@definition='http://www.opengis.net/def/property/OGC-EO/0/SurveyPeriod'] and 
                        swe:item/*[@definition='http://www.opengis.net/def/property/OGC-EO/0/TimeSeries']">
        The TimeOfInterest DataChoice shall be a choice of SurveyPeriod and TimeSeries parameters
      </sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//swe:DataRecord[@definition='http://www.opengis.net/def/property/OGC-EO/0/TimeOfInterest']">
      <sch:report test=".">
        Checking structure of parameter <sch:value-of select="@definition"/>
      </sch:report>
      <sch:assert test="count(swe:field) = 1">
        The TimeOfInterest DataRecord shall contain a single entry
      </sch:assert>
      <sch:assert test="swe:field[1]/*[@definition='http://www.opengis.net/def/property/OGC-EO/0/SurveyPeriod']">
        The TimeOfInterest DataRecord shall contain a SurveyPeriod parameter
      </sch:assert>
    </sch:rule>
  </sch:pattern>
  <!--==================-->
  <!--=== TimeSeries ===-->
  <!--==================-->
  <sch:pattern id="TimeSeries" is-a="SweParam">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/TimeSeries"/>
    <sch:param name="name" value="/TimeSeries/"/>
    <sch:param name="type" value="/DataRecord/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/TimeOfInterest+"/>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//*[@definition='http://www.opengis.net/def/property/OGC-EO/0/TimeSeries']">
      <sch:report test=".">
        Checking structure of parameter <sch:value-of select="@definition"/>
      </sch:report>
      <sch:assert test="swe:field/*[@definition = 'http://www.opengis.net/def/property/OGC-EO/0/SurveyPeriod']">
        The parameter TimeSeries/SurveyPeriod shall be present
      </sch:assert>
      <sch:assert test="swe:field/*[@definition = 'http://www.opengis.net/def/property/OGC-EO/0/Occurences']">
        The parameter TimeSeries/Occurences shall be present
      </sch:assert>
      <sch:assert test="swe:field/*[@definition = 'http://www.opengis.net/def/property/OGC-EO/0/PeriodicityRange']">
        The parameter TimeSeries/Occurences shall be present
      </sch:assert>
    </sch:rule>
  </sch:pattern>
  <!--====================-->
  <!--=== SurveyPeriod ===-->
  <!--====================-->
  <sch:pattern id="SurveyPeriod" is-a="SweParamWithUom">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/SurveyPeriod"/>
    <sch:param name="name" value="/SurveyPeriod/"/>
    <sch:param name="type" value="/TimeRange/"/>
    <sch:param name="uom_code" value="none"/>
    <sch:param name="uom_href" value="http://www.opengis.net/def/uom/ISO-8601/0/Gregorian"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/TimeOfInterest+http://www.opengis.net/def/property/OGC-EO/0/TimeSeries+"/>
  </sch:pattern>
  <!--==================-->
  <!--=== Occurences ===-->
  <!--==================-->
  <sch:pattern id="Occurences" is-a="SweParam">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/Occurences"/>
    <sch:param name="name" value="/Occurences/"/>
    <sch:param name="type" value="/Count/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/TimeSeries+"/>
  </sch:pattern>
  <!--========================-->
  <!--=== PeriodicityRange ===-->
  <!--========================-->
  <sch:pattern id="PeriodicityRange" is-a="SweParamWithUom">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/PeriodicityRange"/>
    <sch:param name="name" value="/PeriodicityRange/"/>
    <sch:param name="type" value="/QuantityRange/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/TimeSeries+"/>
    <sch:param name="uom_code" value="d"/>
    <sch:param name="uom_href" value="none"/>
  </sch:pattern>
  <!--===================-->
  <!--=== LatestStart ===-->
  <!--===================-->
  <sch:pattern id="LatestStart" is-a="SweParamWithUom">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/LatestStart"/>
    <sch:param name="name" value="/LatestStart/"/>
    <sch:param name="type" value="/Time/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/TimeSeries+"/>
    <sch:param name="uom_code" value="none"/>
    <sch:param name="uom_href" value="http://www.opengis.net/def/uom/ISO-8601/0/Gregorian"/>
  </sch:pattern>
  <!--=======================-->
  <!--=== AcquisitionType ===-->
  <!--=======================-->
  <sch:pattern id="AcquisitionType" is-a="SweParam">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/AcquisitionType"/>
    <sch:param name="name" value="/AcquisitionType/"/>
    <sch:param name="type" value="/DataChoice/DataRecord/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/CoverageProgrammingRequest+"/>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//swe:DataChoice[@definition='http://www.opengis.net/def/property/OGC-EO/0/AcquisitionType']">
      <sch:report test=".">
        Checking structure of parameter <sch:value-of select="@definition"/>
      </sch:report>
      <sch:assert test="swe:item/*[@definition='http://www.opengis.net/def/property/OGC-EO/0/MonoscopicAcquisition'] or 
        swe:item/*[@definition='http://www.opengis.net/def/property/OGC-EO/0/StereoscopicAcquisition']">
        The AcquisitionType DataChoice shall be a choice of MonoscopicAcquisition or StereoscopicAcquisition parameter groups
      </sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//swe:DataRecord[@definition='http://www.opengis.net/def/property/OGC-EO/0/AcquisitionType']">
      <sch:report test=".">
        Checking structure of parameter <sch:value-of select="@definition"/>
      </sch:report>
      <sch:assert test="count(swe:field) = 1">
        The AcquisitionType DataRecord shall contain a single entry
      </sch:assert>
      <sch:assert test="swe:field[1]/*[@definition='http://www.opengis.net/def/property/OGC-EO/0/MonoscopicAcquisition'] or 
                        swe:field[1]/*[@definition='http://www.opengis.net/def/property/OGC-EO/0/StereoscopicAcquisition']">
        The AcquisitionType DataRecord shall contain a MonoscopicAcquisition or StereoscopicAcquisition parameter group
      </sch:assert>
    </sch:rule>
  </sch:pattern>
  <!--=============================-->
  <!--=== MonoscopicAcquisition ===-->
  <!--=============================-->
  <sch:pattern id="MonoscopicAcquisition" is-a="SweParam">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/MonoscopicAcquisition"/>
    <sch:param name="name" value="/MonoscopicAcquisition/"/>
    <sch:param name="type" value="/DataRecord/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/AcquisitionType+"/>
  </sch:pattern>
  <!--===============================-->
  <!--=== StereoscopicAcquisition ===-->
  <!--===============================-->
  <sch:pattern id="StereoscopicAcquisition" is-a="SweParam">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/StereoscopicAcquisition"/>
    <sch:param name="name" value="/StereoscopicAcquisition/"/>
    <sch:param name="type" value="/DataRecord/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/AcquisitionType+"/>
  </sch:pattern>
  <!--====================-->
  <!--=== CoverageType ===-->
  <!--====================-->
  <sch:pattern id="CoverageType" is-a="SweParamWithCodespace">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/CoverageType"/>
    <sch:param name="name" value="/CoverageType/"/>
    <sch:param name="type" value="/Category/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/MonoscopicAcquisition+http://www.opengis.net/def/property/OGC-EO/0/StereoscopicAcquisition+"/>
    <sch:param name="code_space" value="http://www.opengis.net/def/property/OGC-EO/0/CoverageTypes"/>
  </sch:pattern>
  <!--======================-->
  <!--=== IncidenceRange ===-->
  <!--======================-->
  <sch:pattern id="IncidenceRange" is-a="SweParam">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/IncidenceRange"/>
    <sch:param name="name" value="/AcquisitionAngle/AcquisitionAngle1/AcquisitionAngle2/"/>
    <sch:param name="type" value="/DataRecord/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/MonoscopicAcquisition+http://www.opengis.net/def/property/OGC-EO/0/StereoscopicAcquisition+"/>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//*[@definition='http://www.opengis.net/def/property/OGC-EO/0/IncidenceRange']">
      <sch:report test=".">
        Checking structure of parameter <sch:value-of select="@definition"/>
      </sch:report>
      <sch:assert test="swe:field/*[@definition = 'http://www.opengis.net/def/property/OGC-EO/0/ElevationAngle']">
        The parameter IncidenceRange/ElevationAngle shall be present
      </sch:assert>
      <sch:assert test="(count(swe:field) = 1) or (swe:field/*[@definition = 'http://www.opengis.net/def/property/OGC-EO/0/AzimuthAngle'])">
        The parameter IncidenceRange/AzimuthAngle shall be present
      </sch:assert>
    </sch:rule>
  </sch:pattern>
  <!--====================-->
  <!--=== AzimuthAngle ===-->
  <!--====================-->
  <sch:pattern id="AzimuthAngle" is-a="SweParamWithUom">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/AzimuthAngle"/>
    <sch:param name="name" value="/AzimuthAngle/"/>
    <sch:param name="type" value="/QuantityRange/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/IncidenceRange+"/>
    <sch:param name="uom_code" value="deg"/>
    <sch:param name="uom_href" value="none"/>
  </sch:pattern>
  <!--======================-->
  <!--=== ElevationAngle ===-->
  <!--======================-->
  <sch:pattern id="ElevationAngle" is-a="SweParamWithUom">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/ElevationAngle"/>
    <sch:param name="name" value="/ElevationAngle/"/>
    <sch:param name="type" value="/QuantityRange/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/IncidenceRange+"/>
    <sch:param name="uom_code" value="deg"/>
    <sch:param name="uom_href" value="none"/>
  </sch:pattern>
  <!--======================-->
  <!--=== PointingRange ===-->
  <!--======================-->
  <sch:pattern id="PointingRange" is-a="SweParam">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/PointingRange"/>
    <sch:param name="name" value="/AcquisitionAngle/AcquisitionAngle1/AcquisitionAngle2/"/>
    <sch:param name="type" value="/DataRecord/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/MonoscopicAcquisition+http://www.opengis.net/def/property/OGC-EO/0/StereoscopicAcquisition+"/>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Checking</sch:title>
    <sch:rule context="//*[@definition='http://www.opengis.net/def/property/OGC-EO/0/PointingRange']">
      <sch:report test=".">
        Checking structure of parameter <sch:value-of select="@definition"/>
      </sch:report>
      <sch:assert test="swe:field/*[@definition = 'http://www.opengis.net/def/property/OGC-EO/0/AcrossTrackAngle']">
        The parameter PointingRange/AcrossTrackAngle shall be present
      </sch:assert>
      <sch:assert test="(count(swe:field) = 1) or (swe:field/*[@definition = 'http://www.opengis.net/def/property/OGC-EO/0/AlongTrackAngle'])">
        The parameter PointingRange/AlongTrackAngle shall be present
      </sch:assert>
    </sch:rule>
  </sch:pattern>
  <!--=======================-->
  <!--=== AlongTrackAngle ===-->
  <!--=======================-->
  <sch:pattern id="AlongTrackAngle" is-a="SweParamWithUom">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/AlongTrackAngle"/>
    <sch:param name="name" value="/AlongTrackAngle/"/>
    <sch:param name="type" value="/QuantityRange/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/PointingRange+"/>
    <sch:param name="uom_code" value="deg"/>
    <sch:param name="uom_href" value="none"/>
  </sch:pattern>
  <!--========================-->
  <!--=== AcrossTrackAngle ===-->
  <!--========================-->
  <sch:pattern id="AcrossTrackAngle" is-a="SweParamWithUom">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/AcrossTrackAngle"/>
    <sch:param name="name" value="/AcrossTrackAngle/"/>
    <sch:param name="type" value="/QuantityRange/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/PointingRange+"/>
    <sch:param name="uom_code" value="deg"/>
    <sch:param name="uom_href" value="none"/>
  </sch:pattern>
  <!--===============-->
  <!--=== BHRatio ===-->
  <!--===============-->
  <sch:pattern id="BHRatio" is-a="SweParamWithUom">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/BHRatio"/>
    <sch:param name="name" value="/BHRatio/"/>
    <sch:param name="type" value="/Quantity/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/StereoscopicAcquisition+"/>
    <sch:param name="uom_code" value="1"/>
    <sch:param name="uom_href" value="none"/>
  </sch:pattern>
  <!--======================-->
  <!--=== MaxCoupleDelay ===-->
  <!--======================-->
  <sch:pattern id="MaxCoupleDelay" is-a="SweParamWithUom">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/MaxCoupleDelay"/>
    <sch:param name="name" value="/MaxCoupleDelay/"/>
    <sch:param name="type" value="/Quantity/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/StereoscopicAcquisition+"/>
    <sch:param name="uom_code" value="d"/>
    <sch:param name="uom_href" value="none"/>
  </sch:pattern>
  <!--========================-->
  <!--=== GroundResolution ===-->
  <!--========================-->
  <sch:pattern id="GroundResolution" is-a="SweParamWithUom">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/GroundResolution"/>
    <sch:param name="name" value="/GroundResolution/"/>
    <sch:param name="type" value="/QuantityRange/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/opt/AcquisitionParametersOPT+http://www.opengis.net/def/property/OGC-EO/0/sar/AcquisitionParametersSAR+"/>
    <sch:param name="uom_code" value="m"/>
    <sch:param name="uom_href" value="none"/>
  </sch:pattern>
  <!--======================-->
  <!--=== FusionAccepted ===-->
  <!--======================-->
  <sch:pattern id="FusionAccepted" is-a="SweParam">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/FusionAccepted"/>
    <sch:param name="name" value="/FusionAccepted/"/>
    <sch:param name="type" value="/Boolean/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/opt/AcquisitionParametersOPT+http://www.opengis.net/def/property/OGC-EO/0/sar/AcquisitionParametersSAR+"/>
  </sch:pattern>
  <!--======================-->
  <!--=== InstrumentMode ===-->
  <!--======================-->
  <sch:pattern id="InstrumentMode" is-a="SweParamWithCodespace">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/InstrumentMode"/>
    <sch:param name="name" value="/InstrumentMode/"/>
    <sch:param name="type" value="/Category/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/opt/AcquisitionParametersOPT+http://www.opengis.net/def/property/OGC-EO/0/sar/AcquisitionParametersSAR+"/>
    <sch:param name="code_space" value="none"/>
  </sch:pattern>  
  <!--================================-->
  <!--=== AcquisitionParametersOPT ===-->
  <!--================================-->
  <sch:pattern id="AcquisitionParametersOPT" is-a="SweParam">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/opt/AcquisitionParametersOPT"/>
    <sch:param name="name" value="/AcquisitionParameters/"/>
    <sch:param name="type" value="/DataRecord/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/MonoscopicAcquisition+http://www.opengis.net/def/property/OGC-EO/0/StereoscopicAcquisition+"/>
  </sch:pattern>
  <!--==================================-->
  <!--=== InstrumentMode enumeration ===-->
  <!--==================================-->
  <sch:pattern>
    <sch:rule context="//*[@definition='http://www.opengis.net/def/property/OGC-EO/0/opt/AcquisitionParametersOPT']//*[@definition='http://www.opengis.net/def/property/OGC-EO/0/InstrumentMode']">
      <sch:report test=".">
        Checking enumeration of parameter <sch:value-of select="@definition"/>
      </sch:report>
      <sch:assert test="swe:constraint/swe:AllowedTokens/swe:value = 'PANCHROMATIC'">
        The value 'PANCHROMATIC' shall be a possible choice for the InstrumentMode parameter of an optical instrument
      </sch:assert>
      <sch:assert test="swe:constraint/swe:AllowedTokens/swe:value = 'MULTISPECTRAL'">
        The value 'MULTISPECTRAL' shall be a possible choice for the InstrumentMode parameter of an optical instrument
      </sch:assert>
    </sch:rule>
  </sch:pattern>
  <!--=====================-->
  <!--=== MinLuminosity ===-->
  <!--=====================-->
  <sch:pattern id="MinLuminosity" is-a="SweParamWithUom">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/opt/MinLuminosity"/>
    <sch:param name="name" value="/MinLuminosity/"/>
    <sch:param name="type" value="/Quantity/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/opt/AcquisitionParametersOPT+"/>
    <sch:param name="uom_code" value="%"/>
    <sch:param name="uom_href" value="none"/>
  </sch:pattern>
  <!--===============================-->
  <!--=== ValidationParametersOPT ===-->
  <!--===============================-->
  <sch:pattern id="ValidationParametersOPT" is-a="SweParam">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/opt/ValidationParametersOPT"/>
    <sch:param name="name" value="/ValidationParameters/"/>
    <sch:param name="type" value="/DataRecord/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/CoverageProgrammingRequest+http://www.opengis.net/def/property/OGC-EO/0/SwathProgrammingRequest+"/>
  </sch:pattern>
  <!--=====================-->
  <!--=== MaxCloudCover ===-->
  <!--=====================-->
  <sch:pattern id="MaxCloudCover" is-a="SweParamWithUom">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/opt/MaxCloudCover"/>
    <sch:param name="name" value="/MaxCloudCover/"/>
    <sch:param name="type" value="/Quantity/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/opt/ValidationParametersOPT+"/>
    <sch:param name="uom_code" value="%"/>
    <sch:param name="uom_href" value="none"/>
  </sch:pattern>
  <!--====================-->
  <!--=== MaxSnowCover ===-->
  <!--====================-->
  <sch:pattern id="MaxSnowCover" is-a="SweParamWithUom">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/opt/MaxSnowCover"/>
    <sch:param name="name" value="/MaxSnowCover/"/>
    <sch:param name="type" value="/Quantity/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/opt/ValidationParametersOPT+"/>
    <sch:param name="uom_code" value="%"/>
    <sch:param name="uom_href" value="none"/>
  </sch:pattern>
  <!--===================-->
  <!--=== MaxSunGlint ===-->
  <!--===================-->
  <sch:pattern id="MaxSunGlint" is-a="SweParamWithUom">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/opt/MaxSunGlint"/>
    <sch:param name="name" value="/MaxSunGlint/"/>
    <sch:param name="type" value="/Quantity/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/opt/ValidationParametersOPT+"/>
    <sch:param name="uom_code" value="%"/>
    <sch:param name="uom_href" value="none"/>    
  </sch:pattern>
  <!--====================-->
  <!--=== HazeAccepted ===-->
  <!--====================-->
  <sch:pattern id="HazeAccepted" is-a="SweParam">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/opt/HazeAccepted"/>
    <sch:param name="name" value="/HazeAccepted/"/>
    <sch:param name="type" value="/Boolean/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/opt/ValidationParametersOPT+"/>
  </sch:pattern>
  <!--========================-->
  <!--=== SandWindAccepted ===-->
  <!--========================-->
  <sch:pattern id="SandWindAccepted" is-a="SweParam">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/opt/SandWindAccepted"/>
    <sch:param name="name" value="/SandWindAccepted/"/>
    <sch:param name="type" value="/Boolean/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/opt/ValidationParametersOPT+"/>
  </sch:pattern>  
  <!--================================-->
  <!--=== AcquisitionParametersSAR ===-->
  <!--================================-->
  <sch:pattern id="AcquisitionParametersSAR" is-a="SweParam">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/sar/AcquisitionParametersSAR"/>
    <sch:param name="name" value="/AcquisitionParameters/"/>
    <sch:param name="type" value="/DataRecord/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/MonoscopicAcquisition+http://www.opengis.net/def/property/OGC-EO/0/StereoscopicAcquisition+"/>
  </sch:pattern>
  <!--========================-->
  <!--=== PolarizationMode ===-->
  <!--========================-->
  <sch:pattern id="PolarizationMode" is-a="SweParamWithCodespace">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/sar/PolarizationMode"/>
    <sch:param name="name" value="/PolarizationMode/"/>
    <sch:param name="type" value="/Category/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/sar/AcquisitionParametersSAR+"/>
    <sch:param name="code_space" value="none"/>
  </sch:pattern>
  <!--===============================-->
  <!--=== ValidationParametersSAR ===-->
  <!--===============================-->
  <sch:pattern id="ValidationParametersSAR" is-a="SweParam">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/sar/ValidationParametersSAR"/>
    <sch:param name="name" value="/ValidationParameters/"/>
    <sch:param name="type" value="/DataRecord/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/CoverageProgrammingRequest+http://www.opengis.net/def/property/OGC-EO/0/SwathProgrammingRequest+"/>
  </sch:pattern>
  <!--=====================-->
  <!--=== MaxNoiseLevel ===-->
  <!--=====================-->
  <sch:pattern id="MaxNoiseLevel" is-a="SweParamWithUom">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/sar/MaxNoiseLevel"/>
    <sch:param name="name" value="/MaxNoiseLevel/"/>
    <sch:param name="type" value="/Quantity/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/sar/ValidationParametersSAR+"/>
    <sch:param name="uom_code" value="dB"/>
    <sch:param name="uom_href" value="none"/>
  </sch:pattern>
  <!--=====================-->
  <!--=== MaxNoiseLevel ===-->
  <!--=====================-->
  <sch:pattern id="MaxAmbiguityLevel" is-a="SweParamWithUom">
    <sch:param name="def" value="http://www.opengis.net/def/property/OGC-EO/0/sar/MaxAmbiguityLevel"/>
    <sch:param name="name" value="/MaxAmbiguityLevel/"/>
    <sch:param name="type" value="/Quantity/"/>
    <sch:param name="parent_def" value="+http://www.opengis.net/def/property/OGC-EO/0/sar/ValidationParametersSAR+"/>
    <sch:param name="uom_code" value="dB"/>
    <sch:param name="uom_href" value="none"/>
  </sch:pattern>
</sch:schema>