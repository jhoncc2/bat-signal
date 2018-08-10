processing
processMessage: msg
	|processor |
	self message: msg.
	processor := self getMessageProcessor: msg.
	^ processor getQueryDescriptor.
	
		