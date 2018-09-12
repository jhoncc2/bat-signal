tests-as yet unclassified
testDefineCodeNameType
	| res |
	res := instance defineCodeNameType: 'BTQueryBot'.
	self assert: res key equals: #class.
	
	res := instance defineCodeNameType: 'BatSignal'.
	self assert: res key equals: #package.
	
	res := instance defineCodeNameType: 'BTAnswerProcessorTest>>#setUp'.
	self assert: res key equals: #method.
	
	self should: [ instance defineCodeNameType: 'Collections' ] raise: BTUnkownCodeName.
	self should: [ instance defineCodeNameType: 'SomeNothingBla' ] raise: BTUnkownCodeName