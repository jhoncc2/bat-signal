public-api
expertsForMethod: aCompiledMethod 
	calculatedMethods associations do: [ :e | 
		e key = aCompiledMethod ifTrue: [ ^ e value asOrderedCollection ] ].
	^ { }