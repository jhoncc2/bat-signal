public-api
expertsForMethod: aCompiledMethod 
	(methods includesKey: aCompiledMethod name) ifFalse: [ 
		^ {}
	].
	^ (methods at: aCompiledMethod name) associations collect: [ :i | experts at: i key ]