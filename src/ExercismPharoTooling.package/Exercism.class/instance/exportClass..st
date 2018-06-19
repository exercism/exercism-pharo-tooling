export
exportClass: aClass
	"Export aClass as a .st file to the users Exercism directory."
	| exportFile exportStream |
	exportFile := aClass asString, self class fileExtension.
	exportStream := FileStream newFileNamed: homeDirectory, exercismDirectory, exportFile.
	
	aClass fileOutOn: exportStream.
	