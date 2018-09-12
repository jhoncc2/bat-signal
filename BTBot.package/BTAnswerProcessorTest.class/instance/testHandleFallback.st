tests-processing
testHandleFallback
	| query |
	query := BTQueryDescriptor new codeElement: 'Collection>>#contains'; category: #exp_all.
	self should: [instance handleFallback: query] raise: BTUnkownCodeName.
	
	query := BTQueryDescriptor new codeElement: 'IceRepository>>#workingCopyDiff'; category: #exp_all.
	self should: [instance handleFallback: query] raise: BTEmptyException.
	
	query := BTQueryDescriptor new codeElement: 'Collection>>#contains:'; category: #exp_all.
	self assert: (instance handleFallback: query) value isNotEmpty