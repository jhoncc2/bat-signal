accessing
startBotService
	|inst|
	inst := self instance.
	  
	inst token: 'token_here'.
	inst serverTarget: 'Ups-Testing'.
	"inst channelsToListen: {'test-bot'}."
	inst channelsToOmit: {'general'}.

	"ensure disconnect from previous running servers"
	inst disconnect. 
	inst newLogName.
	inst startListening.
	