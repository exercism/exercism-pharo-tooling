export
exportClass: aClass
	"Export aClass into a .st file in the users HOME/exercism/pharo/<exercise-name>/ directory."
	| exporter |
	exporter := self buildExporterFor: aClass.
	exporter exportClass.