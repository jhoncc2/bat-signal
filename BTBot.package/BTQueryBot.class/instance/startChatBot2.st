starting
startChatBot2
	
	bot := DSBot new.
	bot token: self token.
	bot connect.

	self serverTarget: 'BatSignal-test'.
	self channelsToOmit: {'general'}.
	"self channelsToListen: {'bot-test-channel'}."
	"self channelsToListen:{}."
	
	bot announcer 
		when: DSGatewayMessageAnnouncement
		do: [ :ann |
			self handleMessage: ann message. ].