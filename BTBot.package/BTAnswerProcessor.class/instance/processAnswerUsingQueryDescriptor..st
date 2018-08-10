as yet unclassified
processAnswerUsingQueryDescriptor: queryDescriptor
	| codeElem expertiseProv list |
	queryDescriptor
		ifNil: [ ^ {} ]
		ifNotNil: [ :desc | codeElem := queryDescriptor codeElement. ].

	expertiseProv := BTExpertiseProvider instance.
	(list := expertiseProv expertsForMethodName: codeElem) 
		ifEmpty: [ (list := expertiseProv expertsForClassName: codeElem) 
			ifEmpty: [ (list := expertiseProv expertsForPackageName: codeElem)  ] ].
	^ list