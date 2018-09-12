tests-processing
testfindSendersOfinPackages
	| res |
	res := instance findSendersOf: BTUsage>>#findSendersOf:inPackages: 
				inPackages: {(RPackageOrganizer default packageNamed: #'BTExpertise-Finders')}.
				
	self assertList: (res collect: #selector) containsSubList: #(testfindSendersOfinPackages).
	

	res := instance findSendersOf: Collection>>#asArray
				inPackages: {(RPackageOrganizer default packageNamed: #'Collections-Abstract')}.
				
	self assertList: (res collect: #selector) containsSubList: #(sorted sorted:) .
	
	