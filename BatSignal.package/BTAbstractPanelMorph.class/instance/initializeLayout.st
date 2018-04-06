initialization
initializeLayout
	self
		fillStyle: Color transparent;
		cellInset: 8;
		changeTableLayout;
		listDirection: #topToBottom; "#bottomToLeft | #rightToLeft | #leftToRight"
		hResizing: #spaceFill; "#spaceFill | #shrinkWrap"
		vResizing: #spaceFill;
		"#(#center #topLeft #topRight #bottomLeft 
		#bottomRight #topCenter #leftCenter #rightCenter #bottomCenter)"
		cellPositioning: #leftCenter
		