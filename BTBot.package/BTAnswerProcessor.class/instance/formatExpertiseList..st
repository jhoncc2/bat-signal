formatting
formatExpertiseList: experts
	experts asArray class = BTDiscord 
		ifTrue:[^ (experts collect: [:e | 
								e name , 
								String space ,
								#@ , e username ,
								String cr ]) asArray joinUsing: ''].

	^ (experts collect: [:e | 
								e expertName , 
								String space ,
								#@ , e discordUsername ,
								String cr ]) asArray joinUsing: ''