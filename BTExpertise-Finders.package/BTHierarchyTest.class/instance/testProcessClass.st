initialization
testProcessClass
	| cont resNames |
	cont := instance processClass: BTExpertiseProviderBase.
	self assert: ((cont collect: #key) collect: #username) asArray equals: #('jhoncc2').
	
	cont := instance processClass: Collection.
	resNames := ((cont collect: #key) collect: #username).
	self assertList: resNames containsSubList: #('MarcusDenker' 'ClementB').
	
	
	self assert: (instance processClass: Object) isEmpty.
	self assert: (instance processClass: Behavior) isEmpty.
	self assert: (instance processClass: ProtoObject) isEmpty.
	self assert: (instance processClass: Class) isEmpty.