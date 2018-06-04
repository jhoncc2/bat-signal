initialization
updateSubmorphs
	self expert ifNotNil: [ :e | 
		e isReachable 
			ifTrue: [self submorphs first contents: e expertName] 
			ifFalse: [self submorphs first contents: e commitName]
	]