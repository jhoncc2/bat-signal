public-api
expertsForMethod: aCompiledMethod 
	(methods includesKey: aCompiledMethod name) ifFalse: [
		"update experts"
		self processMethod: aCompiledMethod.
	].
	expertiseSource := 'method'.
	^ ((methods at: aCompiledMethod name) associations collect: [ :i | experts at: i key ])
			ifEmpty: [
				self expertsForClass: aCompiledMethod methodClass name. 
			]