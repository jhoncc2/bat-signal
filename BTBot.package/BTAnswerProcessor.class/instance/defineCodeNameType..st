as yet unclassified
defineCodeNameType: codeName
	[ ^ #class -> ((Smalltalk globals classNamed: codeName) ifNil: [Exception signal]) ]
		on: Error 
		do: [ [ ^ #package -> (RPackageOrganizer default packageNamed: codeName) ] 
			on: Error 
			do: [ [ ^ #method -> ((Compiler evaluate: codeName) 
					ifNil: [BTUnkownCodeName new 
							messageText: 'I did not found any reference of ' , codeName;
						signal])] 
				on: Error 
				do: [ BTUnkownCodeName new 
							messageText: 'I did not found any reference of ' , codeName;
						signal] ]]