processors
processCompiledMethod: method

	| author date coll cls key |
	
	author := method author.
	self ifEligible: author do: [
		date := ''.
		date := method timeStamp ifNotEmpty: [ :ts | ((ts splitOn: ' ') last: 2) first. ].

		cls := method methodClass name.
		key := method name.
		"(methods includesKey: key) ifTrue: [self halt.]." "weird case, it musn't happen"
		coll := methods at: key ifAbsentPut: OrderedCollection new.
		coll add: author -> date.
		coll := classes at: cls ifAbsentPut: OrderedCollection new.
		coll add: author -> date.
	]