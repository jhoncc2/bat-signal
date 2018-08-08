as yet unclassified
startChatBot
	bot := DSBot new.
	bot token: self token.
	bot connect.

	"answer := DSExpertiseAnswer new bot: bot; yourself."
	bot announcer 
		when: DSGatewayMessageAnnouncement
		do: [ :ann | | response |
			ann message content 
			ifNotEmpty: [ 
				response := BTMessageProcessor instance processMessage: ann message content.
				response ifEmpty: [ 
					bot message
						embedDescription: 'Sorry, I do not know.';
						embedColor: Color gray;
						respondTo: ann message. 
				] ifNotEmpty: [ 
					bot message
						embedDescription: (
							(response collect: [:e | 
								e expertName , 
								e discordReference ,
								String cr ]) asArray joinUsing: ' - ');
						embedColor: Color gray;
						respondTo: ann message. ].
			bot  ] ].