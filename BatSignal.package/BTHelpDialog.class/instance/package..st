accessing
package: aPackageTreeTagSelection
	"package := aPackage."
	
	package := aPackageTreeTagSelection node item name.
	aPackageTreeTagSelection node parentNode ifNotNil: [ 
		package := aPackageTreeTagSelection node parentNode item name , '-' , package].
	targetItem := package.
	
	expertList := BTExpertisCoverage instance expertsForPackage: package.
	self submorphs first expertList: expertList.
	
	