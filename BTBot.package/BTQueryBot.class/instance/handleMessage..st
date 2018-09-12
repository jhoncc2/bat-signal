starting
handleMessage: msg
	| response queryDescriptor |
	(msg content isNil or: [msg content isEmpty]) ifFalse: [ 
		
		"save questions made before"
		self logQuestionMessage: msg.
		
		queryDescriptor := BTMessageProcessor instance processMessagePayload: msg.

		[ 	response := BTAnswerProcessor instance processQueryDescriptor: queryDescriptor.
			bot message message: 'I have found the next information'; respondTo: msg.
			response do: [ :e | 
				bot message
					embedTitle: e key;
					embedDescription: e value;
					respondTo: msg. ]
		] 
			on: BTErrorBase 
			do: [:e | response := 
				bot message
					embedDescription: e messageText;
					respondTo: msg.]. 

		"bot message
				embedDescription: response;
				embedColor: Color gray;
				respondTo: msg. ]"
			
		
				
		]
			
	