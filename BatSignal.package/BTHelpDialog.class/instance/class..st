accessing
class: aClazz 
	clazz := aClazz.
	targetItem := aClazz name.
	expertList := BTExpertiseProvider instance expertsForClass: targetItem.
	self submorphs first expertList: expertList asSet.
	
	