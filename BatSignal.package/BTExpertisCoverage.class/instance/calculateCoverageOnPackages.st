actions
calculateCoverageOnPackages
	calculatedPackages := Dictionary new.
	calculatedClasses associations do: [:e |
		| p |
		p := (Smalltalk classNamed: e key) package name.
		self createOrAdd: calculatedPackages key: p value: e value.
	].