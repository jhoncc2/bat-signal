test
printOn: aStream
	"Append to the argument, aStream, a sequence of characters that  
	identifies the receiver."

	aStream nextPutAll: self commitName , ' (' ,  (self class name) , ')'