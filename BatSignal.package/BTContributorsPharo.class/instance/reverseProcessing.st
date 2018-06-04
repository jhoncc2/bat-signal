contributors
reverseProcessing
	contributors do: [ :e |
		(e methods groupedBy: #name) associations do: [ :m | 
			(methods includesKey: m key) ifFalse: [ methods at: m key put: Dictionary new ].
			(methods at: m key) at: e put: m value size
		].
		(e classes groupedBy: #name) associations do: [ :m | 
			(classes includesKey: m key) ifFalse: [ classes at: m key put: Dictionary new ].
			(classes at: m key) at: e put: m value size
		].
		(e packages groupedBy: #name) associations do: [ :m | 
			(packages includesKey: m key) ifFalse: [ packages at: m key put: Dictionary new ].
			(packages at: m key) at: e put: m value size
		].
	]