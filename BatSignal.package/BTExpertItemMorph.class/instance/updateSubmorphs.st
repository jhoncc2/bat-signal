initialization
updateSubmorphs
	self expert ifNotNil: [ :e | 
		self submorphs first contents: e expertName ]