accessing
printOn: aStream
	aStream nextPutAll: self username , ' (' ,  (self class name) , ')'