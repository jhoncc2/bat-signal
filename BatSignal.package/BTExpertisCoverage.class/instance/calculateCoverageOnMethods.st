actions
calculateCoverageOnMethods
	calculatedMethods associationsDo: [ :c |
		self getCoverageForElement: c.
	]