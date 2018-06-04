public-api
processPackage: packageName
	
	| clss dict |
	clss := (SystemNavigation default allClassesInPackageNamed: packageName) .
	dict := Dictionary new.
	clss do: [ :e |
		self processClass: e name.
		dict addAll: (classes at: e name)
	].
	packages at: packageName put: dict.