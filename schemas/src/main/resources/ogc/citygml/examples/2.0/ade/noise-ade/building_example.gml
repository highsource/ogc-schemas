<?xml version="1.0" encoding="ISO-8859-15"?>
<CityModel xmlns="http://www.opengis.net/citygml/2.0" xmlns:bldg="http://www.opengis.net/citygml/building/2.0"
	xmlns:gen="http://www.opengis.net/citygml/generics/2.0" xmlns:gml="http://www.opengis.net/gml"
	xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xAL="urn:oasis:names:tc:ciq:xsdschema:xAL:2.0"
	xmlns:noise="http://www.citygml.org/ade/noise_de/2.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://www.opengis.net/citygml/generics/2.0 http://schemas.opengis.net/citygml/generics/2.0/generics.xsd http://www.citygml.org/ade/noise_de/2.0 CityGML-NoiseADE.xsd">
	<gml:name>Gebäudemodell_LOD1_451304</gml:name>
	<gml:boundedBy>
		<gml:Envelope srsName="urn:ogc:def:crs,crs:EPSG:6.12:31466,crs:EPSG:6.12:5783">
			<gml:pos srsDimension="3">3423800.0 5705800.0 140.4</gml:pos>
			<gml:pos srsDimension="3">3426200.0 5708200.0 252.6</gml:pos>
		</gml:Envelope>
	</gml:boundedBy>
	<!-- Gebaeude Anfang 1  -->
	<cityObjectMember>
		<bldg:Building gml:id="UUID_25a09212-22b1-4374-ae9a-8ab9c30668b1">
			<gml:name>Wirtschafts-_oder_Industriegebäude_allgemein</gml:name>
			<gml:boundedBy>
				<gml:Envelope srsName="urn:ogc:def:crs,crs:EPSG:6.12:31466,crs:EPSG:6.12:5783">
					<gml:pos srsDimension="3">2523800.0 5705800.0 140.4</gml:pos>
					<gml:pos srsDimension="3">2526200.0 5708200.0 252.6</gml:pos>
				</gml:Envelope>
			</gml:boundedBy>
			<creationDate>2006-11-24</creationDate>
			<externalReference>
				<informationSystem>file:///L:/FB43_GeoDatZ/2006172_Laermkartierung
					MUNLV/Katasterbehoerde/SO/05974000.zip</informationSystem>
				<externalObject>
					<name>HA05974056007140017____002</name>
				</externalObject>
			</externalReference>
			<gen:stringAttribute name="HH-Entstehung">
				<gen:value>LASER</gen:value>
			</gen:stringAttribute>
			<bldg:function>1004</bldg:function>
			<bldg:measuredHeight uom="m">4.123</bldg:measuredHeight>
			<bldg:lod1Solid>
				<gml:Solid srsName="urn:ogc:def:crs,crs:EPSG:6.12:31466,crs:EPSG:6.12:5783">
					<gml:exterior>
						<gml:CompositeSurface>
							<!-- Boden -->
							<gml:surfaceMember>
								<gml:Polygon>
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList srsDimension="3">3424175.154 5707335.098 188.21453999999 3424181.766 5707338.286
												188.21453999999 3424185.659 5707330.224 188.21453999999 3424179.034 5707327.034 188.21453999999
												3424175.154 5707335.098 188.21453999999</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<!-- Dach -->
							<gml:surfaceMember>
								<gml:Polygon>
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList srsDimension="3">3424175.154 5707335.098 192.61 3424179.034 5707327.034 192.61 3424185.659
												5707330.224 192.61 3424181.766 5707338.286 192.61 3424175.154 5707335.098 192.61</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<!-- Seite 1 -->
							<gml:surfaceMember>
								<gml:Polygon>
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList srsDimension="3">3424175.154 5707335.098 188.21453999999 3424175.154 5707335.098 192.61
												3424181.766 5707338.286 192.61 3424181.766 5707338.286 188.21453999999 3424175.154 5707335.098
												188.21453999999</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<!-- Seite 2 -->
							<gml:surfaceMember>
								<gml:Polygon>
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList srsDimension="3">3424181.766 5707338.286 188.21453999999 3424181.766 5707338.286 192.61
												3424185.659 5707330.224 192.61 3424185.659 5707330.224 188.21453999999 3424181.766 5707338.286
												188.21453999999</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<!-- Seite 3 -->
							<gml:surfaceMember>
								<gml:Polygon>
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList srsDimension="3">3424185.659 5707330.224 188.21453999999 3424185.659 5707330.224 192.61
												3424179.034 5707327.034 192.61 3424179.034 5707327.034 188.21453999999 3424185.659 5707330.224
												188.21453999999</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<!-- Seite 4 -->
							<gml:surfaceMember>
								<gml:Polygon>
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList srsDimension="3">3424179.034 5707327.034 188.21453999999 3424179.034 5707327.034 192.61
												3424175.154 5707335.098 192.61 3424175.154 5707335.098 188.21453999999 3424179.034 5707327.034
												188.21453999999</gml:posList>
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
									<xAL:LocalityName>Wickede (Ruhr)</xAL:LocalityName>
									<xAL:Thoroughfare Type="Street">
										<xAL:ThoroughfareNumber>17</xAL:ThoroughfareNumber>
										<xAL:ThoroughfareName>Marienhöhe</xAL:ThoroughfareName>
									</xAL:Thoroughfare>
									<xAL:PostalCode>
										<xAL:PostalCodeNumber>58739</xAL:PostalCodeNumber>
									</xAL:PostalCode>
								</xAL:Locality>
							</xAL:Country>
						</xAL:AddressDetails>
					</xalAddress>
				</Address>
			</bldg:address>
			<noise:buildingReflection>glatte Gebäudefassade</noise:buildingReflection>
			<noise:buildingReflectionCorrection uom="dB">4.123</noise:buildingReflectionCorrection>
			<noise:buildingLDenMax uom="dB">85.123</noise:buildingLDenMax>
			<noise:buildingLDenMin uom="dB">44.123</noise:buildingLDenMin>
			<noise:buildingLDenEq uom="dB">58.123</noise:buildingLDenEq>
			<noise:buildingLNightMax uom="dB">56.123</noise:buildingLNightMax>
			<noise:buildingLNightMin uom="dB">39.123</noise:buildingLNightMin>
			<noise:buildingLNightEq uom="dB">43.123</noise:buildingLNightEq>
			<noise:buildingHabitants>22</noise:buildingHabitants>
			<noise:buildingAppartments>8</noise:buildingAppartments>
			<noise:buildingImmissionPoints>45 4 3 4 5 2 1 4 3 50 5 2 4 3 1 5 7 2 55 4 3 2 6 5 4 1 2 60 5 3 4 1 2 4 3 1 65 5 4 1 2 3 6 4
				2 70 4 2 5 1 3 2 1 1 75 5 2 3 1 4 3 3 2</noise:buildingImmissionPoints>
			<!-- Beschreibung der IntList-Spalteninhalte in Dokument Beschreibung CityGML-noise-objekte.doc -->
			<noise:remark>keine Anmerkung</noise:remark>
		</bldg:Building>
	</cityObjectMember>
</CityModel>
