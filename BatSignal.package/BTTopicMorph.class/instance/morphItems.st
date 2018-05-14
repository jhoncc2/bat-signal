building
morphItems
	(expertList isNil or: [ expertList isEmpty ]) ifTrue: [ ^ {
		(BTEmptyItemMorph new).
	} ].
	^ expertList collect: [ :m | 
		BTExpertItemMorph new
		expert: m;
		yourself. ]