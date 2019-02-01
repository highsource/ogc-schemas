<?xml version="1.0" encoding="UTF-8"?>
<!--
    GMLJP2 2.1 example with a referenceable grid coverage (gmljp2:GMLJP2ReferenceableGridCoverage)
    having an instantiable referenceable grid element (gmlcovrgrid:ReferenceableGridBySensorModel) in
    its domain set. The CSM RPC00B sensorModel of the referenceable grid element is set by xlink reference.
    while the sensorInstance of the referenceable grid element is embedded SensorML 2.0.
	This GMLJP2 2.1 instance is for a DigitalGlobe  WV TIFF file (zipped) over Rio-de-Janeiro System-Ready_1B_50cm
	(DigitalGlobe with RPC00B model) downloaded from http://www.digitalglobe.com/resources/product-samples/rio-de-janeiro-brazil
	(reference DG_16MAY02131231-M1BS-055670633010_01_P001).
	The CSM RPC00B Sensor model definition is under GMLJP2.SWG folder under V2.1 draft standard / SensorModelSamples /
	RPC0B_DG_WV, as implemented in DG VW specification, according to CSM (US GWG Community Sensor Model focus group
	specification STDI-0002_Apdix_E_ASDE2-1) for RPC00B.
-->

<gmljp2:GMLJP2CoverageCollection gml:id="Rio1"
		xmlns="http://www.opengis.net/gml/3.2"
		xmlns:gmlcovrgrid="http://www.opengis.net/gmlcov/gmlcovrgrid/1.0"
		xmlns:gmlcov="http://www.opengis.net/gmlcov/1.0"
		xmlns:gmljp2="http://www.opengis.net/gmljp2/2.1"
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
		<gmljp2:GMLJP2ReferenceableGridCoverage gml:id="RefGridCov_0">
			<gml:boundedBy>
				<gml:Envelope srsName="http://www.opengis.net/def/crs/EPSG/0/4326" axisLabels="Lat Long" uomLabels="deg deg" srsDimension="2">
					<gml:lowerCorner>-43.2003684     -23.0263692</gml:lowerCorner>
					<gml:upperCorner>-43.0428245     -22.8894003</gml:upperCorner>
				</gml:Envelope>
			</gml:boundedBy>
			<domainSet>
				<gmlcovrgrid:ReferenceableGridBySensorModel gml:id="RefGrid_0" dimension="2" srsDimension="3" srsName="http://www.opengis.net/def/crs/EPSG/0/4979">
					<limits>
						<GridEnvelope>
							<low>0 0</low>
							<high>7336 7986</high>
						</GridEnvelope>
					</limits>
					<axisLabels>Row Column</axisLabels>
					<gmlcovrgrid:sensorModel xlink:title="OGC:sensorML:CSM_RPC00B" xlink:href="https://portal.opengeospatial.org/files/?artifact_id=77813"/>
					<gmlcovrgrid:sensorInstance>
						<sml:SimpleProcess gml:id="SensorML_0_RPC00B"
								xmlns="http://www.opengis.net/gml/3.2"
								xmlns:gml="http://www.opengis.net/gml/3.2"
								xmlns:sml="http://www.opengis.net/sensorml/2.0"
								xmlns:swe="http://www.opengis.net/swe/2.0"
								xmlns:xlink="http://www.w3.org/1999/xlink"
								xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
								xsi:schemaLocation="http://www.opengis.net/sensorml/2.0 http://schemas.opengis.net/sensorml/2.0/sensorML.xsd">
							<gml:description>
								An example of an instance of the Community Sensor Model for RPC00B, as proposed by DGIWG in SML2.0
							</gml:description>
							<gml:identifier codeSpace="uid">http://www.example.org/def/sensor-model/DGIWG/1.0/CSM_RPC00B</gml:identifier>
							<sml:typeOf xlink:title="http://www.opengis.net/def/sensor-model/DGIWG/1.0/CSM_RPC00B"
										xlink:href="https://portal.opengeospatial.org/files/?artifact_id=77813"/>
							<sml:configuration>
								<sml:Settings>
									<sml:setValue ref="parameters/RPC00B_Params/ERR_BIAS">1.480000000000000e+00</sml:setValue>
									<sml:setValue ref="parameters/RPC00B_Params/ERR_RAND">1.290000000000000e+00</sml:setValue>
									<sml:setValue ref="parameters/RPC00B_Params/LINE_OFF">3992</sml:setValue>
									<sml:setValue ref="parameters/RPC00B_Params/SAMP_OFF">3667</sml:setValue>
									<sml:setValue ref="parameters/RPC00B_Params/LAT_OFF">-2.295800000000000e+01</sml:setValue>
									<sml:setValue ref="parameters/RPC00B_Params/LONG_OFF">-4.312140000000000e+01</sml:setValue>
									<sml:setValue ref="parameters/RPC00B_Params/HEIGHT_OFF">132</sml:setValue>
									<sml:setValue ref="parameters/RPC00B_Params/LINE_SCALE">3993</sml:setValue>
									<sml:setValue ref="parameters/RPC00B_Params/SAMP_SCALE">3668</sml:setValue>
									<sml:setValue ref="parameters/RPC00B_Params/LAT_SCALE">7.660000000000000e-02</sml:setValue>
									<sml:setValue ref="parameters/RPC00B_Params/LONG_SCALE">8.110000000000001e-02</sml:setValue>
									<sml:setValue ref="parameters/RPC00B_Params/HEIGHT_SCALE">501</sml:setValue>
									<sml:setArrayValues ref="parameters/RPC00B_Params/LINE_NUM_COEFF">
										<sml:ArrayValues>
											<sml:encoding>
												<swe:TextEncoding tokenSeparator=" " blockSeparator="&#x0A;"/>
											</sml:encoding>
											<sml:value>
