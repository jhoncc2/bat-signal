tests-accessing
testGetTargetElement
	self assert: (instance getTargetElement: 'lorem ipsum a "lorem" b c d')
		equals: 'lorem'.
	self assert: (instance getTargetElement: 'lorem ipsum a  b c d')
		equals: nil