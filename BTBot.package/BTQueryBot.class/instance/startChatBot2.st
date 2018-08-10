starting
startChatBot2
	
	bot := DSBot new.
	bot token: self token.
	bot connect.

	bot announcer 
		when: DSGatewayMessageAnnouncement
		do: [ :ann |
			self handleMessage: ann message. ].