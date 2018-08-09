accessing
questions 
	^ { (#all -> 'who is expert in ? ').
		(#method -> 'who is expert in method ? ') .
		(#class -> 'who is expert in class ? ') .
		(#package -> 'who is expert in package ? ') .
		(#infoPackage -> 'What is the information about this package ?') .
		}