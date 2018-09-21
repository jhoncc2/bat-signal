starting
isBotRestricted
	^ omitedChannelIds isNotNil and: [ listenList isNotEmpty ]