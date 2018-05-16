accessing
toStonFormat
	|c|
	contacts ifNotEmpty: [ c := contacts asArray first. ].
	^ Dictionary new 
		at: 'commitName' put: self commitName;
		at: 'name' put: (c ifNotNil: [c name]);
		at: 'discordId' put: (c ifNotNil: [c id]);
		at: 'discordUsername' put: (c ifNotNil: [c username]);
		yourself.
