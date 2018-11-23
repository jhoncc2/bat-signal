accessing
cronJobStartServerBot
	"shouldStop := false.
	process := [ [ shouldStop ] whileFalse: [ 
			BTQueryBot instance disconnect.
			BTQueryBot instance newLogName.
			BTQueryBot instance startChatBot2.
			self logCr: DateAndTime now. self timeToSleep wait.
		].
	] fork."