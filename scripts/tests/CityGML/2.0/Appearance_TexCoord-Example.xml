<?xml version="1.0" encoding="utf-8"?>
<!-- CityGML Version No. 2.0, February 2012 -->
<!-- CityGML - GML 3.1.1 application schema for 3D city models -->
<!-- International encoding standard of the Open Geospatial Consortium, see http://www.opengeospatial.org/standards/citygml -->
<!-- Jointly developed by the Special Interest Group 3D (SIG 3D) of GDI-DE, see http://www.sig3d.org               -->
<!-- For further information see: http://www.citygml.org -->
<CityModel xmlns="http://www.opengis.net/citygml/2.0" xmlns:tran="http://www.opengis.net/citygml/transportation/2.0"
	xmlns:app="http://www.opengis.net/citygml/appearance/2.0" xmlns:gml="http://www.opengis.net/gml"
	xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://www.opengis.net/citygml/transportation/2.0 ../../CityGML/transportation.xsd
    http://www.opengis.net/citygml/appearance/2.0 ../../CityGML/appearance.xsd">
	<gml:boundedBy>
		<gml:Envelope srsDimension="3" srsName="urn:ogc:def:crs,crs:EPSG::31466,crs:EPSG::5783">
			<gml:lowerCorner>-45.0 -20.0 0.0</gml:lowerCorner>
			<gml:upperCorner>45.0 20.0 10.0</gml:upperCorner>
		</gml:Envelope>
	</gml:boundedBy>
	<cityObjectMember>
		<tran:Road>
			<app:appearance>
				<app:Appearance>
					<app:theme>visual</app:theme>
					<app:surfaceDataMember>
						<app:ParameterizedTexture gml:id="rd">
							<app:imageURI>rd.png</app:imageURI>
							<app:wrapMode>mirror</app:wrapMode>
							<app:target uri="#road">
								<app:TexCoordList>
									<app:textureCoordinates ring="#raEx"> 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 </app:textureCoordinates>
									<app:textureCoordinates ring="#raIn"> 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 </app:textureCoordinates>
									<app:textureCoordinates ring="#roadEx"> 0 0 2.5 0 2.5 1 0 1 0 0 </app:textureCoordinates>
									<app:textureCoordinates ring="#dirtEx"> 0 0 2.5 0 2.5 1 0 1 0 0 </app:textureCoordinates>
								</app:TexCoordList>
							</app:target>
						</app:ParameterizedTexture>
					</app:surfaceDataMember>
					<app:surfaceDataMember>
						<app:ParameterizedTexture gml:id="dt">
							<app:imageURI>dt.png</app:imageURI>
							<app:wrapMode>mirror</app:wrapMode>
							<app:target uri="#dirtPoly">
								<app:TexCoordList>
									<app:textureCoordinates ring="#dirtEx"> 0 0 1 0 1 1 0 1 0 0 </app:textureCoordinates>
								</app:TexCoordList>
							</app:target>
						</app:ParameterizedTexture>
					</app:surfaceDataMember>
				</app:Appearance>
			</app:appearance>
			<tran:lod1MultiSurface>
				<gml:MultiSurface gml:id="road">
					<gml:surfaceMember>
						<gml:Polygon gml:id="roundaboutPoly">
							<gml:exterior>
								<gml:LinearRing gml:id="raEx">
									<gml:posList srsDimension="3"> -8 20 5 -20 8 5 -20 -8 5 -8 -20 5 8 -20 5 20 -8 5 20 8 5 8 20 5 -8 20 5
									</gml:posList>
								</gml:LinearRing>
							</gml:exterior>
							<gml:interior>
								<gml:LinearRing gml:id="raIn">
									<gml:posList srsDimension="3"> -4 10 5 4 10 5 10 4 5 10 -4 5 4 -10 5 -4 -10 5 -10 -4 5 -10 4 5 -4 10 5
									</gml:posList>
								</gml:LinearRing>
							</gml:interior>
						</gml:Polygon>
					</gml:surfaceMember>
					<gml:surfaceMember>
						<gml:Polygon gml:id="roadPoly">
							<gml:exterior>
								<gml:LinearRing gml:id="roadEx">
									<gml:posList srsDimension="3"> 20 -4 5 45 -4 5 45 4 5 20 4 5 20 -4 5 </gml:posList>
								</gml:LinearRing>
							</gml:exterior>
						</gml:Polygon>
					</gml:surfaceMember>
					<gml:surfaceMember>
						<gml:Polygon gml:id="dirtPoly">
							<gml:exterior>
								<gml:LinearRing gml:id="dirtEx">
									<gml:posList srsDimension="3"> -20 -4 5 -45 -4 5 -45 4 5 -20 4 5 -20 -4 5 </gml:posList>
								</gml:LinearRing>
							</gml:exterior>
						</gml:Polygon>
					</gml:surfaceMember>
				</gml:MultiSurface>
			</tran:lod1MultiSurface>
		</tran:Road>
	</cityObjectMember>
</CityModel>
