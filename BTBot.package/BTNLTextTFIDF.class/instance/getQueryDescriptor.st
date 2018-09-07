accessing
getQueryDescriptor
	"(self getTargetElement: self message) ifNil: [ ^ nil ]."
	
	| question i |
	question := self cleanSentenceWords: (' ' split: self message).
	i := self maxIdfRelevantText: question.
	
	^ self buildQueryDescriptor: (self searchQuestion: self message)
			withTargetElement: (question at: i)