public-api
expertsForClass: aClass 
	(classes includesKey: aClass asByteString) ifFalse: [ 
		^ { }
	].
	^ (classes at: aClass) collect: [ :i | experts at: i ]