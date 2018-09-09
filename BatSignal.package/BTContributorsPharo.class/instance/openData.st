extend
openData
	| reference |
	reference := FileSystem workingDirectory / 'pharo-local/iceberg/jhoncc2/bat-signal/data'.
	methods := STON fromStream: (reference / 'methods.json') readStream.
	classes := STON fromStream: (reference / 'classes.json') readStream.
	packages := STON fromStream: (reference / 'packages.json') readStream.