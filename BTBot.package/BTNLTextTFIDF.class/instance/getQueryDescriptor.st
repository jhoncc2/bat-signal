accessing
getQueryDescriptor
	"(self getTargetElement: self message) ifNil: [ ^ nil ]."
	
	| question i |
	question := self cleanSentenceWords: (' ' split: self message).
	
	^ self buildQueryDescriptor: (self searchQuestion: self message)
			withTargetElement: (self maxIdfRelevantText: question)