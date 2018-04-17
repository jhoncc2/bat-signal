accessing
expertiseCalculator: ec
	expertiseCalculator := ec.
	expertiseColl := OrderedCollection new.
	calculatedMethods := Dictionary new.
	calculatedClasses := Dictionary new.
	expertiseCalculator methods associationsDo: [:e |
		calculatedMethods at: e key put: (e value collect: [ :el |
			self getOrCreateExpertise: el method: e key.
		]) asSet
	].

	expertiseCalculator classes associationsDo: [:e |
		calculatedClasses at: e key put: (e value collect: [ :el |
			self getOrCreateExpertise: el method: e key.
		]) asSet
	].
