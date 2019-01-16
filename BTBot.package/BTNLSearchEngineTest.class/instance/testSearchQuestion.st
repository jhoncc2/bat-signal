tests-processing
testSearchQuestion
	| inst |
	inst := BTNLSearchEngine new.
	inst languageData: BTBotLanguageData instance.
	self assert: (inst searchQuestion: 'Who is expert in BatSignal?') 
		equals: #exp_all.
	self assert: (inst searchQuestion: 'Who is expert in package SomePackage?') 
		equals: #exp_package.
	self assert: (inst searchQuestion: 'Who is expert in class Roassal?') 
		equals: #exp_class.
	self assert: (inst searchQuestion: 'Who is expert in method Roassal?') 
		equals: #exp_method.
		
		"unsupported"
"	self assert: (inst searchQuestion: 'information about Roassal?') 
		equals: #inf_package.
	self assert: (inst searchQuestion: 'information Roassal?') 
		equals: #inf_package."
		
	self assert: (inst searchQuestion: 'experts for Collection?') equals: #exp_all.
	self assert: (inst searchQuestion: 'EXPERTS FOR COLLECTION?') equals: #exp_all.
	
	self assert: (inst searchQuestion: 'what do you do?') equals: #help.
	self assert: (inst searchQuestion: '--help') equals: #help.
		
	"self assert: (inst searchQuestion: 'who are using a Java ?') equals: #usage_exp.
	self assert: (inst searchQuestion: 'who used Java ?') equals: #usage_exp."
	
	self assert: (inst searchQuestion: 'compiler?') equals: #unknown_message.
	self assert: (inst searchQuestion: 'a') equals: #unknown_message.
	
	self assert: (inst searchQuestion: 'experts for method Collection ?') equals: #exp_method.
	self assert: (inst searchQuestion: 'who are you?') equals: #inf_greeting.
	self assert: (inst searchQuestion: 'I need help in computer theory') equals: #exp_all.
	
	self assert: (inst searchQuestion: 'what can i ask you?') equals: #msg_bot_inf.
	
	
