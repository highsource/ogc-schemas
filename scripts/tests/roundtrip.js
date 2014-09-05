var Jsonix = require('jsonix').Jsonix;
var fs = require('fs');
var roundtrip = function (test, mappings, resource) {
		var context = new Jsonix.Context(mappings);
		var unmarshallerOne = context.createUnmarshaller();
		var unmarshallerTwo = context.createUnmarshaller();
		var marshallerOne = context.createMarshaller();
		var marshallerTwo = context.createMarshaller();
//		console.log('Unmarshalling [' + resource + '].');
		unmarshallerOne.unmarshalFile(resource,
			function(one) {
//				console.log('Unmarshalled one:');
//				console.log(one);
				var documentOne = marshallerOne.marshalDocument(one);
				var two = unmarshallerTwo.unmarshalDocument(documentOne);
//				console.log('Unmarshalled two:');
//				console.log(one);
				var stringTwo = marshallerTwo.marshalString(two);
//				console.log('Marshalled two:');
//				console.log(stringTwo);
				test.ok(Jsonix.Util.Type.isEqual(one, two, function(text) {console.log(text)}), 'Roundtrip [' + resource + '] failed in phase two. Objects must be equal.');
				test.done();
			}
		);
	};
module.exports = {
	roundtrip: roundtrip,
	roundtrips: function(mappings, directory)
	{
		var files = fs.readdirSync(directory);
		var result = {};
		for (var index = 0; index < files.length; index++)
		{
			var file = files[index];
			if (!!file.match(/xml$/))
			{
				var resourceName = directory + '/' + file;
				console.log('Adding roundtrip test ['+ resourceName + ']');
				result[file] = function(test) {
					console.log('Testing [' + resourceName + '].');
					roundtrip(test, mappings, resourceName);
				};
			}
		}
		return result
	}
}