tests
testExtendData
	| p |
	instance extendDataWithPackage: #GeneticAlgoAndNeuralNetwork 
		installationBlock: [ Gofer it
	    	smalltalkhubUser: 'abergel' project: 'GeneticAlgo';
 		   	package: 'GeneticAlgoAndNeuralNetwork';
   		 	load. ].

	[p := RPackage organizer packageNamed: #GeneticAlgoAndNeuralNetwork] on: Exception do: [p := nil].
	self assert: p isNotNil.
	self assert: (instance packages includesKey: #GeneticAlgoAndNeuralNetwork)