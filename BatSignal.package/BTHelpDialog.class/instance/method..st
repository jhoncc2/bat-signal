accessing
method: aMethod 
	method := aMethod.
	targetItem := method name.
	expertList := BTExpertiseProvider instance expertsForMethod: method.
	self submorphs first expertList: expertList asSet.
	
	