processing
searchQuestion: msg 
	"returns user related question"
	|factor factors|
	self message: msg.
	factor := 0.2.
	factors := self questions collect: [ :q |
			self calculateMatrixLikelyFactor: q value message: msg.
		].
	factors max > factor 
		ifTrue: [ ^ searchQuestion := (self questions at: (factors indexOf: factors max)) key ] "define questions"
		ifFalse: [ ^ searchQuestion := #all ] "default"
		
