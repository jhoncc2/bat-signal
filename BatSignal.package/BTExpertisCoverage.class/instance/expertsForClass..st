public-api
expertsForClass: aClass 
	calculatedClasses associations do: [ :e | 
		e key = aClass name ifTrue: [ ^ e value asOrderedCollection ] ].
	^ {}