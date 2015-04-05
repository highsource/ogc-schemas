OpenGIS(r) SLD schema - ReadMe.txt
==================================

OpenGIS Styled Layer Descriptor Profile of the Web Map Service Implementation Specification

More information on the OGC SensorML standard may be found at
 http://www.opengeospatial.org/standards/sld

The most current schema are available at http://schemas.opengis.net/ .

-----------------------------------------------------------------------

2012-07-21  Kevin Stegemoller
  * v1.0 - v1.1: WARNING XLink change is NOT BACKWARD COMPATIBLE.
  * changed OGC XLink (xlink:simpleLink) to W3C XLink (xlink:simpleAttrs)
    per an approved TC and PC motion during the Dec. 2011 Brussels meeting.
    see http://www.opengeospatial.org/blog/1597
  * implement 11-025: retroactively require/add all leaf documents of an
    XML namespace shall explicitly <include/> the all-components schema
  * v1.1.0: added sldAll.xsd as the all-components document (06-135r11 #14)
  * v1.1.0: updated xsd:schema/@version to 1.1.0.2 (06-135r11 s#13.4)
  * v1.0.0: updated xsd:schema/@version to 1.0.0.2 (06-135r11 s#13.4)
  * v1.1: removed 1.1 because it was posted in error. 
    The sld 1.1 URL is rewritten to 1.1.0 to preserve backward compatibility.
  * v0.7.x: schema were removed and archived
  * v1.0.20: schema were removed and archived

2010-11-17  Simon Cox
  * v1.1: Changes to 1.1.0 create SLD 1.1.1
    + added sldAll.xsd as the all-components document (06-135r9 s#14)
    + created sld/1.1 version from SLD 1.1.1

2010-02-01  Kevin Stegemoller
  * v1.1.0, v1.0.20, v1.0.0, v0.7.3, v0.7.2, v0.7.1
    + updated xsd:schema/@version attribute (06-135r7 s#13.4)
    + update relative schema imports to absolute URLs (06-135r7 s#15)
    + update/verify copyright (06-135r7 s#3.2)
    + add archives (.zip) files of previous versions
    + create/update ReadMe.txt (06-135r7 s#17)

2007-11-28  Kevin Stegemoller
  * v1.1.0 Published SLD 1.1.0 schemas from OGC 05-078r4 including
    Corrigendum 1 07-123r1 (Corrigendum 1 for 05-078r4)

2005-11-22  Arliss Whiteside
  * SLD versions 0.7.2 through 1.0.20: The sets of XML Schema Documents
    for OpenGIS Styled Layer Descriptor Versions 0.7.2 through 1.0.20
    have been edited to reflect the corrigenda to all those OGC
    documents that is based on the change requests:
    OGC 05-068r1 "Store xlinks.xsd file at a fixed location"
    OGC 05-081r2 "Change to use relative paths"

  * Note: check each OGC numbered document for detailed changes.

-- [ VERSION NOTES ] --------------------------------------------------

  OGC is incrementally changing how schemas will be hosted. A new
  revision of the Specification Best Practice policy document (06-135r11)
  clarifies this practices.

  OGC is moving to host the schemas using a 2 digit version number so
  that dependent documents (schemas) will not have to change each time a
  schema is corrected (by a corrigendum). The schemas actual version
  number will be kept in the version attribute on the schema element
  which will be used to signify that there has been a change to the
  schema. Each previous revision will be available online in a ZIP
  archive.
  
  The LATEST version is the M.N directory where 
   * M is the major version
   * N is the minor version
  The latest bugfix version now is always in the M.N directory and 
  documented in the version attribute on the schema element. The older
  versions are now archived in the -M_N_X.zip files.
  
  Previously the OGC used M.N.C where
   * M is the major version
   * N is the minor version
   * C is the corrigendum version
  These older M.N.C versions will be updated using M.N.C.X where 
  X may be a bugfix version. These schema will also be .zip archived.

-- 2010-01-21  Kevin Stegemoller  updated 2012-07-21

-----------------------------------------------------------------------

Policies, Procedures, Terms, and Conditions of OGC(r) are available
  http://www.opengeospatial.org/ogc/legal/ .

Copyright (c) 2010 Open Geospatial Consortium.

-----------------------------------------------------------------------

