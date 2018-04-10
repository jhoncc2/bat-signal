actions
calculateCoverageOnClasses
	|classes |
	coveredClasses := OrderedCollection new.
	self sanitizeDiscordExpertise.
	classes := expertiseCalculator classes.
	classes associationsDo: [ :c |
		|coverage |
		coverage := self getCoverageForElement: c.
		coveredClasses add: coverage.
	]