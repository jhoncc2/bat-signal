accessing
discordUsers
	^ discordUsers ifNil: [ discordUsers := BTDiscord knownDSExpertise select: #isElegible]