processing
processClass: aClass
	"returns authors of senders in the same package/project"
	| coll classes |
	classes := ((SystemNavigation default allClasses collect: #methods) flattened
						select: [ :e | e referencedClasses anySatisfy: [ :el | el = aClass ] ])
						collect: #methodClass.
						
	"Pick methods from, referenced classes"
	coll := aClass methods collect: [:m | self findSendersOf: m inClasses: classes].
	
	
	^ self rankAuthors: (coll flattened 
						collect:[ :e | self findDiscordUser: e author ])