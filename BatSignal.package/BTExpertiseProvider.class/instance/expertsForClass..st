public-api
expertsForClass: aClass 
	(classes includesKey: aClass asByteString) ifFalse: [ 
		^ { }
	].
	^ (classes at: aClass) associations collect: [ :i | experts at: i key ]