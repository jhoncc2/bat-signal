starting
startListening
	bot announcer 
		when: DSGatewayMessageAnnouncement
		do: [ :ann |
			self handleMessage: ann message. ].
	bot connect.