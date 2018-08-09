accessing
getTargetElement: msg 
	| res |
	res := msg allRegexMatches: self delimiterPrefix, '.+', self delimiterSufix.
	res size > 0 
		ifTrue: [ ^ res first copyFrom: 2 to: res first size - 1  ].
	^ nil