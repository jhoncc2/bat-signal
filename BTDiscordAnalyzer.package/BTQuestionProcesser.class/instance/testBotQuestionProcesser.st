bot
testBotQuestionProcesser
	"chech if all query methods classes and packages can be discovered in the question"
	
	| dir q e clss pks question textp results rank |
	" read data set of questions "
	dir := FileSystem workingDirectory / 'pharo-local/iceberg/jhoncc2/bat-signal/data/tmp'.
	q := STON fromStream: (dir / 'questions.json') readStream.
	
	"classes involved"
 	e := BTExpertiseProvider instance.
	clss := e classes keys.
	pks := e packages keys.
	
	textp := BTNLTextTFIDF instance.
	
	"each involved"
	results := { #true -> 0. #false -> 0. #wrong -> ({ } asOrderedCollection)  } asDictionary.
	clss do: [ :el |
		(el endsWith: 'class')
		ifFalse: [ 
			question := q atRandom , String space , el.
			rank := textp rankProgramElementInQuestion: question.
			((rank first value = el) or: [ rank size > 1 and: [rank second value = el]])
				ifTrue: [ results at: #true put: (results at: #true) + 1 ]
				ifFalse: [ 
					results at: #false put: (results at: #false) + 1.
					(results at: #wrong) add: (question -> rank) ]. ]
	].
	^ results
	
	