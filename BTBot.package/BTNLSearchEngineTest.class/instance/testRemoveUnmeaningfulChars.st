tests-processing
testRemoveUnmeaningfulChars
	| res |
	res := instance removeUnmeaningfulChars: 'some sentence'.
	self assert: res asArray equals: #('some' 'sentence')