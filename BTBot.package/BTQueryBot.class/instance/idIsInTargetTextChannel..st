starting
idIsInTargetTextChannel: id
	^ ((bot servers named: self serverTarget)
			  channels 
				select: [ :el | self channelList anySatisfy: [:c | c = el name] ])  
			flattened reject: #isEmpty