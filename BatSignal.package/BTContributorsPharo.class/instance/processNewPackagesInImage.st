extend
processNewPackagesInImage
	| newPackages ms procPackages |
	contributors := Dictionary new.
	methods := Dictionary new.
	classes := Dictionary new.
	packages := Dictionary new.
	
	procPackages := self openStonData: 'packages.json'.
	newPackages := (SystemNavigation default allClasses collect: #package) asSet
		reject: [ :e | procPackages includesKey: e name ].
	ms := (newPackages collect: #classes) flattened collect: #methods.
	ms flattened do: [ :m |
		self inmediateExpertise: m.
		self usageExpertise: m.
	].
	
	self saveExtendedData.	