processing
processClass: aClass
	| inst dict |
	inst := (Smalltalk classNamed: aClass).
 	dict := Dictionary new.
	inst methodDict do: [ :e |
		self processMethod: e.
		dict addAll: (methods at: e name).
		"TODO: measure percentage of expertise"
	].
	classes at: aClass put: dict.
	
	