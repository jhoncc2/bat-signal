building
processContributorsOfMethod: meth
	| c |
	c := meth author.
	self ifEligible: c do: [
		|contrib |
		(contributors includesKey: c) ifFalse: [ contributors at: c put: BTExpert new ].
		contrib := contributors at: c.
		contrib addMethod: meth. 
		contrib addUsedMethods: self getUsageMethods: meth. 
	].
	
