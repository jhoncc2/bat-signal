query
findExpertsExp: queryDescriptor
	| res |
	res := self findByCategory: queryDescriptor codeElement.

	res ifNotEmpty: [ ^ 'I have found the next information ' -> 
			(queryDescriptor codeElement -> (String cr join: res) ) . ].
	
	^ nil.