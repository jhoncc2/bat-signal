as yet unclassified
startChatBot
	bot := DSBot new.
	bot token: BTBotSender token.
	bot connect.

	"answer := DSExpertiseAnswer new bot: bot; yourself."

	bot announcer 
		when: DSGatewayMessageAnnouncement 
			do: [ :announcer | 
				| msg pack r ann|
				ann := announcer message.
				(ann notNil and: [ ann content notNil 
					and: [ ann content includesSubstring: 'Who is expert in ' 
									caseSensitive: false.]]) 
			ifTrue: [
				|ind |
				msg := ann content.
				ind := msg skipAnySubstring: 'Who is expert in ' startingAt: 1.
				pack := msg copyFrom: ind to: msg size - 1.

				(r := BTExpertiseProvider instance expertsForMethodMame: pack) 
					ifEmpty:  [ (r := BTExpertiseProvider instance expertsForClassName: pack) 
						ifEmpty: [ (r := BTExpertiseProvider instance expertsForPackageName: pack) ] ].
				r ifNotEmpty: [ 
					self bot message
						embedDescription: ((r collect: 
								[:e | e expertName , e discordReference , String cr ]) asArray joinUsing: '.');
						embedColor: Color green;
						respondTo: ann.
				] ifEmpty: [
					self bot message
						embedDescription: 'No Expert Found, sorry :(';
						embedColor: Color green;
						respondTo: ann.
					]
			]
		]