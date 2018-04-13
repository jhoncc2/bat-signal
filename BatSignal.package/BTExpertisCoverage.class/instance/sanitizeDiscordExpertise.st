actions
sanitizeDiscordExpertise
	"output format for each expertise : {ExpertiseName. DiscordUserName. DiscordCode}"
	discordExpertise := (discordExpertise 
		select: [ :e | e value isNotNil ])
		collect: [ :e | 
			|v|
			v := ('#' split: e value).
			BTContact new name: e key;
				username: v first;
				id: v second.
				
			
			{(e key). (v first). (v second)} ]
	
	