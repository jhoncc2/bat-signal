actions
calculateCoverageOnPackages
	calculatedPackages := Dictionary new.
	calculatedClasses associations do: [:e |
		| p |
		p := (Smalltalk classNamed: e key) package name.
		(calculatedPackages includesKey: p) ifFalse: [ calculatedPackages at: p put: Set new ].
		(calculatedPackages at: p) addAll: e value.
	].