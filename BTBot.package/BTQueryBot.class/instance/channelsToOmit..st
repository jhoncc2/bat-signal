starting
channelsToOmit: anArray

	^ omitedChannelIds := (self botChannels named: self serverTarget) flattenedChannels
		select: [ :e |  anArray anySatisfy: [ :el | el = e name ] ]
		thenCollect: #id
	