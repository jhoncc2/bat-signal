as yet unclassified
processQueryDescriptor: queryDescriptor
	| codeElem expertiseProv list |
	queryDescriptor
		ifNil: [ ^ {} ]
		ifNotNil: [ codeElem := queryDescriptor codeElement. ].

	expertiseProv := BTExpertiseProvider instance.
	(list := expertiseProv expertsForMethodName: codeElem) 
		ifEmpty: [ (list := expertiseProv expertsForClassName: codeElem) 
			ifEmpty: [ (list := expertiseProv expertsForPackageName: codeElem)  ] ].
	^ self formatExpertiseList: list