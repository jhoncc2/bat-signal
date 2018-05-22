as yet unclassified
getOrCreateContributor: author
	(contributors includesKey: author) 
		ifFalse: [ contributors at: author put: (BTContributor new commitName: author; yourself). ].
	^ contributors at: author.