log
logFileName
	^ logFileName ifNil: [ self newLogName ]
