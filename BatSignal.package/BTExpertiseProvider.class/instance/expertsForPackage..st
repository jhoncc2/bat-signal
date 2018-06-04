public-api
expertsForPackage: packageName
	(packages includesKey: packageName) ifFalse: [ 
		self processPackage: packageName
	].
	expertiseSource := 'package'.
	^ ((packages at: packageName) associations collect: [ :i | experts at: i key ]) asSet