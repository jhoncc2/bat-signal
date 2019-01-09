accessing
getMessageProcessor: msg
	^ messageProcessor := (msg beginsWith: BTMessageCommand commandPrefix) 
			ifTrue: [ BTNLTextTFIDF instance
								languageData: BTBotLanguageData instance; 
								message: msg;
								yourself ]
			ifFalse: [ BTNLTextTFIDF instance
								languageData: BTBotLanguageData instance;
								message: msg;
								yourself ].
	