processing
getQueryDescriptor
	"(self getTargetElement: self message) ifNil: [ ^ nil ]."
	
	^ self buildQueryDescriptor: (self searchQuestion: self message)
			withTargetElement: (self getTargetElement: self message)