OGC(r) Catalog schema ReadMe.txt
-----------------------------------------------------------------------

OGC Catalogue Service Implementation Standard

More information on the OGC CSW standard may be found at
 http://www.opengeospatial.org/standards/cat

The most current schema are available at http://schemas.opengis.net/ .

-----------------------------------------------------------------------

2012-07-21  Kevin Stegemoller
  * v2.0 WARNING XLink change is NOT BACKWARD COMPATIBLE.
  * changed OGC XLink (xlink:simpleLink) to W3C XLink (xlink:simpleAttrs)
  per an approved TC and PC motion during the Dec. 2011 Brussels meeting.
  see http://www.opengeospatial.org/blog/1597
  * implement 11-025: retroactively require/add all leaf documents of an
  XML namespace shall explicitly <include/> the all-components schema
  * v2.0.2: added csw.xsd as the all-components document (06-135r11 #14)
  * v2.0.2: archived previous version in csw-2_0_2_1.zip contained in csw-2_0_2.zip
  * v2.0.2: updated xsd:schema/@version to 2.0.2.2 (06-135r11 s#13.4)
  * v2.0.1: removed 2.0.1 as it was invalid and now redirected to 2.0.2
  * v2.0.0: removed 2.0.0 as it was invalid and now redirected to 2.0.2
  The redirected URLs are rewritten to 2.0.2 to preserve backward compatibility.

2010-01-22  Kevin Stegemoller
  * v2.0: update/verify copyright (06-135r7 s#3.2)
  * v2.0: update relative schema imports to absolute URLs (06-135r7 s#15)
  * v2.0: updated xsd:schema/@version attribute (06-135r7 s#13.4)
  * v2.0: add archives (.zip) files of previous versions
  * v2.0: create/update ReadMe.txt (06-135r7 s#17)

2007-08-16  Uwe Voges
  * v2.0.2: added ISO Metadata Application Profile (1.0.0) for Catalogue
    Services Specification 2.0.2 (OGC 07-045)

2007-07-27  Peter Vretanos
  * v2.0.1: rename CSW_2.0.1_changes.txt 2.0.1/CSW_2.0.1_changes.txt
  * v2.0.2: added ChangeLog.txt
  * v2.0.2/CSW-publication.xsd: import owsAll.xsd, rather than
    owsGetCapabilities.xsd, for the http://www.opengis.net/ows namespace
    to prevent validation errors caused by namespace caching in a number
    of XML parsers (Xerces,XSV)
  * v2.0.2/record.xsd: import owsAll.xsd, rather than owsCommon.xsd, for the
    http://www.opengis.net/ows namespace to prevent validation errors caused by
    namespace caching in a number of XML parsers (Xerces,XSV)

2007-04-30  Doug Nebert, Arliss Whiteside, Peter Vretanos
  * v2.0.2: See OGC 07-006r1 for associated specification and OGC 07-010
    for revision notes.
  * v2.0.2: validated using XML Spy 2007 - pVretanos

2005-11-22  Arliss Whiteside
  * v2.0.1, v2.0.0: The sets of XML Schema Documents for OpenGIS Catalog
  Versions 2.0.0 and 2.0.1 have been edited to reflect the corrigendum
  to document OGC 04-021r2 that is based on the change requests: 
  OGC 05-068r1 "Store xlinks.xsd file at a fixed location"
  OGC 05-081r2 "Change to use relative paths"
 
  * Note: check each OGC numbered document for detailed changes.

2005-11-02  Doug Nebert, Arliss Whiteside, Peter Vretanos
  * v2.0.1: See http://schemas.opengis.net/csw/2.0.1/CSW_2.0.1_changes.txt

-----------------------------------------------------------------------

Policies, Procedures, Terms, and Conditions of OGC(r) are available
  http://www.opengeospatial.org/ogc/legal/ .

OGC and OpenGIS are registered trademarks of Open Geospatial Consortium.

Copyright (c) 2010 Open Geospatial Consortium

-----------------------------------------------------------------------
