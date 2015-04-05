<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron">
    <sch:ns prefix="gml" uri="http://www.opengis.net/gml/3.2"/>
    <!-- 
        - The schematron file implements the validation of the restricted
        - subset of GML 3.2 defined in the GML simple features profile
        - compliance level SF2. The scope of the validation consists of
        - GML document instances. Validation of the restricted subset of
        - XML Schema, defined in the same profile document, is not
        - implemented by this schematron file.
    -->
    <sch:pattern>
        <sch:rule context="/*/*/*">
            <!-- Rule to exclude metadataProperty -->
            <sch:assert test="not(gml:metaDataProperty)">
                This profile prohibits use of gml:metaDataProperty
                elements for referencing metadata in instance documents.
            </sch:assert>
        </sch:rule>
        <sch:rule context="/*//*">
            <!-- Rule to exclude spatial topology types -->
            <sch:assert
                test="not(self::gml:Node|self::gml:Edge|self::gml:Face|self::gml:TopoSolid|self::gml:TopoPoint|self::gml:TopoCurve|self::gml:TopoSurface|self::gml:TopoVolume|self::gml:TopoComplex)">
                Spatial properties are limited to the set of geometric
                types consisting of point, curve with linear and/or
                circular arc interpolation, planar surface, or aggregates
                thereof. Spatial topology is excluded.
            </sch:assert>
            <!-- Rule for content of curves -->
            <sch:assert 
                test="not(self::gml:Curve) or self::gml:Curve/gml:segments[gml:LineStringSegment|gml:Arc|gml:Circle|gml:CircleByCenterPoint]">
                Curves (standalone or within surfaces) must have linear
                and/or circular arc interpolation (LineString, Curve with
                Arc, Circle or CircleByCenterpoint segments)
            </sch:assert>
            <!-- Rule for constraints on planar surfaces -->
            <sch:assert
                test="not(self::gml:OrientableSurface|self::gml:CompositeSurface|self::gml:PolyhedralSurface|self::gml:Tin|self::gml:TriangulatedSurface)">
                Planar surface types are restricted to Polygon or Surface
                elements.
            </sch:assert>
            <!-- Rule for constraints on GeometryPropertyType -->
            <sch:assert
                test="not(self::gml:Solid|self::gml:MultiSolid|self::gml:CompositeSolid|self::gml:CompositeCurve|self::gml:Grid)">
                Supported geometry types are restricted to point, curve with 
                linear and/or circular arc interpolation, planar surface,
                or aggregates thereof.
            </sch:assert>
            <!-- Rule for geometry coordinates of points and circles by
                centerpoint -->
            <sch:assert test="count(self::gml:Point/gml:pos) = count(self::gml:Point/*)">
                Geometry coordinates shall only be specified using the gml:pos element for
                gml:Point.
            </sch:assert>
            <sch:assert
                test="count(self::gml:CircleByCenterPoint/gml:pos|self::gml:CircleByCenterPoint/gml:radius) = count(self::gml:CircleByCenterPoint/*)">
                Geometry coordinates shall only be specified using the gml:pos
                element for gml:CircleByCenterPoint.
            </sch:assert>
            <!-- Rules for geometry coordinates in geometries other than points -->
            <sch:assert test="count(self::gml:LineStringSegment/gml:posList) =
                count(self::gml:LineStringSegment/*)">
                Geometry coordinates shall only be specified using the gml:posList
                element for gml:LineStringSegment.
            </sch:assert>
            <sch:assert test="count(self::gml:LinearRing/gml:posList) =
                count(self::gml:LinearRing/*)">
                Geometry coordinates shall only be specified using the gml:posList
                element for gml:LinearRing.
            </sch:assert>
            <sch:assert test="count(self::gml:Arc/gml:posList) = count(self::gml:Arc/*)">
                Geometry coordinates shall only be specified using the gml:posList
                element for gml:Arc.
            </sch:assert>
            <sch:assert test="count(self::gml:Circle/gml:posList) =
                count(self::gml:Circle/*)">
                Geometry coordinates shall only be specified using the gml:posList
                element for gml:Circle.
            </sch:assert>
            <!-- Rules for aggregate geometry types -->
            <sch:assert test="not(self::gml:MultiPoint/gml:pointMembers)">
                This profile restricts instance documents to using the property
                container gml:pointMember for the MultiPoint geometry type.
            </sch:assert>
            <sch:assert test="not(self::gml:MultiCurve/gml:curveMembers)">
                This profile restricts instance documents to using the property
                container gml:curveMember for the MultiCurve geometry type.
            </sch:assert>
            <sch:assert test="not(self::gml:MultiSurface/gml:surfaceMembers)">
                This profile restricts instance documents to using the property
                container gml:surfaceMember for the MultiSurface geometry type.
            </sch:assert>
            <sch:assert test="not(self::gml:MultiGeometry/gml:geometryMembers)">
                This profile restricts instance documents to using the property
                container gml:geometryMember for the MultiGeometry geometry type.
            </sch:assert>
            <!-- Rule for content of surfaces -->
            <sch:assert test="count(self::gml:Surface/gml:patches/gml:PolygonPatch) =
                count(self::gml:Surface/gml:patches/*)">
                The content of gml:Surface elements is restricted to
                gml:PolygonPatch patches.
            </sch:assert>
            <sch:assert test="not(self::*/@srsDimension &gt; 3)">
                Coordinate reference systems may have 1, 2 or 3 dimensions.
            </sch:assert>
        </sch:rule>
    </sch:pattern>
</sch:schema>