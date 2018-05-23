initialization
sendMessage
	| msg |

	msg := self message.
	targetExpert isReachable ifTrue: [ 
		msg := msg , ' ' , targetExpert discordReference 
	].
	
	DSBot new
		token: 'NDI2MDg1ODg4Njk5NzkzNDA4.DdZH4g.j8BjLpEcEtP2LtxEekWjfexE0os';
		with: [ :bot | bot message
			content: msg;
			sendToServer: 'BatSignal-test' channel: 'bot-test-channel' ].
	"dialog close."