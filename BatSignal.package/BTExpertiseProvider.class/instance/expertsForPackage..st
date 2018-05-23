public-api
expertsForPackage: packageName
	(packages includesKey: packageName) ifFalse: [ 
		^ { }
	].
	^ (packages at: packageName) associations collect: [ :i | experts at: i ]