accessing
expertiseCalculator: ec
	expertiseCalculator := ec.
	expertiseColl := OrderedCollection new.
	calculatedMethods := Dictionary new.
	calculatedClasses := Dictionary new.
	expertiseCalculator methods associationsDo: [:e |
		|weights|
		weights := Dictionary new.
		calculatedMethods at: e key put: weights.
		(e value collect: [ :el |
			weights at: (self getOrCreateExpertise: el method: e key) 
								   put: self commitVal.
		]).
	].

	expertiseCalculator classes associationsDo: [:e |
		|weights|
		weights := Dictionary new.
		calculatedClasses at: e key put: weights.
		(e value collect: [ :el |
			weights at: (self getOrCreateExpertise: el method: e key) 
					  put: self commitVal.
		])
	].
