import
parseFrom: e
	^ self discordId: (e at: 'discordId');
		expertName: (e at: 'name');
		discordDiscriminator: (e at: 'discordDiscriminator');
		discordUsername: (e at: 'discordUsername');
		commitName: (e at: 'commitName');
		yourself.