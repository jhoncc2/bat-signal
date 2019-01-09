query
processQueryDescriptor: queryDescriptor
	| answer cat |

	(queryDescriptor category beginsWith: #exp) 
		ifTrue: [
			answer := self findExpertsExp: queryDescriptor.
			answer ifNil: [ BTUnknowQuestion new messageText: (self handleAnswer: #exp_empty) , queryDescriptor codeElement;
				signal. ].
		] ifFalse: [
		BTUnknowQuestion new messageText: (self handleAnswer: queryDescriptor category);
				signal ].
	
	^ answer.