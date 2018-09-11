initialization
testProcessMethod
	| cont |
	cont := instance processMethod: (BTExpertiseProviderBase >> #processMethod:).
	self assert: ((cont collect: #key) collect: #username) asArray equals: #('jhoncc2')