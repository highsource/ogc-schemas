<?xml version="1.0" encoding="UTF-8"?>
<CityModel xmlns="http://www.opengis.net/citygml/2.0" xmlns:xlink="http://www.w3.org/1999/xlink"
	xmlns:gml="http://www.opengis.net/gml" xmlns:bldg="http://www.opengis.net/citygml/building/2.0"
	xmlns:grp="http://www.opengis.net/citygml/cityobjectgroup/2.0" xmlns:stdOp="http://unr.crl.hitachi.co.jp/ade/standard_opening"
	xmlns:unr="http://unr.crl.hitachi.co.jp/ade/unr" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://unr.crl.hitachi.co.jp/ade/standard_opening stdOp.xsd
	http://unr.crl.hitachi.co.jp/ade/unr unr.xsd">
	<cityObjectMember>
		<grp:CityObjectGroup gml:id="Storey_0">
			<gml:name>Sample Storey 0</gml:name>
			<gml:name>storeyNo_0</gml:name>
			<grp:class>building separation</grp:class>
			<grp:function>lod4Storey</grp:function>
			<grp:groupMember xlink:href="#FloorSurface_1"/>
			<grp:groupMember xlink:href="#Door_1"/>
			<unr:storeyProperty>
				<unr:Storey>
					<unr:heightAboveGround uom="#m">0.0</unr:heightAboveGround>
					<unr:heightToCeiling uom="#m">5.0</unr:heightToCeiling>
				</unr:Storey>
			</unr:storeyProperty>
		</grp:CityObjectGroup>
	</cityObjectMember>
	<cityObjectMember>
		<bldg:Building>
			<bldg:boundedBy>
				<bldg:FloorSurface gml:id="FloorSurface_1">
					<gml:name>Sample FloorSurface 1</gml:name>
					<bldg:lod4MultiSurface>
						<gml:MultiSurface>
							<gml:surfaceMember>
								<gml:Polygon>
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList srsDimension="3"> 0.0 0.0 0.0 50.0 0.0 0.0 50.0 50.0 0.0 0.0 50.0 0.0 0.0 0.0 0.0
											</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod4MultiSurface>
					<unr:surfaceMaterialType>2491</unr:surfaceMaterialType>
					<unr:surfaceRoofType>2</unr:surfaceRoofType>
					<unr:surfaceInOutdoorType>2</unr:surfaceInOutdoorType>
					<unr:surfaceJointType>4</unr:surfaceJointType>
				</bldg:FloorSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:WallSurface>
					<bldg:opening>
						<bldg:Door gml:id="Door_1">
							<gml:name>Sample Door 1</gml:name>
							<bldg:lod4MultiSurface>
								<gml:MultiSurface>
									<gml:surfaceMember>
										<gml:Polygon>
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList srsDimension="3"> 0.0 0.0 0.0 0.0 0.0 20.0 0.0 10.0 20.0 0.0 10.0 0.0 0.0 0.0 0.0
													</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
								</gml:MultiSurface>
							</bldg:lod4MultiSurface>
							<unr:openingMaterialType>2491</unr:openingMaterialType>
							<unr:openingRoofType>2</unr:openingRoofType>
							<unr:openingJointType>1</unr:openingJointType>
							<stdOp:doorOperationType>swinging</stdOp:doorOperationType>
						</bldg:Door>
					</bldg:opening>
				</bldg:WallSurface>
			</bldg:boundedBy>
		</bldg:Building>
	</cityObjectMember>
</CityModel>
