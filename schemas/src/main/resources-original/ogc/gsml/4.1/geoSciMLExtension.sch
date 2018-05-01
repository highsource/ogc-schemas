<?xml version="1.0" encoding="UTF-8"?>
<schema  see="http://www.opengis.net/spec/geosciml/4.1/req/gsml4xsd-extension/sch" xmlns="http://purl.oclc.org/dsdl/schematron" 
queryBinding="xslt2" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!--
        This schematron schema checks the core XML encoding requirements of OGC GeoSciML 4.1, as specified
        in the requirements class: http://www.opengis.net/spec/geosciml/4.1/req/gsml4xsd/sch

        OGC GeoSciML 4.1 is an OGC Standard.
        Copyright (c) 2016-2018 Open Geospatial Consortium.
        To obtain additional rights of use, visit http://www.opengeospatial.org/legal/ .

        Copyright (c) 2016-2017 IUGS Commission for the Management and Application of Geoscience Information, All rights reserved.

        version="4.1.1"

    -->

<xi:include xmlns:xi="http://www.w3.org/2001/XInclude" href="geoSciMLBasic.sch" xpointer="element(/1/1)"/>
 <xi:include xmlns:xi="http://www.w3.org/2001/XInclude" href="geologicTime.sch" xpointer="element(/1/1)"/>
    

	<!--
        This schematron schema extension the Extension XML encoding requirements of OGC GeoSciML 4.1, as specified
        in the requirements class: http://www.opengis.net/spec/geosciml/4.1/req/gsml4xsd-geoSciMExtension/sch
    -->
    <title>OGC GeoSciML Extension 4.1 XML encoding tests</title>
	<p>This schematron schema checks the extension XML encoding requirements of OGC GeoSciML 4.1, as specified
	    in the requirements class: http://www.opengis.net/spec/geosciml/4.1/req/gsml4xsd-geoSciMLExtension/sch</p>
  <!-- this schematron does not provide any rule, just import statements to dependencies -->
	
	
	

</schema>
