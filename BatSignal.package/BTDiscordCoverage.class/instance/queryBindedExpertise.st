query
queryBindedExpertise
	^ expertiseColl select: [:e | e isElegible and: [ e hasContacts ] ]
		

	
	