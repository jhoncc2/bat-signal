tests-processing
testProcessMethod
	| res |
	res := instance processMethod: BTHierarchy >> #processMethod:.
	self assertList: ((res collect: #key) collect: #username) containsSubList: #('jhoncc2').
	
	res := instance processMethod: Collection >> #asArray.
	self assertList: ((res collect: #key) collect: #username) containsSubList: #('Stepharo')