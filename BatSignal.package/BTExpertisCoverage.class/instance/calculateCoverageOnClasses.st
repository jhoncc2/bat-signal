actions
calculateCoverageOnClasses
	calculatedClasses associationsDo: [ :c |
		self getCoverageForElement: c.
	]