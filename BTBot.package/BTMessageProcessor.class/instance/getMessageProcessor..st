accessing
getMessageProcessor: msg
	^ messageProcessor := (msg beginsWith: BTMessageCommand commandPrefix) 
			ifTrue: [ BTMessageCommand instance
								message: msg;
								yourself ]
			ifFalse: [ BTNLSearchEngine instance
								message: msg;
								yourself ].
	