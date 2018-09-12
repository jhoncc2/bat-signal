asserting
assertList: aCollection containsSubList: bCollection 
	self assert: ((bCollection 
							collect: [ :e | aCollection anySatisfy: [ :el | e = el] ]) 
							reduce: [ :a :b | a and: [ b ] ]).