initialization
initialize
	homeDirectory := OSEnvironment current getEnv: 'HOME'.
	exercismDirectory := self class exercismDirectory.