action
sendAction
	BTAbstractSender defaultClass new
		dialog: self;
		targetMethod: self targetMethod;
		message: self getText;
		sendMessage.
	