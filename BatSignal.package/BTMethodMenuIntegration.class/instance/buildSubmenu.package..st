building
buildSubmenu: aBuilder package: package
	|lastItem|
	(lastItem := aBuilder item: #rtn)
		order: 111;
		action: [ BTHelpDialog new
			extent: 400@500;
			package: package;
			btOpen ];
		label: #'? Expertise Help';
		withSeparatorAfter.