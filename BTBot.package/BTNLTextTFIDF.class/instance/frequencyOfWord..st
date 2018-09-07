accessing
frequencyOfWord: e
	| term |
	term := e asLowercase.
	(frequency includesKey: term )
		ifTrue: [ ^ frequency at: term ]
		ifFalse: [ ^ 0 ]