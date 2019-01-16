processing
calculateMatrixLikelyFactor: q message: msg
	| qWords msgWords |
	qWords := self removeUnmeaningfulChars: q.
	msgWords := self removeUnmeaningfulChars: msg.
	^ (qWords collect: 
		[ :w | self calculateWordFactor: w arrayMsg: msgWords startAt: 1 ]) sum / msgWords size