accessing
processMessage: msg
	|processor expertiseProv codeElem list |
	self message: msg.
	processor := self getMessageProcessor: msg.
	processor getQueryDescriptor 
		ifNil: [ ^ {} ]
		ifNotNil: [ :desc | codeElem := desc codeElement. ].

	expertiseProv := BTExpertiseProvider instance.
	(list := expertiseProv expertsForMethodName: codeElem) 
		ifEmpty: [ (list := expertiseProv expertsForClassName: codeElem) 
			ifEmpty: [ (list := expertiseProv expertsForPackageName: codeElem)  ] ].
	^ list
		