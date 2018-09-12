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
	
	answer ifNil: [ answer := self handleAnswer: queryDescriptor category. ].
	
	^ answer.