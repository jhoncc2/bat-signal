starting
sendBotMessage
	DSBot new
	token: 'put_your_key_here';
	with: [ :b | 
		b message
		content: 'Hi! I am a bot :-)';
		sendToServer: 'BatSignal-test' channel: 'dumb-messages' ].