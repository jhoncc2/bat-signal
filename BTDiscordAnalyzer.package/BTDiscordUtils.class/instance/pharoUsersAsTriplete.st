as yet unclassified
pharoUsersAsTriplete
	^ self pharoServerUsers asArray collect: [ :e | {e username. (e username, '#' ,e discriminator). e id} ]