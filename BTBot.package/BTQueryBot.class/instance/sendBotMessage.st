starting
sendBotMessage
	DSBot new
	token: 'NDI2MDg1ODg4Njk5NzkzNDA4.DdZH4g.j8BjLpEcEtP2LtxEekWjfexE0os';
	with: [ :b | 
		b message
		content: 'Hi! I am a bot :-)';
		sendToServer: 'BatSignal-test' channel: 'dumb-messages' ].