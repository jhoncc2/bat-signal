initialization
initializeMorphTextModel
	textModel := RubScrolledTextModel new.
	textModel announcer
		subscribe: RubTextUpdatedInModel 
		do: [ :ann | text := textModel text.].