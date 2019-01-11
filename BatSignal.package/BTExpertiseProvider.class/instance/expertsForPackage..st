public-api
expertsForPackage: aRPackage
	| packageName |
	aRPackage class = RPackage 
		ifTrue: [ packageName := aRPackage name ]
		ifFalse: [ packageName := aRPackage ].
		
	(packages includesKey: packageName) ifFalse: [ 
		self processPackage: packageName
	].
	expertiseSource := 'package'.
	^ self filter: ((packages at: packageName) associations collect: [ :i | experts at: i key ]) asSet