discord
bindDiscordExpertise
	discordExpertise := BTDiscord knownExpertise select: #isElegible.
	discordExpertise do: [ :e |
		contributors do: [ :c | 
			((self likeNames: c commitName with: e name)
				or: [ self likeNames: c commitName with: e username ]) 
				ifTrue: [ 
					c discordContact: e.
					e addExpertise: c.
				]
		]
	]