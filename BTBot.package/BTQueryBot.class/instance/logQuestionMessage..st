log
logQuestionMessage: msg
	| fileRef |
	fileRef := FileSystem workingDirectory / 
					('pharo-local/iceberg/jhoncc2/bat-signal/data/log/' , self logFileName).
	fileRef ensureCreateFile.
	fileRef writeStreamDo: [ :stream | 
		stream setToEnd.
		stream << String cr.
		stream << (msg author username , ',' , msg author id asString , ',' , msg content) ].
	
	"dir exists ifFalse: [ dir createDirectory ]."
	"file exists ifFalse: [ FileSystem memory writeStreamDo: file.]."
	Transcript show: msg content.
	
	
	