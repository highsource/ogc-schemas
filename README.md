ogc-schemas
===========

OGC Schemas project provides JAXB bindings for XML Schemas defined by the Open Geospatial Consortium (OGC).

# OGC Schemas

OGC Schemas project provides [JAXB](https://jaxb.java.net/) and [Jsonix](https://github.com/highsource/jsonix) bindings for some of the XML Schemas defined by OGC.

This allows converting between XML (conforming to one of these schemas) and Java objects in Java or JSON in JavaScript.

Supports the following schemas:

* `ARML_2_0`
* `CSW_2_0_2`
  * `DC_1_1`
  * `DCT`
* `Filter_1_0_0`
* `Filter_1_1_0`
* `Filter_2_0`
* `GML_2_1_2`
* `GML_3_1_1`
* `GML_3_2_1`
* `GMLCOV_1_0`
* `SMIL_2_0`
* `SMIL_2_0_Language`
* `IC_2_0`
* `IC_2_1`
* `ISO19139_GCO_20070417`
* `ISO19139_GMD_20070417`
* `ISO19139_GMX_20070417`
* `ISO19139_GSR_20070417`
* `ISO19139_GSS_20070417`
* `ISO19139_GTS_20070417`
* `KML_2_2_0`
  * `Atom_1_0`
  * `xAL_2_0`
* `OM_1_0_0`
* `OM_2_0`
* `OWC_0_3_1`
* `OWS_1_0_0`
* `OWS_1_1_0`
* `OWS_2_0`
* `Sampling_1_0_0`
* `Sampling_2_0`
* `SamplingSpatial_2_0`
* `SE_1_1_0`
* `SensorML_1_0_1`
* `SensorML_2_0`
* `SLD_1_0_0`
* `SLD_1_0_0_GeoServer`
* `SLD_1_1_0`
* `SPS_2_0`
* `SOS_1_0_0`
* `SOS_1_0_0_Filter`
* `SOS_2_0`
* `SWE_1_0_1`
* `SWE_2_0`
* `SWES_2_0`
  * `WSN_T_1`
* `WAMI_1_0_0`
* `WAMI_1_0_1`
  * `WAMI_Common_1_0_1`
* `WAMI_1_0_2`
  * `WAMI_Common_1_0_0`
* `WaterML_2_0`
* `WCS_1_0_0`
* `WCS_1_1`
* `WCS_2_0`
* `WFS_1_0_0`
* `WFS_1_1_0`
* `WFS_2_0`
* `WMS_1_0_0`
* `WMS_1_1_0`
* `WMS_1_1_1`
* `WMS_1_3_0`
* `WMS_1_3_0_Exceptions`
* `WPS_1_0_0`

# JavaScript Example

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
