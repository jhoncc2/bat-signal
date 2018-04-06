initialization
updateSubmorphs
	self method ifNotNil: [ :m | 
		self submorphs first contents: (m name , ' - ' , m author) ]