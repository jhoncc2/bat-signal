starting
handleMessage: msg
	| response queryDescriptor |
		
	(msg author isNil 
		or: [(msg author isBot) 
			or:[msg content isNil 
				or: [msg content isEmpty]]]) ifFalse: [ 
	
	self isBotRestricted ifTrue: [
		(self isChannelOmmited: msg channelId) ifTrue: [ ^ self yourself ].
		 ].
	
		
		"save questions made before"
		self logQuestionMessage: msg.
		
		queryDescriptor := BTMessageProcessor instance processMessagePayload: msg.

		[ 	response := BTAnswerProcessor instance processQueryDescriptor: queryDescriptor.
			bot message message: response key ; respondTo: msg.
			response value do: [ :e | 
				bot message
					embedTitle: e key;
					embedDescription: e value;
					respondTo: msg. ]
		] 
			on: BTErrorBase 
			do: [:e | 
				bot message
					embedDescription: e messageText;
					embedColor: Color orange;
					respondTo: msg.]. 

		"bot message
				embedDescription: response;
				embedColor: Color gray;
				respondTo: msg. ]"
		]
			
	