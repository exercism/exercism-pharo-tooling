export
fileOutHumanReadableFileFrom: aFile
	"Write a file without machine readable metadata or artifacts."
	
	| chunks humanReadableFile fileStream |
	chunks := CodeImporter chunksFromFileNamed: aFile.
	humanReadableFile := exerciseDirectory, exportFile.
	fileStream := StandardFileStream newFileNamed: humanReadableFile.
	chunks do: [ :chunk | fileStream  nextPutAll: chunk contents; cr; cr. ].
	fileStream flush.