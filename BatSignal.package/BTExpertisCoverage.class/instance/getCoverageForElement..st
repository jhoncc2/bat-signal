actions
getCoverageForElement: assoc
	| expertise | 
	expertise := discordExpertise "select: #isElegible".
	assoc value do: [ :e | "expertise per Element"
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
	