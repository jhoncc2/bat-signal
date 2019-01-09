processing
handleAnswer: category
	| answers |
	answers := BTCELanguageData answers asDictionary.
	^ answers at: category