<?xml version="1.0" encoding="UTF-8" ?>

<!--
    GMLJP2 2.1 example with a referenceable grid coverage (gmljp2:GMLJP2ReferenceableGridCoverage)
    having an instantiable referenceable grid element (gmlcovrgrid:ReferenceableGridBySensorModel) in
    its domain set. The sensorModel and sensorInstance of the referenceable grid element,
    both set by xlink reference, both use the minimal encoding of the CSM frame camera metadata
	profile put together by Mike Botts for the SensorML 2.0 RFC. (A nearly complete SensorML 2.0 encoding
	may be found at http://gmljp2.aeroptic.com)
-->

<gmljp2:GMLJP2CoverageCollection gml:id="ID_Collection_0"
        xmlns="http://www.opengis.net/gml/3.2"
        xmlns:gmlcovrgrid="http://www.opengis.net/gmlcov/gmlcovrgrid/1.0"
        xmlns:gmljp2="http://www.opengis.net/gmljp2/2.1"
        xmlns:gmlcov="http://www.opengis.net/gmlcov/1.0"
        xmlns:gml="http://www.opengis.net/gml/3.2"
        xmlns:swe="http://www.opengis.net/swe/2.0"
        xmlns:xlink="http://www.w3.org/1999/xlink"
        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xsi:schemaLocation="http://www.opengis.net/gmljp2/2.1 http://schemas.opengis.net/gmljp2/2.1/gmljp2.xsd">
    <gml:domainSet nilReason="inapplicable"/>
    <gml:rangeSet>
		<gml:DataBlock>
			<gml:rangeParameters nilReason="inapplicable"/>
			<gml:doubleOrNilReasonTupleList>inapplicable</gml:doubleOrNilReasonTupleList>
		</gml:DataBlock>
    </gml:rangeSet>
    <gmlcov:rangeType>
		<swe:DataRecord>
			<swe:field name="Collection"> </swe:field>
		</swe:DataRecord>
    </gmlcov:rangeType>
    <gmljp2:featureMember>
        <gmljp2:GMLJP2ReferenceableGridCoverage gml:id="ID_Coverage_0">
            <domainSet>
                <gmlcovrgrid:ReferenceableGridBySensorModel gml:id="ID_SensorModel_0" dimension="2" 
						srsDimension="3" srsName="http://www.opengis.net/def/crs/EPSG/0/4979">
                    <limits>
                        <GridEnvelope>
                            <low>0 0</low>
                            <high>6732 8984</high>
                        </GridEnvelope>
                    </limits>
                    <axisLabels>Row Column</axisLabels>
                    <gmlcovrgrid:sensorModel xlink:href="http://www.sensorml.com/sensorML-2.0/examples/csmFrame.html"/>
                    <gmlcovrgrid:sensorInstance xlink:href="http://www.sensorml.com/sensorML-2.0/examples/myHDCamera.html"/>
                </gmlcovrgrid:ReferenceableGridBySensorModel>
            </domainSet>
            <rangeSet>
                <File>
                    <rangeParameters />
                    <fileName>gmljp2://codestream</fileName>
                    <fileStructure>inapplicable</fileStructure>
                    <mimeType>image/jp2</mimeType>
                </File>
            </rangeSet>
            <gmlcov:rangeType>
                <swe:DataRecord>
					<swe:field name="Color">
						<swe:Quantity definition="http://www.opengis.net/def/ogc-eo/opt/SpectralMode/COLOR">
							<swe:description>Color RGB</swe:description>
							<swe:uom code="unity"/>
						</swe:Quantity>
					</swe:field>
                </swe:DataRecord>
            </gmlcov:rangeType>
        </gmljp2:GMLJP2ReferenceableGridCoverage>
    </gmljp2:featureMember>
</gmljp2:GMLJP2CoverageCollection>
