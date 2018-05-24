processing
processClass: aClass
	| inst dict |
	inst := (Smalltalk classNamed: aClass).
 	dict := Dictionary new.
	(inst methodDict addAll: inst class methodDict) do: [ :e |
		self processMethod: e.
		dict addAll: (methods at: e name).
		"TODO: measure percentage of expertise"
	].
	classes at: aClass put: dict.
	classes at: inst class name put: dict.	
	
	