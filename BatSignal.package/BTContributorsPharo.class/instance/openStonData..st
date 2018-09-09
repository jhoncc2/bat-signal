extend
openStonData: fileName
	| reference |
	reference := FileSystem workingDirectory / 'pharo-local/iceberg/jhoncc2/bat-signal/data'.
	^ STON fromStream: (reference / fileName) readStream.