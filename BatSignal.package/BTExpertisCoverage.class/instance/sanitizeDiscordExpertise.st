actions
sanitizeDiscordExpertise
	"output format for each expertise : {ExpertiseName. DiscordUserName. DiscordCode}"
	discordExpertise := (discordExpertise 
		select: [ :e | e value isNotNil ])
		collect: [ :e | 
			|v|
			v := ('#' split: e value).
			{(e key). (v first). (v second)} ]
	
	