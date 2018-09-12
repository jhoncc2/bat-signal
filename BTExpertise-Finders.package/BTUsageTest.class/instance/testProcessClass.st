tests-processing
testProcessClass
	| res |
	res := instance processClass: BTHierarchy.
	self assertList: ((res collect: #key) collect: #username) containsSubList: #('jhoncc2').
	
	res := instance processClass: Collection.
	self assertList: ((res collect: #key) collect: #username) containsSubList: #('Stepharo').
	
	res := instance processClass: Boolean.
	self assertList: ((res collect: #key) collect: #username) containsSubList: #('Stepharo' 'MarcusDenker')