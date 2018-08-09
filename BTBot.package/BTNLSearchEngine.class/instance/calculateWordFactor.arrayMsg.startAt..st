processing
calculateWordFactor: word arrayMsg: msgWords startAt: startIndex
	| occurrences |
	occurrences := 0.
	startIndex to: msgWords size do: [ :i |
		(msgWords at: i) = word ifTrue: [ occurrences := occurrences +1  ]
		].
	^ occurrences.