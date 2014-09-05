module.exports = 
{
	"ogc-schemas": {
		"CSW" : require('./CSW/CSW.js'),
		// SLD Does not work yet
//		"KML" : require('./KML/KML.js'),
		"SensorML" : require('./SensorML/SensorML.js'),
		"SLD" : require('./SLD/SLD.js'),
		"SOS" : require('./SOS/SOS.js'),
		"OM" : require('./OM/OM.js'),
		"OWC" : require('./OWC/OWC.js'),
		"WFS" : require('./WFS/WFS.js'),
		"WMS" : require('./WMS/WMS.js'),
		"WPS" : require('./WPS/WPS.js'),
	}
};
