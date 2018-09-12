processing
processPackage: aRPackage
	"process the subclasses of the given class 'aClass' in the argument
	and returns the ranked association list of discurd users, <BTdiscord>-><int>"
	| targetClasses usrs |
	targetClasses :=((aRPackage classes select: [ :e | e package = aRPackage ]) 
							collect: [ :c | c subclasses ] ) flattened 
							reject: [:c | c package = aRPackage].
								
	usrs := targetClasses collect: [ :c | self processClass: c ] thenReject: #isEmpty.
	^ (usrs flattened groupedBy: #key) associations collect: [ :e | e key -> ((e value) collect: #value ) sum]