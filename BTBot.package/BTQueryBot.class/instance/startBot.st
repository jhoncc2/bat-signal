as yet unclassified
startBot

| answer |
bot := DSBot new.
bot token: 'BOT-TOKEN'.
bot connect.

answer := DSExpertiseAnswer new bot: bot; yourself.

bot announcer 
	when: DSGatewayMessageAnnouncement 
	do: [ :ann | 
		DSExpertiseQuestion 
			message: ann message
			answer: answer ].