tests
testBuildExporterFor
	| actual expected |
	expected := exporter.
	
	actual := Exercism buildExporterFor: sampleClass.
	
	self assert: actual exerciseDirectory equals: expected exerciseDirectory.
	self assert: actual ghostDirectory equals: expected ghostDirectory.
	self assert: actual exportFile equals: expected exportFile.
	self assert: actual exerciseClass equals: expected exerciseClass. 
	
	