actions
calculateCoverageOnMethods
	|classes |
	coveredMethods := OrderedCollection new.
	self sanitizeDiscordExpertise.
	classes := expertiseCalculator methods.
	classes associationsDo: [ :c |
		| coverage |
		coverage := self getCoverageForElement: c.
		coveredClasses add: coverage.
	]