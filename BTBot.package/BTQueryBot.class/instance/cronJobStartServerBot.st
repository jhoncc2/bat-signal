log
cronJobStartServerBot
	shouldStop := false.
	process := [ [ shouldStop ] whileFalse: [ 
			self logCr: DateAndTime now. 10 seconds wait.
			BTQueryBot instance disconnect.
			BTQueryBot instance newLogName.
			BTQueryBot instance startChatBot2.
			
		].
	] fork.