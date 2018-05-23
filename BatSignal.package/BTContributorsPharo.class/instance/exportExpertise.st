export
exportExpertise
	<script: 'self instance exportExpertise'>
	| expertIndexBlock data experts |

	experts := contributors values.
	self persistData: (experts collect: [ :e | e toStonFormat. ]) asArray 
		  onFile: 'expert.json'.

	expertIndexBlock := [ :expertDict | (expertDict associations collect: [ :e | (experts indexOf: e key) -> e value ]) asDictionary ].
	
	"persist methods"
	data := methods associations 
					collect: [ :e | e key -> (expertIndexBlock value: e value)].
	self persistData: data asDictionary
		  onFile: 'methods.json'.
		
	"persist classes"
	data := classes associations 
				collect: [ :e | e key -> (expertIndexBlock value: e value)].
	self persistData: data asDictionary
		  onFile: 'classes.json'.
	
	"persist packages"	
	data := packages associations 
				collect: [ :e | e key -> (expertIndexBlock value: e value)].
	self persistData: data asDictionary
		  onFile: 'packages.json'.