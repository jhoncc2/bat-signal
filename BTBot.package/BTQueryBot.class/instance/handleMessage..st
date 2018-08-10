starting
handleMessage: msg
	| response queryDescriptor |
	(msg content isNil or: [msg content isEmpty]) ifFalse: [ 
		queryDescriptor := BTMessageProcessor instance processMessagePayload: msg.

		response := BTAnswerProcessor instance processQueryDescriptor: queryDescriptor. 
		bot message
				embedDescription: response;
				embedColor: Color gray;
				respondTo: msg. ]
	