accessing
toStonFormat
	^ Dictionary new 
		at: 'alias' put: (self expertises collect: #commitName) asArray;
		at: 'commitName'  put: self expertises asArray first commitName;
		at: 'discordId'  put: self id;
		at: 'discordDiscriminator'  put: self discriminator;
		at: 'discordUsername' put: self username;
		at: 'name' put: self name;
		yourself.