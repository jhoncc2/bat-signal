starting
channelsToOmit: anArray
	^ omitedChannelIds := (bot servers named: self serverTarget) flattenedChannels
		select: [ :e |  anArray anySatisfy: [ :el | el = e name ] ]
		thenCollect: #id
	