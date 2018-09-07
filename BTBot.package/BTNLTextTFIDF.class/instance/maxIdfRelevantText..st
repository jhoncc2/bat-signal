accessing
maxIdfRelevantText: questionWordsArray
	"idf of each word"
	| r |
	r := self rankProgramElementInQuestion: questionWordsArray.
	^ r first value