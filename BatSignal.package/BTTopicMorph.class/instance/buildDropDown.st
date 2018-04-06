building
buildDropDown
	^ (MorphDropListMorph
			on: self
			list: #morphItems
			selected: #selection
			changeSelected: #selection:
			useIndex: false)
				hResizing: #spaceFill;
				vResizing: #shrinkWrap;
				yourself.