tests-accessing
testCleanSentenceWords
	| i r |
	i := BTNLTextTFIDF new.
	i executeIDF: self tmpData.
	r := i cleanSentenceWords: (' 'split: 'Who is expert in Roassal?'). 
	self assert: r asArray equals: #('Who' 'is' 'expert' 'in' 'Roassal').
	
	r := i cleanSentenceWords: (' 'split: 'Who,,,is expert.in Roassal?'). 
	self assert: r asArray equals: #('Who' 'is' 'expert' 'in' 'Roassal').
	
	r := i cleanSentenceWords: (' 'split: 'who IS expert,  in Roassal??? i want to know'). 
	self assert: r asArray equals: #('who' 'IS' 'expert' 'in' 'Roassal' 'i' 'want' 'to' 'know').
	
