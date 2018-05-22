accessing
expertName
	self isReachable ifTrue: [ 
		| contact |
		contact := contacts asArray first.
		^ contact name , '(' , contact class source ,')'.
	].
	^ self commitName.