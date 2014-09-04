process.on('uncaughtException', function(err) {
  console.error(err.stack);
});
module.exports = 
{
	"ogc-schemas": require('./ogc-schemas')
};
