OpenGIS(r) GML Application Schema for Earth Observation Products
================================================================

OGC(r) GML 3.1.1 Application Schema for Earth Observation Products
-----------------------------------------------------------------------

The Geography Markup Language (GML) 3.1.1 Application Schema for Earth Observation
Products Implementation Standard is defined in OGC document 06-080r4. 

More information may be found at
 http://www.opengeospatial.org/standards/specifications/catalog

The most current schema are available at http://schemas.opengis.net/
and all OGC schemas may be downloaded in a complete bundle from
http://schemas.opengis.net/SCHEMAS_OPENGIS_NET.zip

The root (all-components) XML Schema Document, which includes
directly and indirectly all the XML Schema Documents, defined by
GML Application Schema for EO Products is eop.xsd.

* Latest version is: http://schemas.opengis.net/eop/1.0/eop.xsd *

-----------------------------------------------------------------------


2011-11-08  Jerome Gasperi

  * v1.0.0: Added eop/1.0 - OGC 06-080r4

    EOP 1.0 (1.2.2) does not validate. -- 2014-03-28

    It seems that 06-080r4 (EOP 1.0) is approved as an official OGC
    implementation standard. Unfortunately, it called for the use of a
    non-standard gmlSubset.xsd based on GML 3.1.1 (and using the GML 3.1.1
    namespace) but using some GML 3.2.1 definitions.  This means that EOP 1.0
    is not GML 3.1.1 nor GML 3.2.1 but some modified version of the two.
    This is not documented anyway in the standard.  The problem that the
    EOP document was trying to overcome was corrected in 3.2.1.

    EOP 1.0 (06-080r4) is being published in a zip archive so that the schema
    are available but not directly usable. Earth Observation Metadata profile
    of Observations & Measurements (1.0) 10-157r3 should be a replacement.

    Further discussion points are documented on the OAB listserv:
    https://lists.opengeospatial.org/mailman/private/oab/2011-December/001997.html


-----------------------------------------------------------------------

Policies, Procedures, Terms, and Conditions of OGC(r) are available
  http://www.opengeospatial.org/ogc/legal/ .

Copyright (c) 2014 Open Geospatial Consortium.

-----------------------------------------------------------------------

