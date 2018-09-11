processing
rankAuthors: discordUserList
	^ ((discordUserList reject: #isNil) 
			groupedBy: [ :e| e username ]) associations 
			collect: [ :e | e value first -> e value size ].