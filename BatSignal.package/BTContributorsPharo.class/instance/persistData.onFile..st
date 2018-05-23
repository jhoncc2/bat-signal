export
persistData: data onFile: file
	| reference |
	reference := FileSystem workingDirectory / ('pharo-local/iceberg/jhoncc2/bat-signal/data/' , file).
	reference isFile ifTrue: [ reference delete. ].
	reference writeStreamDo: [ :stream | stream nextPutAll: (STON toJsonStringPretty: data)].
	
	