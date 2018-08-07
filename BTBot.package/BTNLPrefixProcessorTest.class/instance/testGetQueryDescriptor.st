tests-accessing
testGetQueryDescriptor
	| inst |
	inst := BTNLPrefixProcessor new.
	inst message: 'Who is expert in BatSignal?'.
	self assert: inst getQueryDescriptor class equals: BTQueryDescriptor