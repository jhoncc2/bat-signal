actions
replaceIfKnown: contributor
	self class knownAuthors do: 
		[:e | (matchingStrategy value: contributor value: e key) ifTrue: [ ^ e value ] ].
	^ contributor
		