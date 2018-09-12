processing
processQueryDescriptor: queryDescriptor
	| answer |
	(queryDescriptor category beginsWith: #exp) 
		ifTrue: [
			answer := self processImmediateExpertise: queryDescriptor.
		].
	(queryDescriptor category beginsWith: #usage) ifTrue: [
			answer := self processUsageExpertise: queryDescriptor.
		].
	
	answer ifNil: [  
		BTUnknowQuestion new messageText: (self handleAnswer: queryDescriptor category);
				signal ].
	
	^ answer.