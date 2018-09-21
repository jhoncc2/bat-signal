starting
channelsToListen: channelNames
	^ listenList := (bot servers named: self serverTarget) flattenedChannels
		select: [ :e |  channelNames anySatisfy: [ :el | el = e name ] ]
		thenCollect: #id