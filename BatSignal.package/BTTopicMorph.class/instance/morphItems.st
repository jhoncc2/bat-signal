building
morphItems
	compiledMethods ifNil: [ ^ {} ].
	^ compiledMethods collect: [ :m | 
		BTTopicItemMorph new
		method: m;
		yourself. ]