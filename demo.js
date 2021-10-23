var fs = require('fs')

const readline = require("readline");

var readInput = readline.createInterface(
{
	input: process.stdin,
	output: process.stdout
});

var userData = `{"name": "Prasad, "email": "prasad@gmail.com", "contactNumber": "9764312562"}`;
function readInputs()
{
	readInput.question("What is your full name ? ", function(name) {
		readInput.question("What is your email id ? ", function(email) {
			readInput.question("What is your mobile number ? ", function(contactNumber) {
				userData = `{"name": ${name}, "email": ${email}, "contactNumber": ${contactNumber}}`;
				readInput.close();
			});
		});
	});
}

function writeFile()
{
	fs.writeFile('data.txt', userData, function (err, data)
	{
		if(err)
		{
			return console.log(err);
		}
		console.log(`${data} > data.txt`);
	});
}

function readFile()
{
	fs.readFile('data.txt', 'utf-8', function(err, data)
	{
		console.log(data);
		console.log(err);
	});	
}
// readInputs();
readFile();
writeFile();
