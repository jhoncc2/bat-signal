contributors
usageExpertise: method
	| contr imp |
	self ifEligible: method author do: [ 
		contr := self getOrCreateContributor: method author.
		method messages do: [ :e |
			imp := e implementors.
			imp size = 1 ifTrue: [
				contr addMethod: imp
			]
		]
	]
	