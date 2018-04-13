actions
getOrCreateExpertise: exp
	| ind expertise |
	ind := expertiseColl findFirst: [ :e |
		e commitName = exp key.
	].
	ind = 0 ifTrue: [ 
		expertise := BTExpertise new
			commitName: exp key;
			date: exp value.
		expertiseColl add: expertise.
	] ifFalse: [
		expertise := expertiseColl at: ind.
	].
	^ expertise
