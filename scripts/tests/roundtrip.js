var Jsonix = require('jsonix').Jsonix;
var fs = require('fs');
var roundtrip = function (test, mappings, resource) {
		var context = new Jsonix.Context(mappings);
		return roundtripWithContext(test, context, resource);
	};
var roundtripWithContext = function (test, context, resource) {
		var unmarshallerOne = context.createUnmarshaller();
		var unmarshallerTwo = context.createUnmarshaller();
		var marshallerOne = context.createMarshaller();
		var marshallerTwo = context.createMarshaller();
		console.log('Unmarshalling [' + resource + '].');
		unmarshallerOne.unmarshalFile(resource,
			function(one) {
				// console.log('Unmarshalled one:');
				// console.log(one);
				// console.log(JSON.stringify(one, null, 2));
		                console.log('Unmarshalled one.');
				var documentOne = marshallerOne.marshalDocument(one);
				var two = unmarshallerTwo.unmarshalDocument(documentOne);
				// console.log('Unmarshalled two:');
				// console.log(two);
				// console.log(JSON.stringify(two, null, 2));
				var stringTwo = marshallerTwo.marshalString(two);
				//console.log('Marshalled two:');
				//console.log(stringTwo);
				test.ok(Jsonix.Util.Type.isEqual(one, two, function(text) {
					console.log(text);
				}), 'Roundtrip [' + resource + '] failed in phase two. Objects must be equal.');
				test.done();
			}
		);
	};
var roundtripsWithContext = function(context, directory)
	{
		var roundtripFactory = function (ctx, resource) {
			return function(test) {
				console.log('Testing [' + resource + '].');
				roundtripWithContext(test, ctx, resource);
			};
		};
		var files = fs.readdirSync(directory);
		var result = {};
		for (var index = 0; index < files.length; index++)
		{
			var file = files[index];
			if (!!file.match(/xml$/))
			{
				var resourceName = directory + '/' + file;
				console.log('Adding roundtrip test ['+ resourceName + ']');
				result[file] = roundtripFactory(context, resourceName);
			}
		}
		return result
	};
var roundtrips = function(mappings, directory)
{
	var context = new Jsonix.Context(mappings);
	return roundtripsWithContext(context, directory);
};
module.exports = {
	roundtrip: roundtrip,
	roundtripWithContext: roundtripWithContext,
	roundtrips: roundtrips,
	roundtripsWithContext: roundtripsWithContext
}