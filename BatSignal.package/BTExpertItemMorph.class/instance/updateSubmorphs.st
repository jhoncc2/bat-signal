initialization
updateSubmorphs
	self expert ifNotNil: [ :e | 
		e key isReachable 
			ifTrue: [self submorphs first contents: '[' , e value , '] ' , e key expertName] 
			ifFalse: [self submorphs first contents: '[' , e value , '] ' , e key commitName]
	]