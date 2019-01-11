public-api
expertsForClassName: aClass 
	|secondClass|
	(aClass endsWith: 'class') 
		ifTrue: [secondClass := aClass copyUpTo: Character space]
		ifFalse: [secondClass := aClass , ' class' ].

	"(classes includesKey: aClass name asByteString) 
		ifFalse: [ self processClass: aClass name.	].
	(classes includesKey: secondClass asByteString) 
		ifFalse: [ self processClass: secondClass.	]."

	expertiseSource := 'class'.
	(classes includesKey: aClass ) ifFalse: [ ^ {} ].

	^ self filter: ((classes at: aClass) associations collect: [ :i | experts at: i key ]) asSet