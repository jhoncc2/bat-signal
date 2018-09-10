extend
processNewPackagesInImage
	| newPackages ms procPackages |
	procPackages := self openStonData: 'packages.json'.
	newPackages := (SystemNavigation default allClasses collect: #package) 
		reject: [ :e | procPackages includesKey: e name ].
	ms := (newPackages collect: #classes) flattened collect: #methods.
	ms flattened do: [ :m |
		self inmediateExpertise: m.
		self usageExpertise: m.
	].
	
	self saveExtendedData.	