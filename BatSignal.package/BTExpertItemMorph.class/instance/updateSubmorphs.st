initialization
updateSubmorphs
	self expert ifNotNil: [ :e | 
		e isReachable 
			ifTrue: [self submorphs first contents: e expertName , ' - Discord'] 
			ifFalse: [self submorphs first contents: e commitName]
	]