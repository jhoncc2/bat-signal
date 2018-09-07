query
detectProgramElementInQuestion: questionString
	| q index |
	q := (self cleanSentenceWords: (' ' split: questionString)).
	index := self maxIdfRelevantText: q.
	^ q at: index