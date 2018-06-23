running
setUp
	| exerciseDirectory exercismDirectory ghostDirectory fileName fileExtension homeDirectory | 
	sampleClass := Exercism.
	homeDirectory := OSEnvironment current getEnv: 'HOME'.
	exercismDirectory := homeDirectory, Exercism exercismDirectory.
	exerciseDirectory := exercismDirectory, sampleClass asString, '/'.
	ghostDirectory := Exercism ghostDirectory.
	fileName := sampleClass asString.
	fileExtension := Exercism fileExtension.
	
	exporter := Exercism new.
	exporter exerciseDirectory: exercismDirectory, sampleClass asString, '/'.
	exporter ghostDirectory: exerciseDirectory, ghostDirectory.
	exporter exportFile: fileName, fileExtension.
	exporter exerciseClass: sampleClass.

	
	