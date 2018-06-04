accessing
method: aMethod 
	method := aMethod.
	targetItem := method name.
	self classifyExpertOnMethods: (BTExpertiseProvider instance expertsForMethod: method)
		classes:  (BTExpertiseProvider instance expertsForClass: method methodClass)
		packages: (BTExpertiseProvider instance expertsForPackage: aMethod package).
	self submorphs first expertList: experts .
	
	