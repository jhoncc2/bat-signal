tests
testSaveExtendedData
	| p ref packages packages0 |
	ref := FileSystem workingDirectory / 'pharo-local/iceberg/jhoncc2/bat-signal/data/packages.json'.
	"packages0 := STON fromStream: ref readStream."
	
	instance extendDataWithPackage: #GeneticAlgoAndNeuralNetwork 
		installationBlock: [ Gofer it
	    	smalltalkhubUser: 'abergel' project: 'GeneticAlgo';
 		   	package: 'GeneticAlgoAndNeuralNetwork';
   		 	load. ].
		
	instance saveExtendedData.

	[p := RPackage organizer packageNamed: #GeneticAlgoAndNeuralNetwork] on: Exception do: [p := nil].
	packages := STON fromStream: ref readStream.
	
	self assert: (packages includesKey: #GeneticAlgoAndNeuralNetwork ).
	"self assert: packages0 size < packages size" 