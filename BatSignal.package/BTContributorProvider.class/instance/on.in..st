building
on: files in: directory
	| chunks collectedMethods |
	collectedMethods := OrderedCollection new.
	files
		do: [ :f | 
			chunks := CodeImporter
				chunksFromStream: (FileStream readOnlyFileNamed: directory , f).
			collectedMethods addAll: (chunks select: [ :e | e isMethodDeclaration ]) ].
	
	collectedMethods do: [ :method | self processMethod: method.].
