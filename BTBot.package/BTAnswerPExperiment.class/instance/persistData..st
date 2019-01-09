processing
persistData: ds
	| reference |
	reference := self fileReference.
	reference writeStreamDo: [ :stream | stream nextPutAll: (STON toJsonStringPretty: ds)].
	
	