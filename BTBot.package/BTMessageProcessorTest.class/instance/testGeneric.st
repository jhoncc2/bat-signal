tests-accessing
testGeneric
	| mp |
	mp := BTMessageProcessor new.
	"self assert: (mp getMessageProcessor: '-- some command ') class 
		equals: BTMessageCommand."
	"self assert: (mp getMessageProcessor: BTNLPrefixProcessor new prefix , 'BlaBla?') class 
		equals: BTNLPrefixProcessor."
	