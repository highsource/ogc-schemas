var schemas = [
	"CSW_2_0_2",
		"DC_1_1",
		"DCT",
	"Filter_1_0_0",
	"Filter_1_1_0",
	"Filter_2_0",
	"GML_2_1_2",
	"GML_3_1_1",
	"GML_3_2_1",
	"SMIL_2_0",
	"SMIL_2_0_Language",
	"IC_2_0",
	"IC_2_1",
	"KML_2_2_0",
		"Atom_1_0",
		"xAL_2_0",
	"OM_1_0_0",
	"OWC_0_3_1",
	"OWS_1_0_0",
	"OWS_1_1_0",
	"OWS_2_0",
	"SensorML_1_0_1",
	"SLD_1_0_0",
	"SOS_1_0_0",
	"SOS_1_0_0_Filter",
	"SWE_1_0_1",
	"WCS_1_0_0",
	"WCS_1_1",
	"WFS_1_0_0",
	"WFS_1_1_0",
	"WFS_2_0",
	"WMS_1_0_0",
	"WMS_1_1_0",
	"WMS_1_1_1",
	"WMS_1_3_0",
	"WPS_1_0_0"
];
for (var index = 0; index < schemas.length; index++)
{
	var schema = schemas[index];
	module.exports[schema] = require('./lib/' + schema)[schema];
}
/*module.exports.Filter_1_0_0 = require('./lib/Filter_1_0_0').Filter_1_0_0;
module.exports.Filter_1_1_0 = require('./lib/Filter_1_1_0').Filter_1_1_0;
module.exports.Filter_2_0 = require('./lib/Filter_2_0').Filter_2_0;

module.exports.GML_2_1_2 = require('./lib/GML_2_1_2').GML_2_1_2;
module.exports.GML_3_1_1 = require('./lib/GML_3_1_1').GML_3_1_1;
	module.exports.SMIL_2_0 = require('./lib/SMIL_2_0').SMIL_2_0;
	module.exports.SMIL_2_0_Language = require('./lib/SMIL_2_0_Language').SMIL_2_0_Language;

module.exports.OWS_1_0_0 = require('./lib/OWS_1_0_0').OWS_1_0_0;
module.exports.OWS_1_1_0 = require('./lib/OWS_1_1_0').OWS_1_1_0;
module.exports.OWS_2_0 = require('./lib/OWS_2_0').OWS_2_0;

module.exports.WFS_1_0_0 = require('./lib/WFS_1_0_0').WFS_1_0_0;
module.exports.WFS_1_1_0 = require('./lib/WFS_1_1_0').WFS_1_1_0;
module.exports.WFS_2_0 = require('./lib/WFS_2_0').WFS_2_0;

module.exports.WPS_1_0_0 = require('./lib/WPS_1_0_0').OWS_1_0_0;
*/