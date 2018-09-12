initialization
testProcessPackage
	| cont resNames |
	cont := instance processPackage: (RPackageOrganizer default packageNamed:#'BTExpertise-Finders').

	self assert: ((cont collect: #key) collect: #username) asArray 
		  equals: #().

	"collection"
	cont := instance processPackage: (RPackageOrganizer default packageNamed:#'Collections-Abstract').
	resNames := ((cont collect: #key) collect: #username).
	self assertList: resNames containsSubList: #('MarcusDenker' 'ClementB').