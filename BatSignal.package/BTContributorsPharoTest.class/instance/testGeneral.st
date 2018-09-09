tests
testGeneral
	"self assert: instance openData equals: instance"
	self assert: (instance openStonData: 'packages.json') class equals: Dictionary