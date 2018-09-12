*BTDiscordAnalyzer
toBTDiscord
	^ BTDiscord new name: self username;
					username: self username;
					discriminator: self discriminator;
					id: self id;
					yourself.