extend
saveExtendedData
	| experts expertIndexBlock data methodsData classesData packagesData expertsData |
	expertsData := (self openStonData: 'expert.json').
	methodsData := (self openStonData: 'methods.json') .
	classesData := (self openStonData: 'classes.json') .
	packagesData := (self openStonData: 'packages.json') .
	
	experts := contributors values select: #isReachable.
	experts  asArray 
		do: [ :e | (self indexOfDiscordExpert: e inExperts: expertsData) isZero 
			ifTrue: [ expertsData , {(e toStonFormat)} ] ].
	
	self persistData: expertsData
		  onFile: 'expert.json'.

	expertIndexBlock := [ :expertDict | 
		((expertDict associations 
			collect: [ :e | (self indexOfDiscordExpert: e key inExperts: expertsData) -> e value ]) 
			reject: [ :e | e key = 0 ]) asDictionary ].
	
	"persist methods"
	data := methods associations 
					collect: [ :e | e key -> (expertIndexBlock value: e value)].
	methodsData addAll: data asDictionary.
	self persistData: methodsData 
		  onFile: 'methods.json'.
		
	"persist classes"
	data := classes associations 
				collect: [ :e | e key -> (expertIndexBlock value: e value)].
	classesData addAll: data asDictionary.
	self persistData: classesData
		  onFile: 'classes.json'.
	
	"persist packages"	
	data := packages associations 
				collect: [ :e | e key -> (expertIndexBlock value: e value)].
	packagesData addAll: data asDictionary.
	self persistData: packagesData
		  onFile: 'packages.json'.
	