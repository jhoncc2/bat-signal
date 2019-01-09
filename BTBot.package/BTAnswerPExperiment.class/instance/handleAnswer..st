processing
handleAnswer: category
	| answers |
	answers := BTBotDataPExperiment answers asDictionary.
	^ answers at: category