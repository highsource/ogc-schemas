OGC Schemas
===========

Jsonix mappings for OGC Schemas:

* Filter_1_0_0
* Filter_1_1_0
* Filter_2_0
* GML_2_1_2
* GML_3_1_1
* SMIL_2_0
* SMIL_2_0_Language
* OWS_1_0_0
* OWS_1_1_0
* OWS_2_0
* WCS_1_0_0
* WCS_1_1
* WFS_1_0_0
* WFS_1_1_0
* WFS_2_0
* WMS_1_0_0
* WMS_1_1_0
* WMS_1_1_1
* WMS_1_3_0
* WPS_1_0_0

Usage:

````javascript

var XLink_1_0 = require('w3c-schemas').XLink_1_0;
var OWS_1_1_0 = require('ogc-schemas').OWS_1_1_0;
var WPS_1_0_0 = require('ogc-schemas').WPS_1_0_0;

var context =  new Jsonix.Context([XLink_1_0, OWS_1_1_0, WPS_1_0_0]);
var unmarshaller = context.createUnmarshaller();
unmarshaller.unmarshalFile("tests/WPS/1.0.0/execute-01.xml", function(result) {
	test.equal("geom", result.value.dataInputs.input[0].title.value);
	test.done();
});
````
