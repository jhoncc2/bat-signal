accessing
maxIdfRelevantText: questionWordsArray
	"idf of each word"
	| r |
	r := (questionWordsArray collect: [ :e | dictSize / (1 + (self frequencyOfWord: e asLowercase)) ]).
	^ r indexOf: r max