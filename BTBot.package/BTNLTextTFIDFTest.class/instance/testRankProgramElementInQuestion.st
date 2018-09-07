tests-query
testRankProgramElementInQuestion
	| i r q |
	i := BTNLTextTFIDF new.
	i executeIDF: self questionsData.
	q := ' ' split: 'Who is expert in Roassal'.
	r := i rankProgramElementInQuestion: q.
	self assert: r first value equals: 'Roassal'.
	
	q := ' ' split: 'There is a max on Array,but apparently no argmax (position of the max) ? FT2Library'.
	q := (i cleanSentenceWords: q).
	r := i rankProgramElementInQuestion: q.
	self assert: r first value equals: 'FT2Library'.
	
	q := ' ' split: 'Who, is expert in Object?'.
	q := (i cleanSentenceWords: q).
	r := i rankProgramElementInQuestion: q.
	self assert: r first value equals: 'Object'.
	
	q := ' ' split: 'Who, is expert allright in FileDoesNotExistException? '.
	q := (i cleanSentenceWords: q).
	r := i rankProgramElementInQuestion: q.
	self assert: r first value equals: 'FileDoesNotExistException'.
	
	
	