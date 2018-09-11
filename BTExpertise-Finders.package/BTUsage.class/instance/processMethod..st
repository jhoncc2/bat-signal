processing
processMethod: aCompiledMethod
	| coll packages |

	packages := ((SystemNavigation default allClasses collect: #methods) flattened
						select: [ :e | e referencedClasses anySatisfy: 
							[ :el | el = aCompiledMethod methodClass ] ])
						collect: #methodClass.
	
	coll := self findSendersOf: aCompiledMethod inPackages: packages.
	
	coll := coll collect: [ :e | self findDiscordUser: e author ]
								thenReject: #isNil.

	^ self rankAuthors: coll.