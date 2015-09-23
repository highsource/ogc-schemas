<?xml version="1.0" encoding="UTF-8"?>
<!-- CityGML Version No. 2.0, February 2012 -->
<!-- CityGML - GML 3.1.1 application schema for 3D city models -->
<!-- International encoding standard of the Open Geospatial Consortium, see http://www.opengeospatial.org/standards/citygml -->
<!-- Jointly developed by the Special Interest Group 3D (SIG 3D) of GDI-DE, see http://www.sig3d.org               -->
<!-- For further information see: http://www.citygml.org -->
<!-- Example CityGML dataset illustrating the use of city object groups. -->
<!-- The dataset employs the following CityGML extension modules: CityObjectGroup, Transportation, and WaterBody. -->
<CityModel xmlns="http://www.opengis.net/citygml/2.0" xmlns:grp="http://www.opengis.net/citygml/cityobjectgroup/2.0"
	xmlns:wtr="http://www.opengis.net/citygml/waterbody/2.0" xmlns:tran="http://www.opengis.net/citygml/transportation/2.0"
	xmlns:gml="http://www.opengis.net/gml" xmlns:xlink="http://www.w3.org/1999/xlink"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://www.opengis.net/citygml/transportation/2.0 ../../CityGML/transportation.xsd http://www.opengis.net/citygml/cityobjectgroup/2.0 ../../CityGML/cityObjectGroup.xsd http://www.opengis.net/citygml/waterbody/2.0 ../../CityGML/waterBody.xsd">
	<gml:description> This CityGML file contains examples for transportation objects, water bodies, and groups. However, the
		geometries do not make sense; they are only included to illustrate the document structuring. One element of the group again is
		a group. The elements of this group are referenced by their ID. </gml:description>
	<gml:name>Roads and Areas of the 3D City Model of Bonn being of interest for tourists</gml:name>
	<gml:boundedBy>
		<gml:Envelope srsDimension="3" srsName="urn:ogc:def:crs,crs:EPSG::31466,crs:EPSG::5783">
			<gml:lowerCorner>0.0 0.0 0.0 </gml:lowerCorner>
			<gml:upperCorner>33.0 34.0 2.5</gml:upperCorner>
		</gml:Envelope>
	</gml:boundedBy>
	<cityObjectMember>
		<grp:CityObjectGroup>
			<grp:class>group of roads and water bodies</grp:class>
			<grp:function>roads and areas in Bonn being of interest for tourists</grp:function>
			<grp:groupMember role="famous museums and exhibitions">
				<tran:Road gml:id="ID_76">
					<gml:name codeSpace="urn:OfficialRoadName"> Adenauerallee </gml:name>
					<gml:name codeSpace="urn:OfficialRoadNumber"> B 9 </gml:name>
					<!-- highway/national primary road -->
					<tran:function codeSpace="http://www.sig3d.de/codelists/standard/transportation/2.0/TransportationComplex_function.xml">1020</tran:function>
					<tran:trafficArea>
						<tran:TrafficArea>
							<!-- driving lane -->
							<tran:function codeSpace="http://www.sig3d.de/codelists/standard/transportation/2.0/TrafficArea_function.xml">1</tran:function>
							<!-- asphalt -->
							<tran:surfaceMaterial codeSpace="http://www.sig3d.de/codelists/standard/transportation/2.0/TrafficArea_surfaceMaterial.xml">1</tran:surfaceMaterial>
							<tran:lod2MultiSurface>
								<gml:MultiSurface>
									<gml:surfaceMember>
										<gml:Polygon>
											<gml:exterior>
												<gml:LinearRing>
													<gml:pos srsDimension="3">1.0 1.0 0.0</gml:pos>
													<gml:pos srsDimension="3">3.0 1.0 0.0</gml:pos>
													<gml:pos srsDimension="3">3.0 1.0 1.5</gml:pos>
													<gml:pos srsDimension="3">2.0 1.0 2.5</gml:pos>
													<gml:pos srsDimension="3">1.0 1.0 1.5</gml:pos>
													<gml:pos srsDimension="3">1.0 1.0 0.0</gml:pos>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
								</gml:MultiSurface>
							</tran:lod2MultiSurface>
						</tran:TrafficArea>
					</tran:trafficArea>
					<tran:trafficArea>
						<tran:TrafficArea gml:id="I555">
							<!-- footpath -->
							<tran:function codeSpace="http://www.sig3d.de/codelists/standard/transportation/2.0/TrafficArea_function.xml">2</tran:function>
							<tran:lod2MultiSurface>
								<gml:MultiSurface>
									<gml:surfaceMember>
										<gml:Polygon>
											<gml:exterior>
												<gml:LinearRing>
													<gml:pos srsDimension="3">1.0 1.0 0.0</gml:pos>
													<gml:pos srsDimension="3">3.0 1.0 0.0</gml:pos>
													<gml:pos srsDimension="3">3.0 1.0 1.5</gml:pos>
													<gml:pos srsDimension="3">2.0 1.0 2.5</gml:pos>
													<gml:pos srsDimension="3">1.0 1.0 1.5</gml:pos>
													<gml:pos srsDimension="3">1.0 1.0 0.0</gml:pos>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
								</gml:MultiSurface>
							</tran:lod2MultiSurface>
						</tran:TrafficArea>
					</tran:trafficArea>
					<tran:trafficArea>
						<tran:TrafficArea gml:id="I554">
							<!-- cyclepath -->
							<tran:function codeSpace="http://www.sig3d.de/codelists/standard/transportation/2.0/TrafficArea_function.xml">3</tran:function>
							<tran:lod2MultiSurface>
								<gml:MultiSurface>
									<gml:surfaceMember>
										<gml:Polygon>
											<gml:exterior>
												<gml:LinearRing>
													<gml:pos srsDimension="3">1.0 1.0 0.0</gml:pos>
													<gml:pos srsDimension="3">3.0 1.0 0.0</gml:pos>
													<gml:pos srsDimension="3">3.0 1.0 1.5</gml:pos>
													<gml:pos srsDimension="3">2.0 1.0 2.5</gml:pos>
													<gml:pos srsDimension="3">1.0 1.0 1.5</gml:pos>
													<gml:pos srsDimension="3">1.0 1.0 0.0</gml:pos>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
								</gml:MultiSurface>
							</tran:lod2MultiSurface>
						</tran:TrafficArea>
					</tran:trafficArea>
					<tran:auxiliaryTrafficArea>
						<tran:AuxiliaryTrafficArea>
							<!-- green area -->
							<tran:function codeSpace="http://www.sig3d.de/codelists/standard/transportation/2.0/AuxiliaryTrafficArea_function.xml">1020</tran:function>
							<tran:lod2MultiSurface>
								<gml:MultiSurface>
									<gml:surfaceMember>
										<gml:Polygon>
											<gml:exterior>
												<gml:LinearRing>
													<gml:pos srsDimension="3">1.0 1.0 0.0</gml:pos>
													<gml:pos srsDimension="3">3.0 1.0 0.0</gml:pos>
													<gml:pos srsDimension="3">3.0 1.0 1.5</gml:pos>
													<gml:pos srsDimension="3">2.0 1.0 2.5</gml:pos>
													<gml:pos srsDimension="3">1.0 1.0 1.5</gml:pos>
													<gml:pos srsDimension="3">1.0 1.0 0.0</gml:pos>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
								</gml:MultiSurface>
							</tran:lod2MultiSurface>
						</tran:AuxiliaryTrafficArea>
					</tran:auxiliaryTrafficArea>
				</tran:Road>
			</grp:groupMember>
			<grp:groupMember role="road along the building where Beethoven was born">
				<tran:Road gml:id="ID_78">
					<tran:trafficArea>
						<tran:TrafficArea>
							<gml:name codeSpace="urn:OfficialRoadName">Bonngasse</gml:name>
							<tran:lod2MultiSurface>
								<gml:MultiSurface>
									<gml:surfaceMember>
										<gml:Polygon>
											<gml:exterior>
												<gml:LinearRing>
													<gml:pos srsDimension="3">1.0 1.0 0.0</gml:pos>
													<gml:pos srsDimension="3">3.0 1.0 0.0</gml:pos>
													<gml:pos srsDimension="3">3.0 1.0 1.5</gml:pos>
													<gml:pos srsDimension="3">2.0 1.0 2.5</gml:pos>
													<gml:pos srsDimension="3">1.0 1.0 1.5</gml:pos>
													<gml:pos srsDimension="3">1.0 1.0 0.0</gml:pos>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
								</gml:MultiSurface>
							</tran:lod2MultiSurface>
						</tran:TrafficArea>
					</tran:trafficArea>
				</tran:Road>
			</grp:groupMember>
			<grp:groupMember role="nice place to walk, near the university">
				<tran:Square gml:id="ID_79">
					<gml:name>Hofgarten</gml:name>
					<tran:trafficArea>
						<tran:TrafficArea>
							<tran:lod2MultiSurface>
								<gml:MultiSurface>
									<gml:surfaceMember>
										<gml:Polygon>
											<gml:exterior>
												<gml:LinearRing>
													<gml:pos srsDimension="3">1.0 1.0 0.0</gml:pos>
													<gml:pos srsDimension="3">3.0 1.0 0.0</gml:pos>
													<gml:pos srsDimension="3">3.0 1.0 1.5</gml:pos>
													<gml:pos srsDimension="3">2.0 1.0 2.5</gml:pos>
													<gml:pos srsDimension="3">1.0 1.0 1.5</gml:pos>
													<gml:pos srsDimension="3">1.0 1.0 0.0</gml:pos>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
								</gml:MultiSurface>
							</tran:lod2MultiSurface>
						</tran:TrafficArea>
					</tran:trafficArea>
				</tran:Square>
			</grp:groupMember>
			<grp:groupMember role="small river, suitable for rafting or rowing">
				<wtr:WaterBody>
					<gml:name>Ruhr</gml:name>
					<!-- river / stream -->
					<wtr:class codeSpace="http://www.sig3d.de/codelists/standard/waterbody/2.0/WaterBody_class.xml">1030</wtr:class>
					<wtr:boundedBy>
						<wtr:WaterSurface>
							<wtr:lod2Surface>
								<gml:Polygon>
									<gml:exterior>
										<gml:LinearRing>
											<gml:pos srsDimension="3">1.0 1.0 0.0</gml:pos>
											<gml:pos srsDimension="3">3.0 1.0 0.0</gml:pos>
											<gml:pos srsDimension="3">3.0 1.0 1.5</gml:pos>
											<gml:pos srsDimension="3">2.0 1.0 2.5</gml:pos>
											<gml:pos srsDimension="3">1.0 1.0 1.5</gml:pos>
											<gml:pos srsDimension="3">1.0 1.0 0.0</gml:pos>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</wtr:lod2Surface>
						</wtr:WaterSurface>
					</wtr:boundedBy>
				</wtr:WaterBody>
			</grp:groupMember>
			<grp:groupMember role="roads and areas suitable for handicapped persons">
				<grp:CityObjectGroup>
					<grp:function>roads and areas suitable for handicapped persons</grp:function>
					<grp:groupMember xlink:href="ID_76"/>
					<grp:groupMember xlink:href="ID_79"/>
				</grp:CityObjectGroup>
			</grp:groupMember>
		</grp:CityObjectGroup>
	</cityObjectMember>
</CityModel>
