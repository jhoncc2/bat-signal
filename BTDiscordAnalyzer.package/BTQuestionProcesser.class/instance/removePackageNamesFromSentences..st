bot
removePackageNamesFromSentences: questions
	| dir q |
	
	dir := FileSystem workingDirectory / 'pharo-local/iceberg/jhoncc2/bat-signal/data/tmp'.
	q := STON fromStream: (dir / 'questions.json') readStream.
	^ q.
	