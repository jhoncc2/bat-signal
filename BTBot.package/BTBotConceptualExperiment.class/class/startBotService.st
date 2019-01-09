accessing
startBotService
	|inst|
	inst := self instance.
	  
	inst token: 'NDg5MzUwNzI5MzU0NTc1ODcy.DxgOdg.RBEMP31nqXXNO4chU1f60T4C7rc'.
	inst serverTarget: 'test_server'.
	"inst channelsToListen: {'test-bot'}."
	inst channelsToOmit: {'general'}.

	"ensure disconnect from previous running servers"
	inst disconnect. 
	inst newLogName.
	inst startListening.
	