accessing
idfRelevantText: questionWordsArray
	"idf of each word"
	^ questionWordsArray collect: [ :e | dictSize / (1 + (self frequencyOfWord: e asLowercase)) ]