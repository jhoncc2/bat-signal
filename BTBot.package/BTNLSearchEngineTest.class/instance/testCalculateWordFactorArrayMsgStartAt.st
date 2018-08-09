tests-processing
testCalculateWordFactorArrayMsgStartAt
	| res |
	res := instance calculateWordFactor: 'some' arrayMsg: {'some'. 'word'} startAt: 1.
	self assert: res equals: 1.
	res := instance calculateWordFactor: 'some' arrayMsg: {'some'. 'word'} startAt: 2.
	self assert: res equals: 0.