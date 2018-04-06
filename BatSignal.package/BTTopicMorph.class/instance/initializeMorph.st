initialization
initializeMorph
	self 
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		fillStyle: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;
		cellInset: 8;
		cellPositioning: #leftCenter.
	self addMorphBack: self buildDropDown.
	self buildDropDown