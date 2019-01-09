processing
data
	| f |
	^ data ifNil: [ 
		f := self fileReference.
		data := STON fromStream: f readStream.
	]