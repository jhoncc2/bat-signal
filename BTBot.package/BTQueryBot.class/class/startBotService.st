accessing
startBotService
	|inst|
	inst := BTQueryBot instance.
	  
	inst token: 'the_token_goes_here'.
	inst serverTarget: 'some_server'.
	inst channelsToListen: {'test-bot'}.
	"inst channelsToOmit: {'test-bot'}."

	"ensure disconnect from previous running servers"
	inst disconnect. 
	inst newLogName.
	inst startListening.
	