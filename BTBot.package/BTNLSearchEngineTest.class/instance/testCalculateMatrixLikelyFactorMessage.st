tests-processing
testCalculateMatrixLikelyFactorMessage
	| res |
	res := instance calculateMatrixLikelyFactor: 'some sentence' message: 'some sentence'.
	self assert: res equals: 1.
	
	res := instance calculateMatrixLikelyFactor: 'some sentence' message: 'hey there, some sentence'.
	self assert: res equals: 1/2.