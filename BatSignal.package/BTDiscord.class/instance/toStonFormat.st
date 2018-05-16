accessing
toStonFormat
	^ Dictionary new at: 'id'  put: self id;
						at: 'username' put: self username;
						at: 'name' put: self name;
						yourself.