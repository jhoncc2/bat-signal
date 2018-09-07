tests-accessing
questionsData
	| dir q data |
	"read"
	dir := FileSystem workingDirectory / 'pharo-local/iceberg/jhoncc2/bat-signal/data/tmp'.
	q := STON fromStream: (dir / 'questions.json') readStream.
	
	"process"
	data := q collect: [ :e | |res|
		res := (' ' split: e) 
			collect: [ :el | ((BTExpertiseProvider instance expertsForClassName: el) size > 1)
				ifTrue: [ String space ]
				ifFalse: [ el ] ].
			' ' join: res].
	^ data
	