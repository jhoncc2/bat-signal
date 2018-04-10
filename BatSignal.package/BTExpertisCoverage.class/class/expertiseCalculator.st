data
expertiseCalculator
	calculatorInstance ifNil: [ calculatorInstance := self runCalculator ].
	^ calculatorInstance