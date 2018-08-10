data
answers 
	^ { (#expertsAll -> 'who is expert in ? ').
		(#method -> 'who is expert in method ? ') .
		(#class -> 'who is expert in class ? ') .
		(#package -> 'who is expert in package ? ') .
		(#infoPackage -> 'I am still learning to give you that answer') .
		(#default -> 'I am still learning to give you that answer') .
		}