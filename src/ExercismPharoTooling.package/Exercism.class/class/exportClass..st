export
exportClass: aClass
	"Export aClass into a .st file in the users HOME/exercism/pharo directory."
	| exporter |
	exporter := self new.
	exporter exportClass: aClass.