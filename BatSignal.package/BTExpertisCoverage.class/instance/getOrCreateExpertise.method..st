actions
getOrCreateExpertise: exp method: meth
	| ind expertise |
	ind := expertiseColl findFirst: [ :e |
		e commitName = exp key.
	].
	ind = 0 ifTrue: [ 
		expertise := BTExpertise new
			commitName: exp key;
			addMethod: meth;
			date: exp value.
		expertiseColl add: expertise.
	] ifFalse: [
		expertise := expertiseColl at: ind.
	].
	^ expertise
