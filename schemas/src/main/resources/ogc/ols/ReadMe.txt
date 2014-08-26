OGC(r) OLS - ReadMe.txt 
=================================

OGC(r) Open Location Services Interface Standard (OpenLS)

OpenLS is an OGC Standard.

More information may be found at 
 http://www.opengeospatial.org/standards/ols

The most current schema are available at http://schemas.opengis.net/ .

-----------------------------------------------------------------------

2014-07-31  Gil Fuchs
  * v1.3: Post OLS Navigation Service schema from OGC 08-028r7
    + add nav-All.xsd as the all-components document (06-135r9 s#14)
    + update relative xsd import/@schemaLocation to absolute URLs (06-135r9 s#15)
    + update xsd schema/@version attribute to 1.3.0 (06-135r9 s#13.4)
    + add/update Copyright (06-135r9 s#3.2)
    + created ols/1.3 version from OLS Nav 1.3.0v

2012-07-21  Kevin Stegemoller
  * v1.1 - v1.2 WARNING XLink change is NOT BACKWARD COMPATIBLE.
  * changed OGC XLink (xlink:simpleLink) to W3C XLink (xlink:simpleAttrs)
  per an approved TC and PC motion during the Dec. 2011 Brussels meeting.
  see http://www.opengeospatial.org/blog/1597
  * implement 11-025: retroactively require/add all leaf documents of an
  XML namespace shall explicitly <include/> the all-components schema
  * v1.1.0: added olsAll.xsd as the all-components document (06-135r11 #14)
  * v1.1.0: updated xsd:schema/@version to 1.1.0.2 (06-135r11 s#13.4)
  * v1.2: updated xsd:schema/@version to 1.2.2 (06-135r11 s#13.4)
  * v1.2.0: removed ols/1.2.0 and now redirected to 1.2

2010-11-17  Simon Cox
  * v1.2: Changes to 1.2.0 create OLS 1.2.1
    + added olsAll.xsd as the all-components document (06-135r9 s#14)
    + created ols/1.2 version from OLS 1.2.1

2010-01-29  Kevin Stegemoller 
  * v1.2, v1.1: update/verify copyright (06-135r7 s#3.2)
  * v1.2, v1.1: update relative schema imports to absolute URLs (06-135r7 s#15)
  * v1.2, v1.1: updated xsd:schema/@version attribute (06-135r7 s#13.4)
  * v1.2, v1.1: add archives (.zip) files of previous versions
  * v1.2, v1.1: create/update ReadMe.txt (06-135r7 s#17)

2008-12-31  Kevin Stegemoller
  * Published ols/1.2.0 schemas from OGC 07-074

2005-11-22  Arliss Whiteside
  * v1.1.0: The XML Schema Documents for OLS Versions have been edited
  to reflect the corrigendum to document 1.1.0 (OGC 05-016) which are
  based on the change requests:
    OGC 05-068r1 "Store xlinks.xsd file at a fixed location"
    OGC 05-081r2 "Change to use relative paths"

2005-05-02  OpenLS WG
  * Published ols/1.1.0 schemas from OGC 05-016 

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

OGC and OpenGIS are registered trademarks of Open Geospatial Consortium.

Copyright (c) 2005-2014 Open Geospatial Consortium.

-----------------------------------------------------------------------

