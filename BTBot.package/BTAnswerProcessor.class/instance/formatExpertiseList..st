formatting
formatExpertiseList: experts
	^ (experts collect: [:e | 
								e expertName , 
								String space ,
								#@ , e discordUsername ,
								String cr ]) asArray joinUsing: ''