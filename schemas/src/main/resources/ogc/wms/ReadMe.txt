OGC(r) WMS schema - ReadMe.txt
==================================

OGC(r) Web Feature Service (WMS) Implementation Standard
-------------------------------------------------------------------

The OpenGIS(r) Web Map Service Interface Standard (WMS) provides a simple HTTP
interface for requesting geo-registered map images from one or more distributed
geospatial databases. A WMS request defines the geographic layer(s) and area of
interest to be processed. The response to the request is one or more
geo-registered map images (returned as JPEG, PNG, etc) that can be displayed in
a browser application. The interface also supports the ability to specify
whether the returned images should be transparent so that layers from multiple
servers can be combined or not.

More information may be found at
 http://www.opengeospatial.org/standards/wms

The most current schema are available at http://schemas.opengis.net/ .

-----------------------------------------------------------------------

2012-07-21  Kevin Stegemoller
  * v1.3.0: WARNING XLink change is NOT BACKWARD COMPATIBLE.
  * Changed OGC XLink (xlink:simpleLink) to W3C XLink (xlink:simpleAttrs)
    per an approved TC and PC motion during the Dec. 2011 Brussels meeting.
    See http://www.opengeospatial.org/blog/1597 
  * v1.3.0: Updated xsd:schema/@version to 1.3.0.2 (06-135r11 s#13.4)
  * v1.0.7: wms/1.0.7 schema was removed and archived

2010-02-03  Kevin Stegemoller
  * v1.3.0: updated xsd:schema/@version to 1.3.0 2010-02-03 (06-135r7 s#13.4)
  * v1.3.0:
    + updated xsd:schema/@version attribute (06-135r7 s#13.4)
    + update relative schema imports to absolute URLs (06-135r7 s#15)
    + update/verify copyright (06-135r7 s#3.2)
    + add archives (.zip) files of previous versions
    + create/update ReadMe.txt (06-135r7 s#17)

2005-11-22  Arliss Whiteside
  * v1.3.0: This set of XML Schema Documents for WMS have been edited to
    reflect the corrigendum to document OGC 04-024 (WMS 1.3.0) that are based
    on the change requests: 
     OGC 05-068r1 "Store xlinks.xsd file at a fixed location"
     OGC 05-081r2 "Change to use relative paths"

2004-05-19  Jeff de La Beaujardiere
  * v1.1.1: corrected capabilities_1_1_1.* and exception_1_1_1.* . The
    WMS_MS_Capabilities.dtd and other WMS_* documents are the original versions
    missing the corrections. (01-068r3)

 Note: check each OGC numbered document for detailed changes.

-----------------------------------------------------------------------

Policies, Procedures, Terms, and Conditions of OGC(r) are available
  http://www.opengeospatial.org/ogc/legal/ .

Copyright (c) 2012 Open Geospatial Consortium.

-----------------------------------------------------------------------

