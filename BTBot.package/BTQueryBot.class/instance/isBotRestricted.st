starting
isBotRestricted
	^ omitedChannelIds isNotEmpty or: [ listenList isNotEmpty ]