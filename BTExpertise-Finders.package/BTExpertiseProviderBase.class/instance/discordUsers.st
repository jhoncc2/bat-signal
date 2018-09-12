accessing
discordUsers
	^ discordUsers ifNil: [ discordUsers := BTContact knownExpertise select: #isElegible] 
