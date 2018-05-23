contributors
inmediateExpertise: meth
	| contributor |
	self ifEligible: meth author do: [
		contributor := self getOrCreateContributor: meth author.
		contributor addMethod: meth.
		contributor addClass: meth methodClass.
		contributor addPackage: meth package.
		
		methods at: meth name put: Dictionary new.
		classes at: meth methodClass name put: Dictionary new.
		packages at: meth package name put: Dictionary new.
	]