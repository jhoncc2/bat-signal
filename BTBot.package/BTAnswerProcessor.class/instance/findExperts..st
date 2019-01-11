as yet unclassified
findExperts: queryDescriptor
	<deprecated>
	| codeElem expertiseProv list |
	codeElem := queryDescriptor codeElement.

	expertiseProv := BTExpertiseProvider instance.
	(list := expertiseProv expertsForMethodName: codeElem) 
		ifEmpty: [ (list := expertiseProv expertsForClassName: codeElem) 
			ifEmpty: [ (list := expertiseProv expertsForPackageName: codeElem)  ] ].
	^ list