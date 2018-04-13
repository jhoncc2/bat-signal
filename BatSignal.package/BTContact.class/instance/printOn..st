accessing
printOn: aStream
	aStream nextPutAll: 
		(self username ifNil: [ self name ])
			, ' (' ,  (self class name) , ')'