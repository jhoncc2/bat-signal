processing
processMethod: aCompiledMethod
	| expert |
	expert := experts findFirst:[ :e | 
		((self likeNames: e expertName with: aCompiledMethod author) 
			or: [ (self likeNames: e commitName with: aCompiledMethod author) ])
			or: [ (self likeNames: e discordUsername with: aCompiledMethod author) ].
	].
	methods at: aCompiledMethod name put: Dictionary new.
	expert = 0 ifFalse: [ (methods at: aCompiledMethod name) at: expert put: 1 ].