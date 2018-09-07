tests-accessing
testExecuteIDF
	| i a b |
	i := BTNLTextTFIDF new.
	i executeIDF: self questionsData.
	a := i frequencyOfWord: 'who'.
	b := i frequencyOfWord: 'Who'.
	self assert: a equals: b
	

	
