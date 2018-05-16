export-import
exportExpertise
	| expertIndexBlock data |

	self persistData: (expertiseColl  collect: [ :e | e toStonFormat. ]) asArray 
		  onFile: 'expert.json'.

	expertIndexBlock := [ :expertList | expertList collect: [ :e | expertiseColl indexOf: e ] ].
	
	"persist methods"
	data := calculatedMethods associations 
					collect: [ :e | e key -> (expertIndexBlock value: e value) asArray].
	self persistData: data asDictionary
		  onFile: 'methods.json'.
		
	"persist classes"
	data := calculatedClasses associations 
				collect: [ :e | e key -> (expertIndexBlock value: e value) asArray].
	self persistData: data asDictionary
		  onFile: 'classes.json'.
	
	"persist packages"	
	data := calculatedPackages associations 
				collect: [ :e | e key -> (expertIndexBlock value: e value) asArray].
	self persistData: data asDictionary
		  onFile: 'packages.json'.