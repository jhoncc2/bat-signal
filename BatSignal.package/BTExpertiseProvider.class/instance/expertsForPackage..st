public-api
expertsForPackage: packageName
	(packages includesKey: packageName) ifFalse: [ 
		^ { }
	].
	^ (packages at: packageName) collect: [ :i | experts at: i ]