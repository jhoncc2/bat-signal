import
loadExperts
	| reference |
	reference := self dataDirectory.
	methods := STON fromStream: (reference / 'methods.json') readStream.
	classes := STON fromStream: (reference / 'classes.json') readStream.
	packages := STON fromStream: (reference / 'packages.json') readStream.
	
	"encapsulate expert data"
	experts := (STON fromStream: (reference / 'expert.json') readStream) collect: [:e |
					BTExpertData new discordId: (e at: 'discordId');
						expertName: (e at: 'name');
						discordUsername: (e at: 'discordUsername');
						commitName: (e at: 'commitName').
				].


	self class instance: self. 

	
	