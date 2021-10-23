# Read names from the file

fileName = "PersonName.dat"
with open(fileName) as file:
	namesList = file.readlines(100)
	print(namesList)
	print(namesList[:3])
	print(namesList[3:])
	for counter in range(len(namesList)):
		print(namesList[counter])
file.close()