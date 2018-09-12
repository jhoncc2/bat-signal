tests-processing
testSearchQuestion
	| inst |
	inst := BTNLSearchEngine new.
	self assert: (inst searchQuestion: 'Who is expert in BatSignal?') 
		equals: #exp_all.
	self assert: (inst searchQuestion: 'Who is expert in package SomePackage?') 
		equals: #exp_package.
	self assert: (inst searchQuestion: 'Who is expert in class Roassal?') 
		equals: #exp_class.
	self assert: (inst searchQuestion: 'Who is expert in method Roassal?') 
		equals: #exp_method.
	self assert: (inst searchQuestion: 'information about Roassal?') 
		equals: #inf_package.
	self assert: (inst searchQuestion: 'information Roassal?') 
		equals: #inf_package.
		
	"self assert: (inst searchQuestion: 'who are using a Java ?') equals: #usage_exp.
	self assert: (inst searchQuestion: 'who used Java ?') equals: #usage_exp."
	
	self assert: (inst searchQuestion: 'experts for method Collection ?') equals: #exp_method.
