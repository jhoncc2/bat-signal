actions
getOrCreateExpertise: exp method: meth
	| ind expertise contributor |
	contributor := self replaceIfKnown: exp key.
	
	ind := expertiseColl findFirst: [ :e |
		e commitName = contributor.
	].
	ind = 0 ifTrue: [ 
		expertise := BTExpertise new
			commitName: contributor;
			addMethod: meth;
			date: exp value.
		expertiseColl add: expertise.
	] ifFalse: [
		expertise := expertiseColl at: ind.
		expertise addMethod: meth
	].
	^ expertise
