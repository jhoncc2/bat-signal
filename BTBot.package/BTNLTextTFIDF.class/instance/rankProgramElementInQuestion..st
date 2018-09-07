query
rankProgramElementInQuestion: questionString
	| q coefList |
	q := (self cleanSentenceWords: (' ' split: questionString)).
	coefList := self idfRelevantText: q.
	^ (coefList collectWithIndex: [ :e :i | e asFloat -> (q at: i) ]) asSortedCollection reverse
	
	 