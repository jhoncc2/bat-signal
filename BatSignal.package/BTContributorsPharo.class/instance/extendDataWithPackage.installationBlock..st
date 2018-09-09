extend
extendDataWithPackage: packageName installationBlock: anInstanllationBlock
	| p |
	anInstanllationBlock value.
	[p := RPackage organizer packageNamed: packageName] 
				on: Exception 
				do: [ BTPackageNotFound signal].

	self processNewPackage: p.
	