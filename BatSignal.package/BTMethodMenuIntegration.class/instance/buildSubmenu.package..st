building
buildSubmenu: aBuilder package: package
	|lastItem|
	(lastItem := aBuilder item: #'Expertise help')
		order: self menuOrder;
		action: [ BTHelpDialog new
			extent: 400@500;
			package: package;
			btOpen ];
		iconName: self iconName;
		label: self menuLabel;
		withSeparatorAfter.