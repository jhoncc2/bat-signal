as yet unclassified
reverseProcessing
	contributors do: [ :e |
		(e methods groupedBy: #name) associations do: [ :m | 
			(methods at: m key) at: e put: m value size
		].
		(e classes groupedBy: #name) associations do: [ :m | 
			(classes at: m key) at: e put: m value size
		].
		(e packages groupedBy: #name) associations do: [ :m | 
			(packages at: m key) at: e put: m value size
		].
	]