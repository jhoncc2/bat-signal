accessing
cronJobStartServerBot
	shouldStop := false.
	process := [ [ shouldStop ] whileFalse: [ 
			self logCr: DateAndTime now. self timeToSleep wait.
			BTQueryBot instance disconnect.
			BTQueryBot instance newLogName.
			BTQueryBot instance startChatBot2.
			
		].
	] fork.