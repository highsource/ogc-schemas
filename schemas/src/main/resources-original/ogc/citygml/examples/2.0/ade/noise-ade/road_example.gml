<?xml version="1.0" encoding="ISO-8859-15"?>
<CityModel xmlns="http://www.opengis.net/citygml/2.0" xmlns:gml="http://www.opengis.net/gml"
	xmlns:tran="http://www.opengis.net/citygml/transportation/2.0" xmlns:gen="http://www.opengis.net/citygml/generics/2.0"
	xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xAL="urn:oasis:names:tc:ciq:xsdschema:xAL:2.0"
	xmlns:noise="http://www.citygml.org/ade/noise_de/2.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://www.opengis.net/citygml/generics/2.0 http://schemas.opengis.net/citygml/generics/2.0/generics.xsd http://www.citygml.org/ade/noise_de/2.0 CityGML-NoiseADE.xsd">
	<gml:name>Strassenmodell</gml:name>
	<gml:boundedBy>
		<gml:Envelope srsName="urn:ogc:def:crs,crs:EPSG:6.12:31466,crs:EPSG:6.12:5783">
			<gml:pos srsDimension="3">2523800.0 5705800.0 140.4</gml:pos>
			<gml:pos srsDimension="3">2526200.0 5708200.0 252.6</gml:pos>
		</gml:Envelope>
	</gml:boundedBy>
	<cityObjectMember>
		<tran:Road gml:id="CR_0815">
			<gml:name>B1</gml:name>
			<gml:boundedBy>
				<gml:Envelope srsName="urn:ogc:def:crs,crs:EPSG:6.12:31466,crs:EPSG:6.12:5783">
					<gml:pos srsDimension="3">2523800.0 5705800.0 140.4</gml:pos>
					<gml:pos srsDimension="3">2526200.0 5708200.0 252.6</gml:pos>
				</gml:Envelope>
			</gml:boundedBy>
			<creationDate>1967-08-13</creationDate>
			<terminationDate>1967-08-13</terminationDate>
			<tran:function>B1303</tran:function>
			<tran:lod0Network>
				<gml:CompositeCurve srsName="urn:ogc:def:crs,crs:EPSG:6.12:31466,crs:EPSG:6.12:5783">
					<gml:curveMember>
						<gml:LineString>
							<gml:coordinates decimal="." cs="," ts=" ">2524175,5707335,188 2524181,5707338,188 2524185,5707330,188
                                2524179,5707327,188</gml:coordinates>
						</gml:LineString>
					</gml:curveMember>
					<gml:curveMember>
						<gml:LineString>
							<gml:coordinates decimal="." cs="," ts=" ">2524175,5707335,188 2524181,5707338,188 2524185,5707330,188
                                2524179,5707327,188</gml:coordinates>
						</gml:LineString>
					</gml:curveMember>
				</gml:CompositeCurve>
			</tran:lod0Network>
			<noise:noiseRoadSegmentProperty>
				<noise:NoiseRoadSegment gml:id="CNRS_0815">
					<gml:boundedBy>
						<gml:Envelope srsName="urn:ogc:def:crs,crs:EPSG:6.12:31466,crs:EPSG:6.12:5783">
							<gml:pos srsDimension="3">2523800.0 5705800.0 140.4</gml:pos>
							<gml:pos srsDimension="3">2526200.0 5708200.0 252.6</gml:pos>
						</gml:Envelope>
					</gml:boundedBy>
					<creationDate>1967-08-13</creationDate>
					<terminationDate>1967-08-13</terminationDate>
					<externalReference>
						<informationSystem>file:///L:/FB43_GeoDatZ/2006172_Laermkartierung MUNLV/Katasterbehoerde/SO/05974000.zip</informationSystem>
						<externalObject>
							<name>B21</name>
						</externalObject>
					</externalReference>
					<gen:stringAttribute name="Entstehung">
						<gen:value>Digitalisierung</gen:value>
					</gen:stringAttribute>
					<gen:stringAttribute name="Aktualisierung">
						<gen:value>jährlich</gen:value>
					</gen:stringAttribute>
					<noise:mDay uom="kfzph">2564.123</noise:mDay>
					<noise:mEvening uom="kfzph">145.123</noise:mEvening>
					<noise:mNight uom="kfzph">1231.123</noise:mNight>
					<noise:mDay16 uom="kfzph">2010.123</noise:mDay16>
					<noise:pDay uom="percent">25.123</noise:pDay>
					<noise:pEvening uom="percent">35.123</noise:pEvening>
					<noise:pNight uom="percent">45.123</noise:pNight>
					<noise:pDay16 uom="percent">30.123</noise:pDay16>
					<noise:dtv uom="kfzp24h">20564.123</noise:dtv>
					<noise:speedDayPkw uom="kmph">130.123</noise:speedDayPkw>
					<noise:speedEveningPkw uom="kmph">100.123</noise:speedEveningPkw>
					<noise:speedNightPkw uom="kmph">50.123</noise:speedNightPkw>
					<noise:speedDayLkw uom="kmph">80.123</noise:speedDayLkw>
					<noise:speedEveningLkw uom="kmph">80.123</noise:speedEveningLkw>
					<noise:speedNightLkw uom="kmph">50.123</noise:speedNightLkw>
					<noise:roadSurfaceMaterial>Pflaster mit ebener Oberfläche</noise:roadSurfaceMaterial>
					<noise:roadSurfaceCorrection uom="dB">2.123</noise:roadSurfaceCorrection>
					<noise:distanceCarriageway uom="m">15.123</noise:distanceCarriageway>
					<noise:distanceD uom="m">10.123</noise:distanceD>
					<noise:bridge>true</noise:bridge>
					<noise:tunnel>false</noise:tunnel>
					<noise:roadGradientPercent uom="percent">5.245</noise:roadGradientPercent>
					<noise:lod0BaseLine>
						<gml:LineString srsName="urn:ogc:def:crs,crs:EPSG:6.12:31466,crs:EPSG:6.12:5783" srsDimension="3">
							<gml:coordinates decimal="." cs="," ts=" ">2524175,5707335,188 2524181,5707338,188 2524185,5707330,188
                                2524179,5707327,188</gml:coordinates>
						</gml:LineString>
					</noise:lod0BaseLine>
					<noise:lineage>ATKIS und StraßenNRW-Daten</noise:lineage>
				</noise:NoiseRoadSegment>
			</noise:noiseRoadSegmentProperty>
			<noise:noiseRoadSegmentProperty>
				<noise:NoiseRoadSegment gml:id="CNRS_0816">
					<gml:boundedBy>
						<gml:Envelope srsName="urn:ogc:def:crs,crs:EPSG:6.12:31466,crs:EPSG:6.12:5783">
							<gml:pos srsDimension="3">2523800.0 5705800.0 140.4</gml:pos>
							<gml:pos srsDimension="3">2526200.0 5708200.0 252.6</gml:pos>
						</gml:Envelope>
					</gml:boundedBy>
					<externalReference>
						<informationSystem>file:///L:/FB43_GeoDatZ/2006172_Laermkartierung MUNLV/Katasterbehoerde/SO/05974000.zip</informationSystem>
						<externalObject>
							<name>B21</name>
						</externalObject>
					</externalReference>
					<gen:stringAttribute name="Entstehung">
						<gen:value>Digitalisierung</gen:value>
					</gen:stringAttribute>
					<gen:stringAttribute name="Aktualisierung">
						<gen:value>jährlich</gen:value>
					</gen:stringAttribute>
					<noise:mDay uom="kfzph">2564.123</noise:mDay>
					<noise:mEvening uom="kfzph">145.123</noise:mEvening>
					<noise:mNight uom="kfzph">1231.123</noise:mNight>
					<noise:mDay16 uom="kfzph">2010.123</noise:mDay16>
					<noise:pDay uom="percent">25.123</noise:pDay>
					<noise:pEvening uom="percent">35.123</noise:pEvening>
					<noise:pNight uom="percent">45.123</noise:pNight>
					<noise:pDay16 uom="percent">30.123</noise:pDay16>
					<noise:dtv uom="kfzp24h">20564.123</noise:dtv>
					<noise:speedDayPkw uom="kmph">130.123</noise:speedDayPkw>
					<noise:speedEveningPkw uom="kmph">100.123</noise:speedEveningPkw>
					<noise:speedNightPkw uom="kmph">50.123</noise:speedNightPkw>
					<noise:speedDayLkw uom="kmph">80.123</noise:speedDayLkw>
					<noise:speedEveningLkw uom="kmph">80.123</noise:speedEveningLkw>
					<noise:speedNightLkw uom="kmph">50.123</noise:speedNightLkw>
					<noise:roadSurfaceMaterial>Pflaster mit ebener Oberfläche</noise:roadSurfaceMaterial>
					<noise:roadSurfaceCorrection uom="dB">2.123</noise:roadSurfaceCorrection>
					<noise:distanceCarriageway uom="m">15.123</noise:distanceCarriageway>
					<noise:distanceD uom="m">10.123</noise:distanceD>
					<noise:bridge>true</noise:bridge>
					<noise:tunnel>false</noise:tunnel>
					<noise:roadGradientPercent uom="percent">5.245</noise:roadGradientPercent>
					<noise:lod0BaseLine>
						<gml:LineString srsName="urn:ogc:def:crs,crs:EPSG:6.12:31466,crs:EPSG:6.12:5783" srsDimension="3">
							<gml:coordinates decimal="." cs="," ts=" ">2524175,5707335,188 2524181,5707338,188 2524185,5707330,188
                                2524179,5707327,188</gml:coordinates>
						</gml:LineString>
					</noise:lod0BaseLine>
					<noise:lineage>ATKIS und StraßenNRW-Daten</noise:lineage>
				</noise:NoiseRoadSegment>
			</noise:noiseRoadSegmentProperty>
		</tran:Road>
	</cityObjectMember>
</CityModel>
