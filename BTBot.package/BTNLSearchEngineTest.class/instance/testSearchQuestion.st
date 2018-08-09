tests-processing
testSearchQuestion
	| inst |
	inst := BTNLSearchEngine new.
	self assert: (inst searchQuestion: 'Who is expert in BatSignal?') 
		equals: #all.
	self assert: (inst searchQuestion: 'Who is expert in package SomePackage?') 
		equals: #package.
	self assert: (inst searchQuestion: 'Who is expert in class Roassal?') 
		equals: #class.
	self assert: (inst searchQuestion: 'Who is expert in method Roassal?') 
		equals: #method.
	self assert: (inst searchQuestion: 'information about  Roassal?') 
		equals: #infoPackage.
	self assert: (inst searchQuestion: 'information Roassal?') 
		equals: #infoPackage.