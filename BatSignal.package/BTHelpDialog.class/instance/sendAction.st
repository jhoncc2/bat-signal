action
sendAction
	BTAbstractSender defaultClass new
		dialog: self;
		targetExpert: self targetExpert;
		message: self getText;
		sendMessage.
	