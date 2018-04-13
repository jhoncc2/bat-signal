actions
getCoverageForElement: assoc
	| expertise | 
	expertise := discordExpertise select: #isElegible.
	assoc value do: [ :e | "expertise per Element"
		e isElegible ifTrue: [
			expertise do: [ :de |
				(matchingStrategy value: e value: de) ifTrue: [
					e addContact: de
				]
			]
		].
	].
	