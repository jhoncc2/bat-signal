starting
handleMessage: msg
	| response queryDescriptor |
	"filter data"	
	(msg author isNil 
		or: [(msg author isBot) 
			or:[msg content isNil 
				or: [msg content isEmpty]]]) ifTrue: [
			^ self yourself.
		].
	
	self isBotRestricted ifTrue: [
		(self isChannelOmmited: msg channelId) ifTrue: [ ^ self yourself ].
		 ].
	
		
		"save questions made before"
		"self logQuestionMessage: msg."

		queryDescriptor := BTMessageProcessor instance processMessagePayload: msg.
		[
		
			response := BTAnswerPExperiment instance processQueryDescriptor: queryDescriptor.
			"answer header"
			bot message message: response key; respondTo: msg.
			
			"answer body"
			
				bot message
					embedTitle: response value key;
					embedDescription: response value value;
					respondTo: msg.
		] 
			on: BTErrorBase 
			do: [:e | 
				bot message
					embedDescription: e messageText;
					embedColor: Color orange;
					respondTo: msg.]. 

		"save questions made before"
		self logQuestionMessage: msg queryDesc: queryDescriptor.
		"bot message
				embedDescription: response;
				embedColor: Color gray;
				respondTo: msg. ]"

			
	