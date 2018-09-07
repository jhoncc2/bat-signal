accessing
getMessageProcessor: msg
	^ messageProcessor := (msg beginsWith: BTMessageCommand commandPrefix) 
			ifTrue: [ BTMessageCommand instance
								message: msg;
								yourself ]
			ifFalse: [ BTNLTextTFIDF instance
								message: msg;
								yourself ].
	