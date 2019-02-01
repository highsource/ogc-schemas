<?xml version="1.0" encoding="UTF-8"?>
<!--
    GMLJP2 2.1 example with a referenceable grid coverage (gmljp2:GMLJP2ReferenceableGridCoverage)
    having an instantiable referenceable grid element (gmlcovrgrid:ReferenceableGridBySensorModel) in
    its domain set. The CSM RPC00B sensorModel of the referenceable grid element is set by xlink reference
    while the sensorInstance of the referenceable grid element is embedded SensorML 2.0.
	This GMLJP2 2.1 instance is for an Airbus PHR Primary scene (SEN)on Melbourne (JPEG2000) provided by
	Airbus Defense (Courtesy Airbus DS GEO 2015), reference PHR1B_PMS-N_201512240021586_SEN_2790528101-001_R1C1.
	The CSM RPC00B Sensor model definition is under GMLJP2.SWG folder under V2.1 SensorModelSamples / RPC0B_Airbus_D&S_PHR,
	as implemented in PLEIADES specification, according to CSM (US GWG Community Sensor Model focus group
	specification STDI-0002_Apdix_E_ASDE2-1) for RPC00B.
-->
<gmljp2:GMLJP2CoverageCollection gml:id="Melbourne_SEN_1"
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
		<gmljp2:GMLJP2ReferenceableGridCoverage gml:id="RefGridCov_1">
			<gml:boundedBy>
				<gml:Envelope srsName="http://www.opengis.net/def/crs/EPSG/0/4326" axisLabels="Lat Long" uomLabels="deg deg" srsDimension="2">
					<gml:lowerCorner>-37.85614671656685    144.8875149704682</gml:lowerCorner>
					<gml:upperCorner>-37.80072316351313    144.9918430155712</gml:upperCorner>
				</gml:Envelope>
			</gml:boundedBy>
			<domainSet>
				<gmlcovrgrid:ReferenceableGridBySensorModel gml:id="RefGrid_0" dimension="2" srsDimension="3" srsName="http://www.opengis.net/def/crs/EPSG/0/4979">
					<limits>
						<GridEnvelope>
							<low>1 1</low>
							<high>17833 12102</high>
						</GridEnvelope>
					</limits>
					<axisLabels>Row Column</axisLabels>
					<gmlcovrgrid:sensorModel xlink:title="OGC:sensorML:PHR_RPC00B_I"
											 xlink:href="https://portal.opengeospatial.org/files/?artifact_id=77983"/>
					<gmlcovrgrid:sensorInstance>
						<sml:SimpleProcess gml:id="PHR_SENSOR_RPC_I_01"
								xmlns:sml="http://www.opengis.net/sensorml/2.0"
								xmlns:swe="http://www.opengis.net/swe/2.0"
								xmlns:gml="http://www.opengis.net/gml/3.2"
								xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
								xmlns:xlink="http://www.w3.org/1999/xlink"
								xmlns:xi="http://www.w3.org/2001/XInclude"
								xsi:schemaLocation="http://www.opengis.net/sensorml/2.0 http://schemas.opengis.net/sensorML/2.0/sensorML.xsd">
							<gml:description>
								An example of an instance of the Community Sensor Model for PHR SENSOR RPC00B Inverse model, as proposed by DGIWG in SML2.0
							</gml:description>
							<gml:identifier codeSpace="uid">http://www.example.org/def/sensor-model/DGIWG/1.0/PHR_RPC00B_I</gml:identifier>
							<sml:typeOf xlink:title="http://www.opengis.net/def/sensor-model/DGIWG/1.0/CSM_RPC00B_PHR"
										xlink:href="https://portal.opengeospatial.org/files/?artifact_id=77983"/>
							<sml:configuration>
								<sml:Settings>
									<sml:setValue ref="parameters/RPC00B_Params/ERR_BIAS_COL">0.0001446579928488062</sml:setValue>
									<sml:setValue ref="parameters/RPC00B_Params/ERR_BIAS_ROW">0.0001002242745234267</sml:setValue>
									<sml:setValue ref="parameters/RPC00B_Params/LINE_OFF">6051.499999999998</sml:setValue>
									<sml:setValue ref="parameters/RPC00B_Params/SAMP_OFF">8917</sml:setValue>
									<sml:setValue ref="parameters/RPC00B_Params/LAT_OFF">-37.82842958828252</sml:setValue>
									<sml:setValue ref="parameters/RPC00B_Params/LONG_OFF">144.9396882969147</sml:setValue>
									<sml:setValue ref="parameters/RPC00B_Params/HEIGHT_OFF">40</sml:setValue>
									<sml:setValue ref="parameters/RPC00B_Params/LINE_SCALE">6050.499999999998</sml:setValue>
									<sml:setValue ref="parameters/RPC00B_Params/SAMP_SCALE">8916</sml:setValue>
									<sml:setValue ref="parameters/RPC00B_Params/LAT_SCALE">0.02772419311416741</sml:setValue>
									<sml:setValue ref="parameters/RPC00B_Params/LONG_SCALE">0.05224752112235365</sml:setValue>
									<sml:setValue ref="parameters/RPC00B_Params/HEIGHT_SCALE">60</sml:setValue>
									<sml:setArrayValues ref="parameters/RPC00B_Params/LINE_NUM_COEFF">
										<sml:ArrayValues>
											<sml:encoding>
												<swe:TextEncoding tokenSeparator=" " blockSeparator="&#x0A;"/>
											</sml:encoding>
											<sml:value>
												0.000471113416307176 0.0047357871435034 -1.00521564270754 
												0.000499685593232074 -0.000403050418132147 2.06769332211032e-07 
												-9.49588057803336e-07 0.000408283477987286 -0.000269329916987856 
												-2.56009342884293e-09 -1.76262664498363e-09 1.73288312849257e-07 
												-2.45373352695953e-06 1.26480919566671e-08 -1.74010036830067e-06 
												-9.42406627510724e-06 -2.66888212288006e-06 1.44026081168302e-09 
												2.21570950859747e-08 1.3560183148622e-09
											</sml:value>
										</sml:ArrayValues>
									</sml:setArrayValues>
									<sml:setArrayValues ref="parameters/RPC00B_Params/LINE_DEN_COEFF">
										<sml:ArrayValues>
											<sml:encoding>
												<swe:TextEncoding tokenSeparator=" " blockSeparator="&#x0A;"/>
											</sml:encoding>
											<sml:value>	
												1 -0.000409300058478284 0.000204740113051308
												-1.19140047020865e-06 -1.31884802397082e-06 2.7063666672632e-09
												2.01189165750713e-08 1.50441840997201e-06 -5.24856900108426e-06
												2.6472884409047e-06 8.52066010928711e-11 8.05958519469968e-10
												-8.15490634566205e-08 -2.1494166811996e-09 9.29882394413122e-09
												4.99432622136191e-09 -8.78680361205337e-11 -3.5195362001347e-11 
												1.3825330228933e-09 -7.18126019518712e-12
											</sml:value>
										</sml:ArrayValues>
									</sml:setArrayValues>
									<sml:setArrayValues ref="parameters/RPC00B_Params/SAMP_NUM_COEFF">
										<sml:ArrayValues>
											<sml:encoding>
												<swe:TextEncoding tokenSeparator=" " blockSeparator="&#x0A;"/>
											</sml:encoding>
											<sml:value>
												-0.000756500879923884 1.00190073416854 0.00010569404496953 
												-0.00170115869503495 5.83452415176828e-05 4.49565039026259e-05 
												-1.432240533608e-05 0.000809909635368977 -0.000204311413054138 
												-5.45559250181296e-08 -3.13260025623992e-08 -1.01328027759596e-06 
												-1.08213051652666e-06 -5.31163998030182e-07 3.89536875828944e-06 
												-1.84663192452946e-05 -7.12810147773699e-10 7.59242226519458e-08 
												3.96306467662724e-08 8.01810669225758e-10
											</sml:value>
										</sml:ArrayValues>
									</sml:setArrayValues>
									<sml:setArrayValues ref="parameters/RPC00B_Params/SAMP_DEN_COEFF">
										<sml:ArrayValues>
											<sml:encoding>
												<swe:TextEncoding tokenSeparator=" " blockSeparator="&#x0A;"/>
											</sml:encoding>
											<sml:value>	
												1 -5.34379896580649e-05 -5.83843773591025e-05 
												-4.63277064236961e-05 -3.8782833854427e-06 -3.81125492133859e-08 
												1.87045266292978e-08 6.61758543435041e-07 2.63157731039727e-07 
												-5.41079838154487e-07 -6.20937383925872e-10 5.47403052108029e-09 
												-1.22821670606129e-08 4.22603573005804e-10 -1.42917096949309e-08 
												4.85646342394426e-08 1.1181395878095e-10 9.98730274389409e-11 
												8.5021995374875e-11 3.40465831810661e-11
											</sml:value>
										</sml:ArrayValues>
									</sml:setArrayValues>
								</sml:Settings>
							</sml:configuration>
						</sml:SimpleProcess>
					</gmlcovrgrid:sensorInstance>
					<gmlcovrgrid:sensorInstance>
						<sml:SimpleProcess gml:id="PHR_SENSOR_RPC00B_D_01"
								xmlns:sml="http://www.opengis.net/sensorml/2.0"
								xmlns:swe="http://www.opengis.net/swe/2.0"
								xmlns:gml="http://www.opengis.net/gml/3.2"
								xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
								xmlns:xlink="http://www.w3.org/1999/xlink"
								xmlns:xi="http://www.w3.org/2001/XInclude"
								xsi:schemaLocation="http://www.opengis.net/sensorml/2.0 http://schemas.opengis.net/sensorML/2.0/sensorML.xsd">
							<gml:description>
								An example of an instance of the Community Sensor Model for PHR SENSOR RPC00B Direct model, as proposed by DGIWG in SML2.0
							</gml:description>
							<gml:identifier codeSpace="uid">http://www.example.org/def/DGIWG/0/sensor/1.0/PHR_RPC00B_D</gml:identifier>
							<sml:typeOf xlink:title="http://www.example.org/def/DGIWG/0/sensor/PHR_RPC00B_D"
										xlink:href="https://portal.opengeospatial.org/files/?artifact_id=77983"/>
							<sml:configuration>
								<sml:Settings>
									<sml:setValue ref="parameters/RPC00B_Params/ERR_BIAS_X">7.406718544686769e-05</sml:setValue>
									<sml:setValue ref="parameters/RPC00B_Params/ERR_BIAS_Y">4.964066199522581e-05</sml:setValue>
									<sml:setValue ref="parameters/RPC00B_Params/LINE_OFF">6051.499999999998</sml:setValue>
									<sml:setValue ref="parameters/RPC00B_Params/SAMP_OFF">8917</sml:setValue>
									<sml:setValue ref="parameters/RPC00B_Params/LAT_OFF">-37.82842958828252</sml:setValue>
									<sml:setValue ref="parameters/RPC00B_Params/LONG_OFF">144.9396882969147</sml:setValue>
									<sml:setValue ref="parameters/RPC00B_Params/HEIGHT_OFF">40</sml:setValue>
									<sml:setValue ref="parameters/RPC00B_Params/LINE_SCALE">6050.499999999998</sml:setValue>
									<sml:setValue ref="parameters/RPC00B_Params/SAMP_SCALE">8916</sml:setValue>
									<sml:setValue ref="parameters/RPC00B_Params/LAT_SCALE">0.02772419311416741</sml:setValue>
									<sml:setValue ref="parameters/RPC00B_Params/LONG_SCALE">0.05224752112235365</sml:setValue>
									<sml:setValue ref="parameters/RPC00B_Params/HEIGHT_SCALE">60</sml:setValue>
									<sml:setArrayValues ref="parameters/RPC00B_Params/LINE_NUM_COEFF">
										<sml:ArrayValues>
											<sml:encoding>
												<swe:TextEncoding tokenSeparator=" " blockSeparator="&#x0A;"/>
											</sml:encoding>
											<sml:value>
												0.000472226233942736 0.00470287912973276
												-0.994810005707178 0.000505092847036874 0.000407988021400184
												1.13974422300599e-06 1.97915334872525e-06 0.000400575613517521 
												-0.000264844305589925 -4.38117956914855e-09 -5.01797028994386e-08 
												-5.27311059946381e-07 -1.92336092114464e-06 -1.27971347600886e-08 
												1.86674774263419e-06 9.21381718237081e-06 2.67497557164274e-06 
												-7.65265178020414e-08 -9.72417385182437e-10 -1.34417624656733e-09
											</sml:value>
										</sml:ArrayValues>
									</sml:setArrayValues>
									<sml:setArrayValues ref="parameters/RPC00B_Params/LINE_DEN_COEFF">
										<sml:ArrayValues>
											<sml:encoding>
												<swe:TextEncoding tokenSeparator=" " blockSeparator="&#x0A;"/>
											</sml:encoding>
											<sml:value>	
												1 0.0004017539270357 0.000204385500328515 
												1.7255644282391e-06 -1.26235584734156e-06 -3.45175118821669e-08 
												1.0285120073068e-08 -2.00527925144732e-06 5.19673247281549e-06 
												-2.69657123413169e-06 2.99503559937244e-10 5.79210988217226e-09 
												3.71204471227482e-08 -2.18844557033169e-09 8.92447617240071e-09 
												-1.79350145227754e-09 1.05364015023476e-10 -9.48981302198881e-12 
												-1.34342737301696e-09 -9.448518405255e-12
											</sml:value>
										</sml:ArrayValues>
									</sml:setArrayValues>
									<sml:setArrayValues ref="parameters/RPC00B_Params/SAMP_NUM_COEFF">
										<sml:ArrayValues>
											<sml:encoding>
												<swe:TextEncoding tokenSeparator=" " blockSeparator="&#x0A;"/>
											</sml:encoding>
											<sml:value>
												0.000755016327842053 0.998101043650584 0.000104754580912141 
												0.00169788389538475 5.68923835735695e-05 -4.76088464836299e-05 
												-1.4424416465623e-05 -0.000807131358215008 0.000201836925697509 
												6.25647431879183e-08 2.93567195679996e-09 2.29926823888344e-06 
												7.35310006833069e-07 5.44764292483496e-07 3.57688603504097e-06 
												-1.81208705589151e-05 -4.59550181043684e-10 3.10690550620903e-08 
												-1.2733894532484e-08 9.78808285635594e-10
											</sml:value>
										</sml:ArrayValues>
									</sml:setArrayValues>
									<sml:setArrayValues ref="parameters/RPC00B_Params/SAMP_DEN_COEFF">
										<sml:ArrayValues>
											<sml:encoding>
												<swe:TextEncoding tokenSeparator=" " blockSeparator="&#x0A;"/>
											</sml:encoding>
											<sml:value>	
												1 5.20933622834308e-05 -5.68507709637267e-05
												4.62378845644529e-05 -3.67508503434502e-06 -1.62646653781277e-08
												6.69026178018295e-09 -7.28425704486511e-07 -2.25619139266127e-07
												5.41686317558443e-07 6.79943438941922e-11 6.37581980309455e-09
												-8.76522557768514e-09 5.18659432288665e-10 1.04195246348892e-08
												-2.75172985689152e-08 -5.9854537494157e-11 2.78424697668514e-10
												-2.56208067937316e-12 5.43550668880071e-11
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
						<swe:CountRange definition="http://www.opengis.net/def/ogc-eo/opt/SpectralMode/COLOR">
							<swe:label>Red, Green, Blue bands for pixel values</swe:label>
							<swe:description>3 bands (RGB) - Dynamic per band (12 bits)</swe:description>
							<swe:value>0 4095</swe:value>
						</swe:CountRange>
					</swe:field>
				</swe:DataRecord>
			</gmlcov:rangeType>
			<gmlcov:metadata xlink:href="DIM_PHR1B_PMS-N_201512240021586_SEN_2790528101-001.XML">
				<!-- link to DIMAP document. This is an option to document PHR products -->
				<gmljp2:Metadata>
					<!-- Here, an example of a simple ad'hoc metadata indicating the Processing Levels (Geometric and Radiometric).
						 More complex metadata according to ISO 19115 may be documented using the gmljp2:isoMetadata element, with a core gmd:MD_Metadata element.
						 This ISO 19115 metadata is another option to document PHR products -->
					<gmljp2:metadata>Geometric Processing Level SENSOR (PRIMARY), Radiometric Processing Level BASIC</gmljp2:metadata>
				</gmljp2:Metadata>
			</gmlcov:metadata>
		</gmljp2:GMLJP2ReferenceableGridCoverage>
	</gmljp2:featureMember>
</gmljp2:GMLJP2CoverageCollection>
