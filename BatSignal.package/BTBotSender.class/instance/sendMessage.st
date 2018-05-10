initialization
sendMessage
	| index msg contributor |
	index := BTExpertisCoverage instance calculatedMethods associations 
						findFirst: [:e | e key = self targetMethod ] .
	msg := self message.
	index > 0 ifTrue: [ 
		contributor := (BTExpertisCoverage instance calculatedMethods associations at: index) value asArray first.
		contributor  isReachable ifTrue: [
			msg := msg , ' ' , contributor contacts asArray first discordReference. 
		]
	].

	DSBot new
		token: 'HERE YOUR TOKEN';
		with: [ :bot | bot message
			content: msg;
			sendToServer: 'BatSignal-test' channel: 'dumb-messages' ].
	"dialog close."