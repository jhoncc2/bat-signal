actions
calculateCoverageOnMethods
	|classes |
	coveredMethods := OrderedCollection new.
	classes := expertiseCalculator methods.
	classes associationsDo: [ :c |
		| coverage |
		coverage := self getCoverageForElement: c.
		coveredMethods add: coverage.
	]