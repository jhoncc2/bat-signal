as yet unclassified
defineCodeNameType: codeName
	[ ^ #class -> ((Smalltalk globals classNamed: codeName) ifNil: [Exception signal]) ]
		on: Exception do: [ [ ^ #package -> (RPackageOrganizer default packageNamed: codeName) ] 
			on: Error do: [ ^ #method -> (Compiler evaluate: codeName) ] ]