# OGC Schemas

`ogc-schemas` package provides [Jsonix](https://github.com/highsource/jsonix) XML-JSON bindings for some of the XML Schemas defined by OGC.

This allows converting between XML (conforming to one of these schemas) and JSON in pure JavaScript.

Supports the following schemas:

* `ARML_2_0`
* `CityGML_1_0`
  * `CityGML_Appearance_1_0`
  * `CityGML_Building_1_0`
  * `CityGML_CityFuntiture_1_0`
  * `CityGML_CityObjectGroup_1_0`
  * `CityGML_Generics_1_0`
  * `CityGML_LandUse_1_0`
  * `CityGML_Relief_1_0`
  * `CityGML_TexturedSurface_1_0`
  * `CityGML_Transportation_1_0`
  * `CityGML_Vegetation_1_0`
  * `CityGML_Waterbody_1_0 `
* `CityGML_2_0`
  * `CityGML_Appearance_2_0`
  * `CityGML_Bridge_2_0`
  * `CityGML_Building_2_0`
  * `CityGML_CityFuntiture_2_0`
  * `CityGML_CityObjectGroup_2_0`
  * `CityGML_Generics_2_0`
  * `CityGML_LandUse_2_0`
  * `CityGML_Relief_2_0`
  * `CityGML_TexturedSurface_2_0`
  * `CityGML_Transportation_2_0`
  * `CityGML_Tunnel_2_0`
  * `CityGML_Vegetation_2_0`
  * `CityGML_Waterbody_2_0 `
* `CSW_2_0_2`
  * `DC_1_1`
  * `DCT`
* `EOP_1_0`
* `EOP_ATM_1_0`
* `EOP_OPT_1_0`
* `EOP_SAR_1_0`
* `EOSPS_2_0`
* `Filter_1_0_0`
* `Filter_1_1_0`
* `Filter_2_0`
* `GML_1_0_0`
* `GML_2_1_2`
* `GML_3_1_1`
* `GML_3_2_0`
* `GML_3_2_1`
* `GML_CE_3_3`
* `GML_EXR_3_3`
* `GML_LR_3_3`
* `GML_LRO_3_3`
* `GML_LROV_3_3`
* `GML_LRTR_3_3`
* `GML_RGRID_3_3`
* `GML_TIN_3_3`
* `GML_XBT_3_3`
* `GMLCOV_1_0`
* `GMLCOV_GeoTIFF_1_0`
* `GMLJP2_2_0`
* `SMIL_2_0`
* `SMIL_2_0_Language`
* `IC_2_0`
* `IC_2_1`
* `IndoorGML_Core_1_0`
* `IndoorGML_Naviagation_1_0`
* `ISO19139_GCO_20070417`
* `ISO19139_GMD_20070417`
* `ISO19139_GMX_20070417`
* `ISO19139_GSR_20070417`
* `ISO19139_GSS_20070417`
* `ISO19139_GTS_20070417`
* `ISO19139_GCO_20060504`
* `ISO19139_GMD_20060504`
* `ISO19139_GMX_20060504`
* `ISO19139_GSR_20060504`
* `ISO19139_GSS_20060504`
* `ISO19139_GTS_20060504`
* `ISO19139_SRV_20060504`
* `KML_2_1`
* `KML_2_2_0`
* `KML_2_3`
* `OLS_1_1_0`
* `OLS_1_2`
* `OLS_NAV_1_3`
* `OM_1_0_0`
* `OM_2_0`
* `OMEO_ALT_2_0`
* `OMEO_ATM_2_0`
* `OMEO_EOP_2_0`
* `OMEO_LMB_2_0`
* `OMEO_OPT_2_0`
* `OMEO_SAR_2_0`
* `OMEO_SEN1_2_0`
* `OMEO_ALT_2_0`
* `OMEO_SSP_2_0`
* `OMX_1_0_0`
* `OSEO_1_0`
* `OWC_0_3_1`
* `OWS_1_0_0`
* `OWS_1_1_0`
* `OWS_2_0`
* `Sampling_1_0_0`
* `Sampling_2_0`
* `SamplingSpatial_2_0`
* `SamplingSpecimen_2_0`
* `SE_1_1_0`
* `SensorML_1_0_0`
* `SensorML_1_0_1`
* `SensorML_2_0`
* `SLD_1_0_0`
* `SLD_1_0_0_GeoServer`
* `SLD_1_1_0`
* `SPS_1_0_0`
* `SPS_2_0`
* `SOS_1_0_0`
* `SOS_1_0_0_Filter`
* `SOS_2_0`
* `SWE_1_0_0`
* `SWE_1_0_1`
* `SWE_2_0`
* `SWES_2_0`
  * `WSN_T_1`
* `TJS_1_0`
* `TML_1_0_0`
* `WAMI_1_0_0`
* `WAMI_1_0_1`
  * `WAMI_Common_1_0_1`
* `WAMI_1_0_2`
  * `WAMI_Common_1_0_0`
* `WaterML_2_0`
* `WCPS_1_0`
* `WCS_1_0_0`
  * `GML4WCS_1_0_0`
* `WCS_1_1`
* `WCS_2_0`
* `WCS_CRS_1_0`
* `WCS_Interpolation_1_0`
* `WCS_Processing_2_0`
* `WCS_Range_Subsetting_1_0`
* `WCS_Scaling_1_0`
* `WCS_WCSEO_1_0`
* `WCST_1_1`
* `WFS_1_0_0`
* `WFS_1_1_0`
* `WFS_2_0`
* `WMS_1_0_0`
* `WMS_1_1_0`
* `WMS_1_1_1`
* `WMS_1_3_0`
* `WMS_1_3_0_Exceptions`
* `WMSC_1_1_1`
* `WPS_1_0_0`
* `WPS_2_0_0`
* `xAL_2_0`

# Example

```javascript

var XLink_1_0 = require('w3c-schemas').XLink_1_0;
var OWS_1_1_0 = require('ogc-schemas').OWS_1_1_0;
var WPS_1_0_0 = require('ogc-schemas').WPS_1_0_0;

var context =  new Jsonix.Context([XLink_1_0, OWS_1_1_0, WPS_1_0_0]);
var unmarshaller = context.createUnmarshaller();
unmarshaller.unmarshalFile("tests/WPS/1.0.0/execute-01.xml", function(result) {
	test.equal("geom", result.value.dataInputs.input[0].title.value);
	test.done();
});
```
