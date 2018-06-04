contributors
inmediateExpertise: meth
	| contributor |
	self ifEligible: meth author do: [
		contributor := self getOrCreateContributor: meth author.
		contributor addMethod: meth.
		contributor addClass: meth methodClass.
		contributor addPackage: meth package.
	]