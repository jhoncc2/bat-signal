export
exportExpertise
	<script: 'self instance exportExpertise'>
	| expertIndexBlock data experts |


	experts := discordExpertise select: #isLinked.
	self persistData: (experts collect: [ :e | e toStonFormat. ]) asArray 
		  onFile: 'expert.json'.

	expertIndexBlock := [ :expertDict |
		|dict|
		dict := Dictionary new.
		((expertDict associations select: [:e | e key isReachable]) do: [ :e | 
			|ind|
			ind := (experts indexOf: e key).
			(dict includesKey: ind) 
				ifTrue: [ dict at: ind put: (dict at: ind) + e value]
				ifFalse: [ dict at: ind put: e value ] ]) . 
		dict.
	].
	
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