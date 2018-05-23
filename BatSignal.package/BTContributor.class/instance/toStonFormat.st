export
toStonFormat
	|c|
	c := discordContact.
	^ Dictionary new 
		at: 'commitName' put: self commitName;
		at: 'name' put: (c ifNotNil: [c name]);
		at: 'discordDiscriminator' put: (c ifNotNil: [c discriminator]);
		at: 'discordId' put: (c ifNotNil: [c id]);
		at: 'discordUsername' put: (c ifNotNil: [c username]);
		yourself.
