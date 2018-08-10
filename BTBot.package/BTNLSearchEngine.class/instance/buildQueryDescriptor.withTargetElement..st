processing
buildQueryDescriptor: searchQ withTargetElement: targetElement
	"TODO: build query for different queries"
	^ BTQueryDescriptor new 
		codeElement: targetElement;
		category: searchQ;
		yourself.
	