public-api
expertsForMethodName: aCompiledMethod 
	"returns a set of experts for a given CompiledMethod"
	(methods includesKey: aCompiledMethod) ifFalse: [
		"update experts"
		"self processMethod: aCompiledMethod."
		^ { }
	].
	expertiseSource := 'method'.
	^ ((methods at: aCompiledMethod) associations collect: [ :i | experts at: i key ]) asSet