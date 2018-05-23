accessing
expertName
	self isReachable ifTrue: [ 
		| contact |
		contact := discordContact.
		^ contact name , '(' , contact class source ,')'.
	].
	^ self commitName.