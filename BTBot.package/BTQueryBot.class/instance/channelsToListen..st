starting
channelsToListen: channelNames
	^ listenList := (self botChannels newMeGuilds named: self serverTarget) flattenedChannels
		select: [ :e |  channelNames anySatisfy: [ :el | el = e name ] ]
		thenCollect: #id