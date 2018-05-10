accessing
getText
	 ^ self submorphs reduce: [ :a :b | a getText , ' ' , b getText ]