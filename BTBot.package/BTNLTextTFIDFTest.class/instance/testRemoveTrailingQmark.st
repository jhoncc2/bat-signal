tests-accessing
testRemoveTrailingQmark
	| i r |
	i := BTNLTextTFIDF new.
	i executeIDF: self tmpData.
	r := i removeTrailingQmark: (' 'split: 'who is expert in Roassal?'). 
	self assert: r asArray equals: #('who' 'is' 'expert' 'in' 'Roassal').
	
	r := i removeTrailingQmark: (' 'split: 'who is expert in Roassal??? i want to know'). 
	self assert: r asArray equals: #('who' 'is' 'expert' 'in' 'Roassal' 'i' 'want' 'to' 'know').
	
