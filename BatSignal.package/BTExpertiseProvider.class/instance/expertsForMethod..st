public-api
expertsForMethod: aCompiledMethod 
	"returns a set of experts for a given CompiledMethod"
	(methods includesKey: aCompiledMethod name) ifFalse: [
		"update experts"
		self processMethod: aCompiledMethod.
	].
	expertiseSource := 'method'.
	^ self filter: ((methods at: aCompiledMethod name) associations collect: [ :i | experts at: i key ]) asSet