public-api
expertsForClass: aClass 
	|evalClass|
	evalClass := aClass.
	(classes includesKey: evalClass asByteString) ifFalse: [ 
		"find on class side or instance side"
		(aClass endsWith: 'class') 
			ifTrue: [evalClass := aClass copyUpTo: Character space]
			ifFalse: [evalClass := aClass , ' class' ].
		(classes includesKey: evalClass) ifFalse: [ ^ self expertsForPackage: (Smalltalk classNamed: aClass) package name ]
		
	].
	expertiseSource := 'class'.
	^ ((classes at: evalClass) associations collect: [ :i | experts at: i key ])
			ifEmpty: [
				self expertsForPackage: (Smalltalk classNamed: aClass) package name.
			]