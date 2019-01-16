processing
searchQuestion: msg 
	"returns user related question"
	| factor factors |
	self message: msg.
	factor := 0.5.
	factors := languageData questions collect: [ :q |
			self calculateMatrixLikelyFactor: q value message: msg.
		].
	
	factors max > factor 
		ifTrue: [ ^ searchQuestion := (languageData questions 
							at: (factors indexOf: factors max)) key ] "define questions"
		ifFalse: [ 
			
			^ searchQuestion := #unknown_message 
			] "default"
		
