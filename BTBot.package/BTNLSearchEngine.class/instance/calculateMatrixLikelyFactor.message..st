processing
calculateMatrixLikelyFactor: q message: msg
	| qWords msgWords |
	qWords := self removeUnmeaningfulChars: q.
	msgWords := self removeUnmeaningfulChars: msg.
	^ (qWords collectWithIndex: 
		[ :w :i | self calculateWordFactor: w arrayMsg: msgWords startAt: 1 ]) sum / msgWords size