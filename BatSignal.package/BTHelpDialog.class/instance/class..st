accessing
class: aClazz 
	clazz := aClazz.
	targetItem := aClazz name.
	self classifyExpertOnMethods: Set empty
		classes:  (BTExpertiseProvider instance expertsForClass: aClazz)
		packages: (BTExpertiseProvider instance expertsForPackage: aClazz package).
	self submorphs first expertList: experts.
	
	