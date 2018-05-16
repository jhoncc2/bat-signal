public-api
expertsForMethod: aCompiledMethod 
	(methods includesKey: aCompiledMethod name) ifFalse: [ 
		^ {}
	].
	^ (methods at: aCompiledMethod name) collect: [ :i | experts at: i ]