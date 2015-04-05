OGC(r) WMC schema ReadMe.txt
-----------------------------------------------------------------------

Web Map Context (WMC) Implementation Standard.

More information on the OGC WMC standard may be found at
 http://www.opengeospatial.org/standards/wmc

The most current schema are available at http://schemas.opengis.net/ .

-----------------------------------------------------------------------

2012-07-21  Kevin Stegemoller
  * v1.0 - v1.1: WARNING XLink change is NOT BACKWARD COMPATIBLE.
  * changed OGC XLink (xlink:simpleLink) to W3C XLink (xlink:simpleAttrs) 
  per an approved TC and PC motion during the Dec. 2011 Brussels meeting.
  see http://www.opengeospatial.org/blog/1597
  * implement 11-025: retroactively require/add all leaf documents of an
  XML namespace shall explicitly <include/> the all-components schema
  * v1.1.0: added wmcAll.xsd as the all-components document (06-135r11 #14)
  * v1.0.0: updated xsd:schema/@version to 1.0.0.2 (06-135r11 s#13.4)
  * v1.1.0: updated xsd:schema/@version to 1.1.0.2 (06-135r11 s#13.4)
  * v1.1: removed 1.1 because it was posted in error.  
  The context 1.1 URL is rewritten to 1.1.0 to preserve backward compatibility.

2010-11-17  Simon Cox
  * v1.1: Changes to 1.1.0 create WMC 1.1.0.1
    + added wmcAll.xsd as the all-components document (06-135r9 s#14)
    + minor refactoring of the OnlineResourceType definition required 
      to create all-components document. The definition was placed in 
      ort.xsd.  No effect at all otherwise.

2010-01-21  Kevin Stegemoller 
  * update/verify copyright (06-135r7 s#3.2)
  * migrate relative to absolute URLs of schema imports (06-135r7 s#15)
  * updated xsd:schema/@version attribute (06-135r7 s#13.4)
  * add archives (.zip) files of previous versions
  * create/update ReadMe.txt (06-135r7 s#17)

2008-03-10  Kevin Stegemoller
  * context/1.1.0/collection.xml: reverted to original schemaLocation
  * context/1.1.0/context.xml: reverted to original schemaLocation

2007-04-12  Kevin Stegemoller
  * context/1.1.0/collection.xml: fixed schemaLocation caught in OWS-4
    CITE tests
  * context/1.1.0/context.xml: fixed schemaLocation caught in OWS-4
    CITE tests

2005-11-22  Arliss Whiteside
  * v1.1.0, v1.0.0: The XML Schema Documents for OpenGIS(r) Context
    Versions have been edited to reflect the corrigenda to documents
    1.0.0 (OGC 03-036r2) and 1.1.0 (OGC 05-005) which are based on the
    change requests: 
    OGC 05-068r1 "Store xlinks.xsd file at a fixed location"
    OGC 05-081r2 "Change to use relative paths"


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

Copyright (c) 2012 Open Geospatial Consortium.

-----------------------------------------------------------------------
