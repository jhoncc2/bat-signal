tests-accessing
testDescipherCodeElement
	| inst |
	inst := BTNLPrefixProcessor new.
	inst message: inst prefix , 'BatSignal?'.
	self assert: inst descipherCodeElement equals: 'BatSignal'.
	
	inst message: 'I wnat to ask you, ', inst prefix , 'BatSignal?'.
	self assert: inst descipherCodeElement equals: 'BatSignal'.
	
	inst message: 'I wnat to ask you, ', inst prefix asLowercase , 'BatSignal?'.
	self assert: inst descipherCodeElement equals: 'BatSignal'.
	
	inst message: 'I wnat to ask you, BatSignal?'.
	self assert: inst descipherCodeElement equals: nil.