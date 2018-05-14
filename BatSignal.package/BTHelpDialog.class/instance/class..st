accessing
class: aClazz 
	clazz := aClazz.
	targetItem := aClazz name.
	expertList := BTExpertisCoverage instance expertsForClass: clazz.
	self submorphs first expertList: expertList.
	
	