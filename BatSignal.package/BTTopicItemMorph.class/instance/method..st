initialization
method: aMethod
	method == aMethod ifTrue: [ ^ self ].
	method := aMethod.
	self updateSubmorphs 