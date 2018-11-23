accessing
startBotService
	|inst|
	inst := BTQueryBot instance.
	  
	inst token: 'the_token_goes_here'.
	inst serverTarget: 'some_other_test'.
	inst channelsToListen: {'test-bot'}.
	"inst channelsToOmit: {'test-bot'}."
	"inst channelsToListen: {'bot-test-channel'}."

	"process := ["
			inst disconnect.
			inst newLogName.
			inst startListening.
			"self logCr: DateAndTime now. self timeToSleep wait."
	"] fork."