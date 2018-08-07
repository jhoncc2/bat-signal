public-api
expertsForClassName: aClass 
	|secondClass|
	(aClass name endsWith: 'class') 
		ifTrue: [secondClass := aClass name copyUpTo: Character space]
		ifFalse: [secondClass := aClass name , ' class' ].

	"(classes includesKey: aClass name asByteString) 
		ifFalse: [ self processClass: aClass name.	].
	(classes includesKey: secondClass asByteString) 
		ifFalse: [ self processClass: secondClass.	]."

	expertiseSource := 'class'.
	(classes includesKey: aClass ) ifFalse: [ ^ {} ].

	^ ((classes at: aClass name) associations collect: [ :i | experts at: i key ]) asSet