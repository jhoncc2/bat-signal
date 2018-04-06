accessing
getText
	|m|
	m := self submorphs first selectedItem method.
	^ m name , ' - ' , m author 