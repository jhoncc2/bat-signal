accessing
getMessageProcessor: msg
	^ (msg beginsWith: BTMessageCommand commandPrefix) 
			ifTrue: [ BTMessageCommand instance
								message: msg;
								yourself ]
			ifFalse: [ BTNLMessageAbstract defaultProcessor instance
								message: msg;
								yourself ].
	