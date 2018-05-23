public-api
expertsForPackage: packageName
	(packages includesKey: packageName) ifFalse: [ 
		^ { }
	].
	expertiseSource := 'package'.
	^ (packages at: packageName) associations collect: [ :i | experts at: i key ]