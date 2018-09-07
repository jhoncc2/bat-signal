accessing
removeTrailingQmark: questionWords
	^ questionWords asOrderedCollection 
		collect: [ :w | w reject: [ :e | e = $? ]].
	
