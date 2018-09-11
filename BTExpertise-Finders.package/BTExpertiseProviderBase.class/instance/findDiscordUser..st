processing
findDiscordUser: authorName

	[self discordUsers do: [ :e | 
		((self likeNames: authorName  with: e name)
				or: [ self likeNames: authorName with: e username ]) 
				ifTrue: [
					^ e.
				]
		]
	] on: Exception do: [ ^ nil ].
	^ nil
