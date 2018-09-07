tests-accessing
testIdfRelevantText
	| i r q |
	i := BTNLTextTFIDF new.
	i executeIDF: self questionsData.
	q := ' ' split: 'Who is expert in Roassal'.
	r := i maxIdfRelevantText: q.
	self assert: r equals: 'Roassal'.
	
	q := ' ' split: 'Who, is expert in Roassal?'.
	q := (i cleanSentenceWords: q).
	r := i maxIdfRelevantText: q.
	self assert: r equals: 'Roassal'.
	
	q := ' ' split: 'Who, is expert in Object?'.
	q := (i cleanSentenceWords: q).
	r := i maxIdfRelevantText: q.
	self assert: r equals: 'Object'.
	
	q := ' ' split: 'Who, is expert allright in FileDoesNotExistException? '.
	q := (i cleanSentenceWords: q).
	r := i maxIdfRelevantText: q.
	self assert: r equals: 'FileDoesNotExistException'.
	
	q := ' ' split: 'experts for Roassal?'.
	q := (i cleanSentenceWords: q).
	r := i maxIdfRelevantText: q.
	self assert: r equals: 'Roassal'.

