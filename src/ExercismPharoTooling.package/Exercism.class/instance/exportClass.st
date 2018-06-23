export
exportClass
	"Export exportFile as a .st file to the users Exercism exercise directory as a human readable file and as a machine readable file."

	| exportGhostPath exportGhostStream |
	exportGhostPath := ghostDirectory, exportFile.
	exportGhostStream := StandardFileStream newFileNamed: exportGhostPath.

	exerciseClass fileOutOn: exportGhostStream.
	self fileOutHumanReadableFileFrom: exportGhostPath.