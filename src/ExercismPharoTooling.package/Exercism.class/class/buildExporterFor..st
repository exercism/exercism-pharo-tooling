instance creation
buildExporterFor: aClass
	| exporter homeDirectory |
	homeDirectory := OSEnvironment current getEnv: 'HOME'.
	
	exporter := self new.
	exporter exerciseDirectory: homeDirectory, self exercismDirectory, aClass asString, '/'.
	exporter ghostDirectory: exporter exerciseDirectory, self ghostDirectory.	
	exporter exportFile: aClass asString, self fileExtension.
	exporter exerciseClass: aClass.
	^ exporter.