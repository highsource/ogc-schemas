<?xml version="1.0" encoding="UTF-8"?>
<!-- CityGML Version No. 2.0, February 2012 -->
<!-- CityGML - GML 3.1.1 application schema for 3D city models -->
<!-- International encoding standard of the Open Geospatial Consortium, see http://www.opengeospatial.org/standards/citygml -->
<!-- Jointly developed by the Special Interest Group 3D (SIG 3D) of GDI-DE, see http://www.sig3d.org               -->
<!-- For further information see: http://www.citygml.org --><!-- Example CityGML dataset illustrating the use of generic city objects and attributes as well as implicit geometries. -->
<!-- The dataset employs the following CityGML extension modules: Building, CityFurniture, and Generics. -->
<CityModel xmlns="http://www.opengis.net/citygml/2.0" xmlns:gen="http://www.opengis.net/citygml/generics/2.0"
	xmlns:bldg="http://www.opengis.net/citygml/building/2.0" xmlns:frn="http://www.opengis.net/citygml/cityfurniture/2.0"
	xmlns:gml="http://www.opengis.net/gml" xmlns:xlink="http://www.w3.org/1999/xlink"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://www.opengis.net/citygml/generics/2.0 ../../CityGML/generics.xsd  http://www.opengis.net/citygml/building/2.0 ../../CityGML/building.xsd http://www.opengis.net/citygml/cityfurniture/2.0  ../../CityGML/cityFurniture.xsd">
	<gml:description> The CityModel contains a generic city object - a gas tank - with two generic attributes, and a building with
        a generic attribute (the date of a renovation). However, the geometries do not make sense; they are only included to
        illustrate the document structuring. </gml:description>
	<gml:name>Example CityGML file - generic objects and attributes </gml:name>
	<gml:boundedBy>
		<gml:Envelope srsDimension="3" srsName="urn:ogc:def:crs,crs:EPSG::31466,crs:EPSG::5783">
			<gml:lowerCorner>0.0 0.0 0.0 </gml:lowerCorner>
			<gml:upperCorner>33.0 34.0 2.5</gml:upperCorner>
		</gml:Envelope>
	</gml:boundedBy>
	<cityObjectMember>
		<gen:GenericCityObject>
			<gen:doubleAttribute name="Gas volume">
				<gen:value>4334.99</gen:value>
			</gen:doubleAttribute>
			<gen:stringAttribute name="Gas Type">
				<gen:value>Type 55</gen:value>
			</gen:stringAttribute>
			<gen:function>gas tank</gen:function>
			<gen:lod1Geometry>
				<gml:Solid>
					<gml:exterior>
						<gml:CompositeSurface>
							<gml:surfaceMember>
								<gml:Polygon>
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList srsDimension="3" count="5"> 1.0 1.0 0.0 1.0 4.0 0.0 3.0 4.0 0.0 3.0 1.0 0.0 1.0 1.0 0.0
											</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon>
									<gml:exterior>
										<gml:LinearRing>
											<gml:pos srsDimension="3">2.0 1.0 2.5</gml:pos>
											<gml:pos srsDimension="3">2.0 4.0 2.5</gml:pos>
											<gml:pos srsDimension="3">1.0 4.0 1.5</gml:pos>
											<gml:pos srsDimension="3">1.0 1.0 1.5</gml:pos>
											<gml:pos srsDimension="3">2.0 1.0 2.5</gml:pos>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:CompositeSurface>
					</gml:exterior>
				</gml:Solid>
			</gen:lod1Geometry>
		</gen:GenericCityObject>
	</cityObjectMember>
	<cityObjectMember>
		<bldg:Building gml:id="b32">
			<generalizesTo xlink:href="http://www.some-wfs.com/..../buildings.xml#b117"/>
			<gen:dateAttribute name="Date of last renovation">
				<gen:value>2001-11-07</gen:value>
			</gen:dateAttribute>
			<bldg:lod1Solid>
				<!-- definition of the solid to be inserted here -->
			</bldg:lod1Solid>
		</bldg:Building>
	</cityObjectMember>
	<cityObjectMember>
		<frn:CityFurniture>
			<frn:class codeSpace="http://www.sig3d.de/codelists/standard/cityfurniture/2.0/CityFurniture_class.xml">1000</frn:class>
			<frn:function codeSpace="http://www.sig3d.de/codelists/standard/cityfurniture/2.0/CityFurniture_function.xml">1080</frn:function>
			<frn:lod2ImplicitRepresentation>
				<ImplicitGeometry>
					<mimeType codeSpace="http://www.sig3d.de/codelists/standard/core/2.0/ImplicitGeometry_mimeType.xml">model/vrml</mimeType>
					<libraryObject>www.some-3D-library.com/3DCityModel/furnitures/TrafficLight434.wrl</libraryObject>
					<referencePoint>
						<gml:Point>
							<gml:pos srsDimension="3">3603845.54 5793898.77 44.8</gml:pos>
						</gml:Point>
					</referencePoint>
				</ImplicitGeometry>
			</frn:lod2ImplicitRepresentation>
		</frn:CityFurniture>
	</cityObjectMember>
	<cityObjectMember>
		<frn:CityFurniture>
			<frn:class codeSpace="http://www.sig3d.de/codelists/standard/cityfurniture/2.0/CityFurniture_class.xml">1000</frn:class>
			<frn:function codeSpace="http://www.sig3d.de/codelists/standard/cityfurniture/2.0/CityFurniture_function.xml">1080</frn:function>
			<frn:lod2ImplicitRepresentation>
				<ImplicitGeometry>
					<mimeType codeSpace="http://www.sig3d.de/codelists/standard/core/2.0/ImplicitGeometry_mimeType.xml">model/vrml</mimeType>
					<transformationMatrix> 0.866025 -0.5 0 0.5 0.5 0.866025 0 0.5 0 0 1 0 0 0 0 1 </transformationMatrix>
					<libraryObject>www.some-3D-library.com/3DCityModel/furnitures/TrafficLight834.wrl</libraryObject>
					<referencePoint>
						<gml:Point>
							<gml:pos srsDimension="3">3603820.54 5793801.77 45.8</gml:pos>
						</gml:Point>
					</referencePoint>
				</ImplicitGeometry>
			</frn:lod2ImplicitRepresentation>
		</frn:CityFurniture>
	</cityObjectMember>
</CityModel>
