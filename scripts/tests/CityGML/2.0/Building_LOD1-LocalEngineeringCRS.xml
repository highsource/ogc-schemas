<?xml version="1.0" encoding="utf-8"?>
<!-- CityGML Version No. 2.0, February 2012 -->
<!-- CityGML - GML 3.1.1 application schema for 3D city models -->
<!-- International encoding standard of the Open Geospatial Consortium, see http://www.opengeospatial.org/standards/citygml -->
<!-- Jointly developed by the Special Interest Group 3D (SIG 3D) of GDI-DE, see http://www.sig3d.org               -->
<!-- For further information see: http://www.citygml.org -->
<CityModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.opengis.net/citygml/2.0"
	xmlns:xAL="urn:oasis:names:tc:ciq:xsdschema:xAL:2.0" xmlns:xlink="http://www.w3.org/1999/xlink"
	xmlns:gml="http://www.opengis.net/gml" xmlns:dem="http://www.opengis.net/citygml/relief/2.0"
	xmlns:bldg="http://www.opengis.net/citygml/building/2.0"
	xsi:schemaLocation="http://www.opengis.net/citygml/building/2.0 ../../CityGML/building.xsd http://www.opengis.net/citygml/relief/2.0 ../../CityGML/relief.xsd">
	<gml:metaDataProperty>
		<!-- Local EngineeringCRS definition contained specified inline as metadata in this XML instance. -->
		<!-- This CRS is referenced by geometry throughtout this instance by srsName value #local-CRS-1 -->
		<gml:EngineeringCRS xmlns:metadata="urn:x-ogp:spec:schema-xsd:localmetadata" gml:id="local-CRS-1">
			<gml:metaDataProperty>
				<metadata:CommonMetaData>
					<metadata:type>engineering</metadata:type>
				</metadata:CommonMetaData>
			</gml:metaDataProperty>
			<gml:srsName codeSpace="XYZ">urn:ogc:def:crs:local:CRS:1</gml:srsName>
			<gml:scope>CityGML</gml:scope>
			<gml:usesCS>
				<gml:CartesianCS gml:id="local-CS-1">
					<gml:metaDataProperty>
						<metadata:CommonMetaData>
							<metadata:type>Cartesian</metadata:type>
							<metadata:description>Cartesian 3D CS. Axes: UoM: m.</metadata:description>
						</metadata:CommonMetaData>
					</gml:metaDataProperty>
					<gml:csName codeSpace="XYZ">urn:ogc:def:crs:local:CS:1</gml:csName>
					<gml:usesAxis>
						<gml:CoordinateSystemAxis gml:id="local-axis-1" gml:uom="urn:ogc:def:uom:EPSG::9001">
							<gml:name/>
							<gml:axisID>
								<gml:name>X</gml:name>
							</gml:axisID>
							<gml:axisAbbrev>x</gml:axisAbbrev>
							<gml:axisDirection codeSpace="XYZ">X</gml:axisDirection>
						</gml:CoordinateSystemAxis>
					</gml:usesAxis>
					<gml:usesAxis>
						<gml:CoordinateSystemAxis gml:id="local-axis-2" gml:uom="urn:ogc:def:uom:EPSG::9001">
							<gml:name/>
							<gml:axisID>
								<gml:name>Y</gml:name>
							</gml:axisID>
							<gml:axisAbbrev>y</gml:axisAbbrev>
							<gml:axisDirection codeSpace="XYZ">Y</gml:axisDirection>
						</gml:CoordinateSystemAxis>
					</gml:usesAxis>
					<gml:usesAxis>
						<gml:CoordinateSystemAxis gml:id="local-axis-3" gml:uom="urn:ogc:def:uom:EPSG::9001">
							<gml:name/>
							<gml:axisID>
								<gml:name>Z</gml:name>
							</gml:axisID>
							<gml:axisAbbrev>z</gml:axisAbbrev>
							<gml:axisDirection codeSpace="XYZ">Z</gml:axisDirection>
						</gml:CoordinateSystemAxis>
					</gml:usesAxis>
				</gml:CartesianCS>
			</gml:usesCS>
			<gml:usesEngineeringDatum>
				<gml:EngineeringDatum gml:id="local-datum-1">
					<gml:metaDataProperty>
						<metadata:CommonMetaData>
							<metadata:type>Cartesian datum</metadata:type>
						</metadata:CommonMetaData>
					</gml:metaDataProperty>
					<gml:datumName codeSpace="XYZ">Datum1</gml:datumName>
					<gml:anchorPoint codeSpace="urn:ogc:def:crs,crs:EPSG::25832,crs:EPSG::5783">458868.0 5438343.0 112.0</gml:anchorPoint>
					<!-- The anchor point defines the origin of the local CS with respect to the world CRS -->
					<!-- In this example, the anchor point references a point on the earth (in Germany) using a compound CRS -->
					<!-- For planimetry, the reference system ETRS89 / UTM zone 32N (EPSG code 25832) is used -->
					<!-- The vertical reference system is DHHN92 height (EPSG code 5783) -->
				</gml:EngineeringDatum>
			</gml:usesEngineeringDatum>
		</gml:EngineeringCRS>
	</gml:metaDataProperty>
	<gml:description>Simple example for a CityGML dataset using a local engineering CRS</gml:description>
	<gml:name>Simple 3D city model LOD1 without Appearance</gml:name>
	<gml:boundedBy>
		<gml:Envelope srsName="#local-CRS-1">
			<!-- Encoding of local-CRS-1 is specified in CityModel metadataProperty in this document-->
			<gml:pos srsDimension="3">0.0 0.0 0.0</gml:pos>
			<gml:pos srsDimension="3">24.0 19.0 4.0</gml:pos>
		</gml:Envelope>
	</gml:boundedBy>
	<cityObjectMember>
		<bldg:Building gml:id="GML_7b1a5a6f-ddad-4c3d-a507-3eb9ee0a8e68">
			<gml:name>Example Building LOD1 </gml:name>
			<bldg:function codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_function.xml">1000</bldg:function>
			<bldg:yearOfConstruction>1985</bldg:yearOfConstruction>
			<bldg:roofType codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_roofType.xml">1030</bldg:roofType>
			<bldg:measuredHeight uom="#m">5.0</bldg:measuredHeight>
			<bldg:storeysAboveGround>1</bldg:storeysAboveGround>
			<bldg:storeyHeightsAboveGround uom="#m">3.0</bldg:storeyHeightsAboveGround>
			<bldg:lod1Solid>
				<gml:Solid>
					<gml:exterior>
						<gml:CompositeSurface gml:id="lod1Surface">
							<!-- Face Side 1 -->
							<gml:surfaceMember>
								<gml:Polygon>
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>7.0 7.0 0.0 17.0 7.0 0.0 17.0 7.0 4.0 7.0 7.0 4.0 7.0 7.0 0.0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<!-- Face Side 2 -->
							<gml:surfaceMember>
								<gml:Polygon>
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>17.0 7.0 0.0 17.0 12.0 0.0 17.0 12.0 4.0 17.0 7.0 4.0 17.0 7.0 0.0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<!-- Face Side 3 -->
							<gml:surfaceMember>
								<gml:Polygon>
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>17.0 12.0 0.0 7.0 12.0 0.0 7.0 12.0 4.0 17.0 12.0 4.0 17.0 12.0 0.0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<!-- Face Side 4 -->
							<gml:surfaceMember>
								<gml:Polygon>
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>7.0 12.0 0.0 7.0 7.0 0.0 7.0 7.0 4.0 7.0 12.0 4.0 7.0 12.0 0.0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<!-- Face Top -->
							<gml:surfaceMember>
								<gml:Polygon>
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>7.0 7.0 4.0 17.0 7.0 4.0 17.0 12.0 4.0 7.0 12.0 4.0 7.0 7.0 4.0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<!-- Face Bottom -->
							<gml:surfaceMember>
								<gml:Polygon>
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>7.0 7.0 0.0 7.0 12.0 0.0 17.0 12.0 0.0 17.0 7.0 0.0 7.0 7.0 0.0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:CompositeSurface>
					</gml:exterior>
				</gml:Solid>
			</bldg:lod1Solid>
			<bldg:address>
				<Address>
					<xalAddress>
						<xAL:AddressDetails>
							<xAL:Country>
								<xAL:CountryName>Germany</xAL:CountryName>
								<xAL:Locality Type="Town">
									<xAL:LocalityName>Eggenstein-Leopoldshafen</xAL:LocalityName>
									<xAL:Thoroughfare Type="Street">
										<xAL:ThoroughfareNumber>1</xAL:ThoroughfareNumber>
										<xAL:ThoroughfareName>Hermann-von-Helmholtz-Platz</xAL:ThoroughfareName>
									</xAL:Thoroughfare>
									<xAL:PostalCode>
										<xAL:PostalCodeNumber>76344</xAL:PostalCodeNumber>
									</xAL:PostalCode>
								</xAL:Locality>
							</xAL:Country>
						</xAL:AddressDetails>
					</xalAddress>
					<multiPoint>
						<gml:MultiPoint>
							<gml:pointMember>
								<gml:Point>
									<gml:pos srsDimension="3">12.0 9.59999999962747 0.0</gml:pos>
								</gml:Point>
							</gml:pointMember>
						</gml:MultiPoint>
					</multiPoint>
				</Address>
			</bldg:address>
		</bldg:Building>
	</cityObjectMember>
	<cityObjectMember>
		<dem:ReliefFeature gml:id="GML_6bb30328-7599-4500-90ef-766fde6aa67b">
			<gml:name>Example TIN LOD1</gml:name>
			<dem:lod>1</dem:lod>
			<dem:reliefComponent>
				<dem:TINRelief gml:id="GUID_04D4DsNGv1MfvYu5O3lkcW">
					<gml:name>Ground</gml:name>
					<dem:lod>1</dem:lod>
					<dem:tin>
						<gml:TriangulatedSurface gml:id="ground">
							<gml:trianglePatches>
								<gml:Triangle>
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>0.0 19.0 0.0 7.0 12.0 0.0 15.0 19.0 2.0 0.0 19.0 0.0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Triangle>
								<gml:Triangle>
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>7.0 12.0 0.0 17.0 12.0 0.0 15.0 19.0 2.0 7.0 12.0 0.0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Triangle>
								<gml:Triangle>
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>15.0 19.0 2.0 17.0 12.0 0.0 24.0 19.0 0.0 15.0 19.0 2.0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Triangle>
								<gml:Triangle>
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>17.0 12.0 0.0 17.0 7.0 0.0 24.0 19.0 0.0 17.0 12.0 0.0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Triangle>
								<gml:Triangle>
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>17.0 7.0 0.0 24.0 0.0 0.0 24.0 19.0 0.0 17.0 7.0 0.0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Triangle>
								<gml:Triangle>
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>7.0 7.0 0.0 24.0 0.0 0.0 17.0 7.0 0.0 7.0 7.0 0.0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Triangle>
								<gml:Triangle>
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>0.0 0.0 0.0 24.0 0.0 0.0 7.0 7.0 0.0 0.0 0.0 0.0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Triangle>
								<gml:Triangle>
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>0.0 0.0 0.0 7.0 7.0 0.0 7.0 12.0 0.0 0.0 0.0 0.0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Triangle>
								<gml:Triangle>
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>0.0 0.0 0.0 7.0 12.0 0.0 0.0 19.0 0.0 0.0 0.0 0.0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Triangle>
							</gml:trianglePatches>
						</gml:TriangulatedSurface>
					</dem:tin>
				</dem:TINRelief>
			</dem:reliefComponent>
		</dem:ReliefFeature>
	</cityObjectMember>
</CityModel>
