initialization
initialize 
	super initialize.
	self initializeMorphTextModel.
	self addMorphBack: self createTextMorphFromModel