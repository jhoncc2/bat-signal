as yet unclassified
processQueryDescriptor: queryDescriptor
	| answer |
	
	(queryDescriptor category beginsWith: #exp) 
		ifTrue: [ 
			|list|
			list := self findExperts: queryDescriptor.
			list 
				ifEmpty: [ answer := (self handleAnswer: #exp_empty) , queryDescriptor codeElement]
				ifNotEmpty: [ answer := (self handleAnswer: queryDescriptor category) , 
					queryDescriptor codeElement , 
					String cr , 
					(self formatExpertiseList:  list ) ]
			
		] ifFalse: [
			answer  := self handleAnswer: queryDescriptor category.].
	
	^ answer.