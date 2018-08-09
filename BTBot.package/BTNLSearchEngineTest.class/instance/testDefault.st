tests-processing
testDefault
	| inst dl |
	inst := BTNLSearchEngine new.
	dl := inst elementDelimiterTags.
	self assert: dl equals: { (inst delimiterPrefix). (inst delimiterSufix ) }