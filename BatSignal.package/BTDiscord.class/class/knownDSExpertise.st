data
knownDSExpertise
	^ self dataDSExpertise 
		"select: [ :e | e value isNotNil ]"
		collect: [ :e | 
			|v|
			e value ifNotNil: [
				v := ('#' split: e value).
				self new name: e key;
					username: v first;
					id: v second.
			] ifNil: [
				self new name: e key.
			]
			]