processing
findSendersOf: aCompiledMethod inPackages: packageList
	"returns the senders of the compiledMethod given as argument in the packages
	uses also the package where the compiledMethod is belongs"
	| coll |
	coll := (packageList asArray , {aCompiledMethod methodClass package}) collect: [ :p |
		p methods select: [ :e | 
			e messages anySatisfy: [ :el | el = aCompiledMethod selector ] 
		]
	].

	^ coll flattened.