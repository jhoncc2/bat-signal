processing
processMethod: aCompiledMethod
	"process hierarchy implementors of the method pased as argument, and 
	returns an association list of <BTDiscord>-><int>, where <int> is the list of authorship in 	implementors of the given compiledMethod"
	"aCompiledMethod methodClass allSubInstances collect: #methods."
	| hirarchyMethods |
	hirarchyMethods := aCompiledMethod implementors 
		select: [ :m | m methodClass allSuperclasses anySatisfy: [ :e | e = aCompiledMethod methodClass] ].
		
	hirarchyMethods :=  hirarchyMethods 
								collect:  [ :e | self findDiscordUser: e author ]
								thenReject: #isNil.
	^ (hirarchyMethods groupedBy: [ :e | e username ]) associations 
			collect: [ :e | e value first -> e value size ]