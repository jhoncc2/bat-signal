as yet unclassified
defineCodeNameType: codeName
	"define if the specific codeName is Package, Method or Class, and returns a touple with {#clasificiation_name -> Object } codeName is converted in its specific Object"
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