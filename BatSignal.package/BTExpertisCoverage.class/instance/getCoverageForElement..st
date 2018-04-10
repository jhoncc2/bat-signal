actions
getCoverageForElement: assoc
	| coverage | 
	coverage := OrderedCollection new.
	assoc value do: [ :e | "expertise per Element"
		discordExpertise do: [ :de | 
			(matchingStrategy value: e key value: de) ifTrue: [
				coverage add: de
			]
		]
	].
	^ assoc key -> coverage
	