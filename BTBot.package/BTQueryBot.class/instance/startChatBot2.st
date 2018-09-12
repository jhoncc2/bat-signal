starting
startChatBot2
	
	bot := DSBot new.
	bot token: self token.
	bot connect.

	self channelsToOmit: {#'test-bot'}.
	self serverTarget: 'some_other_test'.
	bot announcer 
		when: DSGatewayMessageAnnouncement
		do: [ :ann |
			self handleMessage: ann message. ].