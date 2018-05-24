public-api
expertsForClass: aClass 
	|evalClass|
	evalClass := aClass.
	(classes includesKey: evalClass asByteString) ifFalse: [
		self processClass: aClass.
	].
	expertiseSource := 'class'.
	^ ((classes at: evalClass) associations collect: [ :i | experts at: i key ])
			ifEmpty: [
				"find on class side or instance side"
				(aClass endsWith: 'class') 
					ifTrue: [evalClass := aClass copyUpTo: Character space]
					ifFalse: [evalClass := aClass , ' class' ].
					((classes at: evalClass) associations collect: [ :i | experts at: i key ])
						ifEmpty: [
							self expertsForPackage: (Smalltalk classNamed: aClass) package name.
						]
			]