5.997692000000000e-04 5.300710000000000e-02 1.060405000000000e+00 6.781648000000000e-03 1.304341000000000e-04 6.837408000000000e-07 -1.039336000000000e-05 -3.534793000000000e-04 -9.213983000000000e-04 -5.224494000000000e-07 -1.249479000000000e-06 -1.496295000000000e-06 -1.425152000000000e-05 -2.031819000000000e-06 -2.895077000000000e-05 -1.573550000000000e-04 -4.047168000000000e-05 -2.438193000000000e-07 -1.354090000000000e-06 -2.594373000000000e-07
											</sml:value>
										</sml:ArrayValues>
									</sml:setArrayValues>
									<sml:setArrayValues ref="parameters/RPC00B_Params/LINE_DEN_COEFF">
										<sml:ArrayValues>
											<sml:encoding>
												<swe:TextEncoding tokenSeparator=" " blockSeparator="&#x0A;"/>
											</sml:encoding>
											<sml:value>	
1.000000000000000e+00 -1.458582000000000e-04 5.512421000000000e-04 8.040210000000000e-06 1.830241000000000e-05 -9.966218000000000e-07 2.431857000000000e-06 -2.748566000000000e-05 1.090844000000000e-04 -3.816117000000000e-05 -1.621419000000000e-06 -1.142476000000000e-07 -1.235324000000000e-04 0.000000000000000e+00 -6.619828000000000e-06 -8.272211000000000e-04 -1.318910000000000e-07 -3.961112000000000e-08 -1.624079000000000e-05 0.000000000000000e+00
											</sml:value>
										</sml:ArrayValues>
									</sml:setArrayValues>
									<sml:setArrayValues ref="parameters/RPC00B_Params/SAMP_NUM_COEFF">
										<sml:ArrayValues>
											<sml:encoding>
												<swe:TextEncoding tokenSeparator=" " blockSeparator="&#x0A;"/>
											</sml:encoding>
											<sml:value>	
6.860120000000000e-03 -1.032202000000000e+00 9.002337000000000e-04 2.926985000000000e-02 9.897145000000000e-04 -1.770975000000000e-04 1.710241000000000e-04 -6.233348000000000e-03 -3.066917000000000e-04 9.441388000000000e-06 2.800347000000000e-06 -3.548515000000000e-05 -4.343459000000000e-05 -2.916795000000000e-06 -4.145524000000000e-05 -6.301348999999999e-04 -6.818026000000000e-08 -3.303297000000000e-06 -1.380852000000000e-05 8.169272000000001e-08
											</sml:value>
										</sml:ArrayValues>
									</sml:setArrayValues>
									<sml:setArrayValues ref="parameters/RPC00B_Params/SAMP_DEN_COEFF">
										<sml:ArrayValues>
											<sml:encoding>
												<swe:TextEncoding tokenSeparator=" " blockSeparator="&#x0A;"/>
											</sml:encoding>
											<sml:value>	
1.000000000000000e+00 6.509521000000000e-04 1.005558000000000e-03 -3.837196000000000e-04 1.256965000000000e-05 -2.208074000000000e-06 -1.916325000000000e-08 8.157947000000001e-06 -4.275273000000000e-05 2.746759000000000e-06 0.000000000000000e+00 -1.341338000000000e-07 8.229087000000000e-07 -1.788627000000000e-08 -3.235013000000000e-07 -1.528876000000000e-06 0.000000000000000e+00 -4.502659000000000e-08 3.425873000000000e-08 0.000000000000000e+00
											</sml:value>
										</sml:ArrayValues>
									</sml:setArrayValues>
								</sml:Settings>
							</sml:configuration>
						</sml:SimpleProcess>
					</gmlcovrgrid:sensorInstance>
				</gmlcovrgrid:ReferenceableGridBySensorModel>
			</domainSet>
			<gml:rangeSet>
				<gml:File>
					<gml:rangeParameters/>
					<gml:fileName>gmljp2://codestream/0</gml:fileName>
					<gml:fileStructure>Record Interleaved</gml:fileStructure>
				</gml:File>
			</gml:rangeSet>
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
