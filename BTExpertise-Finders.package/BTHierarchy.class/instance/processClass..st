processing
processClass: aClass
	"process the subclasses of the given class 'aClass' in the argument
	and returns the ranked association list of discurd users, <BTdiscord>-><int>"
	| discordAuthors ommited |
	ommited := {Object. ProtoObject. Behavior. ClassDescription. Class  }.
	(ommited indexOf: aClass) = 0 ifFalse: [ ^ { } ].
	discordAuthors := (aClass allSubclasses collect: #methods) flattened 
		collect: [ :e | self findDiscordUser: e author ]
		thenReject: #isNil.
	^ (discordAuthors groupedBy: [ :e | e username ]) associations 
			collect: [ :e | e value first -> e value size ].