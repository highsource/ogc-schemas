process.on('uncaughtException', function(err) {
  console.error(err.stack);
});
module.exports = 
{
	"OGC-Schemas": require('./OGC-Schemas')
};
