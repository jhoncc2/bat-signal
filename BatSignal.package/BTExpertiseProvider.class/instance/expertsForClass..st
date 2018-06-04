public-api
expertsForClass: aClass 
	|secondClass|
	(aClass endsWith: 'class') 
		ifTrue: [secondClass := aClass copyUpTo: Character space]
		ifFalse: [secondClass := aClass , ' class' ].

	(classes includesKey: aClass asByteString) 
		ifFalse: [ self processClass: aClass.	].
	(classes includesKey: secondClass asByteString) 
		ifFalse: [ self processClass: secondClass.	].

	expertiseSource := 'class'.

	^ ((classes at: aClass) associations collect: [ :i | experts at: i key ]) asSet