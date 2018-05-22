actions
getCoverageForElement: assoc
	| expertise | 
	expertise := discordExpertise "select: #isElegible".
	assoc value associations do: [ :ae | "expertise per Element"
		|e|
		e := ae key.
		e isElegible ifTrue: [
			expertise do: [ :de |
				((matchingStrategy value: e commitName value: de name ) 
					or: [ de username notNil and: [(matchingStrategy value: e commitName value: de username )] ])
				ifTrue: [
					e addContact: de
				]
			]
		].
	].
	