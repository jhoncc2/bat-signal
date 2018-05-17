data
knownDSExpertise
	^ self dataDSExpertise 
		select: [ :e | e value isNotNil ]
		thenCollect: [ :e | 
			|v|
			e second ifNotNil: [
				v := ('#' split: e second).
				self new name: e first;
					username: v first;
					discrimator: v second;
					id: e third.
			] ifNil: [
				self new name: e first.
			]
			]