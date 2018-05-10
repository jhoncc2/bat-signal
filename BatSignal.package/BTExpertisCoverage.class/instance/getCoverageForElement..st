actions
getCoverageForElement: assoc
	| expertise | 
	expertise := discordExpertise "select: #isElegible".
	assoc value do: [ :e | "expertise per Element"
		e isElegible ifTrue: [
			expertise do: [ :de |
				((matchingStrategy value: e commitName value: de username ) 
					or: [ (matchingStrategy value: e commitName value: de name ) ])
				ifTrue: [
					e addContact: de
				]
			]
		].
	].
	